/*
 * This example is a simple hexadecimal counter
 * Push the USER button and the number on the indicator increases
 * up to 0xF and then resets to 0x0
 * If you want to see how it works w/o debouncing
 * delete the following line:
 *      #define TURN_ON_CONTACT_DEBOUNCER
 */

#include "core_cm0.h"
#include "stm32f051x8.h"
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_exti.h"

#include "sysconfig.h"
#include "segment.h"


uint32_t counter = 0;
uint32_t button_pressed = 0;


void EXTI0_1_IRQHandler()
{
    button_pressed = 1;
    static uint32_t debouncer_clk = 0;

    while(debouncer_clk < 5)
    {
      if (button_pressed) {
          debouncer_clk++;
          delay_10ms();
      }
    }

    LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);

    button_pressed = 0;
    debouncer_clk = 0;

    counter++;

    LL_EXTI_ClearFlag_0_31(LL_SYSCFG_EXTI_LINE0);
}


int main(void)
{
    rcc_config();
    gpio_config();

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_INPUT);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE0);

    LL_EXTI_EnableIT_0_31(LL_SYSCFG_EXTI_LINE0);
    LL_EXTI_EnableFallingTrig_0_31(LL_SYSCFG_EXTI_LINE0);

    NVIC_EnableIRQ(EXTI0_1_IRQn);
    NVIC_SetPriority(EXTI0_1_IRQn, 64);

    /*
     * Turn on indicator
     */
    LL_GPIO_ResetOutputPin(GPIOB, DIG1);
    LL_GPIO_ResetOutputPin(GPIOB, DIG2);
    LL_GPIO_ResetOutputPin(GPIOB, DIG3);
    LL_GPIO_ResetOutputPin(GPIOB, DIG4);

    while(1)
    {
        run_indicator(counter);
    }

    return 0;
}
