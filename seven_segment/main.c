/*
 * This example is a simple hexadecimal counter
 * Push the USER button and the number on the indicator increases
 * up to 0xF and then resets to 0x0
 * If you want to see how it works w/o debouncing
 * delete the following line:
 *      #define TURN_ON_CONTACT_DEBOUNCER
 */

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"

#define DIG1    LL_GPIO_PIN_7
#define DIG2    LL_GPIO_PIN_10
#define DIG3    LL_GPIO_PIN_11
#define DIG4    LL_GPIO_PIN_12


uint32_t counter = 0;
uint32_t button_pressed = 0;

/**
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSI/2)
  *    SYSCLK(Hz)                     = 48000000
  *    HCLK(Hz)                       = 48000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 1
  *    HSI Frequency(Hz)              = 8000000
  *    PLLMUL                         = 12
  *    Flash Latency(WS)              = 1
  */
static void rcc_config()
{
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

/*
 * Clock on GPIOC and set two led pins
 */
static void gpio_config(void)
{
    /*
     * Init two default LEDs
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    /*
     * Init port for indicator
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_0,    LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_1,    LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_2,    LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_3,    LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_4,    LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_5,    LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_6,    LL_GPIO_MODE_OUTPUT);

    /*
     * Digits
     */
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_7,    LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_10,   LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_11,   LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_12,   LL_GPIO_MODE_OUTPUT);
    /*
     * Init port for USER button
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT);
    return;
}

/*
 * Just set of commands to waste CPU power for 10ms
 * (basically it is a simple cycle with a predefined number
 * of loops)
 */
__attribute__((naked)) static void delay_10ms(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay_10ms+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0xea60"); //60000
}

__attribute__((naked)) static void delay_5ms(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay_5ms+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0x2710"); //60000
}


static void set_indicator(uint8_t number)
{
    /*
     * Put all pins for indicator together (for segments only)
     */
    static uint32_t mask = LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | \
                           LL_GPIO_PIN_3 | LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | \
                           LL_GPIO_PIN_6;
    /*
     * For simplicity there are only decoded values for the first 4 numbers
     */
    static const uint32_t decoder[] = {
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | \
        LL_GPIO_PIN_4 | LL_GPIO_PIN_5,                                      // 0
        LL_GPIO_PIN_1 | LL_GPIO_PIN_2,                                      // 1
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_6 | LL_GPIO_PIN_4 | \
        LL_GPIO_PIN_3,                                                      // 2
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | \
        LL_GPIO_PIN_3,                                                      // 3
        LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2,      // 4
        LL_GPIO_PIN_0 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | \
        LL_GPIO_PIN_3,                                                      // 5
        LL_GPIO_PIN_0 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | \
        LL_GPIO_PIN_4 | LL_GPIO_PIN_5,                                      // 6
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2,                      // 7
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | \
        LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6,                      // 8
        LL_GPIO_PIN_0 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | \
        LL_GPIO_PIN_1 | LL_GPIO_PIN_5                                       // 9
    };
    const uint8_t max_num = sizeof(decoder) / sizeof(uint32_t);
    uint32_t port_state = 0;

    /*
     * Read current state and do not change pins that are not related to
     * indicator (that is done by using masking)
     */
    port_state = LL_GPIO_ReadOutputPort(GPIOB);
    /*
     * Example:
     * 01100101 <= Input
     * mask = 111 (pins allowed to be changed)
     * ~mask = 11111000 (inverted mask sets remaing bits to one)
     * result = result & ~mask (zero only first three bits)
     * result = result | 001 (modify first three bits)
     * result -> 01100001
     */
    port_state = (port_state & ~mask) | decoder[number % max_num];
    LL_GPIO_WriteOutputPort(GPIOB, port_state);
    return;
}


static inline uint8_t get_currentNumber(uint32_t number, uint8_t numNumber)
{
    uint8_t res = 0;
    switch (numNumber)
    {
        case (1): res = number % 10;            break;
        case (2): res = (number % 100) / 10;    break;
        case (3): res = (number / 100) % 10;    break;
        case (4): res = number / 1000;          break;
    }
    return res;
}


static void start_indicator()
{
    static uint32_t debouncer_clk = 0;
    static uint32_t cnt = 0;

    /*
     * if button is pressed then set flag and reset counter
     */
    if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0)) {
        button_pressed = 1;
        debouncer_clk = 0;
    }
    /*
     * if flag is set increase counter
     */
    if (button_pressed) {
        debouncer_clk++;
        delay_10ms();
    }
    /*
     * If counter manages to count up to 5 then button is not bouncing
     * any longer and we need to get action! (process it)
     * NOTE: 5 is just experimental value
     */
    if (debouncer_clk >= 5) {
        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);

        button_pressed = 0;
        debouncer_clk = 0;

        LL_GPIO_SetOutputPin(GPIOB, DIG4);
        LL_GPIO_ResetOutputPin(GPIOB, DIG1);
        set_indicator(get_currentNumber(cnt, 4));
        delay_5ms();

        LL_GPIO_SetOutputPin(GPIOB, DIG1);
        LL_GPIO_ResetOutputPin(GPIOB, DIG2);
        set_indicator(get_currentNumber(cnt, 3));
        delay_5ms();

        LL_GPIO_SetOutputPin(GPIOB, DIG2);
        LL_GPIO_ResetOutputPin(GPIOB, DIG3);
        set_indicator(get_currentNumber(cnt, 2));
        delay_5ms();

        LL_GPIO_SetOutputPin(GPIOB, DIG3);
        LL_GPIO_ResetOutputPin(GPIOB, DIG4);
        set_indicator(get_currentNumber(cnt, 1));
        delay_5ms();

        cnt++;
    }
    return;
}


