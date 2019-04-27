
build/seven_segment.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000d6c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           0000002c  08000e2c  08000e2c  00010e2c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000e58  08000e58  00010e58  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000e60  08000e60  00010e60  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000e64  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000054  20000434  08001298  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000488  08001298  00020488  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       000014d6  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     000005ff  00000000  00000000  00021932  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        0000087c  00000000  00000000  00021f31  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    000001c8  00000000  00000000  000227ad  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000178  00000000  00000000  00022975  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       000007f9  00000000  00000000  00022aed  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        0000090c  00000000  00000000  000232e6  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  00023bf2  2**0  CONTENTS, READONLY
 17 .debug_frame      00000738  00000000  00000000  00023c74  2**2  CONTENTS, READONLY, DEBUGGING

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
 80000e4:	08000e14 	.word	0x08000e14

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
 8000104:	08000e14 	.word	0x08000e14

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
 800024a:	f000 fcbd 	bl	8000bc8 <SystemInit>
 800024e:	f000 fd11 	bl	8000c74 <__libc_init_array>
 8000252:	f000 f989 	bl	8000568 <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000434 	.word	0x20000434
 8000264:	08000e64 	.word	0x08000e64
 8000268:	20000434 	.word	0x20000434
 800026c:	20000488 	.word	0x20000488

08000270 <ADC1_COMP_IRQHandler>:
 8000270:	e7fe      	b.n	8000270 <ADC1_COMP_IRQHandler>

