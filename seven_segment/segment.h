#ifndef SEGMENT_H_
#define SEGMENT_H_

#define DIG1    LL_GPIO_PIN_7
#define DIG2    LL_GPIO_PIN_10
#define DIG3    LL_GPIO_PIN_11
#define DIG4    LL_GPIO_PIN_12


uint32_t dec2hex(uint32_t number);

void dyn_indicate(uint32_t number);

void run_indicator(uint32_t* cnt);


#endif /* SEGMENT_H_ */