int main(void)
{
    rcc_config();
    gpio_config();

    /*
     * Turn on indicator
     */
    LL_GPIO_ResetOutputPin(GPIOB, DIG1);
    LL_GPIO_ResetOutputPin(GPIOB, DIG2);
    LL_GPIO_ResetOutputPin(GPIOB, DIG3);
    LL_GPIO_ResetOutputPin(GPIOB, DIG4);

    while(1)
    {
        static int cnt = 0;
        static int big_cnt = 0;
        static int n1 = 0;
        static int n2 = 0;
        static int n3 = 0;
        static int n4 = 0;

        LL_GPIO_SetOutputPin(GPIOB, DIG4);
        set_indicator(n1);
        LL_GPIO_ResetOutputPin(GPIOB, DIG1);
        delay_5ms();
        // for (volatile int i = 0; i < 10000; i++)
        // {volatile int x = 0;}

        LL_GPIO_SetOutputPin(GPIOB, DIG1);
        set_indicator(n2);
        LL_GPIO_ResetOutputPin(GPIOB, DIG2);
        delay_5ms();
        // for (volatile int i = 0; i < 10000; i++)
        // {volatile int x = 0;}

        LL_GPIO_SetOutputPin(GPIOB, DIG2);
        set_indicator(n3);
        LL_GPIO_ResetOutputPin(GPIOB, DIG3);
        delay_5ms();
        // for (volatile int i = 0; i < 10000; i++)
        // {volatile int x = 0;}

        LL_GPIO_SetOutputPin(GPIOB, DIG3);
        set_indicator(n4);
        LL_GPIO_ResetOutputPin(GPIOB, DIG4);
        delay_5ms();

        // for (volatile int i = 0; i < 10000; i++)
        // {volatile int x = 0;}

        cnt++;

        if (cnt == 1)
        {
            big_cnt++;
            cnt = 0;

            n1 = get_currentNumber(big_cnt, 4);
            n2 = get_currentNumber(big_cnt, 3);
            n3 = get_currentNumber(big_cnt, 2);
            n4 = get_currentNumber(big_cnt, 1);
        }
    }

    return 0;
}
