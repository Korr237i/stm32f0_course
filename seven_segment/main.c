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
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"

#include "sysconfig.h"
#include "segment.h"

#define HCLK_FREC   48000000


uint32_t time_cnt = 0;
uint32_t time_cnt_bcd = 0;
uint8_t time_show_presc = 0;

uint32_t button_pressed = 0;

uint32_t systick_cnt = 0;
const uint32_t systick_cnt_top = 1000;


void EXTI0_1_IRQHandler()
{
    // button_pressed = 1;

    uint32_t time0 = systick_cnt;
    static uint32_t time1 = 0;

    if ((time1 - time0) > 100)
        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);

    time1 = systick_cnt;

    // button_pressed = 0;

    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
    // LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
}

void SysTick_Handler(void)
{
    systick_cnt = (systick_cnt + 1) % systick_cnt_top;


    if (!systick_cnt)
    {
        time_cnt = (time_cnt + 1) % 10000;
        time_cnt_bcd = dec2hex(time_cnt);
        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_9);
    }
}


int main(void)
{
    rcc_config();
    gpio_config();
    exti_config();
    systick_config(HCLK_FREC, systick_cnt_top);

    /*
     * Turn on indicator
     */
    LL_GPIO_ResetOutputPin(GPIOB, DIG1);
    LL_GPIO_ResetOutputPin(GPIOB, DIG2);
    LL_GPIO_ResetOutputPin(GPIOB, DIG3);
    LL_GPIO_ResetOutputPin(GPIOB, DIG4);

    while(1)
    {
        uint32_t _time0 = systick_cnt;
        // uint32_t _timex = _time0;

        for (int i = 0; i < 4; i++)
        {
            while((systick_cnt - _time0) < 5) {}

            dyn_indicate(time_cnt_bcd);
            _time0 = systick_cnt;
        }
    }

    return 0;
}
