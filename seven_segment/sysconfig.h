#ifndef SYSCONFIG_H_
#define SYSCONFIG_H_

void rcc_config();
void gpio_config();
void exti_config(void);
void systick_config(uint32_t HCLKFrequency, uint32_t Ticks);


#endif /* SYSCONFIG_H_ */