08000272 <LL_GPIO_WriteOutputPort>:
 8000272:	b580      	push	{r7, lr}
 8000274:	b082      	sub	sp, #8
 8000276:	af00      	add	r7, sp, #0
 8000278:	6078      	str	r0, [r7, #4]
 800027a:	6039      	str	r1, [r7, #0]
 800027c:	687b      	ldr	r3, [r7, #4]
 800027e:	683a      	ldr	r2, [r7, #0]
 8000280:	615a      	str	r2, [r3, #20]
 8000282:	46c0      	nop			; (mov r8, r8)
 8000284:	46bd      	mov	sp, r7
 8000286:	b002      	add	sp, #8
 8000288:	bd80      	pop	{r7, pc}

0800028a <LL_GPIO_ReadOutputPort>:
 800028a:	b580      	push	{r7, lr}
 800028c:	b082      	sub	sp, #8
 800028e:	af00      	add	r7, sp, #0
 8000290:	6078      	str	r0, [r7, #4]
 8000292:	687b      	ldr	r3, [r7, #4]
 8000294:	695b      	ldr	r3, [r3, #20]
 8000296:	0018      	movs	r0, r3
 8000298:	46bd      	mov	sp, r7
 800029a:	b002      	add	sp, #8
 800029c:	bd80      	pop	{r7, pc}

0800029e <LL_GPIO_SetOutputPin>:
 800029e:	b580      	push	{r7, lr}
 80002a0:	b082      	sub	sp, #8
 80002a2:	af00      	add	r7, sp, #0
 80002a4:	6078      	str	r0, [r7, #4]
 80002a6:	6039      	str	r1, [r7, #0]
 80002a8:	687b      	ldr	r3, [r7, #4]
 80002aa:	683a      	ldr	r2, [r7, #0]
 80002ac:	619a      	str	r2, [r3, #24]
 80002ae:	46c0      	nop			; (mov r8, r8)
 80002b0:	46bd      	mov	sp, r7
 80002b2:	b002      	add	sp, #8
 80002b4:	bd80      	pop	{r7, pc}

080002b6 <LL_GPIO_ResetOutputPin>:
 80002b6:	b580      	push	{r7, lr}
 80002b8:	b082      	sub	sp, #8
 80002ba:	af00      	add	r7, sp, #0
 80002bc:	6078      	str	r0, [r7, #4]
 80002be:	6039      	str	r1, [r7, #0]
 80002c0:	687b      	ldr	r3, [r7, #4]
 80002c2:	683a      	ldr	r2, [r7, #0]
 80002c4:	629a      	str	r2, [r3, #40]	; 0x28
 80002c6:	46c0      	nop			; (mov r8, r8)
 80002c8:	46bd      	mov	sp, r7
 80002ca:	b002      	add	sp, #8
 80002cc:	bd80      	pop	{r7, pc}

080002ce <dec2hex>:
 80002ce:	b590      	push	{r4, r7, lr}
 80002d0:	b083      	sub	sp, #12
 80002d2:	af00      	add	r7, sp, #0
 80002d4:	6078      	str	r0, [r7, #4]
 80002d6:	687b      	ldr	r3, [r7, #4]
 80002d8:	210a      	movs	r1, #10
 80002da:	0018      	movs	r0, r3
 80002dc:	f7ff ff9a 	bl	8000214 <__aeabi_uidivmod>
 80002e0:	000b      	movs	r3, r1
 80002e2:	001c      	movs	r4, r3
 80002e4:	687b      	ldr	r3, [r7, #4]
 80002e6:	2164      	movs	r1, #100	; 0x64
 80002e8:	0018      	movs	r0, r3
 80002ea:	f7ff ff93 	bl	8000214 <__aeabi_uidivmod>
 80002ee:	000b      	movs	r3, r1
 80002f0:	210a      	movs	r1, #10
 80002f2:	0018      	movs	r0, r3
 80002f4:	f7ff ff08 	bl	8000108 <__udivsi3>
 80002f8:	0003      	movs	r3, r0
 80002fa:	011b      	lsls	r3, r3, #4
 80002fc:	18e4      	adds	r4, r4, r3
 80002fe:	687b      	ldr	r3, [r7, #4]
 8000300:	2164      	movs	r1, #100	; 0x64
 8000302:	0018      	movs	r0, r3
 8000304:	f7ff ff00 	bl	8000108 <__udivsi3>
 8000308:	0003      	movs	r3, r0
 800030a:	210a      	movs	r1, #10
 800030c:	0018      	movs	r0, r3
 800030e:	f7ff ff81 	bl	8000214 <__aeabi_uidivmod>
 8000312:	000b      	movs	r3, r1
 8000314:	021b      	lsls	r3, r3, #8
 8000316:	18e4      	adds	r4, r4, r3
 8000318:	687a      	ldr	r2, [r7, #4]
 800031a:	23fa      	movs	r3, #250	; 0xfa
 800031c:	0099      	lsls	r1, r3, #2
 800031e:	0010      	movs	r0, r2
 8000320:	f7ff fef2 	bl	8000108 <__udivsi3>
 8000324:	0003      	movs	r3, r0
 8000326:	031b      	lsls	r3, r3, #12
 8000328:	18e3      	adds	r3, r4, r3
 800032a:	0018      	movs	r0, r3
 800032c:	46bd      	mov	sp, r7
 800032e:	b003      	add	sp, #12
 8000330:	bd90      	pop	{r4, r7, pc}
	...

08000334 <dyn_indicate>:
 8000334:	b5b0      	push	{r4, r5, r7, lr}
 8000336:	b084      	sub	sp, #16
 8000338:	af00      	add	r7, sp, #0
 800033a:	6078      	str	r0, [r7, #4]
 800033c:	250f      	movs	r5, #15
 800033e:	197b      	adds	r3, r7, r5
 8000340:	220a      	movs	r2, #10
 8000342:	701a      	strb	r2, [r3, #0]
 8000344:	2300      	movs	r3, #0
 8000346:	60bb      	str	r3, [r7, #8]
 8000348:	4b3e      	ldr	r3, [pc, #248]	; (8000444 <dyn_indicate+0x110>)
 800034a:	0018      	movs	r0, r3
 800034c:	f7ff ff9d 	bl	800028a <LL_GPIO_ReadOutputPort>
 8000350:	0003      	movs	r3, r0
 8000352:	60bb      	str	r3, [r7, #8]
 8000354:	4b3c      	ldr	r3, [pc, #240]	; (8000448 <dyn_indicate+0x114>)
 8000356:	681b      	ldr	r3, [r3, #0]
 8000358:	43db      	mvns	r3, r3
 800035a:	68ba      	ldr	r2, [r7, #8]
 800035c:	401a      	ands	r2, r3
 800035e:	0014      	movs	r4, r2
 8000360:	4b3a      	ldr	r3, [pc, #232]	; (800044c <dyn_indicate+0x118>)
 8000362:	781b      	ldrb	r3, [r3, #0]
 8000364:	009b      	lsls	r3, r3, #2
 8000366:	687a      	ldr	r2, [r7, #4]
 8000368:	40da      	lsrs	r2, r3
 800036a:	0013      	movs	r3, r2
 800036c:	220f      	movs	r2, #15
 800036e:	401a      	ands	r2, r3
 8000370:	197b      	adds	r3, r7, r5
 8000372:	781b      	ldrb	r3, [r3, #0]
 8000374:	0019      	movs	r1, r3
 8000376:	0010      	movs	r0, r2
 8000378:	f7ff ff4c 	bl	8000214 <__aeabi_uidivmod>
 800037c:	000b      	movs	r3, r1
 800037e:	001a      	movs	r2, r3
 8000380:	4b33      	ldr	r3, [pc, #204]	; (8000450 <dyn_indicate+0x11c>)
 8000382:	0092      	lsls	r2, r2, #2
 8000384:	58d3      	ldr	r3, [r2, r3]
 8000386:	4323      	orrs	r3, r4
 8000388:	60bb      	str	r3, [r7, #8]
 800038a:	68bb      	ldr	r3, [r7, #8]
 800038c:	4a2d      	ldr	r2, [pc, #180]	; (8000444 <dyn_indicate+0x110>)
 800038e:	0019      	movs	r1, r3
 8000390:	0010      	movs	r0, r2
 8000392:	f7ff ff6e 	bl	8000272 <LL_GPIO_WriteOutputPort>
 8000396:	4b2d      	ldr	r3, [pc, #180]	; (800044c <dyn_indicate+0x118>)
 8000398:	781b      	ldrb	r3, [r3, #0]
 800039a:	2b01      	cmp	r3, #1
 800039c:	d015      	beq.n	80003ca <dyn_indicate+0x96>
 800039e:	dc02      	bgt.n	80003a6 <dyn_indicate+0x72>
 80003a0:	2b00      	cmp	r3, #0
 80003a2:	d005      	beq.n	80003b0 <dyn_indicate+0x7c>
 80003a4:	e03c      	b.n	8000420 <dyn_indicate+0xec>
 80003a6:	2b02      	cmp	r3, #2
 80003a8:	d01e      	beq.n	80003e8 <dyn_indicate+0xb4>
 80003aa:	2b03      	cmp	r3, #3
 80003ac:	d02b      	beq.n	8000406 <dyn_indicate+0xd2>
 80003ae:	e037      	b.n	8000420 <dyn_indicate+0xec>
 80003b0:	4b24      	ldr	r3, [pc, #144]	; (8000444 <dyn_indicate+0x110>)
 80003b2:	2180      	movs	r1, #128	; 0x80
 80003b4:	0018      	movs	r0, r3
 80003b6:	f7ff ff72 	bl	800029e <LL_GPIO_SetOutputPin>
 80003ba:	2380      	movs	r3, #128	; 0x80
 80003bc:	015b      	lsls	r3, r3, #5
 80003be:	4a21      	ldr	r2, [pc, #132]	; (8000444 <dyn_indicate+0x110>)
 80003c0:	0019      	movs	r1, r3
 80003c2:	0010      	movs	r0, r2
 80003c4:	f7ff ff77 	bl	80002b6 <LL_GPIO_ResetOutputPin>
 80003c8:	e02a      	b.n	8000420 <dyn_indicate+0xec>
 80003ca:	2380      	movs	r3, #128	; 0x80
 80003cc:	015b      	lsls	r3, r3, #5
 80003ce:	4a1d      	ldr	r2, [pc, #116]	; (8000444 <dyn_indicate+0x110>)
 80003d0:	0019      	movs	r1, r3
 80003d2:	0010      	movs	r0, r2
 80003d4:	f7ff ff63 	bl	800029e <LL_GPIO_SetOutputPin>
 80003d8:	2380      	movs	r3, #128	; 0x80
 80003da:	011b      	lsls	r3, r3, #4
 80003dc:	4a19      	ldr	r2, [pc, #100]	; (8000444 <dyn_indicate+0x110>)
 80003de:	0019      	movs	r1, r3
 80003e0:	0010      	movs	r0, r2
 80003e2:	f7ff ff68 	bl	80002b6 <LL_GPIO_ResetOutputPin>
 80003e6:	e01b      	b.n	8000420 <dyn_indicate+0xec>
 80003e8:	2380      	movs	r3, #128	; 0x80
 80003ea:	011b      	lsls	r3, r3, #4
 80003ec:	4a15      	ldr	r2, [pc, #84]	; (8000444 <dyn_indicate+0x110>)
 80003ee:	0019      	movs	r1, r3
 80003f0:	0010      	movs	r0, r2
 80003f2:	f7ff ff54 	bl	800029e <LL_GPIO_SetOutputPin>
 80003f6:	2380      	movs	r3, #128	; 0x80
 80003f8:	00db      	lsls	r3, r3, #3
 80003fa:	4a12      	ldr	r2, [pc, #72]	; (8000444 <dyn_indicate+0x110>)
 80003fc:	0019      	movs	r1, r3
 80003fe:	0010      	movs	r0, r2
 8000400:	f7ff ff59 	bl	80002b6 <LL_GPIO_ResetOutputPin>
 8000404:	e00c      	b.n	8000420 <dyn_indicate+0xec>
 8000406:	2380      	movs	r3, #128	; 0x80
 8000408:	00db      	lsls	r3, r3, #3
 800040a:	4a0e      	ldr	r2, [pc, #56]	; (8000444 <dyn_indicate+0x110>)
 800040c:	0019      	movs	r1, r3
 800040e:	0010      	movs	r0, r2
 8000410:	f7ff ff45 	bl	800029e <LL_GPIO_SetOutputPin>
 8000414:	4b0b      	ldr	r3, [pc, #44]	; (8000444 <dyn_indicate+0x110>)
 8000416:	2180      	movs	r1, #128	; 0x80
 8000418:	0018      	movs	r0, r3
 800041a:	f7ff ff4c 	bl	80002b6 <LL_GPIO_ResetOutputPin>
 800041e:	46c0      	nop			; (mov r8, r8)
 8000420:	4b0a      	ldr	r3, [pc, #40]	; (800044c <dyn_indicate+0x118>)
 8000422:	781b      	ldrb	r3, [r3, #0]
 8000424:	3301      	adds	r3, #1
 8000426:	4a0b      	ldr	r2, [pc, #44]	; (8000454 <dyn_indicate+0x120>)
 8000428:	4013      	ands	r3, r2
 800042a:	d504      	bpl.n	8000436 <dyn_indicate+0x102>
 800042c:	3b01      	subs	r3, #1
 800042e:	2204      	movs	r2, #4
 8000430:	4252      	negs	r2, r2
 8000432:	4313      	orrs	r3, r2
 8000434:	3301      	adds	r3, #1
 8000436:	b2da      	uxtb	r2, r3
 8000438:	4b04      	ldr	r3, [pc, #16]	; (800044c <dyn_indicate+0x118>)
 800043a:	701a      	strb	r2, [r3, #0]
 800043c:	46c0      	nop			; (mov r8, r8)
 800043e:	46bd      	mov	sp, r7
 8000440:	b004      	add	sp, #16
 8000442:	bdb0      	pop	{r4, r5, r7, pc}
 8000444:	48000400 	.word	0x48000400
 8000448:	20000000 	.word	0x20000000
 800044c:	20000450 	.word	0x20000450
 8000450:	08000e2c 	.word	0x08000e2c
 8000454:	80000003 	.word	0x80000003

08000458 <LL_GPIO_ResetOutputPin>:
 8000458:	b580      	push	{r7, lr}
 800045a:	b082      	sub	sp, #8
 800045c:	af00      	add	r7, sp, #0
 800045e:	6078      	str	r0, [r7, #4]
 8000460:	6039      	str	r1, [r7, #0]
 8000462:	687b      	ldr	r3, [r7, #4]
 8000464:	683a      	ldr	r2, [r7, #0]
 8000466:	629a      	str	r2, [r3, #40]	; 0x28
 8000468:	46c0      	nop			; (mov r8, r8)
 800046a:	46bd      	mov	sp, r7
 800046c:	b002      	add	sp, #8
 800046e:	bd80      	pop	{r7, pc}

08000470 <LL_GPIO_TogglePin>:
 8000470:	b580      	push	{r7, lr}
 8000472:	b082      	sub	sp, #8
 8000474:	af00      	add	r7, sp, #0
 8000476:	6078      	str	r0, [r7, #4]
 8000478:	6039      	str	r1, [r7, #0]
 800047a:	687b      	ldr	r3, [r7, #4]
 800047c:	695a      	ldr	r2, [r3, #20]
 800047e:	683b      	ldr	r3, [r7, #0]
 8000480:	405a      	eors	r2, r3
 8000482:	687b      	ldr	r3, [r7, #4]
 8000484:	615a      	str	r2, [r3, #20]
 8000486:	46c0      	nop			; (mov r8, r8)
 8000488:	46bd      	mov	sp, r7
 800048a:	b002      	add	sp, #8
 800048c:	bd80      	pop	{r7, pc}
	...

08000490 <LL_EXTI_ClearFlag_0_31>:
 8000490:	b580      	push	{r7, lr}
 8000492:	b082      	sub	sp, #8
 8000494:	af00      	add	r7, sp, #0
 8000496:	6078      	str	r0, [r7, #4]
 8000498:	4b03      	ldr	r3, [pc, #12]	; (80004a8 <LL_EXTI_ClearFlag_0_31+0x18>)
 800049a:	687a      	ldr	r2, [r7, #4]
 800049c:	615a      	str	r2, [r3, #20]
 800049e:	46c0      	nop			; (mov r8, r8)
 80004a0:	46bd      	mov	sp, r7
 80004a2:	b002      	add	sp, #8
 80004a4:	bd80      	pop	{r7, pc}
 80004a6:	46c0      	nop			; (mov r8, r8)
 80004a8:	40010400 	.word	0x40010400

080004ac <EXTI0_1_IRQHandler>:
 80004ac:	b580      	push	{r7, lr}
 80004ae:	b082      	sub	sp, #8
 80004b0:	af00      	add	r7, sp, #0
 80004b2:	4b0d      	ldr	r3, [pc, #52]	; (80004e8 <EXTI0_1_IRQHandler+0x3c>)
 80004b4:	681b      	ldr	r3, [r3, #0]
 80004b6:	607b      	str	r3, [r7, #4]
 80004b8:	4b0c      	ldr	r3, [pc, #48]	; (80004ec <EXTI0_1_IRQHandler+0x40>)
 80004ba:	681a      	ldr	r2, [r3, #0]
 80004bc:	687b      	ldr	r3, [r7, #4]
 80004be:	1ad3      	subs	r3, r2, r3
 80004c0:	2b64      	cmp	r3, #100	; 0x64
 80004c2:	d906      	bls.n	80004d2 <EXTI0_1_IRQHandler+0x26>
 80004c4:	2380      	movs	r3, #128	; 0x80
 80004c6:	005b      	lsls	r3, r3, #1
 80004c8:	4a09      	ldr	r2, [pc, #36]	; (80004f0 <EXTI0_1_IRQHandler+0x44>)
 80004ca:	0019      	movs	r1, r3
 80004cc:	0010      	movs	r0, r2
 80004ce:	f7ff ffcf 	bl	8000470 <LL_GPIO_TogglePin>
 80004d2:	4b05      	ldr	r3, [pc, #20]	; (80004e8 <EXTI0_1_IRQHandler+0x3c>)
 80004d4:	681a      	ldr	r2, [r3, #0]
 80004d6:	4b05      	ldr	r3, [pc, #20]	; (80004ec <EXTI0_1_IRQHandler+0x40>)
 80004d8:	601a      	str	r2, [r3, #0]
 80004da:	2001      	movs	r0, #1
 80004dc:	f7ff ffd8 	bl	8000490 <LL_EXTI_ClearFlag_0_31>
 80004e0:	46c0      	nop			; (mov r8, r8)
 80004e2:	46bd      	mov	sp, r7
 80004e4:	b002      	add	sp, #8
 80004e6:	bd80      	pop	{r7, pc}
 80004e8:	2000045c 	.word	0x2000045c
 80004ec:	20000460 	.word	0x20000460
 80004f0:	48000800 	.word	0x48000800

080004f4 <SysTick_Handler>:
 80004f4:	b580      	push	{r7, lr}
 80004f6:	af00      	add	r7, sp, #0
 80004f8:	4b16      	ldr	r3, [pc, #88]	; (8000554 <SysTick_Handler+0x60>)
 80004fa:	681b      	ldr	r3, [r3, #0]
 80004fc:	1c5a      	adds	r2, r3, #1
 80004fe:	23fa      	movs	r3, #250	; 0xfa
 8000500:	009b      	lsls	r3, r3, #2
 8000502:	0019      	movs	r1, r3
 8000504:	0010      	movs	r0, r2
 8000506:	f7ff fe85 	bl	8000214 <__aeabi_uidivmod>
 800050a:	000b      	movs	r3, r1
 800050c:	001a      	movs	r2, r3
 800050e:	4b11      	ldr	r3, [pc, #68]	; (8000554 <SysTick_Handler+0x60>)
 8000510:	601a      	str	r2, [r3, #0]
 8000512:	4b10      	ldr	r3, [pc, #64]	; (8000554 <SysTick_Handler+0x60>)
 8000514:	681b      	ldr	r3, [r3, #0]
 8000516:	2b00      	cmp	r3, #0
 8000518:	d119      	bne.n	800054e <SysTick_Handler+0x5a>
 800051a:	4b0f      	ldr	r3, [pc, #60]	; (8000558 <SysTick_Handler+0x64>)
 800051c:	681b      	ldr	r3, [r3, #0]
 800051e:	3301      	adds	r3, #1
 8000520:	490e      	ldr	r1, [pc, #56]	; (800055c <SysTick_Handler+0x68>)
 8000522:	0018      	movs	r0, r3
 8000524:	f7ff fe76 	bl	8000214 <__aeabi_uidivmod>
 8000528:	000b      	movs	r3, r1
 800052a:	001a      	movs	r2, r3
 800052c:	4b0a      	ldr	r3, [pc, #40]	; (8000558 <SysTick_Handler+0x64>)
 800052e:	601a      	str	r2, [r3, #0]
 8000530:	4b09      	ldr	r3, [pc, #36]	; (8000558 <SysTick_Handler+0x64>)
 8000532:	681b      	ldr	r3, [r3, #0]
 8000534:	0018      	movs	r0, r3
 8000536:	f7ff feca 	bl	80002ce <dec2hex>
 800053a:	0002      	movs	r2, r0
 800053c:	4b08      	ldr	r3, [pc, #32]	; (8000560 <SysTick_Handler+0x6c>)
 800053e:	601a      	str	r2, [r3, #0]
 8000540:	2380      	movs	r3, #128	; 0x80
 8000542:	009b      	lsls	r3, r3, #2
 8000544:	4a07      	ldr	r2, [pc, #28]	; (8000564 <SysTick_Handler+0x70>)
 8000546:	0019      	movs	r1, r3
 8000548:	0010      	movs	r0, r2
 800054a:	f7ff ff91 	bl	8000470 <LL_GPIO_TogglePin>
 800054e:	46c0      	nop			; (mov r8, r8)
 8000550:	46bd      	mov	sp, r7
 8000552:	bd80      	pop	{r7, pc}
 8000554:	2000045c 	.word	0x2000045c
 8000558:	20000454 	.word	0x20000454
 800055c:	00002710 	.word	0x00002710
 8000560:	20000458 	.word	0x20000458
 8000564:	48000800 	.word	0x48000800

08000568 <main>:
 8000568:	b580      	push	{r7, lr}
 800056a:	b082      	sub	sp, #8
 800056c:	af00      	add	r7, sp, #0
 800056e:	f000 fa49 	bl	8000a04 <rcc_config>
 8000572:	f000 fa7b 	bl	8000a6c <gpio_config>
 8000576:	f000 faeb 	bl	8000b50 <exti_config>
 800057a:	23fa      	movs	r3, #250	; 0xfa
 800057c:	009b      	lsls	r3, r3, #2
 800057e:	4a1d      	ldr	r2, [pc, #116]	; (80005f4 <main+0x8c>)
 8000580:	0019      	movs	r1, r3
 8000582:	0010      	movs	r0, r2
 8000584:	f000 fb09 	bl	8000b9a <systick_config>
 8000588:	4b1b      	ldr	r3, [pc, #108]	; (80005f8 <main+0x90>)
 800058a:	2180      	movs	r1, #128	; 0x80
 800058c:	0018      	movs	r0, r3
 800058e:	f7ff ff63 	bl	8000458 <LL_GPIO_ResetOutputPin>
 8000592:	2380      	movs	r3, #128	; 0x80
 8000594:	00db      	lsls	r3, r3, #3
 8000596:	4a18      	ldr	r2, [pc, #96]	; (80005f8 <main+0x90>)
 8000598:	0019      	movs	r1, r3
 800059a:	0010      	movs	r0, r2
 800059c:	f7ff ff5c 	bl	8000458 <LL_GPIO_ResetOutputPin>
 80005a0:	2380      	movs	r3, #128	; 0x80
 80005a2:	011b      	lsls	r3, r3, #4
 80005a4:	4a14      	ldr	r2, [pc, #80]	; (80005f8 <main+0x90>)
 80005a6:	0019      	movs	r1, r3
 80005a8:	0010      	movs	r0, r2
 80005aa:	f7ff ff55 	bl	8000458 <LL_GPIO_ResetOutputPin>
 80005ae:	2380      	movs	r3, #128	; 0x80
 80005b0:	015b      	lsls	r3, r3, #5
 80005b2:	4a11      	ldr	r2, [pc, #68]	; (80005f8 <main+0x90>)
 80005b4:	0019      	movs	r1, r3
 80005b6:	0010      	movs	r0, r2
 80005b8:	f7ff ff4e 	bl	8000458 <LL_GPIO_ResetOutputPin>
 80005bc:	4b0f      	ldr	r3, [pc, #60]	; (80005fc <main+0x94>)
 80005be:	681b      	ldr	r3, [r3, #0]
 80005c0:	607b      	str	r3, [r7, #4]
 80005c2:	2300      	movs	r3, #0
 80005c4:	603b      	str	r3, [r7, #0]
 80005c6:	e011      	b.n	80005ec <main+0x84>
 80005c8:	46c0      	nop			; (mov r8, r8)
 80005ca:	4b0c      	ldr	r3, [pc, #48]	; (80005fc <main+0x94>)
 80005cc:	681a      	ldr	r2, [r3, #0]
 80005ce:	687b      	ldr	r3, [r7, #4]
 80005d0:	1ad3      	subs	r3, r2, r3
 80005d2:	2b04      	cmp	r3, #4
 80005d4:	d9f9      	bls.n	80005ca <main+0x62>
 80005d6:	4b0a      	ldr	r3, [pc, #40]	; (8000600 <main+0x98>)
 80005d8:	681b      	ldr	r3, [r3, #0]
 80005da:	0018      	movs	r0, r3
 80005dc:	f7ff feaa 	bl	8000334 <dyn_indicate>
 80005e0:	4b06      	ldr	r3, [pc, #24]	; (80005fc <main+0x94>)
 80005e2:	681b      	ldr	r3, [r3, #0]
 80005e4:	607b      	str	r3, [r7, #4]
 80005e6:	683b      	ldr	r3, [r7, #0]
 80005e8:	3301      	adds	r3, #1
 80005ea:	603b      	str	r3, [r7, #0]
 80005ec:	683b      	ldr	r3, [r7, #0]
 80005ee:	2b03      	cmp	r3, #3
 80005f0:	ddea      	ble.n	80005c8 <main+0x60>
 80005f2:	e7e3      	b.n	80005bc <main+0x54>
 80005f4:	02dc6c00 	.word	0x02dc6c00
 80005f8:	48000400 	.word	0x48000400
 80005fc:	2000045c 	.word	0x2000045c
 8000600:	20000458 	.word	0x20000458

08000604 <NVIC_EnableIRQ>:
 8000604:	b580      	push	{r7, lr}
 8000606:	b082      	sub	sp, #8
 8000608:	af00      	add	r7, sp, #0
 800060a:	0002      	movs	r2, r0
 800060c:	1dfb      	adds	r3, r7, #7
 800060e:	701a      	strb	r2, [r3, #0]
 8000610:	1dfb      	adds	r3, r7, #7
 8000612:	781b      	ldrb	r3, [r3, #0]
 8000614:	001a      	movs	r2, r3
 8000616:	231f      	movs	r3, #31
 8000618:	401a      	ands	r2, r3
 800061a:	4b04      	ldr	r3, [pc, #16]	; (800062c <NVIC_EnableIRQ+0x28>)
 800061c:	2101      	movs	r1, #1
 800061e:	4091      	lsls	r1, r2
 8000620:	000a      	movs	r2, r1
 8000622:	601a      	str	r2, [r3, #0]
 8000624:	46c0      	nop			; (mov r8, r8)
 8000626:	46bd      	mov	sp, r7
 8000628:	b002      	add	sp, #8
 800062a:	bd80      	pop	{r7, pc}
 800062c:	e000e100 	.word	0xe000e100

08000630 <NVIC_SetPriority>:
 8000630:	b590      	push	{r4, r7, lr}
 8000632:	b083      	sub	sp, #12
 8000634:	af00      	add	r7, sp, #0
 8000636:	0002      	movs	r2, r0
 8000638:	6039      	str	r1, [r7, #0]
 800063a:	1dfb      	adds	r3, r7, #7
 800063c:	701a      	strb	r2, [r3, #0]
 800063e:	1dfb      	adds	r3, r7, #7
 8000640:	781b      	ldrb	r3, [r3, #0]
 8000642:	2b7f      	cmp	r3, #127	; 0x7f
 8000644:	d932      	bls.n	80006ac <NVIC_SetPriority+0x7c>
 8000646:	4a2f      	ldr	r2, [pc, #188]	; (8000704 <NVIC_SetPriority+0xd4>)
 8000648:	1dfb      	adds	r3, r7, #7
 800064a:	781b      	ldrb	r3, [r3, #0]
 800064c:	0019      	movs	r1, r3
 800064e:	230f      	movs	r3, #15
 8000650:	400b      	ands	r3, r1
 8000652:	3b08      	subs	r3, #8
 8000654:	089b      	lsrs	r3, r3, #2
 8000656:	3306      	adds	r3, #6
 8000658:	009b      	lsls	r3, r3, #2
 800065a:	18d3      	adds	r3, r2, r3
 800065c:	3304      	adds	r3, #4
 800065e:	681b      	ldr	r3, [r3, #0]
 8000660:	1dfa      	adds	r2, r7, #7
 8000662:	7812      	ldrb	r2, [r2, #0]
 8000664:	0011      	movs	r1, r2
 8000666:	2203      	movs	r2, #3
 8000668:	400a      	ands	r2, r1
 800066a:	00d2      	lsls	r2, r2, #3
 800066c:	21ff      	movs	r1, #255	; 0xff
 800066e:	4091      	lsls	r1, r2
 8000670:	000a      	movs	r2, r1
 8000672:	43d2      	mvns	r2, r2
 8000674:	401a      	ands	r2, r3
 8000676:	0011      	movs	r1, r2
 8000678:	683b      	ldr	r3, [r7, #0]
 800067a:	019b      	lsls	r3, r3, #6
 800067c:	22ff      	movs	r2, #255	; 0xff
 800067e:	401a      	ands	r2, r3
 8000680:	1dfb      	adds	r3, r7, #7
 8000682:	781b      	ldrb	r3, [r3, #0]
 8000684:	0018      	movs	r0, r3
 8000686:	2303      	movs	r3, #3
 8000688:	4003      	ands	r3, r0
 800068a:	00db      	lsls	r3, r3, #3
 800068c:	409a      	lsls	r2, r3
 800068e:	481d      	ldr	r0, [pc, #116]	; (8000704 <NVIC_SetPriority+0xd4>)
 8000690:	1dfb      	adds	r3, r7, #7
 8000692:	781b      	ldrb	r3, [r3, #0]
 8000694:	001c      	movs	r4, r3
 8000696:	230f      	movs	r3, #15
 8000698:	4023      	ands	r3, r4
 800069a:	3b08      	subs	r3, #8
 800069c:	089b      	lsrs	r3, r3, #2
 800069e:	430a      	orrs	r2, r1
 80006a0:	3306      	adds	r3, #6
 80006a2:	009b      	lsls	r3, r3, #2
 80006a4:	18c3      	adds	r3, r0, r3
 80006a6:	3304      	adds	r3, #4
 80006a8:	601a      	str	r2, [r3, #0]
 80006aa:	e027      	b.n	80006fc <NVIC_SetPriority+0xcc>
 80006ac:	4a16      	ldr	r2, [pc, #88]	; (8000708 <NVIC_SetPriority+0xd8>)
 80006ae:	1dfb      	adds	r3, r7, #7
 80006b0:	781b      	ldrb	r3, [r3, #0]
 80006b2:	b25b      	sxtb	r3, r3
 80006b4:	089b      	lsrs	r3, r3, #2
 80006b6:	33c0      	adds	r3, #192	; 0xc0
 80006b8:	009b      	lsls	r3, r3, #2
 80006ba:	589b      	ldr	r3, [r3, r2]
 80006bc:	1dfa      	adds	r2, r7, #7
 80006be:	7812      	ldrb	r2, [r2, #0]
 80006c0:	0011      	movs	r1, r2
 80006c2:	2203      	movs	r2, #3
 80006c4:	400a      	ands	r2, r1
 80006c6:	00d2      	lsls	r2, r2, #3
 80006c8:	21ff      	movs	r1, #255	; 0xff
 80006ca:	4091      	lsls	r1, r2
 80006cc:	000a      	movs	r2, r1
 80006ce:	43d2      	mvns	r2, r2
 80006d0:	401a      	ands	r2, r3
 80006d2:	0011      	movs	r1, r2
 80006d4:	683b      	ldr	r3, [r7, #0]
 80006d6:	019b      	lsls	r3, r3, #6
 80006d8:	22ff      	movs	r2, #255	; 0xff
 80006da:	401a      	ands	r2, r3
 80006dc:	1dfb      	adds	r3, r7, #7
 80006de:	781b      	ldrb	r3, [r3, #0]
 80006e0:	0018      	movs	r0, r3
 80006e2:	2303      	movs	r3, #3
 80006e4:	4003      	ands	r3, r0
 80006e6:	00db      	lsls	r3, r3, #3
 80006e8:	409a      	lsls	r2, r3
 80006ea:	4807      	ldr	r0, [pc, #28]	; (8000708 <NVIC_SetPriority+0xd8>)
 80006ec:	1dfb      	adds	r3, r7, #7
 80006ee:	781b      	ldrb	r3, [r3, #0]
 80006f0:	b25b      	sxtb	r3, r3
 80006f2:	089b      	lsrs	r3, r3, #2
 80006f4:	430a      	orrs	r2, r1
 80006f6:	33c0      	adds	r3, #192	; 0xc0
 80006f8:	009b      	lsls	r3, r3, #2
 80006fa:	501a      	str	r2, [r3, r0]
 80006fc:	46c0      	nop			; (mov r8, r8)
 80006fe:	46bd      	mov	sp, r7
 8000700:	b003      	add	sp, #12
 8000702:	bd90      	pop	{r4, r7, pc}
 8000704:	e000ed00 	.word	0xe000ed00
 8000708:	e000e100 	.word	0xe000e100

0800070c <LL_RCC_HSI_Enable>:
 800070c:	b580      	push	{r7, lr}
 800070e:	af00      	add	r7, sp, #0
 8000710:	4b04      	ldr	r3, [pc, #16]	; (8000724 <LL_RCC_HSI_Enable+0x18>)
 8000712:	681a      	ldr	r2, [r3, #0]
 8000714:	4b03      	ldr	r3, [pc, #12]	; (8000724 <LL_RCC_HSI_Enable+0x18>)
 8000716:	2101      	movs	r1, #1
 8000718:	430a      	orrs	r2, r1
 800071a:	601a      	str	r2, [r3, #0]
 800071c:	46c0      	nop			; (mov r8, r8)
 800071e:	46bd      	mov	sp, r7
 8000720:	bd80      	pop	{r7, pc}
 8000722:	46c0      	nop			; (mov r8, r8)
 8000724:	40021000 	.word	0x40021000

08000728 <LL_RCC_HSI_IsReady>:
 8000728:	b580      	push	{r7, lr}
 800072a:	af00      	add	r7, sp, #0
 800072c:	4b05      	ldr	r3, [pc, #20]	; (8000744 <LL_RCC_HSI_IsReady+0x1c>)
 800072e:	681b      	ldr	r3, [r3, #0]
 8000730:	2202      	movs	r2, #2
 8000732:	4013      	ands	r3, r2
 8000734:	3b02      	subs	r3, #2
 8000736:	425a      	negs	r2, r3
 8000738:	4153      	adcs	r3, r2
 800073a:	b2db      	uxtb	r3, r3
 800073c:	0018      	movs	r0, r3
 800073e:	46bd      	mov	sp, r7
 8000740:	bd80      	pop	{r7, pc}
 8000742:	46c0      	nop			; (mov r8, r8)
 8000744:	40021000 	.word	0x40021000

08000748 <LL_RCC_SetSysClkSource>:
 8000748:	b580      	push	{r7, lr}
 800074a:	b082      	sub	sp, #8
 800074c:	af00      	add	r7, sp, #0
 800074e:	6078      	str	r0, [r7, #4]
 8000750:	4b06      	ldr	r3, [pc, #24]	; (800076c <LL_RCC_SetSysClkSource+0x24>)
 8000752:	685b      	ldr	r3, [r3, #4]
 8000754:	2203      	movs	r2, #3
 8000756:	4393      	bics	r3, r2
 8000758:	0019      	movs	r1, r3
 800075a:	4b04      	ldr	r3, [pc, #16]	; (800076c <LL_RCC_SetSysClkSource+0x24>)
 800075c:	687a      	ldr	r2, [r7, #4]
 800075e:	430a      	orrs	r2, r1
 8000760:	605a      	str	r2, [r3, #4]
 8000762:	46c0      	nop			; (mov r8, r8)
 8000764:	46bd      	mov	sp, r7
 8000766:	b002      	add	sp, #8
 8000768:	bd80      	pop	{r7, pc}
 800076a:	46c0      	nop			; (mov r8, r8)
 800076c:	40021000 	.word	0x40021000

08000770 <LL_RCC_GetSysClkSource>:
 8000770:	b580      	push	{r7, lr}
 8000772:	af00      	add	r7, sp, #0
 8000774:	4b03      	ldr	r3, [pc, #12]	; (8000784 <LL_RCC_GetSysClkSource+0x14>)
 8000776:	685b      	ldr	r3, [r3, #4]
 8000778:	220c      	movs	r2, #12
 800077a:	4013      	ands	r3, r2
 800077c:	0018      	movs	r0, r3
 800077e:	46bd      	mov	sp, r7
 8000780:	bd80      	pop	{r7, pc}
 8000782:	46c0      	nop			; (mov r8, r8)
 8000784:	40021000 	.word	0x40021000

08000788 <LL_RCC_SetAHBPrescaler>:
 8000788:	b580      	push	{r7, lr}
 800078a:	b082      	sub	sp, #8
 800078c:	af00      	add	r7, sp, #0
 800078e:	6078      	str	r0, [r7, #4]
 8000790:	4b06      	ldr	r3, [pc, #24]	; (80007ac <LL_RCC_SetAHBPrescaler+0x24>)
 8000792:	685b      	ldr	r3, [r3, #4]
 8000794:	22f0      	movs	r2, #240	; 0xf0
 8000796:	4393      	bics	r3, r2
 8000798:	0019      	movs	r1, r3
 800079a:	4b04      	ldr	r3, [pc, #16]	; (80007ac <LL_RCC_SetAHBPrescaler+0x24>)
 800079c:	687a      	ldr	r2, [r7, #4]
 800079e:	430a      	orrs	r2, r1
 80007a0:	605a      	str	r2, [r3, #4]
 80007a2:	46c0      	nop			; (mov r8, r8)
 80007a4:	46bd      	mov	sp, r7
 80007a6:	b002      	add	sp, #8
 80007a8:	bd80      	pop	{r7, pc}
 80007aa:	46c0      	nop			; (mov r8, r8)
 80007ac:	40021000 	.word	0x40021000

080007b0 <LL_RCC_SetAPB1Prescaler>:
 80007b0:	b580      	push	{r7, lr}
 80007b2:	b082      	sub	sp, #8
 80007b4:	af00      	add	r7, sp, #0
 80007b6:	6078      	str	r0, [r7, #4]
 80007b8:	4b06      	ldr	r3, [pc, #24]	; (80007d4 <LL_RCC_SetAPB1Prescaler+0x24>)
 80007ba:	685b      	ldr	r3, [r3, #4]
 80007bc:	4a06      	ldr	r2, [pc, #24]	; (80007d8 <LL_RCC_SetAPB1Prescaler+0x28>)
 80007be:	4013      	ands	r3, r2
 80007c0:	0019      	movs	r1, r3
 80007c2:	4b04      	ldr	r3, [pc, #16]	; (80007d4 <LL_RCC_SetAPB1Prescaler+0x24>)
 80007c4:	687a      	ldr	r2, [r7, #4]
 80007c6:	430a      	orrs	r2, r1
 80007c8:	605a      	str	r2, [r3, #4]
 80007ca:	46c0      	nop			; (mov r8, r8)
 80007cc:	46bd      	mov	sp, r7
 80007ce:	b002      	add	sp, #8
 80007d0:	bd80      	pop	{r7, pc}
 80007d2:	46c0      	nop			; (mov r8, r8)
 80007d4:	40021000 	.word	0x40021000
 80007d8:	fffff8ff 	.word	0xfffff8ff

080007dc <LL_RCC_PLL_Enable>:
 80007dc:	b580      	push	{r7, lr}
 80007de:	af00      	add	r7, sp, #0
 80007e0:	4b04      	ldr	r3, [pc, #16]	; (80007f4 <LL_RCC_PLL_Enable+0x18>)
 80007e2:	681a      	ldr	r2, [r3, #0]
 80007e4:	4b03      	ldr	r3, [pc, #12]	; (80007f4 <LL_RCC_PLL_Enable+0x18>)
 80007e6:	2180      	movs	r1, #128	; 0x80
 80007e8:	0449      	lsls	r1, r1, #17
 80007ea:	430a      	orrs	r2, r1
 80007ec:	601a      	str	r2, [r3, #0]
 80007ee:	46c0      	nop			; (mov r8, r8)
 80007f0:	46bd      	mov	sp, r7
 80007f2:	bd80      	pop	{r7, pc}
 80007f4:	40021000 	.word	0x40021000

080007f8 <LL_RCC_PLL_IsReady>:
 80007f8:	b580      	push	{r7, lr}
 80007fa:	af00      	add	r7, sp, #0
 80007fc:	4b07      	ldr	r3, [pc, #28]	; (800081c <LL_RCC_PLL_IsReady+0x24>)
 80007fe:	681a      	ldr	r2, [r3, #0]
 8000800:	2380      	movs	r3, #128	; 0x80
 8000802:	049b      	lsls	r3, r3, #18
 8000804:	4013      	ands	r3, r2
 8000806:	22fe      	movs	r2, #254	; 0xfe
 8000808:	0612      	lsls	r2, r2, #24
 800080a:	4694      	mov	ip, r2
 800080c:	4463      	add	r3, ip
 800080e:	425a      	negs	r2, r3
 8000810:	4153      	adcs	r3, r2
 8000812:	b2db      	uxtb	r3, r3
 8000814:	0018      	movs	r0, r3
 8000816:	46bd      	mov	sp, r7
 8000818:	bd80      	pop	{r7, pc}
 800081a:	46c0      	nop			; (mov r8, r8)
 800081c:	40021000 	.word	0x40021000

08000820 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000820:	b580      	push	{r7, lr}
 8000822:	b082      	sub	sp, #8
 8000824:	af00      	add	r7, sp, #0
 8000826:	6078      	str	r0, [r7, #4]
 8000828:	6039      	str	r1, [r7, #0]
 800082a:	4b0e      	ldr	r3, [pc, #56]	; (8000864 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800082c:	685b      	ldr	r3, [r3, #4]
 800082e:	4a0e      	ldr	r2, [pc, #56]	; (8000868 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000830:	4013      	ands	r3, r2
 8000832:	0019      	movs	r1, r3
 8000834:	687a      	ldr	r2, [r7, #4]
 8000836:	2380      	movs	r3, #128	; 0x80
 8000838:	025b      	lsls	r3, r3, #9
 800083a:	401a      	ands	r2, r3
 800083c:	683b      	ldr	r3, [r7, #0]
 800083e:	431a      	orrs	r2, r3
 8000840:	4b08      	ldr	r3, [pc, #32]	; (8000864 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000842:	430a      	orrs	r2, r1
 8000844:	605a      	str	r2, [r3, #4]
 8000846:	4b07      	ldr	r3, [pc, #28]	; (8000864 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000848:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800084a:	220f      	movs	r2, #15
 800084c:	4393      	bics	r3, r2
 800084e:	0019      	movs	r1, r3
 8000850:	687b      	ldr	r3, [r7, #4]
 8000852:	220f      	movs	r2, #15
 8000854:	401a      	ands	r2, r3
 8000856:	4b03      	ldr	r3, [pc, #12]	; (8000864 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000858:	430a      	orrs	r2, r1
 800085a:	62da      	str	r2, [r3, #44]	; 0x2c
 800085c:	46c0      	nop			; (mov r8, r8)
 800085e:	46bd      	mov	sp, r7
 8000860:	b002      	add	sp, #8
 8000862:	bd80      	pop	{r7, pc}
 8000864:	40021000 	.word	0x40021000
 8000868:	ffc2ffff 	.word	0xffc2ffff

0800086c <LL_SYSCFG_SetEXTISource>:
 800086c:	b590      	push	{r4, r7, lr}
 800086e:	b083      	sub	sp, #12
 8000870:	af00      	add	r7, sp, #0
 8000872:	6078      	str	r0, [r7, #4]
 8000874:	6039      	str	r1, [r7, #0]
 8000876:	4a0f      	ldr	r2, [pc, #60]	; (80008b4 <LL_SYSCFG_SetEXTISource+0x48>)
 8000878:	683b      	ldr	r3, [r7, #0]
 800087a:	21ff      	movs	r1, #255	; 0xff
 800087c:	400b      	ands	r3, r1
 800087e:	3302      	adds	r3, #2
 8000880:	009b      	lsls	r3, r3, #2
 8000882:	589b      	ldr	r3, [r3, r2]
 8000884:	683a      	ldr	r2, [r7, #0]
 8000886:	0c12      	lsrs	r2, r2, #16
 8000888:	210f      	movs	r1, #15
 800088a:	4091      	lsls	r1, r2
 800088c:	000a      	movs	r2, r1
 800088e:	43d2      	mvns	r2, r2
 8000890:	401a      	ands	r2, r3
 8000892:	0011      	movs	r1, r2
 8000894:	683b      	ldr	r3, [r7, #0]
 8000896:	0c1b      	lsrs	r3, r3, #16
 8000898:	687a      	ldr	r2, [r7, #4]
 800089a:	409a      	lsls	r2, r3
 800089c:	4805      	ldr	r0, [pc, #20]	; (80008b4 <LL_SYSCFG_SetEXTISource+0x48>)
 800089e:	683b      	ldr	r3, [r7, #0]
 80008a0:	24ff      	movs	r4, #255	; 0xff
 80008a2:	4023      	ands	r3, r4
 80008a4:	430a      	orrs	r2, r1
 80008a6:	3302      	adds	r3, #2
 80008a8:	009b      	lsls	r3, r3, #2
 80008aa:	501a      	str	r2, [r3, r0]
 80008ac:	46c0      	nop			; (mov r8, r8)
 80008ae:	46bd      	mov	sp, r7
 80008b0:	b003      	add	sp, #12
 80008b2:	bd90      	pop	{r4, r7, pc}
 80008b4:	40010000 	.word	0x40010000

080008b8 <LL_FLASH_SetLatency>:
 80008b8:	b580      	push	{r7, lr}
 80008ba:	b082      	sub	sp, #8
 80008bc:	af00      	add	r7, sp, #0
 80008be:	6078      	str	r0, [r7, #4]
 80008c0:	4b06      	ldr	r3, [pc, #24]	; (80008dc <LL_FLASH_SetLatency+0x24>)
 80008c2:	681b      	ldr	r3, [r3, #0]
 80008c4:	2201      	movs	r2, #1
 80008c6:	4393      	bics	r3, r2
 80008c8:	0019      	movs	r1, r3
 80008ca:	4b04      	ldr	r3, [pc, #16]	; (80008dc <LL_FLASH_SetLatency+0x24>)
 80008cc:	687a      	ldr	r2, [r7, #4]
 80008ce:	430a      	orrs	r2, r1
 80008d0:	601a      	str	r2, [r3, #0]
 80008d2:	46c0      	nop			; (mov r8, r8)
 80008d4:	46bd      	mov	sp, r7
 80008d6:	b002      	add	sp, #8
 80008d8:	bd80      	pop	{r7, pc}
 80008da:	46c0      	nop			; (mov r8, r8)
 80008dc:	40022000 	.word	0x40022000

080008e0 <LL_AHB1_GRP1_EnableClock>:
 80008e0:	b580      	push	{r7, lr}
 80008e2:	b084      	sub	sp, #16
 80008e4:	af00      	add	r7, sp, #0
 80008e6:	6078      	str	r0, [r7, #4]
 80008e8:	4b07      	ldr	r3, [pc, #28]	; (8000908 <LL_AHB1_GRP1_EnableClock+0x28>)
 80008ea:	6959      	ldr	r1, [r3, #20]
 80008ec:	4b06      	ldr	r3, [pc, #24]	; (8000908 <LL_AHB1_GRP1_EnableClock+0x28>)
 80008ee:	687a      	ldr	r2, [r7, #4]
 80008f0:	430a      	orrs	r2, r1
 80008f2:	615a      	str	r2, [r3, #20]
 80008f4:	4b04      	ldr	r3, [pc, #16]	; (8000908 <LL_AHB1_GRP1_EnableClock+0x28>)
 80008f6:	695b      	ldr	r3, [r3, #20]
 80008f8:	687a      	ldr	r2, [r7, #4]
 80008fa:	4013      	ands	r3, r2
 80008fc:	60fb      	str	r3, [r7, #12]
 80008fe:	68fb      	ldr	r3, [r7, #12]
 8000900:	46c0      	nop			; (mov r8, r8)
 8000902:	46bd      	mov	sp, r7
 8000904:	b004      	add	sp, #16
 8000906:	bd80      	pop	{r7, pc}
 8000908:	40021000 	.word	0x40021000

0800090c <LL_APB1_GRP2_EnableClock>:
 800090c:	b580      	push	{r7, lr}
 800090e:	b084      	sub	sp, #16
 8000910:	af00      	add	r7, sp, #0
 8000912:	6078      	str	r0, [r7, #4]
 8000914:	4b07      	ldr	r3, [pc, #28]	; (8000934 <LL_APB1_GRP2_EnableClock+0x28>)
 8000916:	6999      	ldr	r1, [r3, #24]
 8000918:	4b06      	ldr	r3, [pc, #24]	; (8000934 <LL_APB1_GRP2_EnableClock+0x28>)
 800091a:	687a      	ldr	r2, [r7, #4]
 800091c:	430a      	orrs	r2, r1
 800091e:	619a      	str	r2, [r3, #24]
 8000920:	4b04      	ldr	r3, [pc, #16]	; (8000934 <LL_APB1_GRP2_EnableClock+0x28>)
 8000922:	699b      	ldr	r3, [r3, #24]
 8000924:	687a      	ldr	r2, [r7, #4]
 8000926:	4013      	ands	r3, r2
 8000928:	60fb      	str	r3, [r7, #12]
 800092a:	68fb      	ldr	r3, [r7, #12]
 800092c:	46c0      	nop			; (mov r8, r8)
 800092e:	46bd      	mov	sp, r7
 8000930:	b004      	add	sp, #16
 8000932:	bd80      	pop	{r7, pc}
 8000934:	40021000 	.word	0x40021000

08000938 <LL_GPIO_SetPinMode>:
 8000938:	b580      	push	{r7, lr}
 800093a:	b084      	sub	sp, #16
 800093c:	af00      	add	r7, sp, #0
 800093e:	60f8      	str	r0, [r7, #12]
 8000940:	60b9      	str	r1, [r7, #8]
 8000942:	607a      	str	r2, [r7, #4]
 8000944:	68fb      	ldr	r3, [r7, #12]
 8000946:	6819      	ldr	r1, [r3, #0]
 8000948:	68bb      	ldr	r3, [r7, #8]
 800094a:	68ba      	ldr	r2, [r7, #8]
 800094c:	435a      	muls	r2, r3
 800094e:	0013      	movs	r3, r2
 8000950:	005b      	lsls	r3, r3, #1
 8000952:	189b      	adds	r3, r3, r2
 8000954:	43db      	mvns	r3, r3
 8000956:	400b      	ands	r3, r1
 8000958:	001a      	movs	r2, r3
 800095a:	68bb      	ldr	r3, [r7, #8]
 800095c:	68b9      	ldr	r1, [r7, #8]
 800095e:	434b      	muls	r3, r1
 8000960:	6879      	ldr	r1, [r7, #4]
 8000962:	434b      	muls	r3, r1
 8000964:	431a      	orrs	r2, r3
 8000966:	68fb      	ldr	r3, [r7, #12]
 8000968:	601a      	str	r2, [r3, #0]
 800096a:	46c0      	nop			; (mov r8, r8)
 800096c:	46bd      	mov	sp, r7
 800096e:	b004      	add	sp, #16
 8000970:	bd80      	pop	{r7, pc}
	...

08000974 <LL_EXTI_EnableIT_0_31>:
 8000974:	b580      	push	{r7, lr}
 8000976:	b082      	sub	sp, #8
 8000978:	af00      	add	r7, sp, #0
 800097a:	6078      	str	r0, [r7, #4]
 800097c:	4b04      	ldr	r3, [pc, #16]	; (8000990 <LL_EXTI_EnableIT_0_31+0x1c>)
 800097e:	6819      	ldr	r1, [r3, #0]
 8000980:	4b03      	ldr	r3, [pc, #12]	; (8000990 <LL_EXTI_EnableIT_0_31+0x1c>)
 8000982:	687a      	ldr	r2, [r7, #4]
 8000984:	430a      	orrs	r2, r1
 8000986:	601a      	str	r2, [r3, #0]
 8000988:	46c0      	nop			; (mov r8, r8)
 800098a:	46bd      	mov	sp, r7
 800098c:	b002      	add	sp, #8
 800098e:	bd80      	pop	{r7, pc}
 8000990:	40010400 	.word	0x40010400

08000994 <LL_EXTI_EnableFallingTrig_0_31>:
 8000994:	b580      	push	{r7, lr}
 8000996:	b082      	sub	sp, #8
 8000998:	af00      	add	r7, sp, #0
 800099a:	6078      	str	r0, [r7, #4]
 800099c:	4b04      	ldr	r3, [pc, #16]	; (80009b0 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 800099e:	68d9      	ldr	r1, [r3, #12]
 80009a0:	4b03      	ldr	r3, [pc, #12]	; (80009b0 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 80009a2:	687a      	ldr	r2, [r7, #4]
 80009a4:	430a      	orrs	r2, r1
 80009a6:	60da      	str	r2, [r3, #12]
 80009a8:	46c0      	nop			; (mov r8, r8)
 80009aa:	46bd      	mov	sp, r7
 80009ac:	b002      	add	sp, #8
 80009ae:	bd80      	pop	{r7, pc}
 80009b0:	40010400 	.word	0x40010400

080009b4 <LL_InitTick>:
 80009b4:	b580      	push	{r7, lr}
 80009b6:	b082      	sub	sp, #8
 80009b8:	af00      	add	r7, sp, #0
 80009ba:	6078      	str	r0, [r7, #4]
 80009bc:	6039      	str	r1, [r7, #0]
 80009be:	6839      	ldr	r1, [r7, #0]
 80009c0:	6878      	ldr	r0, [r7, #4]
 80009c2:	f7ff fba1 	bl	8000108 <__udivsi3>
 80009c6:	0003      	movs	r3, r0
 80009c8:	001a      	movs	r2, r3
 80009ca:	4b06      	ldr	r3, [pc, #24]	; (80009e4 <LL_InitTick+0x30>)
 80009cc:	3a01      	subs	r2, #1
 80009ce:	605a      	str	r2, [r3, #4]
 80009d0:	4b04      	ldr	r3, [pc, #16]	; (80009e4 <LL_InitTick+0x30>)
 80009d2:	2200      	movs	r2, #0
 80009d4:	609a      	str	r2, [r3, #8]
 80009d6:	4b03      	ldr	r3, [pc, #12]	; (80009e4 <LL_InitTick+0x30>)
 80009d8:	2205      	movs	r2, #5
 80009da:	601a      	str	r2, [r3, #0]
 80009dc:	46c0      	nop			; (mov r8, r8)
 80009de:	46bd      	mov	sp, r7
 80009e0:	b002      	add	sp, #8
 80009e2:	bd80      	pop	{r7, pc}
 80009e4:	e000e010 	.word	0xe000e010

080009e8 <LL_SYSTICK_EnableIT>:
 80009e8:	b580      	push	{r7, lr}
 80009ea:	af00      	add	r7, sp, #0
 80009ec:	4b04      	ldr	r3, [pc, #16]	; (8000a00 <LL_SYSTICK_EnableIT+0x18>)
 80009ee:	681a      	ldr	r2, [r3, #0]
 80009f0:	4b03      	ldr	r3, [pc, #12]	; (8000a00 <LL_SYSTICK_EnableIT+0x18>)
 80009f2:	2102      	movs	r1, #2
 80009f4:	430a      	orrs	r2, r1
 80009f6:	601a      	str	r2, [r3, #0]
 80009f8:	46c0      	nop			; (mov r8, r8)
 80009fa:	46bd      	mov	sp, r7
 80009fc:	bd80      	pop	{r7, pc}
 80009fe:	46c0      	nop			; (mov r8, r8)
 8000a00:	e000e010 	.word	0xe000e010

08000a04 <rcc_config>:
 8000a04:	b580      	push	{r7, lr}
 8000a06:	af00      	add	r7, sp, #0
 8000a08:	2001      	movs	r0, #1
 8000a0a:	f7ff ff55 	bl	80008b8 <LL_FLASH_SetLatency>
 8000a0e:	f7ff fe7d 	bl	800070c <LL_RCC_HSI_Enable>
 8000a12:	46c0      	nop			; (mov r8, r8)
 8000a14:	f7ff fe88 	bl	8000728 <LL_RCC_HSI_IsReady>
 8000a18:	0003      	movs	r3, r0
 8000a1a:	2b01      	cmp	r3, #1
 8000a1c:	d1fa      	bne.n	8000a14 <rcc_config+0x10>
 8000a1e:	23a0      	movs	r3, #160	; 0xa0
 8000a20:	039b      	lsls	r3, r3, #14
 8000a22:	0019      	movs	r1, r3
 8000a24:	2000      	movs	r0, #0
 8000a26:	f7ff fefb 	bl	8000820 <LL_RCC_PLL_ConfigDomain_SYS>
 8000a2a:	f7ff fed7 	bl	80007dc <LL_RCC_PLL_Enable>
 8000a2e:	46c0      	nop			; (mov r8, r8)
 8000a30:	f7ff fee2 	bl	80007f8 <LL_RCC_PLL_IsReady>
 8000a34:	0003      	movs	r3, r0
 8000a36:	2b01      	cmp	r3, #1
 8000a38:	d1fa      	bne.n	8000a30 <rcc_config+0x2c>
 8000a3a:	2000      	movs	r0, #0
 8000a3c:	f7ff fea4 	bl	8000788 <LL_RCC_SetAHBPrescaler>
 8000a40:	2002      	movs	r0, #2
 8000a42:	f7ff fe81 	bl	8000748 <LL_RCC_SetSysClkSource>
 8000a46:	46c0      	nop			; (mov r8, r8)
 8000a48:	f7ff fe92 	bl	8000770 <LL_RCC_GetSysClkSource>
 8000a4c:	0003      	movs	r3, r0
 8000a4e:	2b08      	cmp	r3, #8
 8000a50:	d1fa      	bne.n	8000a48 <rcc_config+0x44>
 8000a52:	2000      	movs	r0, #0
 8000a54:	f7ff feac 	bl	80007b0 <LL_RCC_SetAPB1Prescaler>
 8000a58:	4b02      	ldr	r3, [pc, #8]	; (8000a64 <rcc_config+0x60>)
 8000a5a:	4a03      	ldr	r2, [pc, #12]	; (8000a68 <rcc_config+0x64>)
 8000a5c:	601a      	str	r2, [r3, #0]
 8000a5e:	46c0      	nop			; (mov r8, r8)
 8000a60:	46bd      	mov	sp, r7
 8000a62:	bd80      	pop	{r7, pc}
 8000a64:	20000004 	.word	0x20000004
 8000a68:	02dc6c00 	.word	0x02dc6c00

08000a6c <gpio_config>:
 8000a6c:	b580      	push	{r7, lr}
 8000a6e:	af00      	add	r7, sp, #0
 8000a70:	2380      	movs	r3, #128	; 0x80
 8000a72:	031b      	lsls	r3, r3, #12
 8000a74:	0018      	movs	r0, r3
 8000a76:	f7ff ff33 	bl	80008e0 <LL_AHB1_GRP1_EnableClock>
 8000a7a:	2380      	movs	r3, #128	; 0x80
 8000a7c:	005b      	lsls	r3, r3, #1
 8000a7e:	4832      	ldr	r0, [pc, #200]	; (8000b48 <gpio_config+0xdc>)
 8000a80:	2201      	movs	r2, #1
 8000a82:	0019      	movs	r1, r3
 8000a84:	f7ff ff58 	bl	8000938 <LL_GPIO_SetPinMode>
 8000a88:	2380      	movs	r3, #128	; 0x80
 8000a8a:	009b      	lsls	r3, r3, #2
 8000a8c:	482e      	ldr	r0, [pc, #184]	; (8000b48 <gpio_config+0xdc>)
 8000a8e:	2201      	movs	r2, #1
 8000a90:	0019      	movs	r1, r3
 8000a92:	f7ff ff51 	bl	8000938 <LL_GPIO_SetPinMode>
 8000a96:	2380      	movs	r3, #128	; 0x80
 8000a98:	02db      	lsls	r3, r3, #11
 8000a9a:	0018      	movs	r0, r3
 8000a9c:	f7ff ff20 	bl	80008e0 <LL_AHB1_GRP1_EnableClock>
 8000aa0:	4b2a      	ldr	r3, [pc, #168]	; (8000b4c <gpio_config+0xe0>)
 8000aa2:	2201      	movs	r2, #1
 8000aa4:	2101      	movs	r1, #1
 8000aa6:	0018      	movs	r0, r3
 8000aa8:	f7ff ff46 	bl	8000938 <LL_GPIO_SetPinMode>
 8000aac:	4b27      	ldr	r3, [pc, #156]	; (8000b4c <gpio_config+0xe0>)
 8000aae:	2201      	movs	r2, #1
 8000ab0:	2102      	movs	r1, #2
 8000ab2:	0018      	movs	r0, r3
 8000ab4:	f7ff ff40 	bl	8000938 <LL_GPIO_SetPinMode>
 8000ab8:	4b24      	ldr	r3, [pc, #144]	; (8000b4c <gpio_config+0xe0>)
 8000aba:	2201      	movs	r2, #1
 8000abc:	2104      	movs	r1, #4
 8000abe:	0018      	movs	r0, r3
 8000ac0:	f7ff ff3a 	bl	8000938 <LL_GPIO_SetPinMode>
 8000ac4:	4b21      	ldr	r3, [pc, #132]	; (8000b4c <gpio_config+0xe0>)
 8000ac6:	2201      	movs	r2, #1
 8000ac8:	2108      	movs	r1, #8
 8000aca:	0018      	movs	r0, r3
 8000acc:	f7ff ff34 	bl	8000938 <LL_GPIO_SetPinMode>
 8000ad0:	4b1e      	ldr	r3, [pc, #120]	; (8000b4c <gpio_config+0xe0>)
 8000ad2:	2201      	movs	r2, #1
 8000ad4:	2110      	movs	r1, #16
 8000ad6:	0018      	movs	r0, r3
 8000ad8:	f7ff ff2e 	bl	8000938 <LL_GPIO_SetPinMode>
 8000adc:	4b1b      	ldr	r3, [pc, #108]	; (8000b4c <gpio_config+0xe0>)
 8000ade:	2201      	movs	r2, #1
 8000ae0:	2120      	movs	r1, #32
 8000ae2:	0018      	movs	r0, r3
 8000ae4:	f7ff ff28 	bl	8000938 <LL_GPIO_SetPinMode>
 8000ae8:	4b18      	ldr	r3, [pc, #96]	; (8000b4c <gpio_config+0xe0>)
 8000aea:	2201      	movs	r2, #1
 8000aec:	2140      	movs	r1, #64	; 0x40
 8000aee:	0018      	movs	r0, r3
 8000af0:	f7ff ff22 	bl	8000938 <LL_GPIO_SetPinMode>
 8000af4:	4b15      	ldr	r3, [pc, #84]	; (8000b4c <gpio_config+0xe0>)
 8000af6:	2201      	movs	r2, #1
 8000af8:	2180      	movs	r1, #128	; 0x80
 8000afa:	0018      	movs	r0, r3
 8000afc:	f7ff ff1c 	bl	8000938 <LL_GPIO_SetPinMode>
 8000b00:	2380      	movs	r3, #128	; 0x80
 8000b02:	00db      	lsls	r3, r3, #3
 8000b04:	4811      	ldr	r0, [pc, #68]	; (8000b4c <gpio_config+0xe0>)
 8000b06:	2201      	movs	r2, #1
 8000b08:	0019      	movs	r1, r3
 8000b0a:	f7ff ff15 	bl	8000938 <LL_GPIO_SetPinMode>
 8000b0e:	2380      	movs	r3, #128	; 0x80
 8000b10:	011b      	lsls	r3, r3, #4
 8000b12:	480e      	ldr	r0, [pc, #56]	; (8000b4c <gpio_config+0xe0>)
 8000b14:	2201      	movs	r2, #1
 8000b16:	0019      	movs	r1, r3
 8000b18:	f7ff ff0e 	bl	8000938 <LL_GPIO_SetPinMode>
 8000b1c:	2380      	movs	r3, #128	; 0x80
 8000b1e:	015b      	lsls	r3, r3, #5
 8000b20:	480a      	ldr	r0, [pc, #40]	; (8000b4c <gpio_config+0xe0>)
 8000b22:	2201      	movs	r2, #1
 8000b24:	0019      	movs	r1, r3
 8000b26:	f7ff ff07 	bl	8000938 <LL_GPIO_SetPinMode>
 8000b2a:	2380      	movs	r3, #128	; 0x80
 8000b2c:	029b      	lsls	r3, r3, #10
 8000b2e:	0018      	movs	r0, r3
 8000b30:	f7ff fed6 	bl	80008e0 <LL_AHB1_GRP1_EnableClock>
 8000b34:	4b04      	ldr	r3, [pc, #16]	; (8000b48 <gpio_config+0xdc>)
 8000b36:	2200      	movs	r2, #0
 8000b38:	2101      	movs	r1, #1
 8000b3a:	0018      	movs	r0, r3
 8000b3c:	f7ff fefc 	bl	8000938 <LL_GPIO_SetPinMode>
 8000b40:	46c0      	nop			; (mov r8, r8)
 8000b42:	46bd      	mov	sp, r7
 8000b44:	bd80      	pop	{r7, pc}
 8000b46:	46c0      	nop			; (mov r8, r8)
 8000b48:	48000800 	.word	0x48000800
 8000b4c:	48000400 	.word	0x48000400

08000b50 <exti_config>:
 8000b50:	b580      	push	{r7, lr}
 8000b52:	af00      	add	r7, sp, #0
 8000b54:	2001      	movs	r0, #1
 8000b56:	f7ff fed9 	bl	800090c <LL_APB1_GRP2_EnableClock>
 8000b5a:	2380      	movs	r3, #128	; 0x80
 8000b5c:	02db      	lsls	r3, r3, #11
 8000b5e:	0019      	movs	r1, r3
 8000b60:	2000      	movs	r0, #0
 8000b62:	f7ff fe83 	bl	800086c <LL_SYSCFG_SetEXTISource>
 8000b66:	2100      	movs	r1, #0
 8000b68:	2000      	movs	r0, #0
 8000b6a:	f7ff fe7f 	bl	800086c <LL_SYSCFG_SetEXTISource>
 8000b6e:	2002      	movs	r0, #2
 8000b70:	f7ff ff00 	bl	8000974 <LL_EXTI_EnableIT_0_31>
 8000b74:	2001      	movs	r0, #1
 8000b76:	f7ff fefd 	bl	8000974 <LL_EXTI_EnableIT_0_31>
 8000b7a:	2002      	movs	r0, #2
 8000b7c:	f7ff ff0a 	bl	8000994 <LL_EXTI_EnableFallingTrig_0_31>
 8000b80:	2001      	movs	r0, #1
 8000b82:	f7ff ff07 	bl	8000994 <LL_EXTI_EnableFallingTrig_0_31>
 8000b86:	2005      	movs	r0, #5
 8000b88:	f7ff fd3c 	bl	8000604 <NVIC_EnableIRQ>
 8000b8c:	2100      	movs	r1, #0
 8000b8e:	2005      	movs	r0, #5
 8000b90:	f7ff fd4e 	bl	8000630 <NVIC_SetPriority>
 8000b94:	46c0      	nop			; (mov r8, r8)
 8000b96:	46bd      	mov	sp, r7
 8000b98:	bd80      	pop	{r7, pc}

08000b9a <systick_config>:
 8000b9a:	b580      	push	{r7, lr}
 8000b9c:	b082      	sub	sp, #8
 8000b9e:	af00      	add	r7, sp, #0
 8000ba0:	6078      	str	r0, [r7, #4]
 8000ba2:	6039      	str	r1, [r7, #0]
 8000ba4:	683a      	ldr	r2, [r7, #0]
 8000ba6:	687b      	ldr	r3, [r7, #4]
 8000ba8:	0011      	movs	r1, r2
 8000baa:	0018      	movs	r0, r3
 8000bac:	f7ff ff02 	bl	80009b4 <LL_InitTick>
 8000bb0:	f7ff ff1a 	bl	80009e8 <LL_SYSTICK_EnableIT>
 8000bb4:	2301      	movs	r3, #1
 8000bb6:	425b      	negs	r3, r3
 8000bb8:	2100      	movs	r1, #0
 8000bba:	0018      	movs	r0, r3
 8000bbc:	f7ff fd38 	bl	8000630 <NVIC_SetPriority>
 8000bc0:	46c0      	nop			; (mov r8, r8)
 8000bc2:	46bd      	mov	sp, r7
 8000bc4:	b002      	add	sp, #8
 8000bc6:	bd80      	pop	{r7, pc}

08000bc8 <SystemInit>:
 8000bc8:	b580      	push	{r7, lr}
 8000bca:	af00      	add	r7, sp, #0
 8000bcc:	4b1a      	ldr	r3, [pc, #104]	; (8000c38 <SystemInit+0x70>)
 8000bce:	681a      	ldr	r2, [r3, #0]
 8000bd0:	4b19      	ldr	r3, [pc, #100]	; (8000c38 <SystemInit+0x70>)
 8000bd2:	2101      	movs	r1, #1
 8000bd4:	430a      	orrs	r2, r1
 8000bd6:	601a      	str	r2, [r3, #0]
 8000bd8:	4b17      	ldr	r3, [pc, #92]	; (8000c38 <SystemInit+0x70>)
 8000bda:	685a      	ldr	r2, [r3, #4]
 8000bdc:	4b16      	ldr	r3, [pc, #88]	; (8000c38 <SystemInit+0x70>)
 8000bde:	4917      	ldr	r1, [pc, #92]	; (8000c3c <SystemInit+0x74>)
 8000be0:	400a      	ands	r2, r1
 8000be2:	605a      	str	r2, [r3, #4]
 8000be4:	4b14      	ldr	r3, [pc, #80]	; (8000c38 <SystemInit+0x70>)
 8000be6:	681a      	ldr	r2, [r3, #0]
 8000be8:	4b13      	ldr	r3, [pc, #76]	; (8000c38 <SystemInit+0x70>)
 8000bea:	4915      	ldr	r1, [pc, #84]	; (8000c40 <SystemInit+0x78>)
 8000bec:	400a      	ands	r2, r1
 8000bee:	601a      	str	r2, [r3, #0]
 8000bf0:	4b11      	ldr	r3, [pc, #68]	; (8000c38 <SystemInit+0x70>)
 8000bf2:	681a      	ldr	r2, [r3, #0]
 8000bf4:	4b10      	ldr	r3, [pc, #64]	; (8000c38 <SystemInit+0x70>)
 8000bf6:	4913      	ldr	r1, [pc, #76]	; (8000c44 <SystemInit+0x7c>)
 8000bf8:	400a      	ands	r2, r1
 8000bfa:	601a      	str	r2, [r3, #0]
 8000bfc:	4b0e      	ldr	r3, [pc, #56]	; (8000c38 <SystemInit+0x70>)
 8000bfe:	685a      	ldr	r2, [r3, #4]
 8000c00:	4b0d      	ldr	r3, [pc, #52]	; (8000c38 <SystemInit+0x70>)
 8000c02:	4911      	ldr	r1, [pc, #68]	; (8000c48 <SystemInit+0x80>)
 8000c04:	400a      	ands	r2, r1
 8000c06:	605a      	str	r2, [r3, #4]
 8000c08:	4b0b      	ldr	r3, [pc, #44]	; (8000c38 <SystemInit+0x70>)
 8000c0a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000c0c:	4b0a      	ldr	r3, [pc, #40]	; (8000c38 <SystemInit+0x70>)
 8000c0e:	210f      	movs	r1, #15
 8000c10:	438a      	bics	r2, r1
 8000c12:	62da      	str	r2, [r3, #44]	; 0x2c
 8000c14:	4b08      	ldr	r3, [pc, #32]	; (8000c38 <SystemInit+0x70>)
 8000c16:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000c18:	4b07      	ldr	r3, [pc, #28]	; (8000c38 <SystemInit+0x70>)
 8000c1a:	490c      	ldr	r1, [pc, #48]	; (8000c4c <SystemInit+0x84>)
 8000c1c:	400a      	ands	r2, r1
 8000c1e:	631a      	str	r2, [r3, #48]	; 0x30
 8000c20:	4b05      	ldr	r3, [pc, #20]	; (8000c38 <SystemInit+0x70>)
 8000c22:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000c24:	4b04      	ldr	r3, [pc, #16]	; (8000c38 <SystemInit+0x70>)
 8000c26:	2101      	movs	r1, #1
 8000c28:	438a      	bics	r2, r1
 8000c2a:	635a      	str	r2, [r3, #52]	; 0x34
 8000c2c:	4b02      	ldr	r3, [pc, #8]	; (8000c38 <SystemInit+0x70>)
 8000c2e:	2200      	movs	r2, #0
 8000c30:	609a      	str	r2, [r3, #8]
 8000c32:	46c0      	nop			; (mov r8, r8)
 8000c34:	46bd      	mov	sp, r7
 8000c36:	bd80      	pop	{r7, pc}
 8000c38:	40021000 	.word	0x40021000
 8000c3c:	f8ffb80c 	.word	0xf8ffb80c
 8000c40:	fef6ffff 	.word	0xfef6ffff
 8000c44:	fffbffff 	.word	0xfffbffff
 8000c48:	ffc0ffff 	.word	0xffc0ffff
 8000c4c:	fffffeac 	.word	0xfffffeac

08000c50 <NMI_Handler>:
 8000c50:	b580      	push	{r7, lr}
 8000c52:	af00      	add	r7, sp, #0
 8000c54:	46c0      	nop			; (mov r8, r8)
 8000c56:	46bd      	mov	sp, r7
 8000c58:	bd80      	pop	{r7, pc}

08000c5a <HardFault_Handler>:
 8000c5a:	b580      	push	{r7, lr}
 8000c5c:	af00      	add	r7, sp, #0
 8000c5e:	e7fe      	b.n	8000c5e <HardFault_Handler+0x4>

08000c60 <SVC_Handler>:
 8000c60:	b580      	push	{r7, lr}
 8000c62:	af00      	add	r7, sp, #0
 8000c64:	46c0      	nop			; (mov r8, r8)
 8000c66:	46bd      	mov	sp, r7
 8000c68:	bd80      	pop	{r7, pc}

08000c6a <PendSV_Handler>:
 8000c6a:	b580      	push	{r7, lr}
 8000c6c:	af00      	add	r7, sp, #0
 8000c6e:	46c0      	nop			; (mov r8, r8)
 8000c70:	46bd      	mov	sp, r7
 8000c72:	bd80      	pop	{r7, pc}

08000c74 <__libc_init_array>:
 8000c74:	b570      	push	{r4, r5, r6, lr}
 8000c76:	4e0d      	ldr	r6, [pc, #52]	; (8000cac <__libc_init_array+0x38>)
 8000c78:	4d0d      	ldr	r5, [pc, #52]	; (8000cb0 <__libc_init_array+0x3c>)
 8000c7a:	1bad      	subs	r5, r5, r6
 8000c7c:	10ad      	asrs	r5, r5, #2
 8000c7e:	d006      	beq.n	8000c8e <__libc_init_array+0x1a>
 8000c80:	2400      	movs	r4, #0
 8000c82:	00a3      	lsls	r3, r4, #2
 8000c84:	58f3      	ldr	r3, [r6, r3]
 8000c86:	3401      	adds	r4, #1
 8000c88:	4798      	blx	r3
 8000c8a:	42a5      	cmp	r5, r4
 8000c8c:	d1f9      	bne.n	8000c82 <__libc_init_array+0xe>
 8000c8e:	f000 f8c1 	bl	8000e14 <_init>
 8000c92:	4e08      	ldr	r6, [pc, #32]	; (8000cb4 <__libc_init_array+0x40>)
 8000c94:	4d08      	ldr	r5, [pc, #32]	; (8000cb8 <__libc_init_array+0x44>)
 8000c96:	1bad      	subs	r5, r5, r6
 8000c98:	10ad      	asrs	r5, r5, #2
 8000c9a:	d006      	beq.n	8000caa <__libc_init_array+0x36>
 8000c9c:	2400      	movs	r4, #0
 8000c9e:	00a3      	lsls	r3, r4, #2
 8000ca0:	58f3      	ldr	r3, [r6, r3]
 8000ca2:	3401      	adds	r4, #1
 8000ca4:	4798      	blx	r3
 8000ca6:	42a5      	cmp	r5, r4
 8000ca8:	d1f9      	bne.n	8000c9e <__libc_init_array+0x2a>
 8000caa:	bd70      	pop	{r4, r5, r6, pc}
 8000cac:	08000e58 	.word	0x08000e58
 8000cb0:	08000e58 	.word	0x08000e58
 8000cb4:	08000e58 	.word	0x08000e58
 8000cb8:	08000e60 	.word	0x08000e60

08000cbc <register_fini>:
 8000cbc:	4b03      	ldr	r3, [pc, #12]	; (8000ccc <register_fini+0x10>)
 8000cbe:	b510      	push	{r4, lr}
 8000cc0:	2b00      	cmp	r3, #0
 8000cc2:	d002      	beq.n	8000cca <register_fini+0xe>
 8000cc4:	4802      	ldr	r0, [pc, #8]	; (8000cd0 <register_fini+0x14>)
 8000cc6:	f000 f805 	bl	8000cd4 <atexit>
 8000cca:	bd10      	pop	{r4, pc}
 8000ccc:	00000000 	.word	0x00000000
 8000cd0:	08000ce5 	.word	0x08000ce5

08000cd4 <atexit>:
 8000cd4:	b510      	push	{r4, lr}
 8000cd6:	0001      	movs	r1, r0
 8000cd8:	2300      	movs	r3, #0
 8000cda:	2200      	movs	r2, #0
 8000cdc:	2000      	movs	r0, #0
 8000cde:	f000 f81f 	bl	8000d20 <__register_exitproc>
 8000ce2:	bd10      	pop	{r4, pc}

08000ce4 <__libc_fini_array>:
 8000ce4:	b570      	push	{r4, r5, r6, lr}
 8000ce6:	4b09      	ldr	r3, [pc, #36]	; (8000d0c <__libc_fini_array+0x28>)
 8000ce8:	4c09      	ldr	r4, [pc, #36]	; (8000d10 <__libc_fini_array+0x2c>)
 8000cea:	1ae4      	subs	r4, r4, r3
 8000cec:	10a4      	asrs	r4, r4, #2
 8000cee:	d009      	beq.n	8000d04 <__libc_fini_array+0x20>
 8000cf0:	4a08      	ldr	r2, [pc, #32]	; (8000d14 <__libc_fini_array+0x30>)
 8000cf2:	18a5      	adds	r5, r4, r2
 8000cf4:	00ad      	lsls	r5, r5, #2
 8000cf6:	18ed      	adds	r5, r5, r3
 8000cf8:	682b      	ldr	r3, [r5, #0]
 8000cfa:	3c01      	subs	r4, #1
 8000cfc:	4798      	blx	r3
 8000cfe:	3d04      	subs	r5, #4
 8000d00:	2c00      	cmp	r4, #0
 8000d02:	d1f9      	bne.n	8000cf8 <__libc_fini_array+0x14>
 8000d04:	f000 f88c 	bl	8000e20 <_fini>
 8000d08:	bd70      	pop	{r4, r5, r6, pc}
 8000d0a:	46c0      	nop			; (mov r8, r8)
 8000d0c:	08000e60 	.word	0x08000e60
 8000d10:	08000e64 	.word	0x08000e64
 8000d14:	3fffffff 	.word	0x3fffffff

08000d18 <__retarget_lock_acquire_recursive>:
 8000d18:	4770      	bx	lr
 8000d1a:	46c0      	nop			; (mov r8, r8)

08000d1c <__retarget_lock_release_recursive>:
 8000d1c:	4770      	bx	lr
 8000d1e:	46c0      	nop			; (mov r8, r8)

08000d20 <__register_exitproc>:
 8000d20:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000d22:	464e      	mov	r6, r9
 8000d24:	4645      	mov	r5, r8
 8000d26:	46de      	mov	lr, fp
 8000d28:	4657      	mov	r7, sl
 8000d2a:	b5e0      	push	{r5, r6, r7, lr}
 8000d2c:	4d36      	ldr	r5, [pc, #216]	; (8000e08 <__register_exitproc+0xe8>)
 8000d2e:	b083      	sub	sp, #12
 8000d30:	0006      	movs	r6, r0
 8000d32:	6828      	ldr	r0, [r5, #0]
 8000d34:	4698      	mov	r8, r3
 8000d36:	000f      	movs	r7, r1
 8000d38:	4691      	mov	r9, r2
 8000d3a:	f7ff ffed 	bl	8000d18 <__retarget_lock_acquire_recursive>
 8000d3e:	4b33      	ldr	r3, [pc, #204]	; (8000e0c <__register_exitproc+0xec>)
 8000d40:	681c      	ldr	r4, [r3, #0]
 8000d42:	23a4      	movs	r3, #164	; 0xa4
 8000d44:	005b      	lsls	r3, r3, #1
 8000d46:	58e0      	ldr	r0, [r4, r3]
 8000d48:	2800      	cmp	r0, #0
 8000d4a:	d052      	beq.n	8000df2 <__register_exitproc+0xd2>
 8000d4c:	6843      	ldr	r3, [r0, #4]
 8000d4e:	2b1f      	cmp	r3, #31
 8000d50:	dc13      	bgt.n	8000d7a <__register_exitproc+0x5a>
 8000d52:	1c5a      	adds	r2, r3, #1
 8000d54:	9201      	str	r2, [sp, #4]
 8000d56:	2e00      	cmp	r6, #0
 8000d58:	d128      	bne.n	8000dac <__register_exitproc+0x8c>
 8000d5a:	9a01      	ldr	r2, [sp, #4]
 8000d5c:	3302      	adds	r3, #2
 8000d5e:	009b      	lsls	r3, r3, #2
 8000d60:	6042      	str	r2, [r0, #4]
 8000d62:	501f      	str	r7, [r3, r0]
 8000d64:	6828      	ldr	r0, [r5, #0]
 8000d66:	f7ff ffd9 	bl	8000d1c <__retarget_lock_release_recursive>
 8000d6a:	2000      	movs	r0, #0
 8000d6c:	b003      	add	sp, #12
 8000d6e:	bc3c      	pop	{r2, r3, r4, r5}
 8000d70:	4690      	mov	r8, r2
 8000d72:	4699      	mov	r9, r3
 8000d74:	46a2      	mov	sl, r4
 8000d76:	46ab      	mov	fp, r5
 8000d78:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000d7a:	4b25      	ldr	r3, [pc, #148]	; (8000e10 <__register_exitproc+0xf0>)
 8000d7c:	2b00      	cmp	r3, #0
 8000d7e:	d03d      	beq.n	8000dfc <__register_exitproc+0xdc>
 8000d80:	20c8      	movs	r0, #200	; 0xc8
 8000d82:	0040      	lsls	r0, r0, #1
 8000d84:	e000      	b.n	8000d88 <__register_exitproc+0x68>
 8000d86:	bf00      	nop
 8000d88:	2800      	cmp	r0, #0
 8000d8a:	d037      	beq.n	8000dfc <__register_exitproc+0xdc>
 8000d8c:	22a4      	movs	r2, #164	; 0xa4
 8000d8e:	2300      	movs	r3, #0
 8000d90:	0052      	lsls	r2, r2, #1
 8000d92:	58a1      	ldr	r1, [r4, r2]
 8000d94:	6043      	str	r3, [r0, #4]
 8000d96:	6001      	str	r1, [r0, #0]
 8000d98:	50a0      	str	r0, [r4, r2]
 8000d9a:	3240      	adds	r2, #64	; 0x40
 8000d9c:	5083      	str	r3, [r0, r2]
 8000d9e:	3204      	adds	r2, #4
 8000da0:	5083      	str	r3, [r0, r2]
 8000da2:	3301      	adds	r3, #1
 8000da4:	9301      	str	r3, [sp, #4]
 8000da6:	2300      	movs	r3, #0
 8000da8:	2e00      	cmp	r6, #0
 8000daa:	d0d6      	beq.n	8000d5a <__register_exitproc+0x3a>
 8000dac:	009a      	lsls	r2, r3, #2
 8000dae:	4692      	mov	sl, r2
 8000db0:	4482      	add	sl, r0
 8000db2:	464a      	mov	r2, r9
 8000db4:	2188      	movs	r1, #136	; 0x88
 8000db6:	4654      	mov	r4, sl
 8000db8:	5062      	str	r2, [r4, r1]
 8000dba:	22c4      	movs	r2, #196	; 0xc4
 8000dbc:	0052      	lsls	r2, r2, #1
 8000dbe:	4691      	mov	r9, r2
 8000dc0:	4481      	add	r9, r0
 8000dc2:	464a      	mov	r2, r9
 8000dc4:	3987      	subs	r1, #135	; 0x87
 8000dc6:	4099      	lsls	r1, r3
 8000dc8:	6812      	ldr	r2, [r2, #0]
 8000dca:	468b      	mov	fp, r1
 8000dcc:	430a      	orrs	r2, r1
 8000dce:	4694      	mov	ip, r2
 8000dd0:	464a      	mov	r2, r9
 8000dd2:	4661      	mov	r1, ip
 8000dd4:	6011      	str	r1, [r2, #0]
 8000dd6:	2284      	movs	r2, #132	; 0x84
 8000dd8:	4641      	mov	r1, r8
 8000dda:	0052      	lsls	r2, r2, #1
 8000ddc:	50a1      	str	r1, [r4, r2]
 8000dde:	2e02      	cmp	r6, #2
 8000de0:	d1bb      	bne.n	8000d5a <__register_exitproc+0x3a>
 8000de2:	0002      	movs	r2, r0
 8000de4:	465c      	mov	r4, fp
 8000de6:	328d      	adds	r2, #141	; 0x8d
 8000de8:	32ff      	adds	r2, #255	; 0xff
 8000dea:	6811      	ldr	r1, [r2, #0]
 8000dec:	430c      	orrs	r4, r1
 8000dee:	6014      	str	r4, [r2, #0]
 8000df0:	e7b3      	b.n	8000d5a <__register_exitproc+0x3a>
 8000df2:	0020      	movs	r0, r4
 8000df4:	304d      	adds	r0, #77	; 0x4d
 8000df6:	30ff      	adds	r0, #255	; 0xff
 8000df8:	50e0      	str	r0, [r4, r3]
 8000dfa:	e7a7      	b.n	8000d4c <__register_exitproc+0x2c>
 8000dfc:	6828      	ldr	r0, [r5, #0]
 8000dfe:	f7ff ff8d 	bl	8000d1c <__retarget_lock_release_recursive>
 8000e02:	2001      	movs	r0, #1
 8000e04:	4240      	negs	r0, r0
 8000e06:	e7b1      	b.n	8000d6c <__register_exitproc+0x4c>
 8000e08:	20000430 	.word	0x20000430
 8000e0c:	08000e54 	.word	0x08000e54
 8000e10:	00000000 	.word	0x00000000

08000e14 <_init>:
 8000e14:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e16:	46c0      	nop			; (mov r8, r8)
 8000e18:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000e1a:	bc08      	pop	{r3}
 8000e1c:	469e      	mov	lr, r3
 8000e1e:	4770      	bx	lr

08000e20 <_fini>:
 8000e20:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e22:	46c0      	nop			; (mov r8, r8)
 8000e24:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000e26:	bc08      	pop	{r3}
 8000e28:	469e      	mov	lr, r3
 8000e2a:	4770      	bx	lr
