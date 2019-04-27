#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"

#include "sysconfig.h"
#include "segment.h"


/*
 * Just set of commands to waste CPU power for 10ms
 * (basically it is a simple cycle with a predefined number
 * of loops)
 */
/*__attribute__((naked)) void delay_10ms(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay_10ms+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0xea60"); //60000
}*/


/*
 * It's not really 5ms, it's near 10/6 ms
 */
/*__attribute__((naked)) static void delay_5ms(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay_5ms+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0x2710"); //60000
}
*/

uint32_t dec2hex(uint32_t number)
{
     // case (1): res = number % 10;            break;
//         case (2): res = (number % 100) / 10;    break;
//         case (3): res = (number / 100) % 10;    break;
//         case (4): res = number / 1000;          break;

    // return (((number & 0xF000) >> 12) * 1000 + ((number & 0xF00) >> 8)* 100 + ((number & 0xF0) >> 4) * 10 + (number & 0x0F));
    return ( (number % 10) + (((number % 100) / 10) << 4) + (((number / 100) % 10) << 8) + ((number / 1000) << 12) );

}


void dyn_indicate(uint32_t number)
{
    static uint8_t dig_num = 0;
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
     * ~mask = 11111000 (inverted mask sets remaining bits to one)
     * result = result & ~mask (zero only first three bits)
     * result = result | 001 (modify first three bits)
     * result -> 01100001
     */

    port_state = (port_state & ~mask) | decoder[((number >> ((dig_num) * 4)) & 0xF) % max_num];
    LL_GPIO_WriteOutputPort(GPIOB, port_state);

    switch (dig_num)
    {
        case 0:
            LL_GPIO_SetOutputPin(GPIOB, DIG1);
            LL_GPIO_ResetOutputPin(GPIOB, DIG4);
            break;
        case 1:
            LL_GPIO_SetOutputPin(GPIOB, DIG4);
            LL_GPIO_ResetOutputPin(GPIOB, DIG3);
            break;
        case 2:
            LL_GPIO_SetOutputPin(GPIOB, DIG3);
            LL_GPIO_ResetOutputPin(GPIOB, DIG2);
            break;
        case 3:
            LL_GPIO_SetOutputPin(GPIOB, DIG2);
            LL_GPIO_ResetOutputPin(GPIOB, DIG1);
            break;
    }

    dig_num = (dig_num + 1) % 4;
    return;
}
