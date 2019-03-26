
build/gpio.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000a58  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           0000002c  08000b18  08000b18  00010b18  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000b44  08000b44  00010b44  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000b4c  08000b4c  00010b4c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000b50  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000058  20000434  08000f84  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  2000048c  08000f84  0002048c  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000b60  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000377  00000000  00000000  00020fbc  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        000005e8  00000000  00000000  00021333  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000148  00000000  00000000  0002191b  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000118  00000000  00000000  00021a63  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00000511  00000000  00000000  00021b7b  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        00000563  00000000  00000000  0002208c  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  000225ef  2**0  CONTENTS, READONLY
 17 .debug_frame      000005bc  00000000  00000000  00022670  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000434 	.word	0x20000434
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08000b00 	.word	0x08000b00

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000438 	.word	0x20000438
 8000104:	08000b00 	.word	0x08000b00

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <Reset_Handler>:
 8000220:	480d      	ldr	r0, [pc, #52]	; (8000258 <LoopForever+0x2>)
 8000222:	4685      	mov	sp, r0
 8000224:	480d      	ldr	r0, [pc, #52]	; (800025c <LoopForever+0x6>)
 8000226:	490e      	ldr	r1, [pc, #56]	; (8000260 <LoopForever+0xa>)
 8000228:	4a0e      	ldr	r2, [pc, #56]	; (8000264 <LoopForever+0xe>)
 800022a:	2300      	movs	r3, #0
 800022c:	e002      	b.n	8000234 <LoopCopyDataInit>

0800022e <CopyDataInit>:
 800022e:	58d4      	ldr	r4, [r2, r3]
 8000230:	50c4      	str	r4, [r0, r3]
 8000232:	3304      	adds	r3, #4

08000234 <LoopCopyDataInit>:
 8000234:	18c4      	adds	r4, r0, r3
 8000236:	428c      	cmp	r4, r1
 8000238:	d3f9      	bcc.n	800022e <CopyDataInit>
 800023a:	4a0b      	ldr	r2, [pc, #44]	; (8000268 <LoopForever+0x12>)
 800023c:	4c0b      	ldr	r4, [pc, #44]	; (800026c <LoopForever+0x16>)
 800023e:	2300      	movs	r3, #0
 8000240:	e001      	b.n	8000246 <LoopFillZerobss>

08000242 <FillZerobss>:
 8000242:	6013      	str	r3, [r2, #0]
 8000244:	3204      	adds	r2, #4

08000246 <LoopFillZerobss>:
 8000246:	42a2      	cmp	r2, r4
 8000248:	d3fb      	bcc.n	8000242 <FillZerobss>
 800024a:	f000 fb33 	bl	80008b4 <SystemInit>
 800024e:	f000 fb87 	bl	8000960 <__libc_init_array>
 8000252:	f000 fa73 	bl	800073c <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000434 	.word	0x20000434
 8000264:	08000b50 	.word	0x08000b50
 8000268:	20000434 	.word	0x20000434
 800026c:	2000048c 	.word	0x2000048c

08000270 <ADC1_COMP_IRQHandler>:
 8000270:	e7fe      	b.n	8000270 <ADC1_COMP_IRQHandler>
	...

08000274 <LL_RCC_HSI_Enable>:
 8000274:	b580      	push	{r7, lr}
 8000276:	af00      	add	r7, sp, #0
 8000278:	4b04      	ldr	r3, [pc, #16]	; (800028c <LL_RCC_HSI_Enable+0x18>)
 800027a:	681a      	ldr	r2, [r3, #0]
 800027c:	4b03      	ldr	r3, [pc, #12]	; (800028c <LL_RCC_HSI_Enable+0x18>)
 800027e:	2101      	movs	r1, #1
 8000280:	430a      	orrs	r2, r1
 8000282:	601a      	str	r2, [r3, #0]
 8000284:	46c0      	nop			; (mov r8, r8)
 8000286:	46bd      	mov	sp, r7
 8000288:	bd80      	pop	{r7, pc}
 800028a:	46c0      	nop			; (mov r8, r8)
 800028c:	40021000 	.word	0x40021000

08000290 <LL_RCC_HSI_IsReady>:
 8000290:	b580      	push	{r7, lr}
 8000292:	af00      	add	r7, sp, #0
 8000294:	4b05      	ldr	r3, [pc, #20]	; (80002ac <LL_RCC_HSI_IsReady+0x1c>)
 8000296:	681b      	ldr	r3, [r3, #0]
 8000298:	2202      	movs	r2, #2
 800029a:	4013      	ands	r3, r2
 800029c:	3b02      	subs	r3, #2
 800029e:	425a      	negs	r2, r3
 80002a0:	4153      	adcs	r3, r2
 80002a2:	b2db      	uxtb	r3, r3
 80002a4:	0018      	movs	r0, r3
 80002a6:	46bd      	mov	sp, r7
 80002a8:	bd80      	pop	{r7, pc}
 80002aa:	46c0      	nop			; (mov r8, r8)
 80002ac:	40021000 	.word	0x40021000

080002b0 <LL_RCC_SetSysClkSource>:
 80002b0:	b580      	push	{r7, lr}
 80002b2:	b082      	sub	sp, #8
 80002b4:	af00      	add	r7, sp, #0
 80002b6:	6078      	str	r0, [r7, #4]
 80002b8:	4b06      	ldr	r3, [pc, #24]	; (80002d4 <LL_RCC_SetSysClkSource+0x24>)
 80002ba:	685b      	ldr	r3, [r3, #4]
 80002bc:	2203      	movs	r2, #3
 80002be:	4393      	bics	r3, r2
 80002c0:	0019      	movs	r1, r3
 80002c2:	4b04      	ldr	r3, [pc, #16]	; (80002d4 <LL_RCC_SetSysClkSource+0x24>)
 80002c4:	687a      	ldr	r2, [r7, #4]
 80002c6:	430a      	orrs	r2, r1
 80002c8:	605a      	str	r2, [r3, #4]
 80002ca:	46c0      	nop			; (mov r8, r8)
 80002cc:	46bd      	mov	sp, r7
 80002ce:	b002      	add	sp, #8
 80002d0:	bd80      	pop	{r7, pc}
 80002d2:	46c0      	nop			; (mov r8, r8)
 80002d4:	40021000 	.word	0x40021000

080002d8 <LL_RCC_GetSysClkSource>:
 80002d8:	b580      	push	{r7, lr}
 80002da:	af00      	add	r7, sp, #0
 80002dc:	4b03      	ldr	r3, [pc, #12]	; (80002ec <LL_RCC_GetSysClkSource+0x14>)
 80002de:	685b      	ldr	r3, [r3, #4]
 80002e0:	220c      	movs	r2, #12
 80002e2:	4013      	ands	r3, r2
 80002e4:	0018      	movs	r0, r3
 80002e6:	46bd      	mov	sp, r7
 80002e8:	bd80      	pop	{r7, pc}
 80002ea:	46c0      	nop			; (mov r8, r8)
 80002ec:	40021000 	.word	0x40021000

080002f0 <LL_RCC_SetAHBPrescaler>:
 80002f0:	b580      	push	{r7, lr}
 80002f2:	b082      	sub	sp, #8
 80002f4:	af00      	add	r7, sp, #0
 80002f6:	6078      	str	r0, [r7, #4]
 80002f8:	4b06      	ldr	r3, [pc, #24]	; (8000314 <LL_RCC_SetAHBPrescaler+0x24>)
 80002fa:	685b      	ldr	r3, [r3, #4]
 80002fc:	22f0      	movs	r2, #240	; 0xf0
 80002fe:	4393      	bics	r3, r2
 8000300:	0019      	movs	r1, r3
 8000302:	4b04      	ldr	r3, [pc, #16]	; (8000314 <LL_RCC_SetAHBPrescaler+0x24>)
 8000304:	687a      	ldr	r2, [r7, #4]
 8000306:	430a      	orrs	r2, r1
 8000308:	605a      	str	r2, [r3, #4]
 800030a:	46c0      	nop			; (mov r8, r8)
 800030c:	46bd      	mov	sp, r7
 800030e:	b002      	add	sp, #8
 8000310:	bd80      	pop	{r7, pc}
 8000312:	46c0      	nop			; (mov r8, r8)
 8000314:	40021000 	.word	0x40021000

08000318 <LL_RCC_SetAPB1Prescaler>:
 8000318:	b580      	push	{r7, lr}
 800031a:	b082      	sub	sp, #8
 800031c:	af00      	add	r7, sp, #0
 800031e:	6078      	str	r0, [r7, #4]
 8000320:	4b06      	ldr	r3, [pc, #24]	; (800033c <LL_RCC_SetAPB1Prescaler+0x24>)
 8000322:	685b      	ldr	r3, [r3, #4]
 8000324:	4a06      	ldr	r2, [pc, #24]	; (8000340 <LL_RCC_SetAPB1Prescaler+0x28>)
 8000326:	4013      	ands	r3, r2
 8000328:	0019      	movs	r1, r3
 800032a:	4b04      	ldr	r3, [pc, #16]	; (800033c <LL_RCC_SetAPB1Prescaler+0x24>)
 800032c:	687a      	ldr	r2, [r7, #4]
 800032e:	430a      	orrs	r2, r1
 8000330:	605a      	str	r2, [r3, #4]
 8000332:	46c0      	nop			; (mov r8, r8)
 8000334:	46bd      	mov	sp, r7
 8000336:	b002      	add	sp, #8
 8000338:	bd80      	pop	{r7, pc}
 800033a:	46c0      	nop			; (mov r8, r8)
 800033c:	40021000 	.word	0x40021000
 8000340:	fffff8ff 	.word	0xfffff8ff

08000344 <LL_RCC_PLL_Enable>:
 8000344:	b580      	push	{r7, lr}
 8000346:	af00      	add	r7, sp, #0
 8000348:	4b04      	ldr	r3, [pc, #16]	; (800035c <LL_RCC_PLL_Enable+0x18>)
 800034a:	681a      	ldr	r2, [r3, #0]
 800034c:	4b03      	ldr	r3, [pc, #12]	; (800035c <LL_RCC_PLL_Enable+0x18>)
 800034e:	2180      	movs	r1, #128	; 0x80
 8000350:	0449      	lsls	r1, r1, #17
 8000352:	430a      	orrs	r2, r1
 8000354:	601a      	str	r2, [r3, #0]
 8000356:	46c0      	nop			; (mov r8, r8)
 8000358:	46bd      	mov	sp, r7
 800035a:	bd80      	pop	{r7, pc}
 800035c:	40021000 	.word	0x40021000

08000360 <LL_RCC_PLL_IsReady>:
 8000360:	b580      	push	{r7, lr}
 8000362:	af00      	add	r7, sp, #0
 8000364:	4b07      	ldr	r3, [pc, #28]	; (8000384 <LL_RCC_PLL_IsReady+0x24>)
 8000366:	681a      	ldr	r2, [r3, #0]
 8000368:	2380      	movs	r3, #128	; 0x80
 800036a:	049b      	lsls	r3, r3, #18
 800036c:	4013      	ands	r3, r2
 800036e:	22fe      	movs	r2, #254	; 0xfe
 8000370:	0612      	lsls	r2, r2, #24
 8000372:	4694      	mov	ip, r2
 8000374:	4463      	add	r3, ip
 8000376:	425a      	negs	r2, r3
 8000378:	4153      	adcs	r3, r2
 800037a:	b2db      	uxtb	r3, r3
 800037c:	0018      	movs	r0, r3
 800037e:	46bd      	mov	sp, r7
 8000380:	bd80      	pop	{r7, pc}
 8000382:	46c0      	nop			; (mov r8, r8)
 8000384:	40021000 	.word	0x40021000

08000388 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000388:	b580      	push	{r7, lr}
 800038a:	b082      	sub	sp, #8
 800038c:	af00      	add	r7, sp, #0
 800038e:	6078      	str	r0, [r7, #4]
 8000390:	6039      	str	r1, [r7, #0]
 8000392:	4b0e      	ldr	r3, [pc, #56]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000394:	685b      	ldr	r3, [r3, #4]
 8000396:	4a0e      	ldr	r2, [pc, #56]	; (80003d0 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000398:	4013      	ands	r3, r2
 800039a:	0019      	movs	r1, r3
 800039c:	687a      	ldr	r2, [r7, #4]
 800039e:	2380      	movs	r3, #128	; 0x80
 80003a0:	025b      	lsls	r3, r3, #9
 80003a2:	401a      	ands	r2, r3
 80003a4:	683b      	ldr	r3, [r7, #0]
 80003a6:	431a      	orrs	r2, r3
 80003a8:	4b08      	ldr	r3, [pc, #32]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003aa:	430a      	orrs	r2, r1
 80003ac:	605a      	str	r2, [r3, #4]
 80003ae:	4b07      	ldr	r3, [pc, #28]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003b0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80003b2:	220f      	movs	r2, #15
 80003b4:	4393      	bics	r3, r2
 80003b6:	0019      	movs	r1, r3
 80003b8:	687b      	ldr	r3, [r7, #4]
 80003ba:	220f      	movs	r2, #15
 80003bc:	401a      	ands	r2, r3
 80003be:	4b03      	ldr	r3, [pc, #12]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003c0:	430a      	orrs	r2, r1
 80003c2:	62da      	str	r2, [r3, #44]	; 0x2c
 80003c4:	46c0      	nop			; (mov r8, r8)
 80003c6:	46bd      	mov	sp, r7
 80003c8:	b002      	add	sp, #8
 80003ca:	bd80      	pop	{r7, pc}
 80003cc:	40021000 	.word	0x40021000
 80003d0:	ffc2ffff 	.word	0xffc2ffff

080003d4 <LL_FLASH_SetLatency>:
 80003d4:	b580      	push	{r7, lr}
 80003d6:	b082      	sub	sp, #8
 80003d8:	af00      	add	r7, sp, #0
 80003da:	6078      	str	r0, [r7, #4]
 80003dc:	4b06      	ldr	r3, [pc, #24]	; (80003f8 <LL_FLASH_SetLatency+0x24>)
 80003de:	681b      	ldr	r3, [r3, #0]
 80003e0:	2201      	movs	r2, #1
 80003e2:	4393      	bics	r3, r2
 80003e4:	0019      	movs	r1, r3
 80003e6:	4b04      	ldr	r3, [pc, #16]	; (80003f8 <LL_FLASH_SetLatency+0x24>)
 80003e8:	687a      	ldr	r2, [r7, #4]
 80003ea:	430a      	orrs	r2, r1
 80003ec:	601a      	str	r2, [r3, #0]
 80003ee:	46c0      	nop			; (mov r8, r8)
 80003f0:	46bd      	mov	sp, r7
 80003f2:	b002      	add	sp, #8
 80003f4:	bd80      	pop	{r7, pc}
 80003f6:	46c0      	nop			; (mov r8, r8)
 80003f8:	40022000 	.word	0x40022000

080003fc <LL_AHB1_GRP1_EnableClock>:
 80003fc:	b580      	push	{r7, lr}
 80003fe:	b084      	sub	sp, #16
 8000400:	af00      	add	r7, sp, #0
 8000402:	6078      	str	r0, [r7, #4]
 8000404:	4b07      	ldr	r3, [pc, #28]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000406:	6959      	ldr	r1, [r3, #20]
 8000408:	4b06      	ldr	r3, [pc, #24]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 800040a:	687a      	ldr	r2, [r7, #4]
 800040c:	430a      	orrs	r2, r1
 800040e:	615a      	str	r2, [r3, #20]
 8000410:	4b04      	ldr	r3, [pc, #16]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000412:	695b      	ldr	r3, [r3, #20]
 8000414:	687a      	ldr	r2, [r7, #4]
 8000416:	4013      	ands	r3, r2
 8000418:	60fb      	str	r3, [r7, #12]
 800041a:	68fb      	ldr	r3, [r7, #12]
 800041c:	46c0      	nop			; (mov r8, r8)
 800041e:	46bd      	mov	sp, r7
 8000420:	b004      	add	sp, #16
 8000422:	bd80      	pop	{r7, pc}
 8000424:	40021000 	.word	0x40021000

08000428 <LL_GPIO_SetPinMode>:
 8000428:	b580      	push	{r7, lr}
 800042a:	b084      	sub	sp, #16
 800042c:	af00      	add	r7, sp, #0
 800042e:	60f8      	str	r0, [r7, #12]
 8000430:	60b9      	str	r1, [r7, #8]
 8000432:	607a      	str	r2, [r7, #4]
 8000434:	68fb      	ldr	r3, [r7, #12]
 8000436:	6819      	ldr	r1, [r3, #0]
 8000438:	68bb      	ldr	r3, [r7, #8]
 800043a:	68ba      	ldr	r2, [r7, #8]
 800043c:	435a      	muls	r2, r3
 800043e:	0013      	movs	r3, r2
 8000440:	005b      	lsls	r3, r3, #1
 8000442:	189b      	adds	r3, r3, r2
 8000444:	43db      	mvns	r3, r3
 8000446:	400b      	ands	r3, r1
 8000448:	001a      	movs	r2, r3
 800044a:	68bb      	ldr	r3, [r7, #8]
 800044c:	68b9      	ldr	r1, [r7, #8]
 800044e:	434b      	muls	r3, r1
 8000450:	6879      	ldr	r1, [r7, #4]
 8000452:	434b      	muls	r3, r1
 8000454:	431a      	orrs	r2, r3
 8000456:	68fb      	ldr	r3, [r7, #12]
 8000458:	601a      	str	r2, [r3, #0]
 800045a:	46c0      	nop			; (mov r8, r8)
 800045c:	46bd      	mov	sp, r7
 800045e:	b004      	add	sp, #16
 8000460:	bd80      	pop	{r7, pc}

08000462 <LL_GPIO_WriteOutputPort>:
 8000462:	b580      	push	{r7, lr}
 8000464:	b082      	sub	sp, #8
 8000466:	af00      	add	r7, sp, #0
 8000468:	6078      	str	r0, [r7, #4]
 800046a:	6039      	str	r1, [r7, #0]
 800046c:	687b      	ldr	r3, [r7, #4]
 800046e:	683a      	ldr	r2, [r7, #0]
 8000470:	615a      	str	r2, [r3, #20]
 8000472:	46c0      	nop			; (mov r8, r8)
 8000474:	46bd      	mov	sp, r7
 8000476:	b002      	add	sp, #8
 8000478:	bd80      	pop	{r7, pc}

0800047a <LL_GPIO_ReadOutputPort>:
 800047a:	b580      	push	{r7, lr}
 800047c:	b082      	sub	sp, #8
 800047e:	af00      	add	r7, sp, #0
 8000480:	6078      	str	r0, [r7, #4]
 8000482:	687b      	ldr	r3, [r7, #4]
 8000484:	695b      	ldr	r3, [r3, #20]
 8000486:	0018      	movs	r0, r3
 8000488:	46bd      	mov	sp, r7
 800048a:	b002      	add	sp, #8
 800048c:	bd80      	pop	{r7, pc}

0800048e <LL_GPIO_SetOutputPin>:
 800048e:	b580      	push	{r7, lr}
 8000490:	b082      	sub	sp, #8
 8000492:	af00      	add	r7, sp, #0
 8000494:	6078      	str	r0, [r7, #4]
 8000496:	6039      	str	r1, [r7, #0]
 8000498:	687b      	ldr	r3, [r7, #4]
 800049a:	683a      	ldr	r2, [r7, #0]
 800049c:	619a      	str	r2, [r3, #24]
 800049e:	46c0      	nop			; (mov r8, r8)
 80004a0:	46bd      	mov	sp, r7
 80004a2:	b002      	add	sp, #8
 80004a4:	bd80      	pop	{r7, pc}

080004a6 <LL_GPIO_ResetOutputPin>:
 80004a6:	b580      	push	{r7, lr}
 80004a8:	b082      	sub	sp, #8
 80004aa:	af00      	add	r7, sp, #0
 80004ac:	6078      	str	r0, [r7, #4]
 80004ae:	6039      	str	r1, [r7, #0]
 80004b0:	687b      	ldr	r3, [r7, #4]
 80004b2:	683a      	ldr	r2, [r7, #0]
 80004b4:	629a      	str	r2, [r3, #40]	; 0x28
 80004b6:	46c0      	nop			; (mov r8, r8)
 80004b8:	46bd      	mov	sp, r7
 80004ba:	b002      	add	sp, #8
 80004bc:	bd80      	pop	{r7, pc}
	...

080004c0 <rcc_config>:
 80004c0:	b580      	push	{r7, lr}
 80004c2:	af00      	add	r7, sp, #0
 80004c4:	2001      	movs	r0, #1
 80004c6:	f7ff ff85 	bl	80003d4 <LL_FLASH_SetLatency>
 80004ca:	f7ff fed3 	bl	8000274 <LL_RCC_HSI_Enable>
 80004ce:	46c0      	nop			; (mov r8, r8)
 80004d0:	f7ff fede 	bl	8000290 <LL_RCC_HSI_IsReady>
 80004d4:	0003      	movs	r3, r0
 80004d6:	2b01      	cmp	r3, #1
 80004d8:	d1fa      	bne.n	80004d0 <rcc_config+0x10>
 80004da:	23a0      	movs	r3, #160	; 0xa0
 80004dc:	039b      	lsls	r3, r3, #14
 80004de:	0019      	movs	r1, r3
 80004e0:	2000      	movs	r0, #0
 80004e2:	f7ff ff51 	bl	8000388 <LL_RCC_PLL_ConfigDomain_SYS>
 80004e6:	f7ff ff2d 	bl	8000344 <LL_RCC_PLL_Enable>
 80004ea:	46c0      	nop			; (mov r8, r8)
 80004ec:	f7ff ff38 	bl	8000360 <LL_RCC_PLL_IsReady>
 80004f0:	0003      	movs	r3, r0
 80004f2:	2b01      	cmp	r3, #1
 80004f4:	d1fa      	bne.n	80004ec <rcc_config+0x2c>
 80004f6:	2000      	movs	r0, #0
 80004f8:	f7ff fefa 	bl	80002f0 <LL_RCC_SetAHBPrescaler>
 80004fc:	2002      	movs	r0, #2
 80004fe:	f7ff fed7 	bl	80002b0 <LL_RCC_SetSysClkSource>
 8000502:	46c0      	nop			; (mov r8, r8)
 8000504:	f7ff fee8 	bl	80002d8 <LL_RCC_GetSysClkSource>
 8000508:	0003      	movs	r3, r0
 800050a:	2b08      	cmp	r3, #8
 800050c:	d1fa      	bne.n	8000504 <rcc_config+0x44>
 800050e:	2000      	movs	r0, #0
 8000510:	f7ff ff02 	bl	8000318 <LL_RCC_SetAPB1Prescaler>
 8000514:	4b02      	ldr	r3, [pc, #8]	; (8000520 <rcc_config+0x60>)
 8000516:	4a03      	ldr	r2, [pc, #12]	; (8000524 <rcc_config+0x64>)
 8000518:	601a      	str	r2, [r3, #0]
 800051a:	46c0      	nop			; (mov r8, r8)
 800051c:	46bd      	mov	sp, r7
 800051e:	bd80      	pop	{r7, pc}
 8000520:	20000004 	.word	0x20000004
 8000524:	02dc6c00 	.word	0x02dc6c00

08000528 <gpio_config>:
 8000528:	b580      	push	{r7, lr}
 800052a:	af00      	add	r7, sp, #0
 800052c:	2380      	movs	r3, #128	; 0x80
 800052e:	031b      	lsls	r3, r3, #12
 8000530:	0018      	movs	r0, r3
 8000532:	f7ff ff63 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 8000536:	2380      	movs	r3, #128	; 0x80
 8000538:	005b      	lsls	r3, r3, #1
 800053a:	4832      	ldr	r0, [pc, #200]	; (8000604 <gpio_config+0xdc>)
 800053c:	2201      	movs	r2, #1
 800053e:	0019      	movs	r1, r3
 8000540:	f7ff ff72 	bl	8000428 <LL_GPIO_SetPinMode>
 8000544:	2380      	movs	r3, #128	; 0x80
 8000546:	009b      	lsls	r3, r3, #2
 8000548:	482e      	ldr	r0, [pc, #184]	; (8000604 <gpio_config+0xdc>)
 800054a:	2201      	movs	r2, #1
 800054c:	0019      	movs	r1, r3
 800054e:	f7ff ff6b 	bl	8000428 <LL_GPIO_SetPinMode>
 8000552:	2380      	movs	r3, #128	; 0x80
 8000554:	02db      	lsls	r3, r3, #11
 8000556:	0018      	movs	r0, r3
 8000558:	f7ff ff50 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 800055c:	4b2a      	ldr	r3, [pc, #168]	; (8000608 <gpio_config+0xe0>)
 800055e:	2201      	movs	r2, #1
 8000560:	2101      	movs	r1, #1
 8000562:	0018      	movs	r0, r3
 8000564:	f7ff ff60 	bl	8000428 <LL_GPIO_SetPinMode>
 8000568:	4b27      	ldr	r3, [pc, #156]	; (8000608 <gpio_config+0xe0>)
 800056a:	2201      	movs	r2, #1
 800056c:	2102      	movs	r1, #2
 800056e:	0018      	movs	r0, r3
 8000570:	f7ff ff5a 	bl	8000428 <LL_GPIO_SetPinMode>
 8000574:	4b24      	ldr	r3, [pc, #144]	; (8000608 <gpio_config+0xe0>)
 8000576:	2201      	movs	r2, #1
 8000578:	2104      	movs	r1, #4
 800057a:	0018      	movs	r0, r3
 800057c:	f7ff ff54 	bl	8000428 <LL_GPIO_SetPinMode>
 8000580:	4b21      	ldr	r3, [pc, #132]	; (8000608 <gpio_config+0xe0>)
 8000582:	2201      	movs	r2, #1
 8000584:	2108      	movs	r1, #8
 8000586:	0018      	movs	r0, r3
 8000588:	f7ff ff4e 	bl	8000428 <LL_GPIO_SetPinMode>
 800058c:	4b1e      	ldr	r3, [pc, #120]	; (8000608 <gpio_config+0xe0>)
 800058e:	2201      	movs	r2, #1
 8000590:	2110      	movs	r1, #16
 8000592:	0018      	movs	r0, r3
 8000594:	f7ff ff48 	bl	8000428 <LL_GPIO_SetPinMode>
 8000598:	4b1b      	ldr	r3, [pc, #108]	; (8000608 <gpio_config+0xe0>)
 800059a:	2201      	movs	r2, #1
 800059c:	2120      	movs	r1, #32
 800059e:	0018      	movs	r0, r3
 80005a0:	f7ff ff42 	bl	8000428 <LL_GPIO_SetPinMode>
 80005a4:	4b18      	ldr	r3, [pc, #96]	; (8000608 <gpio_config+0xe0>)
 80005a6:	2201      	movs	r2, #1
 80005a8:	2140      	movs	r1, #64	; 0x40
 80005aa:	0018      	movs	r0, r3
 80005ac:	f7ff ff3c 	bl	8000428 <LL_GPIO_SetPinMode>
 80005b0:	4b15      	ldr	r3, [pc, #84]	; (8000608 <gpio_config+0xe0>)
 80005b2:	2201      	movs	r2, #1
 80005b4:	2180      	movs	r1, #128	; 0x80
 80005b6:	0018      	movs	r0, r3
 80005b8:	f7ff ff36 	bl	8000428 <LL_GPIO_SetPinMode>
 80005bc:	2380      	movs	r3, #128	; 0x80
 80005be:	00db      	lsls	r3, r3, #3
 80005c0:	4811      	ldr	r0, [pc, #68]	; (8000608 <gpio_config+0xe0>)
 80005c2:	2201      	movs	r2, #1
 80005c4:	0019      	movs	r1, r3
 80005c6:	f7ff ff2f 	bl	8000428 <LL_GPIO_SetPinMode>
 80005ca:	2380      	movs	r3, #128	; 0x80
 80005cc:	011b      	lsls	r3, r3, #4
 80005ce:	480e      	ldr	r0, [pc, #56]	; (8000608 <gpio_config+0xe0>)
 80005d0:	2201      	movs	r2, #1
 80005d2:	0019      	movs	r1, r3
 80005d4:	f7ff ff28 	bl	8000428 <LL_GPIO_SetPinMode>
 80005d8:	2380      	movs	r3, #128	; 0x80
 80005da:	015b      	lsls	r3, r3, #5
 80005dc:	480a      	ldr	r0, [pc, #40]	; (8000608 <gpio_config+0xe0>)
 80005de:	2201      	movs	r2, #1
 80005e0:	0019      	movs	r1, r3
 80005e2:	f7ff ff21 	bl	8000428 <LL_GPIO_SetPinMode>
 80005e6:	2380      	movs	r3, #128	; 0x80
 80005e8:	029b      	lsls	r3, r3, #10
 80005ea:	0018      	movs	r0, r3
 80005ec:	f7ff ff06 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 80005f0:	4b04      	ldr	r3, [pc, #16]	; (8000604 <gpio_config+0xdc>)
 80005f2:	2200      	movs	r2, #0
 80005f4:	2101      	movs	r1, #1
 80005f6:	0018      	movs	r0, r3
 80005f8:	f7ff ff16 	bl	8000428 <LL_GPIO_SetPinMode>
 80005fc:	46c0      	nop			; (mov r8, r8)
 80005fe:	46bd      	mov	sp, r7
 8000600:	bd80      	pop	{r7, pc}
 8000602:	46c0      	nop			; (mov r8, r8)
 8000604:	48000800 	.word	0x48000800
 8000608:	48000400 	.word	0x48000400

0800060c <delay_5ms>:
 800060c:	b580      	push	{r7, lr}
 800060e:	4e02      	ldr	r6, [pc, #8]	; (8000618 <delay_5ms+0xc>)
 8000610:	3e01      	subs	r6, #1
 8000612:	2e00      	cmp	r6, #0
 8000614:	d1fc      	bne.n	8000610 <delay_5ms+0x4>
 8000616:	bd80      	pop	{r7, pc}
 8000618:	00002710 	.word	0x00002710
 800061c:	46c0      	nop			; (mov r8, r8)
	...

08000620 <set_indicator>:
 8000620:	b5b0      	push	{r4, r5, r7, lr}
 8000622:	b084      	sub	sp, #16
 8000624:	af00      	add	r7, sp, #0
 8000626:	0002      	movs	r2, r0
 8000628:	1dfb      	adds	r3, r7, #7
 800062a:	701a      	strb	r2, [r3, #0]
 800062c:	250f      	movs	r5, #15
 800062e:	197b      	adds	r3, r7, r5
 8000630:	220a      	movs	r2, #10
 8000632:	701a      	strb	r2, [r3, #0]
 8000634:	2300      	movs	r3, #0
 8000636:	60bb      	str	r3, [r7, #8]
 8000638:	4b12      	ldr	r3, [pc, #72]	; (8000684 <set_indicator+0x64>)
 800063a:	0018      	movs	r0, r3
 800063c:	f7ff ff1d 	bl	800047a <LL_GPIO_ReadOutputPort>
 8000640:	0003      	movs	r3, r0
 8000642:	60bb      	str	r3, [r7, #8]
 8000644:	4b10      	ldr	r3, [pc, #64]	; (8000688 <set_indicator+0x68>)
 8000646:	681b      	ldr	r3, [r3, #0]
 8000648:	43db      	mvns	r3, r3
 800064a:	68ba      	ldr	r2, [r7, #8]
 800064c:	401a      	ands	r2, r3
 800064e:	0014      	movs	r4, r2
 8000650:	1dfa      	adds	r2, r7, #7
 8000652:	197b      	adds	r3, r7, r5
 8000654:	7812      	ldrb	r2, [r2, #0]
 8000656:	781b      	ldrb	r3, [r3, #0]
 8000658:	0019      	movs	r1, r3
 800065a:	0010      	movs	r0, r2
 800065c:	f7ff fdda 	bl	8000214 <__aeabi_uidivmod>
 8000660:	000b      	movs	r3, r1
 8000662:	b2db      	uxtb	r3, r3
 8000664:	001a      	movs	r2, r3
 8000666:	4b09      	ldr	r3, [pc, #36]	; (800068c <set_indicator+0x6c>)
 8000668:	0092      	lsls	r2, r2, #2
 800066a:	58d3      	ldr	r3, [r2, r3]
 800066c:	4323      	orrs	r3, r4
 800066e:	60bb      	str	r3, [r7, #8]
 8000670:	68bb      	ldr	r3, [r7, #8]
 8000672:	4a04      	ldr	r2, [pc, #16]	; (8000684 <set_indicator+0x64>)
 8000674:	0019      	movs	r1, r3
 8000676:	0010      	movs	r0, r2
 8000678:	f7ff fef3 	bl	8000462 <LL_GPIO_WriteOutputPort>
 800067c:	46c0      	nop			; (mov r8, r8)
 800067e:	46bd      	mov	sp, r7
 8000680:	b004      	add	sp, #16
 8000682:	bdb0      	pop	{r4, r5, r7, pc}
 8000684:	48000400 	.word	0x48000400
 8000688:	20000000 	.word	0x20000000
 800068c:	08000b18 	.word	0x08000b18

08000690 <get_currentNumber>:
 8000690:	b580      	push	{r7, lr}
 8000692:	b084      	sub	sp, #16
 8000694:	af00      	add	r7, sp, #0
 8000696:	6078      	str	r0, [r7, #4]
 8000698:	000a      	movs	r2, r1
 800069a:	1cfb      	adds	r3, r7, #3
 800069c:	701a      	strb	r2, [r3, #0]
 800069e:	230f      	movs	r3, #15
 80006a0:	18fb      	adds	r3, r7, r3
 80006a2:	2200      	movs	r2, #0
 80006a4:	701a      	strb	r2, [r3, #0]
 80006a6:	1cfb      	adds	r3, r7, #3
 80006a8:	781b      	ldrb	r3, [r3, #0]
 80006aa:	2b02      	cmp	r3, #2
 80006ac:	d013      	beq.n	80006d6 <get_currentNumber+0x46>
 80006ae:	dc02      	bgt.n	80006b6 <get_currentNumber+0x26>
 80006b0:	2b01      	cmp	r3, #1
 80006b2:	d005      	beq.n	80006c0 <get_currentNumber+0x30>
 80006b4:	e03b      	b.n	800072e <get_currentNumber+0x9e>
 80006b6:	2b03      	cmp	r3, #3
 80006b8:	d01d      	beq.n	80006f6 <get_currentNumber+0x66>
 80006ba:	2b04      	cmp	r3, #4
 80006bc:	d02b      	beq.n	8000716 <get_currentNumber+0x86>
 80006be:	e036      	b.n	800072e <get_currentNumber+0x9e>
 80006c0:	687b      	ldr	r3, [r7, #4]
 80006c2:	210a      	movs	r1, #10
 80006c4:	0018      	movs	r0, r3
 80006c6:	f7ff fda5 	bl	8000214 <__aeabi_uidivmod>
 80006ca:	000b      	movs	r3, r1
 80006cc:	001a      	movs	r2, r3
 80006ce:	230f      	movs	r3, #15
 80006d0:	18fb      	adds	r3, r7, r3
 80006d2:	701a      	strb	r2, [r3, #0]
 80006d4:	e02b      	b.n	800072e <get_currentNumber+0x9e>
 80006d6:	687b      	ldr	r3, [r7, #4]
 80006d8:	2164      	movs	r1, #100	; 0x64
 80006da:	0018      	movs	r0, r3
 80006dc:	f7ff fd9a 	bl	8000214 <__aeabi_uidivmod>
 80006e0:	000b      	movs	r3, r1
 80006e2:	210a      	movs	r1, #10
 80006e4:	0018      	movs	r0, r3
 80006e6:	f7ff fd0f 	bl	8000108 <__udivsi3>
 80006ea:	0003      	movs	r3, r0
 80006ec:	001a      	movs	r2, r3
 80006ee:	230f      	movs	r3, #15
 80006f0:	18fb      	adds	r3, r7, r3
 80006f2:	701a      	strb	r2, [r3, #0]
 80006f4:	e01b      	b.n	800072e <get_currentNumber+0x9e>
 80006f6:	687b      	ldr	r3, [r7, #4]
 80006f8:	2164      	movs	r1, #100	; 0x64
 80006fa:	0018      	movs	r0, r3
 80006fc:	f7ff fd04 	bl	8000108 <__udivsi3>
 8000700:	0003      	movs	r3, r0
 8000702:	210a      	movs	r1, #10
 8000704:	0018      	movs	r0, r3
 8000706:	f7ff fd85 	bl	8000214 <__aeabi_uidivmod>
 800070a:	000b      	movs	r3, r1
 800070c:	001a      	movs	r2, r3
 800070e:	230f      	movs	r3, #15
 8000710:	18fb      	adds	r3, r7, r3
 8000712:	701a      	strb	r2, [r3, #0]
 8000714:	e00b      	b.n	800072e <get_currentNumber+0x9e>
 8000716:	687a      	ldr	r2, [r7, #4]
 8000718:	23fa      	movs	r3, #250	; 0xfa
 800071a:	0099      	lsls	r1, r3, #2
 800071c:	0010      	movs	r0, r2
 800071e:	f7ff fcf3 	bl	8000108 <__udivsi3>
 8000722:	0003      	movs	r3, r0
 8000724:	001a      	movs	r2, r3
 8000726:	230f      	movs	r3, #15
 8000728:	18fb      	adds	r3, r7, r3
 800072a:	701a      	strb	r2, [r3, #0]
 800072c:	46c0      	nop			; (mov r8, r8)
 800072e:	230f      	movs	r3, #15
 8000730:	18fb      	adds	r3, r7, r3
 8000732:	781b      	ldrb	r3, [r3, #0]
 8000734:	0018      	movs	r0, r3
 8000736:	46bd      	mov	sp, r7
 8000738:	b004      	add	sp, #16
 800073a:	bd80      	pop	{r7, pc}

0800073c <main>:
 800073c:	b580      	push	{r7, lr}
 800073e:	af00      	add	r7, sp, #0
 8000740:	f7ff febe 	bl	80004c0 <rcc_config>
 8000744:	f7ff fef0 	bl	8000528 <gpio_config>
 8000748:	4b53      	ldr	r3, [pc, #332]	; (8000898 <main+0x15c>)
 800074a:	2180      	movs	r1, #128	; 0x80
 800074c:	0018      	movs	r0, r3
 800074e:	f7ff feaa 	bl	80004a6 <LL_GPIO_ResetOutputPin>
 8000752:	2380      	movs	r3, #128	; 0x80
 8000754:	00db      	lsls	r3, r3, #3
 8000756:	4a50      	ldr	r2, [pc, #320]	; (8000898 <main+0x15c>)
 8000758:	0019      	movs	r1, r3
 800075a:	0010      	movs	r0, r2
 800075c:	f7ff fea3 	bl	80004a6 <LL_GPIO_ResetOutputPin>
 8000760:	2380      	movs	r3, #128	; 0x80
 8000762:	011b      	lsls	r3, r3, #4
 8000764:	4a4c      	ldr	r2, [pc, #304]	; (8000898 <main+0x15c>)
 8000766:	0019      	movs	r1, r3
 8000768:	0010      	movs	r0, r2
 800076a:	f7ff fe9c 	bl	80004a6 <LL_GPIO_ResetOutputPin>
 800076e:	2380      	movs	r3, #128	; 0x80
 8000770:	015b      	lsls	r3, r3, #5
 8000772:	4a49      	ldr	r2, [pc, #292]	; (8000898 <main+0x15c>)
 8000774:	0019      	movs	r1, r3
 8000776:	0010      	movs	r0, r2
 8000778:	f7ff fe95 	bl	80004a6 <LL_GPIO_ResetOutputPin>
 800077c:	2380      	movs	r3, #128	; 0x80
 800077e:	015b      	lsls	r3, r3, #5
 8000780:	4a45      	ldr	r2, [pc, #276]	; (8000898 <main+0x15c>)
 8000782:	0019      	movs	r1, r3
 8000784:	0010      	movs	r0, r2
 8000786:	f7ff fe82 	bl	800048e <LL_GPIO_SetOutputPin>
 800078a:	4b44      	ldr	r3, [pc, #272]	; (800089c <main+0x160>)
 800078c:	681b      	ldr	r3, [r3, #0]
 800078e:	b2db      	uxtb	r3, r3
 8000790:	0018      	movs	r0, r3
 8000792:	f7ff ff45 	bl	8000620 <set_indicator>
 8000796:	4b40      	ldr	r3, [pc, #256]	; (8000898 <main+0x15c>)
 8000798:	2180      	movs	r1, #128	; 0x80
 800079a:	0018      	movs	r0, r3
 800079c:	f7ff fe83 	bl	80004a6 <LL_GPIO_ResetOutputPin>
 80007a0:	f7ff ff34 	bl	800060c <delay_5ms>
 80007a4:	4b3c      	ldr	r3, [pc, #240]	; (8000898 <main+0x15c>)
 80007a6:	2180      	movs	r1, #128	; 0x80
 80007a8:	0018      	movs	r0, r3
 80007aa:	f7ff fe70 	bl	800048e <LL_GPIO_SetOutputPin>
 80007ae:	4b3c      	ldr	r3, [pc, #240]	; (80008a0 <main+0x164>)
 80007b0:	681b      	ldr	r3, [r3, #0]
 80007b2:	b2db      	uxtb	r3, r3
 80007b4:	0018      	movs	r0, r3
 80007b6:	f7ff ff33 	bl	8000620 <set_indicator>
 80007ba:	2380      	movs	r3, #128	; 0x80
 80007bc:	00db      	lsls	r3, r3, #3
 80007be:	4a36      	ldr	r2, [pc, #216]	; (8000898 <main+0x15c>)
 80007c0:	0019      	movs	r1, r3
 80007c2:	0010      	movs	r0, r2
 80007c4:	f7ff fe6f 	bl	80004a6 <LL_GPIO_ResetOutputPin>
 80007c8:	f7ff ff20 	bl	800060c <delay_5ms>
 80007cc:	2380      	movs	r3, #128	; 0x80
 80007ce:	00db      	lsls	r3, r3, #3
 80007d0:	4a31      	ldr	r2, [pc, #196]	; (8000898 <main+0x15c>)
 80007d2:	0019      	movs	r1, r3
 80007d4:	0010      	movs	r0, r2
 80007d6:	f7ff fe5a 	bl	800048e <LL_GPIO_SetOutputPin>
 80007da:	4b32      	ldr	r3, [pc, #200]	; (80008a4 <main+0x168>)
 80007dc:	681b      	ldr	r3, [r3, #0]
 80007de:	b2db      	uxtb	r3, r3
 80007e0:	0018      	movs	r0, r3
 80007e2:	f7ff ff1d 	bl	8000620 <set_indicator>
 80007e6:	2380      	movs	r3, #128	; 0x80
 80007e8:	011b      	lsls	r3, r3, #4
 80007ea:	4a2b      	ldr	r2, [pc, #172]	; (8000898 <main+0x15c>)
 80007ec:	0019      	movs	r1, r3
 80007ee:	0010      	movs	r0, r2
 80007f0:	f7ff fe59 	bl	80004a6 <LL_GPIO_ResetOutputPin>
 80007f4:	f7ff ff0a 	bl	800060c <delay_5ms>
 80007f8:	2380      	movs	r3, #128	; 0x80
 80007fa:	011b      	lsls	r3, r3, #4
 80007fc:	4a26      	ldr	r2, [pc, #152]	; (8000898 <main+0x15c>)
 80007fe:	0019      	movs	r1, r3
 8000800:	0010      	movs	r0, r2
 8000802:	f7ff fe44 	bl	800048e <LL_GPIO_SetOutputPin>
 8000806:	4b28      	ldr	r3, [pc, #160]	; (80008a8 <main+0x16c>)
 8000808:	681b      	ldr	r3, [r3, #0]
 800080a:	b2db      	uxtb	r3, r3
 800080c:	0018      	movs	r0, r3
 800080e:	f7ff ff07 	bl	8000620 <set_indicator>
 8000812:	2380      	movs	r3, #128	; 0x80
 8000814:	015b      	lsls	r3, r3, #5
 8000816:	4a20      	ldr	r2, [pc, #128]	; (8000898 <main+0x15c>)
 8000818:	0019      	movs	r1, r3
 800081a:	0010      	movs	r0, r2
 800081c:	f7ff fe43 	bl	80004a6 <LL_GPIO_ResetOutputPin>
 8000820:	f7ff fef4 	bl	800060c <delay_5ms>
 8000824:	4b21      	ldr	r3, [pc, #132]	; (80008ac <main+0x170>)
 8000826:	681b      	ldr	r3, [r3, #0]
 8000828:	1c5a      	adds	r2, r3, #1
 800082a:	4b20      	ldr	r3, [pc, #128]	; (80008ac <main+0x170>)
 800082c:	601a      	str	r2, [r3, #0]
 800082e:	4b1f      	ldr	r3, [pc, #124]	; (80008ac <main+0x170>)
 8000830:	681b      	ldr	r3, [r3, #0]
 8000832:	2b01      	cmp	r3, #1
 8000834:	d1a2      	bne.n	800077c <main+0x40>
 8000836:	4b1e      	ldr	r3, [pc, #120]	; (80008b0 <main+0x174>)
 8000838:	681b      	ldr	r3, [r3, #0]
 800083a:	1c5a      	adds	r2, r3, #1
 800083c:	4b1c      	ldr	r3, [pc, #112]	; (80008b0 <main+0x174>)
 800083e:	601a      	str	r2, [r3, #0]
 8000840:	4b1a      	ldr	r3, [pc, #104]	; (80008ac <main+0x170>)
 8000842:	2200      	movs	r2, #0
 8000844:	601a      	str	r2, [r3, #0]
 8000846:	4b1a      	ldr	r3, [pc, #104]	; (80008b0 <main+0x174>)
 8000848:	681b      	ldr	r3, [r3, #0]
 800084a:	2104      	movs	r1, #4
 800084c:	0018      	movs	r0, r3
 800084e:	f7ff ff1f 	bl	8000690 <get_currentNumber>
 8000852:	0003      	movs	r3, r0
 8000854:	001a      	movs	r2, r3
 8000856:	4b11      	ldr	r3, [pc, #68]	; (800089c <main+0x160>)
 8000858:	601a      	str	r2, [r3, #0]
 800085a:	4b15      	ldr	r3, [pc, #84]	; (80008b0 <main+0x174>)
 800085c:	681b      	ldr	r3, [r3, #0]
 800085e:	2103      	movs	r1, #3
 8000860:	0018      	movs	r0, r3
 8000862:	f7ff ff15 	bl	8000690 <get_currentNumber>
 8000866:	0003      	movs	r3, r0
 8000868:	001a      	movs	r2, r3
 800086a:	4b0d      	ldr	r3, [pc, #52]	; (80008a0 <main+0x164>)
 800086c:	601a      	str	r2, [r3, #0]
 800086e:	4b10      	ldr	r3, [pc, #64]	; (80008b0 <main+0x174>)
 8000870:	681b      	ldr	r3, [r3, #0]
 8000872:	2102      	movs	r1, #2
 8000874:	0018      	movs	r0, r3
 8000876:	f7ff ff0b 	bl	8000690 <get_currentNumber>
 800087a:	0003      	movs	r3, r0
 800087c:	001a      	movs	r2, r3
 800087e:	4b09      	ldr	r3, [pc, #36]	; (80008a4 <main+0x168>)
 8000880:	601a      	str	r2, [r3, #0]
 8000882:	4b0b      	ldr	r3, [pc, #44]	; (80008b0 <main+0x174>)
 8000884:	681b      	ldr	r3, [r3, #0]
 8000886:	2101      	movs	r1, #1
 8000888:	0018      	movs	r0, r3
 800088a:	f7ff ff01 	bl	8000690 <get_currentNumber>
 800088e:	0003      	movs	r3, r0
 8000890:	001a      	movs	r2, r3
 8000892:	4b05      	ldr	r3, [pc, #20]	; (80008a8 <main+0x16c>)
 8000894:	601a      	str	r2, [r3, #0]
 8000896:	e771      	b.n	800077c <main+0x40>
 8000898:	48000400 	.word	0x48000400
 800089c:	20000450 	.word	0x20000450
 80008a0:	20000454 	.word	0x20000454
 80008a4:	20000458 	.word	0x20000458
 80008a8:	2000045c 	.word	0x2000045c
 80008ac:	20000460 	.word	0x20000460
 80008b0:	20000464 	.word	0x20000464

080008b4 <SystemInit>:
 80008b4:	b580      	push	{r7, lr}
 80008b6:	af00      	add	r7, sp, #0
 80008b8:	4b1a      	ldr	r3, [pc, #104]	; (8000924 <SystemInit+0x70>)
 80008ba:	681a      	ldr	r2, [r3, #0]
 80008bc:	4b19      	ldr	r3, [pc, #100]	; (8000924 <SystemInit+0x70>)
 80008be:	2101      	movs	r1, #1
 80008c0:	430a      	orrs	r2, r1
 80008c2:	601a      	str	r2, [r3, #0]
 80008c4:	4b17      	ldr	r3, [pc, #92]	; (8000924 <SystemInit+0x70>)
 80008c6:	685a      	ldr	r2, [r3, #4]
 80008c8:	4b16      	ldr	r3, [pc, #88]	; (8000924 <SystemInit+0x70>)
 80008ca:	4917      	ldr	r1, [pc, #92]	; (8000928 <SystemInit+0x74>)
 80008cc:	400a      	ands	r2, r1
 80008ce:	605a      	str	r2, [r3, #4]
 80008d0:	4b14      	ldr	r3, [pc, #80]	; (8000924 <SystemInit+0x70>)
 80008d2:	681a      	ldr	r2, [r3, #0]
 80008d4:	4b13      	ldr	r3, [pc, #76]	; (8000924 <SystemInit+0x70>)
 80008d6:	4915      	ldr	r1, [pc, #84]	; (800092c <SystemInit+0x78>)
 80008d8:	400a      	ands	r2, r1
 80008da:	601a      	str	r2, [r3, #0]
 80008dc:	4b11      	ldr	r3, [pc, #68]	; (8000924 <SystemInit+0x70>)
 80008de:	681a      	ldr	r2, [r3, #0]
 80008e0:	4b10      	ldr	r3, [pc, #64]	; (8000924 <SystemInit+0x70>)
 80008e2:	4913      	ldr	r1, [pc, #76]	; (8000930 <SystemInit+0x7c>)
 80008e4:	400a      	ands	r2, r1
 80008e6:	601a      	str	r2, [r3, #0]
 80008e8:	4b0e      	ldr	r3, [pc, #56]	; (8000924 <SystemInit+0x70>)
 80008ea:	685a      	ldr	r2, [r3, #4]
 80008ec:	4b0d      	ldr	r3, [pc, #52]	; (8000924 <SystemInit+0x70>)
 80008ee:	4911      	ldr	r1, [pc, #68]	; (8000934 <SystemInit+0x80>)
 80008f0:	400a      	ands	r2, r1
 80008f2:	605a      	str	r2, [r3, #4]
 80008f4:	4b0b      	ldr	r3, [pc, #44]	; (8000924 <SystemInit+0x70>)
 80008f6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80008f8:	4b0a      	ldr	r3, [pc, #40]	; (8000924 <SystemInit+0x70>)
 80008fa:	210f      	movs	r1, #15
 80008fc:	438a      	bics	r2, r1
 80008fe:	62da      	str	r2, [r3, #44]	; 0x2c
 8000900:	4b08      	ldr	r3, [pc, #32]	; (8000924 <SystemInit+0x70>)
 8000902:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000904:	4b07      	ldr	r3, [pc, #28]	; (8000924 <SystemInit+0x70>)
 8000906:	490c      	ldr	r1, [pc, #48]	; (8000938 <SystemInit+0x84>)
 8000908:	400a      	ands	r2, r1
 800090a:	631a      	str	r2, [r3, #48]	; 0x30
 800090c:	4b05      	ldr	r3, [pc, #20]	; (8000924 <SystemInit+0x70>)
 800090e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000910:	4b04      	ldr	r3, [pc, #16]	; (8000924 <SystemInit+0x70>)
 8000912:	2101      	movs	r1, #1
 8000914:	438a      	bics	r2, r1
 8000916:	635a      	str	r2, [r3, #52]	; 0x34
 8000918:	4b02      	ldr	r3, [pc, #8]	; (8000924 <SystemInit+0x70>)
 800091a:	2200      	movs	r2, #0
 800091c:	609a      	str	r2, [r3, #8]
 800091e:	46c0      	nop			; (mov r8, r8)
 8000920:	46bd      	mov	sp, r7
 8000922:	bd80      	pop	{r7, pc}
 8000924:	40021000 	.word	0x40021000
 8000928:	f8ffb80c 	.word	0xf8ffb80c
 800092c:	fef6ffff 	.word	0xfef6ffff
 8000930:	fffbffff 	.word	0xfffbffff
 8000934:	ffc0ffff 	.word	0xffc0ffff
 8000938:	fffffeac 	.word	0xfffffeac

0800093c <NMI_Handler>:
 800093c:	b580      	push	{r7, lr}
 800093e:	af00      	add	r7, sp, #0
 8000940:	46c0      	nop			; (mov r8, r8)
 8000942:	46bd      	mov	sp, r7
 8000944:	bd80      	pop	{r7, pc}

08000946 <HardFault_Handler>:
 8000946:	b580      	push	{r7, lr}
 8000948:	af00      	add	r7, sp, #0
 800094a:	e7fe      	b.n	800094a <HardFault_Handler+0x4>

0800094c <SVC_Handler>:
 800094c:	b580      	push	{r7, lr}
 800094e:	af00      	add	r7, sp, #0
 8000950:	46c0      	nop			; (mov r8, r8)
 8000952:	46bd      	mov	sp, r7
 8000954:	bd80      	pop	{r7, pc}

08000956 <PendSV_Handler>:
 8000956:	b580      	push	{r7, lr}
 8000958:	af00      	add	r7, sp, #0
 800095a:	46c0      	nop			; (mov r8, r8)
 800095c:	46bd      	mov	sp, r7
 800095e:	bd80      	pop	{r7, pc}

08000960 <__libc_init_array>:
 8000960:	b570      	push	{r4, r5, r6, lr}
 8000962:	4e0d      	ldr	r6, [pc, #52]	; (8000998 <__libc_init_array+0x38>)
 8000964:	4d0d      	ldr	r5, [pc, #52]	; (800099c <__libc_init_array+0x3c>)
 8000966:	1bad      	subs	r5, r5, r6
 8000968:	10ad      	asrs	r5, r5, #2
 800096a:	d006      	beq.n	800097a <__libc_init_array+0x1a>
 800096c:	2400      	movs	r4, #0
 800096e:	00a3      	lsls	r3, r4, #2
 8000970:	58f3      	ldr	r3, [r6, r3]
 8000972:	3401      	adds	r4, #1
 8000974:	4798      	blx	r3
 8000976:	42a5      	cmp	r5, r4
 8000978:	d1f9      	bne.n	800096e <__libc_init_array+0xe>
 800097a:	f000 f8c1 	bl	8000b00 <_init>
 800097e:	4e08      	ldr	r6, [pc, #32]	; (80009a0 <__libc_init_array+0x40>)
 8000980:	4d08      	ldr	r5, [pc, #32]	; (80009a4 <__libc_init_array+0x44>)
 8000982:	1bad      	subs	r5, r5, r6
 8000984:	10ad      	asrs	r5, r5, #2
 8000986:	d006      	beq.n	8000996 <__libc_init_array+0x36>
 8000988:	2400      	movs	r4, #0
 800098a:	00a3      	lsls	r3, r4, #2
 800098c:	58f3      	ldr	r3, [r6, r3]
 800098e:	3401      	adds	r4, #1
 8000990:	4798      	blx	r3
 8000992:	42a5      	cmp	r5, r4
 8000994:	d1f9      	bne.n	800098a <__libc_init_array+0x2a>
 8000996:	bd70      	pop	{r4, r5, r6, pc}
 8000998:	08000b44 	.word	0x08000b44
 800099c:	08000b44 	.word	0x08000b44
 80009a0:	08000b44 	.word	0x08000b44
 80009a4:	08000b4c 	.word	0x08000b4c

080009a8 <register_fini>:
 80009a8:	4b03      	ldr	r3, [pc, #12]	; (80009b8 <register_fini+0x10>)
 80009aa:	b510      	push	{r4, lr}
 80009ac:	2b00      	cmp	r3, #0
 80009ae:	d002      	beq.n	80009b6 <register_fini+0xe>
 80009b0:	4802      	ldr	r0, [pc, #8]	; (80009bc <register_fini+0x14>)
 80009b2:	f000 f805 	bl	80009c0 <atexit>
 80009b6:	bd10      	pop	{r4, pc}
 80009b8:	00000000 	.word	0x00000000
 80009bc:	080009d1 	.word	0x080009d1

080009c0 <atexit>:
 80009c0:	b510      	push	{r4, lr}
 80009c2:	0001      	movs	r1, r0
 80009c4:	2300      	movs	r3, #0
 80009c6:	2200      	movs	r2, #0
 80009c8:	2000      	movs	r0, #0
 80009ca:	f000 f81f 	bl	8000a0c <__register_exitproc>
 80009ce:	bd10      	pop	{r4, pc}

080009d0 <__libc_fini_array>:
 80009d0:	b570      	push	{r4, r5, r6, lr}
 80009d2:	4b09      	ldr	r3, [pc, #36]	; (80009f8 <__libc_fini_array+0x28>)
 80009d4:	4c09      	ldr	r4, [pc, #36]	; (80009fc <__libc_fini_array+0x2c>)
 80009d6:	1ae4      	subs	r4, r4, r3
 80009d8:	10a4      	asrs	r4, r4, #2
 80009da:	d009      	beq.n	80009f0 <__libc_fini_array+0x20>
 80009dc:	4a08      	ldr	r2, [pc, #32]	; (8000a00 <__libc_fini_array+0x30>)
 80009de:	18a5      	adds	r5, r4, r2
 80009e0:	00ad      	lsls	r5, r5, #2
 80009e2:	18ed      	adds	r5, r5, r3
 80009e4:	682b      	ldr	r3, [r5, #0]
 80009e6:	3c01      	subs	r4, #1
 80009e8:	4798      	blx	r3
 80009ea:	3d04      	subs	r5, #4
 80009ec:	2c00      	cmp	r4, #0
 80009ee:	d1f9      	bne.n	80009e4 <__libc_fini_array+0x14>
 80009f0:	f000 f88c 	bl	8000b0c <_fini>
 80009f4:	bd70      	pop	{r4, r5, r6, pc}
 80009f6:	46c0      	nop			; (mov r8, r8)
 80009f8:	08000b4c 	.word	0x08000b4c
 80009fc:	08000b50 	.word	0x08000b50
 8000a00:	3fffffff 	.word	0x3fffffff

08000a04 <__retarget_lock_acquire_recursive>:
 8000a04:	4770      	bx	lr
 8000a06:	46c0      	nop			; (mov r8, r8)

08000a08 <__retarget_lock_release_recursive>:
 8000a08:	4770      	bx	lr
 8000a0a:	46c0      	nop			; (mov r8, r8)

08000a0c <__register_exitproc>:
 8000a0c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000a0e:	464e      	mov	r6, r9
 8000a10:	4645      	mov	r5, r8
 8000a12:	46de      	mov	lr, fp
 8000a14:	4657      	mov	r7, sl
 8000a16:	b5e0      	push	{r5, r6, r7, lr}
 8000a18:	4d36      	ldr	r5, [pc, #216]	; (8000af4 <__register_exitproc+0xe8>)
 8000a1a:	b083      	sub	sp, #12
 8000a1c:	0006      	movs	r6, r0
 8000a1e:	6828      	ldr	r0, [r5, #0]
 8000a20:	4698      	mov	r8, r3
 8000a22:	000f      	movs	r7, r1
 8000a24:	4691      	mov	r9, r2
 8000a26:	f7ff ffed 	bl	8000a04 <__retarget_lock_acquire_recursive>
 8000a2a:	4b33      	ldr	r3, [pc, #204]	; (8000af8 <__register_exitproc+0xec>)
 8000a2c:	681c      	ldr	r4, [r3, #0]
 8000a2e:	23a4      	movs	r3, #164	; 0xa4
 8000a30:	005b      	lsls	r3, r3, #1
 8000a32:	58e0      	ldr	r0, [r4, r3]
 8000a34:	2800      	cmp	r0, #0
 8000a36:	d052      	beq.n	8000ade <__register_exitproc+0xd2>
 8000a38:	6843      	ldr	r3, [r0, #4]
 8000a3a:	2b1f      	cmp	r3, #31
 8000a3c:	dc13      	bgt.n	8000a66 <__register_exitproc+0x5a>
 8000a3e:	1c5a      	adds	r2, r3, #1
 8000a40:	9201      	str	r2, [sp, #4]
 8000a42:	2e00      	cmp	r6, #0
 8000a44:	d128      	bne.n	8000a98 <__register_exitproc+0x8c>
 8000a46:	9a01      	ldr	r2, [sp, #4]
 8000a48:	3302      	adds	r3, #2
 8000a4a:	009b      	lsls	r3, r3, #2
 8000a4c:	6042      	str	r2, [r0, #4]
 8000a4e:	501f      	str	r7, [r3, r0]
 8000a50:	6828      	ldr	r0, [r5, #0]
 8000a52:	f7ff ffd9 	bl	8000a08 <__retarget_lock_release_recursive>
 8000a56:	2000      	movs	r0, #0
 8000a58:	b003      	add	sp, #12
 8000a5a:	bc3c      	pop	{r2, r3, r4, r5}
 8000a5c:	4690      	mov	r8, r2
 8000a5e:	4699      	mov	r9, r3
 8000a60:	46a2      	mov	sl, r4
 8000a62:	46ab      	mov	fp, r5
 8000a64:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a66:	4b25      	ldr	r3, [pc, #148]	; (8000afc <__register_exitproc+0xf0>)
 8000a68:	2b00      	cmp	r3, #0
 8000a6a:	d03d      	beq.n	8000ae8 <__register_exitproc+0xdc>
 8000a6c:	20c8      	movs	r0, #200	; 0xc8
 8000a6e:	0040      	lsls	r0, r0, #1
 8000a70:	e000      	b.n	8000a74 <__register_exitproc+0x68>
 8000a72:	bf00      	nop
 8000a74:	2800      	cmp	r0, #0
 8000a76:	d037      	beq.n	8000ae8 <__register_exitproc+0xdc>
 8000a78:	22a4      	movs	r2, #164	; 0xa4
 8000a7a:	2300      	movs	r3, #0
 8000a7c:	0052      	lsls	r2, r2, #1
 8000a7e:	58a1      	ldr	r1, [r4, r2]
 8000a80:	6043      	str	r3, [r0, #4]
 8000a82:	6001      	str	r1, [r0, #0]
 8000a84:	50a0      	str	r0, [r4, r2]
 8000a86:	3240      	adds	r2, #64	; 0x40
 8000a88:	5083      	str	r3, [r0, r2]
 8000a8a:	3204      	adds	r2, #4
 8000a8c:	5083      	str	r3, [r0, r2]
 8000a8e:	3301      	adds	r3, #1
 8000a90:	9301      	str	r3, [sp, #4]
 8000a92:	2300      	movs	r3, #0
 8000a94:	2e00      	cmp	r6, #0
 8000a96:	d0d6      	beq.n	8000a46 <__register_exitproc+0x3a>
 8000a98:	009a      	lsls	r2, r3, #2
 8000a9a:	4692      	mov	sl, r2
 8000a9c:	4482      	add	sl, r0
 8000a9e:	464a      	mov	r2, r9
 8000aa0:	2188      	movs	r1, #136	; 0x88
 8000aa2:	4654      	mov	r4, sl
 8000aa4:	5062      	str	r2, [r4, r1]
 8000aa6:	22c4      	movs	r2, #196	; 0xc4
 8000aa8:	0052      	lsls	r2, r2, #1
 8000aaa:	4691      	mov	r9, r2
 8000aac:	4481      	add	r9, r0
 8000aae:	464a      	mov	r2, r9
 8000ab0:	3987      	subs	r1, #135	; 0x87
 8000ab2:	4099      	lsls	r1, r3
 8000ab4:	6812      	ldr	r2, [r2, #0]
 8000ab6:	468b      	mov	fp, r1
 8000ab8:	430a      	orrs	r2, r1
 8000aba:	4694      	mov	ip, r2
 8000abc:	464a      	mov	r2, r9
 8000abe:	4661      	mov	r1, ip
 8000ac0:	6011      	str	r1, [r2, #0]
 8000ac2:	2284      	movs	r2, #132	; 0x84
 8000ac4:	4641      	mov	r1, r8
 8000ac6:	0052      	lsls	r2, r2, #1
 8000ac8:	50a1      	str	r1, [r4, r2]
 8000aca:	2e02      	cmp	r6, #2
 8000acc:	d1bb      	bne.n	8000a46 <__register_exitproc+0x3a>
 8000ace:	0002      	movs	r2, r0
 8000ad0:	465c      	mov	r4, fp
 8000ad2:	328d      	adds	r2, #141	; 0x8d
 8000ad4:	32ff      	adds	r2, #255	; 0xff
 8000ad6:	6811      	ldr	r1, [r2, #0]
 8000ad8:	430c      	orrs	r4, r1
 8000ada:	6014      	str	r4, [r2, #0]
 8000adc:	e7b3      	b.n	8000a46 <__register_exitproc+0x3a>
 8000ade:	0020      	movs	r0, r4
 8000ae0:	304d      	adds	r0, #77	; 0x4d
 8000ae2:	30ff      	adds	r0, #255	; 0xff
 8000ae4:	50e0      	str	r0, [r4, r3]
 8000ae6:	e7a7      	b.n	8000a38 <__register_exitproc+0x2c>
 8000ae8:	6828      	ldr	r0, [r5, #0]
 8000aea:	f7ff ff8d 	bl	8000a08 <__retarget_lock_release_recursive>
 8000aee:	2001      	movs	r0, #1
 8000af0:	4240      	negs	r0, r0
 8000af2:	e7b1      	b.n	8000a58 <__register_exitproc+0x4c>
 8000af4:	20000430 	.word	0x20000430
 8000af8:	08000b40 	.word	0x08000b40
 8000afc:	00000000 	.word	0x00000000

08000b00 <_init>:
 8000b00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000b02:	46c0      	nop			; (mov r8, r8)
 8000b04:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000b06:	bc08      	pop	{r3}
 8000b08:	469e      	mov	lr, r3
 8000b0a:	4770      	bx	lr

08000b0c <_fini>:
 8000b0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000b0e:	46c0      	nop			; (mov r8, r8)
 8000b10:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000b12:	bc08      	pop	{r3}
 8000b14:	469e      	mov	lr, r3
 8000b16:	4770      	bx	lr
