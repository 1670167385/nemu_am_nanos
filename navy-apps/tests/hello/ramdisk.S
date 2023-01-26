
build/hello-riscv32:     file format elf32-littleriscv


Disassembly of section .text:

830000b4 <main>:
830000b4:	830055b7          	lui	a1,0x83005
830000b8:	fe010113          	addi	sp,sp,-32
830000bc:	60858593          	addi	a1,a1,1544 # 83005608 <__BSS_END__+0xffffed34>
830000c0:	00d00613          	li	a2,13
830000c4:	00100513          	li	a0,1
830000c8:	00812c23          	sw	s0,24(sp)
830000cc:	01212823          	sw	s2,16(sp)
830000d0:	00112e23          	sw	ra,28(sp)
830000d4:	00912a23          	sw	s1,20(sp)
830000d8:	00002437          	lui	s0,0x2
830000dc:	00000097          	auipc	ra,0x0
830000e0:	048080e7          	jalr	72(ra) # 83000124 <write>
830000e4:	00200593          	li	a1,2
830000e8:	00012623          	sw	zero,12(sp)
830000ec:	83005937          	lui	s2,0x83005
830000f0:	71040413          	addi	s0,s0,1808 # 2710 <main-0x82ffd9a4>
830000f4:	00c12783          	lw	a5,12(sp)
830000f8:	00178793          	addi	a5,a5,1
830000fc:	00f12623          	sw	a5,12(sp)
83000100:	00c12783          	lw	a5,12(sp)
83000104:	fe8798e3          	bne	a5,s0,830000f4 <main+0x40>
83000108:	61890513          	addi	a0,s2,1560 # 83005618 <__BSS_END__+0xffffed44>
8300010c:	00158493          	addi	s1,a1,1
83000110:	00000097          	auipc	ra,0x0
83000114:	078080e7          	jalr	120(ra) # 83000188 <printf>
83000118:	00048593          	mv	a1,s1
8300011c:	00012623          	sw	zero,12(sp)
83000120:	fd5ff06f          	j	830000f4 <main+0x40>

83000124 <write>:
83000124:	83007737          	lui	a4,0x83007
83000128:	00050793          	mv	a5,a0
8300012c:	88872503          	lw	a0,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
83000130:	00060693          	mv	a3,a2
83000134:	00058613          	mv	a2,a1
83000138:	00078593          	mv	a1,a5
8300013c:	00002317          	auipc	t1,0x2
83000140:	84030067          	jr	-1984(t1) # 8300197c <_write_r>

83000144 <_printf_r>:
83000144:	fc010113          	addi	sp,sp,-64
83000148:	02c12423          	sw	a2,40(sp)
8300014c:	02d12623          	sw	a3,44(sp)
83000150:	02e12823          	sw	a4,48(sp)
83000154:	02f12a23          	sw	a5,52(sp)
83000158:	03012c23          	sw	a6,56(sp)
8300015c:	03112e23          	sw	a7,60(sp)
83000160:	00058613          	mv	a2,a1
83000164:	00852583          	lw	a1,8(a0)
83000168:	02810693          	addi	a3,sp,40
8300016c:	00112e23          	sw	ra,28(sp)
83000170:	00d12623          	sw	a3,12(sp)
83000174:	00000097          	auipc	ra,0x0
83000178:	068080e7          	jalr	104(ra) # 830001dc <_vfprintf_r>
8300017c:	01c12083          	lw	ra,28(sp)
83000180:	04010113          	addi	sp,sp,64
83000184:	00008067          	ret

83000188 <printf>:
83000188:	83007337          	lui	t1,0x83007
8300018c:	88832303          	lw	t1,-1912(t1) # 83006888 <__BSS_END__+0xffffffb4>
83000190:	fc010113          	addi	sp,sp,-64
83000194:	02c12423          	sw	a2,40(sp)
83000198:	02d12623          	sw	a3,44(sp)
8300019c:	02b12223          	sw	a1,36(sp)
830001a0:	02e12823          	sw	a4,48(sp)
830001a4:	02f12a23          	sw	a5,52(sp)
830001a8:	03012c23          	sw	a6,56(sp)
830001ac:	03112e23          	sw	a7,60(sp)
830001b0:	00832583          	lw	a1,8(t1)
830001b4:	02410693          	addi	a3,sp,36
830001b8:	00050613          	mv	a2,a0
830001bc:	00030513          	mv	a0,t1
830001c0:	00112e23          	sw	ra,28(sp)
830001c4:	00d12623          	sw	a3,12(sp)
830001c8:	00000097          	auipc	ra,0x0
830001cc:	014080e7          	jalr	20(ra) # 830001dc <_vfprintf_r>
830001d0:	01c12083          	lw	ra,28(sp)
830001d4:	04010113          	addi	sp,sp,64
830001d8:	00008067          	ret

830001dc <_vfprintf_r>:
830001dc:	f7010113          	addi	sp,sp,-144
830001e0:	08912223          	sw	s1,132(sp)
830001e4:	09212023          	sw	s2,128(sp)
830001e8:	07312e23          	sw	s3,124(sp)
830001ec:	07812423          	sw	s8,104(sp)
830001f0:	08112623          	sw	ra,140(sp)
830001f4:	08812423          	sw	s0,136(sp)
830001f8:	07412c23          	sw	s4,120(sp)
830001fc:	07512a23          	sw	s5,116(sp)
83000200:	07612823          	sw	s6,112(sp)
83000204:	07712623          	sw	s7,108(sp)
83000208:	07912223          	sw	s9,100(sp)
8300020c:	07a12023          	sw	s10,96(sp)
83000210:	05b12e23          	sw	s11,92(sp)
83000214:	00050993          	mv	s3,a0
83000218:	00058913          	mv	s2,a1
8300021c:	00060493          	mv	s1,a2
83000220:	00068c13          	mv	s8,a3
83000224:	00050663          	beqz	a0,83000230 <_vfprintf_r+0x54>
83000228:	03852783          	lw	a5,56(a0)
8300022c:	22078a63          	beqz	a5,83000460 <_vfprintf_r+0x284>
83000230:	00c95783          	lhu	a5,12(s2)
83000234:	0087f793          	andi	a5,a5,8
83000238:	1e078c63          	beqz	a5,83000430 <_vfprintf_r+0x254>
8300023c:	01092783          	lw	a5,16(s2)
83000240:	1e078863          	beqz	a5,83000430 <_vfprintf_r+0x254>
83000244:	830057b7          	lui	a5,0x83005
83000248:	67878793          	addi	a5,a5,1656 # 83005678 <__BSS_END__+0xffffeda4>
8300024c:	00f12c23          	sw	a5,24(sp)
83000250:	830057b7          	lui	a5,0x83005
83000254:	83005ab7          	lui	s5,0x83005
83000258:	64878793          	addi	a5,a5,1608 # 83005648 <__BSS_END__+0xffffed74>
8300025c:	00012623          	sw	zero,12(sp)
83000260:	00012423          	sw	zero,8(sp)
83000264:	7eca8a93          	addi	s5,s5,2028 # 830057ec <__BSS_END__+0xffffef18>
83000268:	00f12e23          	sw	a5,28(sp)
8300026c:	0004c783          	lbu	a5,0(s1)
83000270:	16078a63          	beqz	a5,830003e4 <_vfprintf_r+0x208>
83000274:	00048413          	mv	s0,s1
83000278:	02500713          	li	a4,37
8300027c:	1ce78a63          	beq	a5,a4,83000450 <_vfprintf_r+0x274>
83000280:	00144783          	lbu	a5,1(s0)
83000284:	00140413          	addi	s0,s0,1
83000288:	fe079ae3          	bnez	a5,8300027c <_vfprintf_r+0xa0>
8300028c:	40940a33          	sub	s4,s0,s1
83000290:	14940a63          	beq	s0,s1,830003e4 <_vfprintf_r+0x208>
83000294:	000a0693          	mv	a3,s4
83000298:	00048613          	mv	a2,s1
8300029c:	00090593          	mv	a1,s2
830002a0:	00098513          	mv	a0,s3
830002a4:	00001097          	auipc	ra,0x1
830002a8:	8bc080e7          	jalr	-1860(ra) # 83000b60 <__sfputs_r>
830002ac:	fff00793          	li	a5,-1
830002b0:	12f50a63          	beq	a0,a5,830003e4 <_vfprintf_r+0x208>
830002b4:	00812703          	lw	a4,8(sp)
830002b8:	00044783          	lbu	a5,0(s0)
830002bc:	01470733          	add	a4,a4,s4
830002c0:	00e12423          	sw	a4,8(sp)
830002c4:	12078063          	beqz	a5,830003e4 <_vfprintf_r+0x208>
830002c8:	00140413          	addi	s0,s0,1
830002cc:	020101a3          	sb	zero,35(sp)
830002d0:	00000813          	li	a6,0
830002d4:	00000893          	li	a7,0
830002d8:	fff00d93          	li	s11,-1
830002dc:	00000a13          	li	s4,0
830002e0:	00000d13          	li	s10,0
830002e4:	05800593          	li	a1,88
830002e8:	00900513          	li	a0,9
830002ec:	02a00313          	li	t1,42
830002f0:	00044683          	lbu	a3,0(s0)
830002f4:	00140493          	addi	s1,s0,1
830002f8:	fe068793          	addi	a5,a3,-32
830002fc:	04f5e463          	bltu	a1,a5,83000344 <_vfprintf_r+0x168>
83000300:	01812703          	lw	a4,24(sp)
83000304:	00279793          	slli	a5,a5,0x2
83000308:	00e787b3          	add	a5,a5,a4
8300030c:	0007a783          	lw	a5,0(a5)
83000310:	00078067          	jr	a5
83000314:	00000a13          	li	s4,0
83000318:	fd068793          	addi	a5,a3,-48
8300031c:	0004c683          	lbu	a3,0(s1)
83000320:	002a1613          	slli	a2,s4,0x2
83000324:	01460633          	add	a2,a2,s4
83000328:	00161613          	slli	a2,a2,0x1
8300032c:	00c78a33          	add	s4,a5,a2
83000330:	fd068793          	addi	a5,a3,-48
83000334:	00148493          	addi	s1,s1,1
83000338:	fef572e3          	bgeu	a0,a5,8300031c <_vfprintf_r+0x140>
8300033c:	fe068793          	addi	a5,a3,-32
83000340:	fcf5f0e3          	bgeu	a1,a5,83000300 <_vfprintf_r+0x124>
83000344:	0a068063          	beqz	a3,830003e4 <_vfprintf_r+0x208>
83000348:	02d10423          	sb	a3,40(sp)
8300034c:	020101a3          	sb	zero,35(sp)
83000350:	00100b13          	li	s6,1
83000354:	00100c93          	li	s9,1
83000358:	02810413          	addi	s0,sp,40
8300035c:	000d0b93          	mv	s7,s10
83000360:	00000d93          	li	s11,0
83000364:	002bf793          	andi	a5,s7,2
83000368:	00f12823          	sw	a5,16(sp)
8300036c:	00078463          	beqz	a5,83000374 <_vfprintf_r+0x198>
83000370:	002b0b13          	addi	s6,s6,2
83000374:	084bf793          	andi	a5,s7,132
83000378:	00f12a23          	sw	a5,20(sp)
8300037c:	00079663          	bnez	a5,83000388 <_vfprintf_r+0x1ac>
83000380:	416a0d33          	sub	s10,s4,s6
83000384:	63a04463          	bgtz	s10,830009ac <_vfprintf_r+0x7d0>
83000388:	02314783          	lbu	a5,35(sp)
8300038c:	5a079863          	bnez	a5,8300093c <_vfprintf_r+0x760>
83000390:	01012783          	lw	a5,16(sp)
83000394:	5c079863          	bnez	a5,83000964 <_vfprintf_r+0x788>
83000398:	01412703          	lw	a4,20(sp)
8300039c:	08000793          	li	a5,128
830003a0:	54f70063          	beq	a4,a5,830008e0 <_vfprintf_r+0x704>
830003a4:	419d8db3          	sub	s11,s11,s9
830003a8:	41b05063          	blez	s11,830007a8 <_vfprintf_r+0x5cc>
830003ac:	01000713          	li	a4,16
830003b0:	3db75c63          	bge	a4,s11,83000788 <_vfprintf_r+0x5ac>
830003b4:	fff00d13          	li	s10,-1
830003b8:	0100006f          	j	830003c8 <_vfprintf_r+0x1ec>
830003bc:	ff0d8d93          	addi	s11,s11,-16
830003c0:	01000713          	li	a4,16
830003c4:	3db75263          	bge	a4,s11,83000788 <_vfprintf_r+0x5ac>
830003c8:	01000693          	li	a3,16
830003cc:	000a8613          	mv	a2,s5
830003d0:	00090593          	mv	a1,s2
830003d4:	00098513          	mv	a0,s3
830003d8:	00000097          	auipc	ra,0x0
830003dc:	788080e7          	jalr	1928(ra) # 83000b60 <__sfputs_r>
830003e0:	fda51ee3          	bne	a0,s10,830003bc <_vfprintf_r+0x1e0>
830003e4:	00c95783          	lhu	a5,12(s2)
830003e8:	0407f793          	andi	a5,a5,64
830003ec:	04079c63          	bnez	a5,83000444 <_vfprintf_r+0x268>
830003f0:	08c12083          	lw	ra,140(sp)
830003f4:	08812403          	lw	s0,136(sp)
830003f8:	00812503          	lw	a0,8(sp)
830003fc:	08412483          	lw	s1,132(sp)
83000400:	08012903          	lw	s2,128(sp)
83000404:	07c12983          	lw	s3,124(sp)
83000408:	07812a03          	lw	s4,120(sp)
8300040c:	07412a83          	lw	s5,116(sp)
83000410:	07012b03          	lw	s6,112(sp)
83000414:	06c12b83          	lw	s7,108(sp)
83000418:	06812c03          	lw	s8,104(sp)
8300041c:	06412c83          	lw	s9,100(sp)
83000420:	06012d03          	lw	s10,96(sp)
83000424:	05c12d83          	lw	s11,92(sp)
83000428:	09010113          	addi	sp,sp,144
8300042c:	00008067          	ret
83000430:	00090593          	mv	a1,s2
83000434:	00098513          	mv	a0,s3
83000438:	00002097          	auipc	ra,0x2
8300043c:	c18080e7          	jalr	-1000(ra) # 83002050 <__swsetup_r>
83000440:	e00502e3          	beqz	a0,83000244 <_vfprintf_r+0x68>
83000444:	fff00793          	li	a5,-1
83000448:	00f12423          	sw	a5,8(sp)
8300044c:	fa5ff06f          	j	830003f0 <_vfprintf_r+0x214>
83000450:	40940a33          	sub	s4,s0,s1
83000454:	e49410e3          	bne	s0,s1,83000294 <_vfprintf_r+0xb8>
83000458:	00044783          	lbu	a5,0(s0)
8300045c:	e69ff06f          	j	830002c4 <_vfprintf_r+0xe8>
83000460:	00002097          	auipc	ra,0x2
83000464:	5d0080e7          	jalr	1488(ra) # 83002a30 <__sinit>
83000468:	dc9ff06f          	j	83000230 <_vfprintf_r+0x54>
8300046c:	010d6d13          	ori	s10,s10,16
83000470:	00048413          	mv	s0,s1
83000474:	e7dff06f          	j	830002f0 <_vfprintf_r+0x114>
83000478:	000c2a03          	lw	s4,0(s8)
8300047c:	004c0c13          	addi	s8,s8,4
83000480:	fe0a58e3          	bgez	s4,83000470 <_vfprintf_r+0x294>
83000484:	41400a33          	neg	s4,s4
83000488:	004d6d13          	ori	s10,s10,4
8300048c:	00048413          	mv	s0,s1
83000490:	e61ff06f          	j	830002f0 <_vfprintf_r+0x114>
83000494:	66081663          	bnez	a6,83000b00 <_vfprintf_r+0x924>
83000498:	010d7793          	andi	a5,s10,16
8300049c:	000c2683          	lw	a3,0(s8)
830004a0:	004c0c13          	addi	s8,s8,4
830004a4:	00079c63          	bnez	a5,830004bc <_vfprintf_r+0x2e0>
830004a8:	040d7613          	andi	a2,s10,64
830004ac:	00068793          	mv	a5,a3
830004b0:	00060863          	beqz	a2,830004c0 <_vfprintf_r+0x2e4>
830004b4:	01069693          	slli	a3,a3,0x10
830004b8:	4106d693          	srai	a3,a3,0x10
830004bc:	00068793          	mv	a5,a3
830004c0:	5406ce63          	bltz	a3,83000a1c <_vfprintf_r+0x840>
830004c4:	fff00593          	li	a1,-1
830004c8:	02314603          	lbu	a2,35(sp)
830004cc:	4cbd8063          	beq	s11,a1,8300098c <_vfprintf_r+0x7b0>
830004d0:	f7fd7b93          	andi	s7,s10,-129
830004d4:	4a069a63          	bnez	a3,83000988 <_vfprintf_r+0x7ac>
830004d8:	600d9063          	bnez	s11,83000ad8 <_vfprintf_r+0x8fc>
830004dc:	00000d93          	li	s11,0
830004e0:	00000c93          	li	s9,0
830004e4:	05010413          	addi	s0,sp,80
830004e8:	000d8b13          	mv	s6,s11
830004ec:	019dd463          	bge	s11,s9,830004f4 <_vfprintf_r+0x318>
830004f0:	000c8b13          	mv	s6,s9
830004f4:	00c03633          	snez	a2,a2
830004f8:	00cb0b33          	add	s6,s6,a2
830004fc:	e69ff06f          	j	83000364 <_vfprintf_r+0x188>
83000500:	000c2783          	lw	a5,0(s8)
83000504:	010d6d13          	ori	s10,s10,16
83000508:	004c0c13          	addi	s8,s8,4
8300050c:	00000593          	li	a1,0
83000510:	00000613          	li	a2,0
83000514:	02c101a3          	sb	a2,35(sp)
83000518:	fff00693          	li	a3,-1
8300051c:	32dd8063          	beq	s11,a3,8300083c <_vfprintf_r+0x660>
83000520:	f7fd7b93          	andi	s7,s10,-129
83000524:	30079a63          	bnez	a5,83000838 <_vfprintf_r+0x65c>
83000528:	360d9863          	bnez	s11,83000898 <_vfprintf_r+0x6bc>
8300052c:	fa0598e3          	bnez	a1,830004dc <_vfprintf_r+0x300>
83000530:	001d7c93          	andi	s9,s10,1
83000534:	05010413          	addi	s0,sp,80
83000538:	fa0c88e3          	beqz	s9,830004e8 <_vfprintf_r+0x30c>
8300053c:	03000793          	li	a5,48
83000540:	04f107a3          	sb	a5,79(sp)
83000544:	04f10413          	addi	s0,sp,79
83000548:	fa1ff06f          	j	830004e8 <_vfprintf_r+0x30c>
8300054c:	000c2783          	lw	a5,0(s8)
83000550:	010d6d13          	ori	s10,s10,16
83000554:	004c0c13          	addi	s8,s8,4
83000558:	00100593          	li	a1,1
8300055c:	fb5ff06f          	j	83000510 <_vfprintf_r+0x334>
83000560:	5a081c63          	bnez	a6,83000b18 <_vfprintf_r+0x93c>
83000564:	010d7693          	andi	a3,s10,16
83000568:	000c2783          	lw	a5,0(s8)
8300056c:	004c0c13          	addi	s8,s8,4
83000570:	f8069ee3          	bnez	a3,8300050c <_vfprintf_r+0x330>
83000574:	040d7693          	andi	a3,s10,64
83000578:	f8068ae3          	beqz	a3,8300050c <_vfprintf_r+0x330>
8300057c:	01079793          	slli	a5,a5,0x10
83000580:	0107d793          	srli	a5,a5,0x10
83000584:	00000593          	li	a1,0
83000588:	f89ff06f          	j	83000510 <_vfprintf_r+0x334>
8300058c:	ffff86b7          	lui	a3,0xffff8
83000590:	8306c693          	xori	a3,a3,-2000
83000594:	02d11223          	sh	a3,36(sp)
83000598:	830056b7          	lui	a3,0x83005
8300059c:	65c68713          	addi	a4,a3,1628 # 8300565c <__BSS_END__+0xffffed88>
830005a0:	000c2783          	lw	a5,0(s8)
830005a4:	002d6d13          	ori	s10,s10,2
830005a8:	004c0c13          	addi	s8,s8,4
830005ac:	00e12623          	sw	a4,12(sp)
830005b0:	00200593          	li	a1,2
830005b4:	f5dff06f          	j	83000510 <_vfprintf_r+0x334>
830005b8:	000c2403          	lw	s0,0(s8)
830005bc:	020101a3          	sb	zero,35(sp)
830005c0:	004c0c13          	addi	s8,s8,4
830005c4:	4c040863          	beqz	s0,83000a94 <_vfprintf_r+0x8b8>
830005c8:	fff00793          	li	a5,-1
830005cc:	4efd8263          	beq	s11,a5,83000ab0 <_vfprintf_r+0x8d4>
830005d0:	000d8613          	mv	a2,s11
830005d4:	00000593          	li	a1,0
830005d8:	00040513          	mv	a0,s0
830005dc:	00001097          	auipc	ra,0x1
830005e0:	240080e7          	jalr	576(ra) # 8300181c <memchr>
830005e4:	02314603          	lbu	a2,35(sp)
830005e8:	4e050c63          	beqz	a0,83000ae0 <_vfprintf_r+0x904>
830005ec:	40850cb3          	sub	s9,a0,s0
830005f0:	000d0b93          	mv	s7,s10
830005f4:	00000d93          	li	s11,0
830005f8:	ef1ff06f          	j	830004e8 <_vfprintf_r+0x30c>
830005fc:	4e081a63          	bnez	a6,83000af0 <_vfprintf_r+0x914>
83000600:	010d7693          	andi	a3,s10,16
83000604:	000c2783          	lw	a5,0(s8)
83000608:	004c0c13          	addi	s8,s8,4
8300060c:	f40696e3          	bnez	a3,83000558 <_vfprintf_r+0x37c>
83000610:	040d7693          	andi	a3,s10,64
83000614:	f40682e3          	beqz	a3,83000558 <_vfprintf_r+0x37c>
83000618:	01079793          	slli	a5,a5,0x10
8300061c:	0107d793          	srli	a5,a5,0x10
83000620:	00100593          	li	a1,1
83000624:	eedff06f          	j	83000510 <_vfprintf_r+0x334>
83000628:	4e081463          	bnez	a6,83000b10 <_vfprintf_r+0x934>
8300062c:	01c12783          	lw	a5,28(sp)
83000630:	00f12623          	sw	a5,12(sp)
83000634:	010d7613          	andi	a2,s10,16
83000638:	000c2783          	lw	a5,0(s8)
8300063c:	004c0c13          	addi	s8,s8,4
83000640:	00061a63          	bnez	a2,83000654 <_vfprintf_r+0x478>
83000644:	040d7613          	andi	a2,s10,64
83000648:	00060663          	beqz	a2,83000654 <_vfprintf_r+0x478>
8300064c:	01079793          	slli	a5,a5,0x10
83000650:	0107d793          	srli	a5,a5,0x10
83000654:	001d7613          	andi	a2,s10,1
83000658:	00200593          	li	a1,2
8300065c:	ea060ae3          	beqz	a2,83000510 <_vfprintf_r+0x334>
83000660:	ea0788e3          	beqz	a5,83000510 <_vfprintf_r+0x334>
83000664:	03000613          	li	a2,48
83000668:	02c10223          	sb	a2,36(sp)
8300066c:	02d102a3          	sb	a3,37(sp)
83000670:	002d6d13          	ori	s10,s10,2
83000674:	e9dff06f          	j	83000510 <_vfprintf_r+0x334>
83000678:	000c2783          	lw	a5,0(s8)
8300067c:	020101a3          	sb	zero,35(sp)
83000680:	004c0c13          	addi	s8,s8,4
83000684:	02f10423          	sb	a5,40(sp)
83000688:	00100b13          	li	s6,1
8300068c:	00100c93          	li	s9,1
83000690:	02810413          	addi	s0,sp,40
83000694:	cc9ff06f          	j	8300035c <_vfprintf_r+0x180>
83000698:	46081863          	bnez	a6,83000b08 <_vfprintf_r+0x92c>
8300069c:	830057b7          	lui	a5,0x83005
830006a0:	65c78793          	addi	a5,a5,1628 # 8300565c <__BSS_END__+0xffffed88>
830006a4:	00f12623          	sw	a5,12(sp)
830006a8:	f8dff06f          	j	83000634 <_vfprintf_r+0x458>
830006ac:	040d6d13          	ori	s10,s10,64
830006b0:	00048413          	mv	s0,s1
830006b4:	c3dff06f          	j	830002f0 <_vfprintf_r+0x114>
830006b8:	44081063          	bnez	a6,83000af8 <_vfprintf_r+0x91c>
830006bc:	010d7793          	andi	a5,s10,16
830006c0:	004c0713          	addi	a4,s8,4
830006c4:	0a079863          	bnez	a5,83000774 <_vfprintf_r+0x598>
830006c8:	040d7d13          	andi	s10,s10,64
830006cc:	0a0d0463          	beqz	s10,83000774 <_vfprintf_r+0x598>
830006d0:	000c2783          	lw	a5,0(s8)
830006d4:	00070c13          	mv	s8,a4
830006d8:	00812703          	lw	a4,8(sp)
830006dc:	00e79023          	sh	a4,0(a5)
830006e0:	b8dff06f          	j	8300026c <_vfprintf_r+0x90>
830006e4:	d80896e3          	bnez	a7,83000470 <_vfprintf_r+0x294>
830006e8:	00100813          	li	a6,1
830006ec:	02000893          	li	a7,32
830006f0:	00048413          	mv	s0,s1
830006f4:	bfdff06f          	j	830002f0 <_vfprintf_r+0x114>
830006f8:	001d6d13          	ori	s10,s10,1
830006fc:	00048413          	mv	s0,s1
83000700:	bf1ff06f          	j	830002f0 <_vfprintf_r+0x114>
83000704:	080d6d13          	ori	s10,s10,128
83000708:	00048413          	mv	s0,s1
8300070c:	be5ff06f          	j	830002f0 <_vfprintf_r+0x114>
83000710:	40081863          	bnez	a6,83000b20 <_vfprintf_r+0x944>
83000714:	000c2683          	lw	a3,0(s8)
83000718:	010d6d13          	ori	s10,s10,16
8300071c:	004c0c13          	addi	s8,s8,4
83000720:	00068793          	mv	a5,a3
83000724:	d9dff06f          	j	830004c0 <_vfprintf_r+0x2e4>
83000728:	0004c683          	lbu	a3,0(s1)
8300072c:	00148493          	addi	s1,s1,1
83000730:	3e668c63          	beq	a3,t1,83000b28 <_vfprintf_r+0x94c>
83000734:	fd068793          	addi	a5,a3,-48
83000738:	00000d93          	li	s11,0
8300073c:	baf56ee3          	bltu	a0,a5,830002f8 <_vfprintf_r+0x11c>
83000740:	0004c683          	lbu	a3,0(s1)
83000744:	002d9613          	slli	a2,s11,0x2
83000748:	01b60733          	add	a4,a2,s11
8300074c:	00171713          	slli	a4,a4,0x1
83000750:	00f70db3          	add	s11,a4,a5
83000754:	fd068793          	addi	a5,a3,-48
83000758:	00148493          	addi	s1,s1,1
8300075c:	fef572e3          	bgeu	a0,a5,83000740 <_vfprintf_r+0x564>
83000760:	b99ff06f          	j	830002f8 <_vfprintf_r+0x11c>
83000764:	00100813          	li	a6,1
83000768:	02b00893          	li	a7,43
8300076c:	00048413          	mv	s0,s1
83000770:	b81ff06f          	j	830002f0 <_vfprintf_r+0x114>
83000774:	000c2783          	lw	a5,0(s8)
83000778:	00070c13          	mv	s8,a4
8300077c:	00812703          	lw	a4,8(sp)
83000780:	00e7a023          	sw	a4,0(a5)
83000784:	ae9ff06f          	j	8300026c <_vfprintf_r+0x90>
83000788:	000d8693          	mv	a3,s11
8300078c:	000a8613          	mv	a2,s5
83000790:	00090593          	mv	a1,s2
83000794:	00098513          	mv	a0,s3
83000798:	00000097          	auipc	ra,0x0
8300079c:	3c8080e7          	jalr	968(ra) # 83000b60 <__sfputs_r>
830007a0:	fff00793          	li	a5,-1
830007a4:	c4f500e3          	beq	a0,a5,830003e4 <_vfprintf_r+0x208>
830007a8:	000c8693          	mv	a3,s9
830007ac:	00040613          	mv	a2,s0
830007b0:	00090593          	mv	a1,s2
830007b4:	00098513          	mv	a0,s3
830007b8:	00000097          	auipc	ra,0x0
830007bc:	3a8080e7          	jalr	936(ra) # 83000b60 <__sfputs_r>
830007c0:	fff00793          	li	a5,-1
830007c4:	c2f500e3          	beq	a0,a5,830003e4 <_vfprintf_r+0x208>
830007c8:	004bfb93          	andi	s7,s7,4
830007cc:	000b8663          	beqz	s7,830007d8 <_vfprintf_r+0x5fc>
830007d0:	416a0bb3          	sub	s7,s4,s6
830007d4:	01704e63          	bgtz	s7,830007f0 <_vfprintf_r+0x614>
830007d8:	016a5463          	bge	s4,s6,830007e0 <_vfprintf_r+0x604>
830007dc:	000b0a13          	mv	s4,s6
830007e0:	00812783          	lw	a5,8(sp)
830007e4:	014787b3          	add	a5,a5,s4
830007e8:	00f12423          	sw	a5,8(sp)
830007ec:	a81ff06f          	j	8300026c <_vfprintf_r+0x90>
830007f0:	01000793          	li	a5,16
830007f4:	2377dc63          	bge	a5,s7,83000a2c <_vfprintf_r+0x850>
830007f8:	830057b7          	lui	a5,0x83005
830007fc:	00f12223          	sw	a5,4(sp)
83000800:	fff00413          	li	s0,-1
83000804:	0100006f          	j	83000814 <_vfprintf_r+0x638>
83000808:	ff0b8b93          	addi	s7,s7,-16
8300080c:	01000793          	li	a5,16
83000810:	2377d263          	bge	a5,s7,83000a34 <_vfprintf_r+0x858>
83000814:	00412783          	lw	a5,4(sp)
83000818:	01000693          	li	a3,16
8300081c:	00090593          	mv	a1,s2
83000820:	7dc78613          	addi	a2,a5,2012 # 830057dc <__BSS_END__+0xffffef08>
83000824:	00098513          	mv	a0,s3
83000828:	00000097          	auipc	ra,0x0
8300082c:	338080e7          	jalr	824(ra) # 83000b60 <__sfputs_r>
83000830:	fc851ce3          	bne	a0,s0,83000808 <_vfprintf_r+0x62c>
83000834:	bb1ff06f          	j	830003e4 <_vfprintf_r+0x208>
83000838:	000b8d13          	mv	s10,s7
8300083c:	00100693          	li	a3,1
83000840:	14d58663          	beq	a1,a3,8300098c <_vfprintf_r+0x7b0>
83000844:	00200693          	li	a3,2
83000848:	06d58263          	beq	a1,a3,830008ac <_vfprintf_r+0x6d0>
8300084c:	05010413          	addi	s0,sp,80
83000850:	0077f693          	andi	a3,a5,7
83000854:	03068693          	addi	a3,a3,48
83000858:	fed40fa3          	sb	a3,-1(s0)
8300085c:	0037d793          	srli	a5,a5,0x3
83000860:	00040593          	mv	a1,s0
83000864:	fff40413          	addi	s0,s0,-1
83000868:	fe0794e3          	bnez	a5,83000850 <_vfprintf_r+0x674>
8300086c:	001d7793          	andi	a5,s10,1
83000870:	06078063          	beqz	a5,830008d0 <_vfprintf_r+0x6f4>
83000874:	03000793          	li	a5,48
83000878:	04f68c63          	beq	a3,a5,830008d0 <_vfprintf_r+0x6f4>
8300087c:	ffe58593          	addi	a1,a1,-2
83000880:	fef40fa3          	sb	a5,-1(s0)
83000884:	05010793          	addi	a5,sp,80
83000888:	40b78cb3          	sub	s9,a5,a1
8300088c:	000d0b93          	mv	s7,s10
83000890:	00058413          	mv	s0,a1
83000894:	c55ff06f          	j	830004e8 <_vfprintf_r+0x30c>
83000898:	00100693          	li	a3,1
8300089c:	22d58e63          	beq	a1,a3,83000ad8 <_vfprintf_r+0x8fc>
830008a0:	00200693          	li	a3,2
830008a4:	000b8d13          	mv	s10,s7
830008a8:	fad592e3          	bne	a1,a3,8300084c <_vfprintf_r+0x670>
830008ac:	05010413          	addi	s0,sp,80
830008b0:	00c12703          	lw	a4,12(sp)
830008b4:	00f7f693          	andi	a3,a5,15
830008b8:	fff40413          	addi	s0,s0,-1
830008bc:	00d706b3          	add	a3,a4,a3
830008c0:	0006c683          	lbu	a3,0(a3)
830008c4:	0047d793          	srli	a5,a5,0x4
830008c8:	00d40023          	sb	a3,0(s0)
830008cc:	fe0792e3          	bnez	a5,830008b0 <_vfprintf_r+0x6d4>
830008d0:	05010793          	addi	a5,sp,80
830008d4:	40878cb3          	sub	s9,a5,s0
830008d8:	000d0b93          	mv	s7,s10
830008dc:	c0dff06f          	j	830004e8 <_vfprintf_r+0x30c>
830008e0:	416a0d33          	sub	s10,s4,s6
830008e4:	ada050e3          	blez	s10,830003a4 <_vfprintf_r+0x1c8>
830008e8:	0280006f          	j	83000910 <_vfprintf_r+0x734>
830008ec:	01000693          	li	a3,16
830008f0:	000a8613          	mv	a2,s5
830008f4:	00090593          	mv	a1,s2
830008f8:	00098513          	mv	a0,s3
830008fc:	00000097          	auipc	ra,0x0
83000900:	264080e7          	jalr	612(ra) # 83000b60 <__sfputs_r>
83000904:	fff00793          	li	a5,-1
83000908:	acf50ee3          	beq	a0,a5,830003e4 <_vfprintf_r+0x208>
8300090c:	ff0d0d13          	addi	s10,s10,-16
83000910:	01000693          	li	a3,16
83000914:	fda6cce3          	blt	a3,s10,830008ec <_vfprintf_r+0x710>
83000918:	000d0693          	mv	a3,s10
8300091c:	000a8613          	mv	a2,s5
83000920:	00090593          	mv	a1,s2
83000924:	00098513          	mv	a0,s3
83000928:	00000097          	auipc	ra,0x0
8300092c:	238080e7          	jalr	568(ra) # 83000b60 <__sfputs_r>
83000930:	fff00793          	li	a5,-1
83000934:	a6f518e3          	bne	a0,a5,830003a4 <_vfprintf_r+0x1c8>
83000938:	aadff06f          	j	830003e4 <_vfprintf_r+0x208>
8300093c:	00100693          	li	a3,1
83000940:	02310613          	addi	a2,sp,35
83000944:	00090593          	mv	a1,s2
83000948:	00098513          	mv	a0,s3
8300094c:	00000097          	auipc	ra,0x0
83000950:	214080e7          	jalr	532(ra) # 83000b60 <__sfputs_r>
83000954:	fff00793          	li	a5,-1
83000958:	a8f506e3          	beq	a0,a5,830003e4 <_vfprintf_r+0x208>
8300095c:	01012783          	lw	a5,16(sp)
83000960:	a2078ce3          	beqz	a5,83000398 <_vfprintf_r+0x1bc>
83000964:	00200693          	li	a3,2
83000968:	02410613          	addi	a2,sp,36
8300096c:	00090593          	mv	a1,s2
83000970:	00098513          	mv	a0,s3
83000974:	00000097          	auipc	ra,0x0
83000978:	1ec080e7          	jalr	492(ra) # 83000b60 <__sfputs_r>
8300097c:	fff00793          	li	a5,-1
83000980:	a0f51ce3          	bne	a0,a5,83000398 <_vfprintf_r+0x1bc>
83000984:	a61ff06f          	j	830003e4 <_vfprintf_r+0x208>
83000988:	000b8d13          	mv	s10,s7
8300098c:	00900693          	li	a3,9
83000990:	0cf6e663          	bltu	a3,a5,83000a5c <_vfprintf_r+0x880>
83000994:	03078793          	addi	a5,a5,48
83000998:	04f107a3          	sb	a5,79(sp)
8300099c:	000d0b93          	mv	s7,s10
830009a0:	00100c93          	li	s9,1
830009a4:	04f10413          	addi	s0,sp,79
830009a8:	b41ff06f          	j	830004e8 <_vfprintf_r+0x30c>
830009ac:	830057b7          	lui	a5,0x83005
830009b0:	01000693          	li	a3,16
830009b4:	00f12223          	sw	a5,4(sp)
830009b8:	01a6ca63          	blt	a3,s10,830009cc <_vfprintf_r+0x7f0>
830009bc:	0380006f          	j	830009f4 <_vfprintf_r+0x818>
830009c0:	ff0d0d13          	addi	s10,s10,-16
830009c4:	01000693          	li	a3,16
830009c8:	03a6d663          	bge	a3,s10,830009f4 <_vfprintf_r+0x818>
830009cc:	00412783          	lw	a5,4(sp)
830009d0:	01000693          	li	a3,16
830009d4:	00090593          	mv	a1,s2
830009d8:	7dc78613          	addi	a2,a5,2012 # 830057dc <__BSS_END__+0xffffef08>
830009dc:	00098513          	mv	a0,s3
830009e0:	00000097          	auipc	ra,0x0
830009e4:	180080e7          	jalr	384(ra) # 83000b60 <__sfputs_r>
830009e8:	fff00793          	li	a5,-1
830009ec:	fcf51ae3          	bne	a0,a5,830009c0 <_vfprintf_r+0x7e4>
830009f0:	9f5ff06f          	j	830003e4 <_vfprintf_r+0x208>
830009f4:	00412783          	lw	a5,4(sp)
830009f8:	000d0693          	mv	a3,s10
830009fc:	00090593          	mv	a1,s2
83000a00:	7dc78613          	addi	a2,a5,2012
83000a04:	00098513          	mv	a0,s3
83000a08:	00000097          	auipc	ra,0x0
83000a0c:	158080e7          	jalr	344(ra) # 83000b60 <__sfputs_r>
83000a10:	fff00793          	li	a5,-1
83000a14:	96f51ae3          	bne	a0,a5,83000388 <_vfprintf_r+0x1ac>
83000a18:	9cdff06f          	j	830003e4 <_vfprintf_r+0x208>
83000a1c:	40d007b3          	neg	a5,a3
83000a20:	02d00613          	li	a2,45
83000a24:	00100593          	li	a1,1
83000a28:	aedff06f          	j	83000514 <_vfprintf_r+0x338>
83000a2c:	830057b7          	lui	a5,0x83005
83000a30:	00f12223          	sw	a5,4(sp)
83000a34:	00412783          	lw	a5,4(sp)
83000a38:	000b8693          	mv	a3,s7
83000a3c:	00090593          	mv	a1,s2
83000a40:	7dc78613          	addi	a2,a5,2012 # 830057dc <__BSS_END__+0xffffef08>
83000a44:	00098513          	mv	a0,s3
83000a48:	00000097          	auipc	ra,0x0
83000a4c:	118080e7          	jalr	280(ra) # 83000b60 <__sfputs_r>
83000a50:	fff00793          	li	a5,-1
83000a54:	d8f512e3          	bne	a0,a5,830007d8 <_vfprintf_r+0x5fc>
83000a58:	98dff06f          	j	830003e4 <_vfprintf_r+0x208>
83000a5c:	05010413          	addi	s0,sp,80
83000a60:	00a00593          	li	a1,10
83000a64:	00900813          	li	a6,9
83000a68:	02b7f6b3          	remu	a3,a5,a1
83000a6c:	fff40413          	addi	s0,s0,-1
83000a70:	00078513          	mv	a0,a5
83000a74:	03068693          	addi	a3,a3,48
83000a78:	00d40023          	sb	a3,0(s0)
83000a7c:	02b7d7b3          	divu	a5,a5,a1
83000a80:	fea864e3          	bltu	a6,a0,83000a68 <_vfprintf_r+0x88c>
83000a84:	05010793          	addi	a5,sp,80
83000a88:	40878cb3          	sub	s9,a5,s0
83000a8c:	000d0b93          	mv	s7,s10
83000a90:	a59ff06f          	j	830004e8 <_vfprintf_r+0x30c>
83000a94:	00600793          	li	a5,6
83000a98:	000d8c93          	mv	s9,s11
83000a9c:	03b7ea63          	bltu	a5,s11,83000ad0 <_vfprintf_r+0x8f4>
83000aa0:	83005437          	lui	s0,0x83005
83000aa4:	000c8b13          	mv	s6,s9
83000aa8:	67040413          	addi	s0,s0,1648 # 83005670 <__BSS_END__+0xffffed9c>
83000aac:	8b1ff06f          	j	8300035c <_vfprintf_r+0x180>
83000ab0:	00040513          	mv	a0,s0
83000ab4:	00001097          	auipc	ra,0x1
83000ab8:	e30080e7          	jalr	-464(ra) # 830018e4 <strlen>
83000abc:	02314603          	lbu	a2,35(sp)
83000ac0:	00050c93          	mv	s9,a0
83000ac4:	000d0b93          	mv	s7,s10
83000ac8:	00000d93          	li	s11,0
83000acc:	a1dff06f          	j	830004e8 <_vfprintf_r+0x30c>
83000ad0:	00600c93          	li	s9,6
83000ad4:	fcdff06f          	j	83000aa0 <_vfprintf_r+0x8c4>
83000ad8:	000b8d13          	mv	s10,s7
83000adc:	eb9ff06f          	j	83000994 <_vfprintf_r+0x7b8>
83000ae0:	000d8c93          	mv	s9,s11
83000ae4:	000d0b93          	mv	s7,s10
83000ae8:	00000d93          	li	s11,0
83000aec:	9fdff06f          	j	830004e8 <_vfprintf_r+0x30c>
83000af0:	031101a3          	sb	a7,35(sp)
83000af4:	b0dff06f          	j	83000600 <_vfprintf_r+0x424>
83000af8:	031101a3          	sb	a7,35(sp)
83000afc:	bc1ff06f          	j	830006bc <_vfprintf_r+0x4e0>
83000b00:	031101a3          	sb	a7,35(sp)
83000b04:	995ff06f          	j	83000498 <_vfprintf_r+0x2bc>
83000b08:	031101a3          	sb	a7,35(sp)
83000b0c:	b91ff06f          	j	8300069c <_vfprintf_r+0x4c0>
83000b10:	031101a3          	sb	a7,35(sp)
83000b14:	b19ff06f          	j	8300062c <_vfprintf_r+0x450>
83000b18:	031101a3          	sb	a7,35(sp)
83000b1c:	a49ff06f          	j	83000564 <_vfprintf_r+0x388>
83000b20:	031101a3          	sb	a7,35(sp)
83000b24:	bf1ff06f          	j	83000714 <_vfprintf_r+0x538>
83000b28:	000c2d83          	lw	s11,0(s8)
83000b2c:	004c0c13          	addi	s8,s8,4
83000b30:	940dd0e3          	bgez	s11,83000470 <_vfprintf_r+0x294>
83000b34:	fff00d93          	li	s11,-1
83000b38:	00048413          	mv	s0,s1
83000b3c:	fb4ff06f          	j	830002f0 <_vfprintf_r+0x114>

83000b40 <vfprintf>:
83000b40:	83007737          	lui	a4,0x83007
83000b44:	00050793          	mv	a5,a0
83000b48:	88872503          	lw	a0,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
83000b4c:	00060693          	mv	a3,a2
83000b50:	00058613          	mv	a2,a1
83000b54:	00078593          	mv	a1,a5
83000b58:	fffff317          	auipc	t1,0xfffff
83000b5c:	68430067          	jr	1668(t1) # 830001dc <_vfprintf_r>

83000b60 <__sfputs_r>:
83000b60:	08068e63          	beqz	a3,83000bfc <__sfputs_r+0x9c>
83000b64:	fe010113          	addi	sp,sp,-32
83000b68:	00812c23          	sw	s0,24(sp)
83000b6c:	00912a23          	sw	s1,20(sp)
83000b70:	01212823          	sw	s2,16(sp)
83000b74:	01312623          	sw	s3,12(sp)
83000b78:	01412423          	sw	s4,8(sp)
83000b7c:	00112e23          	sw	ra,28(sp)
83000b80:	00050913          	mv	s2,a0
83000b84:	00058993          	mv	s3,a1
83000b88:	00060413          	mv	s0,a2
83000b8c:	00d604b3          	add	s1,a2,a3
83000b90:	fff00a13          	li	s4,-1
83000b94:	0080006f          	j	83000b9c <__sfputs_r+0x3c>
83000b98:	04940063          	beq	s0,s1,83000bd8 <__sfputs_r+0x78>
83000b9c:	00044583          	lbu	a1,0(s0)
83000ba0:	00098613          	mv	a2,s3
83000ba4:	00090513          	mv	a0,s2
83000ba8:	00001097          	auipc	ra,0x1
83000bac:	b90080e7          	jalr	-1136(ra) # 83001738 <_fputc_r>
83000bb0:	00140413          	addi	s0,s0,1
83000bb4:	ff4512e3          	bne	a0,s4,83000b98 <__sfputs_r+0x38>
83000bb8:	01c12083          	lw	ra,28(sp)
83000bbc:	01812403          	lw	s0,24(sp)
83000bc0:	01412483          	lw	s1,20(sp)
83000bc4:	01012903          	lw	s2,16(sp)
83000bc8:	00c12983          	lw	s3,12(sp)
83000bcc:	00812a03          	lw	s4,8(sp)
83000bd0:	02010113          	addi	sp,sp,32
83000bd4:	00008067          	ret
83000bd8:	01c12083          	lw	ra,28(sp)
83000bdc:	01812403          	lw	s0,24(sp)
83000be0:	01412483          	lw	s1,20(sp)
83000be4:	01012903          	lw	s2,16(sp)
83000be8:	00c12983          	lw	s3,12(sp)
83000bec:	00812a03          	lw	s4,8(sp)
83000bf0:	00000513          	li	a0,0
83000bf4:	02010113          	addi	sp,sp,32
83000bf8:	00008067          	ret
83000bfc:	00000513          	li	a0,0
83000c00:	00008067          	ret

83000c04 <__sprint_r>:
83000c04:	00862783          	lw	a5,8(a2)
83000c08:	ff010113          	addi	sp,sp,-16
83000c0c:	00812423          	sw	s0,8(sp)
83000c10:	00112623          	sw	ra,12(sp)
83000c14:	00060413          	mv	s0,a2
83000c18:	00079e63          	bnez	a5,83000c34 <__sprint_r+0x30>
83000c1c:	00c12083          	lw	ra,12(sp)
83000c20:	00042223          	sw	zero,4(s0)
83000c24:	00812403          	lw	s0,8(sp)
83000c28:	00000513          	li	a0,0
83000c2c:	01010113          	addi	sp,sp,16
83000c30:	00008067          	ret
83000c34:	00001097          	auipc	ra,0x1
83000c38:	594080e7          	jalr	1428(ra) # 830021c8 <__sfvwrite_r>
83000c3c:	00c12083          	lw	ra,12(sp)
83000c40:	00042423          	sw	zero,8(s0)
83000c44:	00042223          	sw	zero,4(s0)
83000c48:	00812403          	lw	s0,8(sp)
83000c4c:	01010113          	addi	sp,sp,16
83000c50:	00008067          	ret

83000c54 <_vfiprintf_r>:
83000c54:	f6010113          	addi	sp,sp,-160
83000c58:	08812c23          	sw	s0,152(sp)
83000c5c:	08912a23          	sw	s1,148(sp)
83000c60:	09612023          	sw	s6,128(sp)
83000c64:	08112e23          	sw	ra,156(sp)
83000c68:	09212823          	sw	s2,144(sp)
83000c6c:	09312623          	sw	s3,140(sp)
83000c70:	09412423          	sw	s4,136(sp)
83000c74:	09512223          	sw	s5,132(sp)
83000c78:	07712e23          	sw	s7,124(sp)
83000c7c:	07812c23          	sw	s8,120(sp)
83000c80:	07912a23          	sw	s9,116(sp)
83000c84:	07a12823          	sw	s10,112(sp)
83000c88:	07b12623          	sw	s11,108(sp)
83000c8c:	00d12e23          	sw	a3,28(sp)
83000c90:	02012623          	sw	zero,44(sp)
83000c94:	00050493          	mv	s1,a0
83000c98:	00058413          	mv	s0,a1
83000c9c:	00060b13          	mv	s6,a2
83000ca0:	00050663          	beqz	a0,83000cac <_vfiprintf_r+0x58>
83000ca4:	03852783          	lw	a5,56(a0)
83000ca8:	24078e63          	beqz	a5,83000f04 <_vfiprintf_r+0x2b0>
83000cac:	00c45783          	lhu	a5,12(s0)
83000cb0:	0087f793          	andi	a5,a5,8
83000cb4:	0c078a63          	beqz	a5,83000d88 <_vfiprintf_r+0x134>
83000cb8:	01042783          	lw	a5,16(s0)
83000cbc:	0c078663          	beqz	a5,83000d88 <_vfiprintf_r+0x134>
83000cc0:	83006c37          	lui	s8,0x83006
83000cc4:	830057b7          	lui	a5,0x83005
83000cc8:	960c0c13          	addi	s8,s8,-1696 # 83005960 <__BSS_END__+0xfffff08c>
83000ccc:	7fc78793          	addi	a5,a5,2044 # 830057fc <__BSS_END__+0xffffef28>
83000cd0:	02012023          	sw	zero,32(sp)
83000cd4:	00012c23          	sw	zero,24(sp)
83000cd8:	02f12423          	sw	a5,40(sp)
83000cdc:	020c0913          	addi	s2,s8,32
83000ce0:	000b4583          	lbu	a1,0(s6)
83000ce4:	04058c63          	beqz	a1,83000d3c <_vfiprintf_r+0xe8>
83000ce8:	000b0a93          	mv	s5,s6
83000cec:	00058793          	mv	a5,a1
83000cf0:	02500713          	li	a4,37
83000cf4:	0ae78a63          	beq	a5,a4,83000da8 <_vfiprintf_r+0x154>
83000cf8:	001ac783          	lbu	a5,1(s5)
83000cfc:	001a8a93          	addi	s5,s5,1
83000d00:	fe079ae3          	bnez	a5,83000cf4 <_vfiprintf_r+0xa0>
83000d04:	416a89b3          	sub	s3,s5,s6
83000d08:	036a8a63          	beq	s5,s6,83000d3c <_vfiprintf_r+0xe8>
83000d0c:	00000b93          	li	s7,0
83000d10:	fff00a13          	li	s4,-1
83000d14:	0140006f          	j	83000d28 <_vfiprintf_r+0xd4>
83000d18:	001b8b93          	addi	s7,s7,1
83000d1c:	1d3bfa63          	bgeu	s7,s3,83000ef0 <_vfiprintf_r+0x29c>
83000d20:	017b07b3          	add	a5,s6,s7
83000d24:	0007c583          	lbu	a1,0(a5)
83000d28:	00040613          	mv	a2,s0
83000d2c:	00048513          	mv	a0,s1
83000d30:	00001097          	auipc	ra,0x1
83000d34:	a08080e7          	jalr	-1528(ra) # 83001738 <_fputc_r>
83000d38:	ff4510e3          	bne	a0,s4,83000d18 <_vfiprintf_r+0xc4>
83000d3c:	00c45783          	lhu	a5,12(s0)
83000d40:	0407f793          	andi	a5,a5,64
83000d44:	04079c63          	bnez	a5,83000d9c <_vfiprintf_r+0x148>
83000d48:	09c12083          	lw	ra,156(sp)
83000d4c:	09812403          	lw	s0,152(sp)
83000d50:	01812503          	lw	a0,24(sp)
83000d54:	09412483          	lw	s1,148(sp)
83000d58:	09012903          	lw	s2,144(sp)
83000d5c:	08c12983          	lw	s3,140(sp)
83000d60:	08812a03          	lw	s4,136(sp)
83000d64:	08412a83          	lw	s5,132(sp)
83000d68:	08012b03          	lw	s6,128(sp)
83000d6c:	07c12b83          	lw	s7,124(sp)
83000d70:	07812c03          	lw	s8,120(sp)
83000d74:	07412c83          	lw	s9,116(sp)
83000d78:	07012d03          	lw	s10,112(sp)
83000d7c:	06c12d83          	lw	s11,108(sp)
83000d80:	0a010113          	addi	sp,sp,160
83000d84:	00008067          	ret
83000d88:	00040593          	mv	a1,s0
83000d8c:	00048513          	mv	a0,s1
83000d90:	00001097          	auipc	ra,0x1
83000d94:	2c0080e7          	jalr	704(ra) # 83002050 <__swsetup_r>
83000d98:	f20504e3          	beqz	a0,83000cc0 <_vfiprintf_r+0x6c>
83000d9c:	fff00793          	li	a5,-1
83000da0:	00f12c23          	sw	a5,24(sp)
83000da4:	fa5ff06f          	j	83000d48 <_vfiprintf_r+0xf4>
83000da8:	416a89b3          	sub	s3,s5,s6
83000dac:	f76a90e3          	bne	s5,s6,83000d0c <_vfiprintf_r+0xb8>
83000db0:	000ac783          	lbu	a5,0(s5)
83000db4:	f80784e3          	beqz	a5,83000d3c <_vfiprintf_r+0xe8>
83000db8:	001a8793          	addi	a5,s5,1
83000dbc:	00000c93          	li	s9,0
83000dc0:	fff00a93          	li	s5,-1
83000dc4:	00012023          	sw	zero,0(sp)
83000dc8:	00000a13          	li	s4,0
83000dcc:	05800613          	li	a2,88
83000dd0:	00900593          	li	a1,9
83000dd4:	02a00513          	li	a0,42
83000dd8:	0007c703          	lbu	a4,0(a5)
83000ddc:	00178b13          	addi	s6,a5,1
83000de0:	fe070793          	addi	a5,a4,-32
83000de4:	04f66863          	bltu	a2,a5,83000e34 <_vfiprintf_r+0x1e0>
83000de8:	02812683          	lw	a3,40(sp)
83000dec:	00279793          	slli	a5,a5,0x2
83000df0:	00d787b3          	add	a5,a5,a3
83000df4:	0007a783          	lw	a5,0(a5)
83000df8:	00078067          	jr	a5
83000dfc:	00012023          	sw	zero,0(sp)
83000e00:	fd070793          	addi	a5,a4,-48
83000e04:	00012803          	lw	a6,0(sp)
83000e08:	000b4703          	lbu	a4,0(s6)
83000e0c:	001b0b13          	addi	s6,s6,1
83000e10:	00281693          	slli	a3,a6,0x2
83000e14:	010686b3          	add	a3,a3,a6
83000e18:	00169693          	slli	a3,a3,0x1
83000e1c:	00d787b3          	add	a5,a5,a3
83000e20:	00f12023          	sw	a5,0(sp)
83000e24:	fd070793          	addi	a5,a4,-48
83000e28:	fcf5fee3          	bgeu	a1,a5,83000e04 <_vfiprintf_r+0x1b0>
83000e2c:	fe070793          	addi	a5,a4,-32
83000e30:	faf67ce3          	bgeu	a2,a5,83000de8 <_vfiprintf_r+0x194>
83000e34:	f00704e3          	beqz	a4,83000d3c <_vfiprintf_r+0xe8>
83000e38:	00100793          	li	a5,1
83000e3c:	02e10c23          	sb	a4,56(sp)
83000e40:	00100d93          	li	s11,1
83000e44:	00f12823          	sw	a5,16(sp)
83000e48:	03810993          	addi	s3,sp,56
83000e4c:	01412423          	sw	s4,8(sp)
83000e50:	00000c93          	li	s9,0
83000e54:	00000a93          	li	s5,0
83000e58:	00812783          	lw	a5,8(sp)
83000e5c:	0027f793          	andi	a5,a5,2
83000e60:	00f12223          	sw	a5,4(sp)
83000e64:	00078463          	beqz	a5,83000e6c <_vfiprintf_r+0x218>
83000e68:	002d8d93          	addi	s11,s11,2
83000e6c:	00812783          	lw	a5,8(sp)
83000e70:	0847f793          	andi	a5,a5,132
83000e74:	02f12223          	sw	a5,36(sp)
83000e78:	00079a63          	bnez	a5,83000e8c <_vfiprintf_r+0x238>
83000e7c:	00012783          	lw	a5,0(sp)
83000e80:	41b787b3          	sub	a5,a5,s11
83000e84:	00f12623          	sw	a5,12(sp)
83000e88:	0cf04063          	bgtz	a5,83000f48 <_vfiprintf_r+0x2f4>
83000e8c:	440c9863          	bnez	s9,830012dc <_vfiprintf_r+0x688>
83000e90:	00412783          	lw	a5,4(sp)
83000e94:	46079663          	bnez	a5,83001300 <_vfiprintf_r+0x6ac>
83000e98:	02412703          	lw	a4,36(sp)
83000e9c:	08000793          	li	a5,128
83000ea0:	4af70063          	beq	a4,a5,83001340 <_vfiprintf_r+0x6ec>
83000ea4:	01012783          	lw	a5,16(sp)
83000ea8:	40fa8ab3          	sub	s5,s5,a5
83000eac:	53505863          	blez	s5,830013dc <_vfiprintf_r+0x788>
83000eb0:	01000793          	li	a5,16
83000eb4:	3f57d663          	bge	a5,s5,830012a0 <_vfiprintf_r+0x64c>
83000eb8:	fff00a13          	li	s4,-1
83000ebc:	01000b93          	li	s7,16
83000ec0:	011c0c93          	addi	s9,s8,17
83000ec4:	03000593          	li	a1,48
83000ec8:	0100006f          	j	83000ed8 <_vfiprintf_r+0x284>
83000ecc:	3d990663          	beq	s2,s9,83001298 <_vfiprintf_r+0x644>
83000ed0:	000cc583          	lbu	a1,0(s9)
83000ed4:	001c8c93          	addi	s9,s9,1
83000ed8:	00040613          	mv	a2,s0
83000edc:	00048513          	mv	a0,s1
83000ee0:	00001097          	auipc	ra,0x1
83000ee4:	858080e7          	jalr	-1960(ra) # 83001738 <_fputc_r>
83000ee8:	ff4512e3          	bne	a0,s4,83000ecc <_vfiprintf_r+0x278>
83000eec:	e51ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
83000ef0:	01812703          	lw	a4,24(sp)
83000ef4:	000ac783          	lbu	a5,0(s5)
83000ef8:	01370733          	add	a4,a4,s3
83000efc:	00e12c23          	sw	a4,24(sp)
83000f00:	eb5ff06f          	j	83000db4 <_vfiprintf_r+0x160>
83000f04:	00002097          	auipc	ra,0x2
83000f08:	b2c080e7          	jalr	-1236(ra) # 83002a30 <__sinit>
83000f0c:	da1ff06f          	j	83000cac <_vfiprintf_r+0x58>
83000f10:	010a6a13          	ori	s4,s4,16
83000f14:	000b0793          	mv	a5,s6
83000f18:	ec1ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
83000f1c:	01c12703          	lw	a4,28(sp)
83000f20:	00072783          	lw	a5,0(a4)
83000f24:	00470713          	addi	a4,a4,4
83000f28:	00e12e23          	sw	a4,28(sp)
83000f2c:	00f12023          	sw	a5,0(sp)
83000f30:	fe07d2e3          	bgez	a5,83000f14 <_vfiprintf_r+0x2c0>
83000f34:	40f007b3          	neg	a5,a5
83000f38:	00f12023          	sw	a5,0(sp)
83000f3c:	004a6a13          	ori	s4,s4,4
83000f40:	000b0793          	mv	a5,s6
83000f44:	e95ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
83000f48:	00c12703          	lw	a4,12(sp)
83000f4c:	01000793          	li	a5,16
83000f50:	78e7d063          	bge	a5,a4,830016d0 <_vfiprintf_r+0xa7c>
83000f54:	830067b7          	lui	a5,0x83006
83000f58:	96178793          	addi	a5,a5,-1695 # 83005961 <__BSS_END__+0xfffff08d>
83000f5c:	83006a37          	lui	s4,0x83006
83000f60:	00f12a23          	sw	a5,20(sp)
83000f64:	970a0a13          	addi	s4,s4,-1680 # 83005970 <__BSS_END__+0xfffff09c>
83000f68:	fff00b93          	li	s7,-1
83000f6c:	01412d03          	lw	s10,20(sp)
83000f70:	02000593          	li	a1,32
83000f74:	0100006f          	j	83000f84 <_vfiprintf_r+0x330>
83000f78:	41aa0a63          	beq	s4,s10,8300138c <_vfiprintf_r+0x738>
83000f7c:	000d4583          	lbu	a1,0(s10)
83000f80:	001d0d13          	addi	s10,s10,1
83000f84:	00040613          	mv	a2,s0
83000f88:	00048513          	mv	a0,s1
83000f8c:	00000097          	auipc	ra,0x0
83000f90:	7ac080e7          	jalr	1964(ra) # 83001738 <_fputc_r>
83000f94:	ff7512e3          	bne	a0,s7,83000f78 <_vfiprintf_r+0x324>
83000f98:	da5ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
83000f9c:	01c12683          	lw	a3,28(sp)
83000fa0:	010a7793          	andi	a5,s4,16
83000fa4:	0006a703          	lw	a4,0(a3)
83000fa8:	00468693          	addi	a3,a3,4
83000fac:	00d12e23          	sw	a3,28(sp)
83000fb0:	00079c63          	bnez	a5,83000fc8 <_vfiprintf_r+0x374>
83000fb4:	040a7693          	andi	a3,s4,64
83000fb8:	00070793          	mv	a5,a4
83000fbc:	00068863          	beqz	a3,83000fcc <_vfiprintf_r+0x378>
83000fc0:	01071713          	slli	a4,a4,0x10
83000fc4:	41075713          	srai	a4,a4,0x10
83000fc8:	00070793          	mv	a5,a4
83000fcc:	62074663          	bltz	a4,830015f8 <_vfiprintf_r+0x9a4>
83000fd0:	fff00693          	li	a3,-1
83000fd4:	56da8663          	beq	s5,a3,83001540 <_vfiprintf_r+0x8ec>
83000fd8:	f7fa7693          	andi	a3,s4,-129
83000fdc:	00d12423          	sw	a3,8(sp)
83000fe0:	54071e63          	bnez	a4,8300153c <_vfiprintf_r+0x8e8>
83000fe4:	6c0a9a63          	bnez	s5,830016b8 <_vfiprintf_r+0xa64>
83000fe8:	00000a93          	li	s5,0
83000fec:	00012823          	sw	zero,16(sp)
83000ff0:	06010993          	addi	s3,sp,96
83000ff4:	01012783          	lw	a5,16(sp)
83000ff8:	000a8d93          	mv	s11,s5
83000ffc:	00fad463          	bge	s5,a5,83001004 <_vfiprintf_r+0x3b0>
83001000:	00078d93          	mv	s11,a5
83001004:	019037b3          	snez	a5,s9
83001008:	00fd8db3          	add	s11,s11,a5
8300100c:	e4dff06f          	j	83000e58 <_vfiprintf_r+0x204>
83001010:	01c12703          	lw	a4,28(sp)
83001014:	010a6a13          	ori	s4,s4,16
83001018:	00072783          	lw	a5,0(a4)
8300101c:	00470713          	addi	a4,a4,4
83001020:	00e12e23          	sw	a4,28(sp)
83001024:	00000693          	li	a3,0
83001028:	00000c93          	li	s9,0
8300102c:	fff00713          	li	a4,-1
83001030:	40ea8e63          	beq	s5,a4,8300144c <_vfiprintf_r+0x7f8>
83001034:	f7fa7713          	andi	a4,s4,-129
83001038:	00e12423          	sw	a4,8(sp)
8300103c:	40079663          	bnez	a5,83001448 <_vfiprintf_r+0x7f4>
83001040:	460a9663          	bnez	s5,830014ac <_vfiprintf_r+0x858>
83001044:	fa0692e3          	bnez	a3,83000fe8 <_vfiprintf_r+0x394>
83001048:	001a7793          	andi	a5,s4,1
8300104c:	00f12823          	sw	a5,16(sp)
83001050:	06010993          	addi	s3,sp,96
83001054:	fa0780e3          	beqz	a5,83000ff4 <_vfiprintf_r+0x3a0>
83001058:	03000793          	li	a5,48
8300105c:	04f10fa3          	sb	a5,95(sp)
83001060:	05f10993          	addi	s3,sp,95
83001064:	f91ff06f          	j	83000ff4 <_vfiprintf_r+0x3a0>
83001068:	01c12703          	lw	a4,28(sp)
8300106c:	010a6a13          	ori	s4,s4,16
83001070:	00072783          	lw	a5,0(a4)
83001074:	00470713          	addi	a4,a4,4
83001078:	00e12e23          	sw	a4,28(sp)
8300107c:	00100693          	li	a3,1
83001080:	fa9ff06f          	j	83001028 <_vfiprintf_r+0x3d4>
83001084:	01c12703          	lw	a4,28(sp)
83001088:	00100d93          	li	s11,1
8300108c:	03810993          	addi	s3,sp,56
83001090:	00072783          	lw	a5,0(a4)
83001094:	00470713          	addi	a4,a4,4
83001098:	00e12e23          	sw	a4,28(sp)
8300109c:	02f10c23          	sb	a5,56(sp)
830010a0:	00100793          	li	a5,1
830010a4:	00f12823          	sw	a5,16(sp)
830010a8:	da5ff06f          	j	83000e4c <_vfiprintf_r+0x1f8>
830010ac:	040a6a13          	ori	s4,s4,64
830010b0:	000b0793          	mv	a5,s6
830010b4:	d25ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
830010b8:	01c12683          	lw	a3,28(sp)
830010bc:	010a7713          	andi	a4,s4,16
830010c0:	0006a783          	lw	a5,0(a3)
830010c4:	00468693          	addi	a3,a3,4
830010c8:	00d12e23          	sw	a3,28(sp)
830010cc:	f4071ce3          	bnez	a4,83001024 <_vfiprintf_r+0x3d0>
830010d0:	040a7713          	andi	a4,s4,64
830010d4:	f40708e3          	beqz	a4,83001024 <_vfiprintf_r+0x3d0>
830010d8:	01079793          	slli	a5,a5,0x10
830010dc:	0107d793          	srli	a5,a5,0x10
830010e0:	00000693          	li	a3,0
830010e4:	f45ff06f          	j	83001028 <_vfiprintf_r+0x3d4>
830010e8:	01c12703          	lw	a4,28(sp)
830010ec:	002a6a13          	ori	s4,s4,2
830010f0:	00200693          	li	a3,2
830010f4:	00072783          	lw	a5,0(a4)
830010f8:	00470713          	addi	a4,a4,4
830010fc:	00e12e23          	sw	a4,28(sp)
83001100:	07800713          	li	a4,120
83001104:	02e12623          	sw	a4,44(sp)
83001108:	83005737          	lui	a4,0x83005
8300110c:	65c70713          	addi	a4,a4,1628 # 8300565c <__BSS_END__+0xffffed88>
83001110:	02e12023          	sw	a4,32(sp)
83001114:	f15ff06f          	j	83001028 <_vfiprintf_r+0x3d4>
83001118:	01c12783          	lw	a5,28(sp)
8300111c:	0007a983          	lw	s3,0(a5)
83001120:	00478b93          	addi	s7,a5,4
83001124:	54098a63          	beqz	s3,83001678 <_vfiprintf_r+0xa24>
83001128:	fff00793          	li	a5,-1
8300112c:	52fa8c63          	beq	s5,a5,83001664 <_vfiprintf_r+0xa10>
83001130:	000a8613          	mv	a2,s5
83001134:	00000593          	li	a1,0
83001138:	00098513          	mv	a0,s3
8300113c:	00000097          	auipc	ra,0x0
83001140:	6e0080e7          	jalr	1760(ra) # 8300181c <memchr>
83001144:	56050e63          	beqz	a0,830016c0 <_vfiprintf_r+0xa6c>
83001148:	413507b3          	sub	a5,a0,s3
8300114c:	fff7cd93          	not	s11,a5
83001150:	41fddd93          	srai	s11,s11,0x1f
83001154:	00f12823          	sw	a5,16(sp)
83001158:	01b7fdb3          	and	s11,a5,s11
8300115c:	01712e23          	sw	s7,28(sp)
83001160:	cedff06f          	j	83000e4c <_vfiprintf_r+0x1f8>
83001164:	01c12683          	lw	a3,28(sp)
83001168:	010a7713          	andi	a4,s4,16
8300116c:	0006a783          	lw	a5,0(a3)
83001170:	00468693          	addi	a3,a3,4
83001174:	00d12e23          	sw	a3,28(sp)
83001178:	f00712e3          	bnez	a4,8300107c <_vfiprintf_r+0x428>
8300117c:	040a7713          	andi	a4,s4,64
83001180:	ee070ee3          	beqz	a4,8300107c <_vfiprintf_r+0x428>
83001184:	01079793          	slli	a5,a5,0x10
83001188:	0107d793          	srli	a5,a5,0x10
8300118c:	00100693          	li	a3,1
83001190:	e99ff06f          	j	83001028 <_vfiprintf_r+0x3d4>
83001194:	080a6a13          	ori	s4,s4,128
83001198:	000b0793          	mv	a5,s6
8300119c:	c3dff06f          	j	83000dd8 <_vfiprintf_r+0x184>
830011a0:	01c12783          	lw	a5,28(sp)
830011a4:	010a6a13          	ori	s4,s4,16
830011a8:	0007a703          	lw	a4,0(a5)
830011ac:	00478793          	addi	a5,a5,4
830011b0:	00f12e23          	sw	a5,28(sp)
830011b4:	00070793          	mv	a5,a4
830011b8:	e15ff06f          	j	83000fcc <_vfiprintf_r+0x378>
830011bc:	000b4703          	lbu	a4,0(s6)
830011c0:	001b0b13          	addi	s6,s6,1
830011c4:	52a70663          	beq	a4,a0,830016f0 <_vfiprintf_r+0xa9c>
830011c8:	fd070793          	addi	a5,a4,-48
830011cc:	00000a93          	li	s5,0
830011d0:	c0f5e8e3          	bltu	a1,a5,83000de0 <_vfiprintf_r+0x18c>
830011d4:	000b4703          	lbu	a4,0(s6)
830011d8:	002a9693          	slli	a3,s5,0x2
830011dc:	015686b3          	add	a3,a3,s5
830011e0:	00169693          	slli	a3,a3,0x1
830011e4:	00f68ab3          	add	s5,a3,a5
830011e8:	fd070793          	addi	a5,a4,-48
830011ec:	001b0b13          	addi	s6,s6,1
830011f0:	fef5f2e3          	bgeu	a1,a5,830011d4 <_vfiprintf_r+0x580>
830011f4:	bedff06f          	j	83000de0 <_vfiprintf_r+0x18c>
830011f8:	01c12683          	lw	a3,28(sp)
830011fc:	010a7793          	andi	a5,s4,16
83001200:	00468713          	addi	a4,a3,4
83001204:	44078063          	beqz	a5,83001644 <_vfiprintf_r+0x9f0>
83001208:	00e12e23          	sw	a4,28(sp)
8300120c:	0006a783          	lw	a5,0(a3)
83001210:	01812703          	lw	a4,24(sp)
83001214:	00e7a023          	sw	a4,0(a5)
83001218:	ac9ff06f          	j	83000ce0 <_vfiprintf_r+0x8c>
8300121c:	ce0c9ce3          	bnez	s9,83000f14 <_vfiprintf_r+0x2c0>
83001220:	02000c93          	li	s9,32
83001224:	000b0793          	mv	a5,s6
83001228:	bb1ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
8300122c:	001a6a13          	ori	s4,s4,1
83001230:	000b0793          	mv	a5,s6
83001234:	ba5ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
83001238:	02b00c93          	li	s9,43
8300123c:	000b0793          	mv	a5,s6
83001240:	b99ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
83001244:	830057b7          	lui	a5,0x83005
83001248:	65c78793          	addi	a5,a5,1628 # 8300565c <__BSS_END__+0xffffed88>
8300124c:	02f12023          	sw	a5,32(sp)
83001250:	01c12603          	lw	a2,28(sp)
83001254:	010a7693          	andi	a3,s4,16
83001258:	00062783          	lw	a5,0(a2)
8300125c:	00460613          	addi	a2,a2,4
83001260:	00c12e23          	sw	a2,28(sp)
83001264:	00069a63          	bnez	a3,83001278 <_vfiprintf_r+0x624>
83001268:	040a7693          	andi	a3,s4,64
8300126c:	00068663          	beqz	a3,83001278 <_vfiprintf_r+0x624>
83001270:	01079793          	slli	a5,a5,0x10
83001274:	0107d793          	srli	a5,a5,0x10
83001278:	001a7613          	andi	a2,s4,1
8300127c:	00200693          	li	a3,2
83001280:	da0604e3          	beqz	a2,83001028 <_vfiprintf_r+0x3d4>
83001284:	da0782e3          	beqz	a5,83001028 <_vfiprintf_r+0x3d4>
83001288:	0ff77713          	zext.b	a4,a4
8300128c:	02e12623          	sw	a4,44(sp)
83001290:	002a6a13          	ori	s4,s4,2
83001294:	d95ff06f          	j	83001028 <_vfiprintf_r+0x3d4>
83001298:	ff0a8a93          	addi	s5,s5,-16
8300129c:	c35bc2e3          	blt	s7,s5,83000ec0 <_vfiprintf_r+0x26c>
830012a0:	010c0a13          	addi	s4,s8,16
830012a4:	015a0ab3          	add	s5,s4,s5
830012a8:	011c0b93          	addi	s7,s8,17
830012ac:	03000593          	li	a1,48
830012b0:	fff00a13          	li	s4,-1
830012b4:	0100006f          	j	830012c4 <_vfiprintf_r+0x670>
830012b8:	137a8263          	beq	s5,s7,830013dc <_vfiprintf_r+0x788>
830012bc:	000bc583          	lbu	a1,0(s7)
830012c0:	001b8b93          	addi	s7,s7,1
830012c4:	00040613          	mv	a2,s0
830012c8:	00048513          	mv	a0,s1
830012cc:	00000097          	auipc	ra,0x0
830012d0:	46c080e7          	jalr	1132(ra) # 83001738 <_fputc_r>
830012d4:	ff4512e3          	bne	a0,s4,830012b8 <_vfiprintf_r+0x664>
830012d8:	a65ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
830012dc:	00040613          	mv	a2,s0
830012e0:	000c8593          	mv	a1,s9
830012e4:	00048513          	mv	a0,s1
830012e8:	00000097          	auipc	ra,0x0
830012ec:	450080e7          	jalr	1104(ra) # 83001738 <_fputc_r>
830012f0:	fff00793          	li	a5,-1
830012f4:	a4f504e3          	beq	a0,a5,83000d3c <_vfiprintf_r+0xe8>
830012f8:	00412783          	lw	a5,4(sp)
830012fc:	b8078ee3          	beqz	a5,83000e98 <_vfiprintf_r+0x244>
83001300:	00040613          	mv	a2,s0
83001304:	03000593          	li	a1,48
83001308:	00048513          	mv	a0,s1
8300130c:	00000097          	auipc	ra,0x0
83001310:	42c080e7          	jalr	1068(ra) # 83001738 <_fputc_r>
83001314:	fff00a13          	li	s4,-1
83001318:	a34502e3          	beq	a0,s4,83000d3c <_vfiprintf_r+0xe8>
8300131c:	02c12583          	lw	a1,44(sp)
83001320:	00040613          	mv	a2,s0
83001324:	00048513          	mv	a0,s1
83001328:	00000097          	auipc	ra,0x0
8300132c:	410080e7          	jalr	1040(ra) # 83001738 <_fputc_r>
83001330:	a14506e3          	beq	a0,s4,83000d3c <_vfiprintf_r+0xe8>
83001334:	02412703          	lw	a4,36(sp)
83001338:	08000793          	li	a5,128
8300133c:	b6f714e3          	bne	a4,a5,83000ea4 <_vfiprintf_r+0x250>
83001340:	00012783          	lw	a5,0(sp)
83001344:	41b78bb3          	sub	s7,a5,s11
83001348:	b5705ee3          	blez	s7,83000ea4 <_vfiprintf_r+0x250>
8300134c:	01000793          	li	a5,16
83001350:	1b77d863          	bge	a5,s7,83001500 <_vfiprintf_r+0x8ac>
83001354:	fff00a13          	li	s4,-1
83001358:	01000c93          	li	s9,16
8300135c:	011c0d13          	addi	s10,s8,17
83001360:	03000593          	li	a1,48
83001364:	0100006f          	j	83001374 <_vfiprintf_r+0x720>
83001368:	192d0863          	beq	s10,s2,830014f8 <_vfiprintf_r+0x8a4>
8300136c:	000d4583          	lbu	a1,0(s10)
83001370:	001d0d13          	addi	s10,s10,1
83001374:	00040613          	mv	a2,s0
83001378:	00048513          	mv	a0,s1
8300137c:	00000097          	auipc	ra,0x0
83001380:	3bc080e7          	jalr	956(ra) # 83001738 <_fputc_r>
83001384:	ff4512e3          	bne	a0,s4,83001368 <_vfiprintf_r+0x714>
83001388:	9b5ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
8300138c:	00c12783          	lw	a5,12(sp)
83001390:	01000713          	li	a4,16
83001394:	ff078793          	addi	a5,a5,-16
83001398:	00f12623          	sw	a5,12(sp)
8300139c:	bcf748e3          	blt	a4,a5,83000f6c <_vfiprintf_r+0x318>
830013a0:	00c12783          	lw	a5,12(sp)
830013a4:	01412b83          	lw	s7,20(sp)
830013a8:	02000593          	li	a1,32
830013ac:	00fc0d33          	add	s10,s8,a5
830013b0:	fff00a13          	li	s4,-1
830013b4:	0100006f          	j	830013c4 <_vfiprintf_r+0x770>
830013b8:	adab8ae3          	beq	s7,s10,83000e8c <_vfiprintf_r+0x238>
830013bc:	000bc583          	lbu	a1,0(s7)
830013c0:	001b8b93          	addi	s7,s7,1
830013c4:	00040613          	mv	a2,s0
830013c8:	00048513          	mv	a0,s1
830013cc:	00000097          	auipc	ra,0x0
830013d0:	36c080e7          	jalr	876(ra) # 83001738 <_fputc_r>
830013d4:	ff4512e3          	bne	a0,s4,830013b8 <_vfiprintf_r+0x764>
830013d8:	965ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
830013dc:	01012783          	lw	a5,16(sp)
830013e0:	02078a63          	beqz	a5,83001414 <_vfiprintf_r+0x7c0>
830013e4:	00f98ab3          	add	s5,s3,a5
830013e8:	fff00a13          	li	s4,-1
830013ec:	00c0006f          	j	830013f8 <_vfiprintf_r+0x7a4>
830013f0:	00198993          	addi	s3,s3,1
830013f4:	03598063          	beq	s3,s5,83001414 <_vfiprintf_r+0x7c0>
830013f8:	0009c583          	lbu	a1,0(s3)
830013fc:	00040613          	mv	a2,s0
83001400:	00048513          	mv	a0,s1
83001404:	00000097          	auipc	ra,0x0
83001408:	334080e7          	jalr	820(ra) # 83001738 <_fputc_r>
8300140c:	ff4512e3          	bne	a0,s4,830013f0 <_vfiprintf_r+0x79c>
83001410:	92dff06f          	j	83000d3c <_vfiprintf_r+0xe8>
83001414:	00812783          	lw	a5,8(sp)
83001418:	0047f793          	andi	a5,a5,4
8300141c:	00078863          	beqz	a5,8300142c <_vfiprintf_r+0x7d8>
83001420:	00012783          	lw	a5,0(sp)
83001424:	41b78ab3          	sub	s5,a5,s11
83001428:	13504e63          	bgtz	s5,83001564 <_vfiprintf_r+0x910>
8300142c:	00012783          	lw	a5,0(sp)
83001430:	01b7d463          	bge	a5,s11,83001438 <_vfiprintf_r+0x7e4>
83001434:	000d8793          	mv	a5,s11
83001438:	01812703          	lw	a4,24(sp)
8300143c:	00f707b3          	add	a5,a4,a5
83001440:	00f12c23          	sw	a5,24(sp)
83001444:	89dff06f          	j	83000ce0 <_vfiprintf_r+0x8c>
83001448:	00812a03          	lw	s4,8(sp)
8300144c:	00100713          	li	a4,1
83001450:	0ee68863          	beq	a3,a4,83001540 <_vfiprintf_r+0x8ec>
83001454:	00200713          	li	a4,2
83001458:	06e68463          	beq	a3,a4,830014c0 <_vfiprintf_r+0x86c>
8300145c:	06010993          	addi	s3,sp,96
83001460:	0077f713          	andi	a4,a5,7
83001464:	03070713          	addi	a4,a4,48
83001468:	fee98fa3          	sb	a4,-1(s3)
8300146c:	0037d793          	srli	a5,a5,0x3
83001470:	00098693          	mv	a3,s3
83001474:	fff98993          	addi	s3,s3,-1
83001478:	fe0794e3          	bnez	a5,83001460 <_vfiprintf_r+0x80c>
8300147c:	001a7793          	andi	a5,s4,1
83001480:	06078263          	beqz	a5,830014e4 <_vfiprintf_r+0x890>
83001484:	03000793          	li	a5,48
83001488:	04f70e63          	beq	a4,a5,830014e4 <_vfiprintf_r+0x890>
8300148c:	ffe68693          	addi	a3,a3,-2
83001490:	fef98fa3          	sb	a5,-1(s3)
83001494:	06010793          	addi	a5,sp,96
83001498:	40d787b3          	sub	a5,a5,a3
8300149c:	00f12823          	sw	a5,16(sp)
830014a0:	01412423          	sw	s4,8(sp)
830014a4:	00068993          	mv	s3,a3
830014a8:	b4dff06f          	j	83000ff4 <_vfiprintf_r+0x3a0>
830014ac:	00100713          	li	a4,1
830014b0:	20e68463          	beq	a3,a4,830016b8 <_vfiprintf_r+0xa64>
830014b4:	00200713          	li	a4,2
830014b8:	00812a03          	lw	s4,8(sp)
830014bc:	fae690e3          	bne	a3,a4,8300145c <_vfiprintf_r+0x808>
830014c0:	06010993          	addi	s3,sp,96
830014c4:	02012683          	lw	a3,32(sp)
830014c8:	00f7f713          	andi	a4,a5,15
830014cc:	fff98993          	addi	s3,s3,-1
830014d0:	00e68733          	add	a4,a3,a4
830014d4:	00074703          	lbu	a4,0(a4)
830014d8:	0047d793          	srli	a5,a5,0x4
830014dc:	00e98023          	sb	a4,0(s3)
830014e0:	fe0792e3          	bnez	a5,830014c4 <_vfiprintf_r+0x870>
830014e4:	06010793          	addi	a5,sp,96
830014e8:	413787b3          	sub	a5,a5,s3
830014ec:	00f12823          	sw	a5,16(sp)
830014f0:	01412423          	sw	s4,8(sp)
830014f4:	b01ff06f          	j	83000ff4 <_vfiprintf_r+0x3a0>
830014f8:	ff0b8b93          	addi	s7,s7,-16
830014fc:	e77cc0e3          	blt	s9,s7,8300135c <_vfiprintf_r+0x708>
83001500:	010c0a13          	addi	s4,s8,16
83001504:	017a0bb3          	add	s7,s4,s7
83001508:	011c0c93          	addi	s9,s8,17
8300150c:	03000593          	li	a1,48
83001510:	fff00a13          	li	s4,-1
83001514:	0100006f          	j	83001524 <_vfiprintf_r+0x8d0>
83001518:	999b86e3          	beq	s7,s9,83000ea4 <_vfiprintf_r+0x250>
8300151c:	000cc583          	lbu	a1,0(s9)
83001520:	001c8c93          	addi	s9,s9,1
83001524:	00040613          	mv	a2,s0
83001528:	00048513          	mv	a0,s1
8300152c:	00000097          	auipc	ra,0x0
83001530:	20c080e7          	jalr	524(ra) # 83001738 <_fputc_r>
83001534:	ff4512e3          	bne	a0,s4,83001518 <_vfiprintf_r+0x8c4>
83001538:	805ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
8300153c:	00812a03          	lw	s4,8(sp)
83001540:	00900713          	li	a4,9
83001544:	0cf76263          	bltu	a4,a5,83001608 <_vfiprintf_r+0x9b4>
83001548:	03078793          	addi	a5,a5,48
8300154c:	04f10fa3          	sb	a5,95(sp)
83001550:	00100793          	li	a5,1
83001554:	01412423          	sw	s4,8(sp)
83001558:	00f12823          	sw	a5,16(sp)
8300155c:	05f10993          	addi	s3,sp,95
83001560:	a95ff06f          	j	83000ff4 <_vfiprintf_r+0x3a0>
83001564:	01000793          	li	a5,16
83001568:	1757dc63          	bge	a5,s5,830016e0 <_vfiprintf_r+0xa8c>
8300156c:	830067b7          	lui	a5,0x83006
83001570:	96178793          	addi	a5,a5,-1695 # 83005961 <__BSS_END__+0xfffff08d>
83001574:	83006a37          	lui	s4,0x83006
83001578:	00f12a23          	sw	a5,20(sp)
8300157c:	970a0a13          	addi	s4,s4,-1680 # 83005970 <__BSS_END__+0xfffff09c>
83001580:	fff00993          	li	s3,-1
83001584:	01000b93          	li	s7,16
83001588:	01412c83          	lw	s9,20(sp)
8300158c:	02000593          	li	a1,32
83001590:	0100006f          	j	830015a0 <_vfiprintf_r+0x94c>
83001594:	039a0263          	beq	s4,s9,830015b8 <_vfiprintf_r+0x964>
83001598:	000cc583          	lbu	a1,0(s9)
8300159c:	001c8c93          	addi	s9,s9,1
830015a0:	00040613          	mv	a2,s0
830015a4:	00048513          	mv	a0,s1
830015a8:	00000097          	auipc	ra,0x0
830015ac:	190080e7          	jalr	400(ra) # 83001738 <_fputc_r>
830015b0:	ff3512e3          	bne	a0,s3,83001594 <_vfiprintf_r+0x940>
830015b4:	f88ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
830015b8:	ff0a8a93          	addi	s5,s5,-16
830015bc:	fd5bc6e3          	blt	s7,s5,83001588 <_vfiprintf_r+0x934>
830015c0:	01412a03          	lw	s4,20(sp)
830015c4:	015c0ab3          	add	s5,s8,s5
830015c8:	02000593          	li	a1,32
830015cc:	fff00993          	li	s3,-1
830015d0:	0100006f          	j	830015e0 <_vfiprintf_r+0x98c>
830015d4:	e55a0ce3          	beq	s4,s5,8300142c <_vfiprintf_r+0x7d8>
830015d8:	000a4583          	lbu	a1,0(s4)
830015dc:	001a0a13          	addi	s4,s4,1
830015e0:	00040613          	mv	a2,s0
830015e4:	00048513          	mv	a0,s1
830015e8:	00000097          	auipc	ra,0x0
830015ec:	150080e7          	jalr	336(ra) # 83001738 <_fputc_r>
830015f0:	ff3512e3          	bne	a0,s3,830015d4 <_vfiprintf_r+0x980>
830015f4:	f48ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
830015f8:	40e007b3          	neg	a5,a4
830015fc:	02d00c93          	li	s9,45
83001600:	00100693          	li	a3,1
83001604:	a29ff06f          	j	8300102c <_vfiprintf_r+0x3d8>
83001608:	06010993          	addi	s3,sp,96
8300160c:	00a00693          	li	a3,10
83001610:	00900593          	li	a1,9
83001614:	02d7f733          	remu	a4,a5,a3
83001618:	fff98993          	addi	s3,s3,-1
8300161c:	00078613          	mv	a2,a5
83001620:	03070713          	addi	a4,a4,48
83001624:	00e98023          	sb	a4,0(s3)
83001628:	02d7d7b3          	divu	a5,a5,a3
8300162c:	fec5e4e3          	bltu	a1,a2,83001614 <_vfiprintf_r+0x9c0>
83001630:	06010793          	addi	a5,sp,96
83001634:	413787b3          	sub	a5,a5,s3
83001638:	00f12823          	sw	a5,16(sp)
8300163c:	01412423          	sw	s4,8(sp)
83001640:	9b5ff06f          	j	83000ff4 <_vfiprintf_r+0x3a0>
83001644:	01c12783          	lw	a5,28(sp)
83001648:	040a7a13          	andi	s4,s4,64
8300164c:	0007a783          	lw	a5,0(a5)
83001650:	00e12e23          	sw	a4,28(sp)
83001654:	01812703          	lw	a4,24(sp)
83001658:	040a0063          	beqz	s4,83001698 <_vfiprintf_r+0xa44>
8300165c:	00e79023          	sh	a4,0(a5)
83001660:	e80ff06f          	j	83000ce0 <_vfiprintf_r+0x8c>
83001664:	00098513          	mv	a0,s3
83001668:	00000097          	auipc	ra,0x0
8300166c:	27c080e7          	jalr	636(ra) # 830018e4 <strlen>
83001670:	00050793          	mv	a5,a0
83001674:	ad9ff06f          	j	8300114c <_vfiprintf_r+0x4f8>
83001678:	01512823          	sw	s5,16(sp)
8300167c:	00600793          	li	a5,6
83001680:	0357e863          	bltu	a5,s5,830016b0 <_vfiprintf_r+0xa5c>
83001684:	830059b7          	lui	s3,0x83005
83001688:	01012d83          	lw	s11,16(sp)
8300168c:	01712e23          	sw	s7,28(sp)
83001690:	67098993          	addi	s3,s3,1648 # 83005670 <__BSS_END__+0xffffed9c>
83001694:	fb8ff06f          	j	83000e4c <_vfiprintf_r+0x1f8>
83001698:	00e7a023          	sw	a4,0(a5)
8300169c:	e44ff06f          	j	83000ce0 <_vfiprintf_r+0x8c>
830016a0:	830057b7          	lui	a5,0x83005
830016a4:	64878793          	addi	a5,a5,1608 # 83005648 <__BSS_END__+0xffffed74>
830016a8:	02f12023          	sw	a5,32(sp)
830016ac:	ba5ff06f          	j	83001250 <_vfiprintf_r+0x5fc>
830016b0:	00f12823          	sw	a5,16(sp)
830016b4:	fd1ff06f          	j	83001684 <_vfiprintf_r+0xa30>
830016b8:	00812a03          	lw	s4,8(sp)
830016bc:	e8dff06f          	j	83001548 <_vfiprintf_r+0x8f4>
830016c0:	000a8d93          	mv	s11,s5
830016c4:	01712e23          	sw	s7,28(sp)
830016c8:	01512823          	sw	s5,16(sp)
830016cc:	f80ff06f          	j	83000e4c <_vfiprintf_r+0x1f8>
830016d0:	830067b7          	lui	a5,0x83006
830016d4:	96178793          	addi	a5,a5,-1695 # 83005961 <__BSS_END__+0xfffff08d>
830016d8:	00f12a23          	sw	a5,20(sp)
830016dc:	cc5ff06f          	j	830013a0 <_vfiprintf_r+0x74c>
830016e0:	830067b7          	lui	a5,0x83006
830016e4:	96178793          	addi	a5,a5,-1695 # 83005961 <__BSS_END__+0xfffff08d>
830016e8:	00f12a23          	sw	a5,20(sp)
830016ec:	ed5ff06f          	j	830015c0 <_vfiprintf_r+0x96c>
830016f0:	01c12783          	lw	a5,28(sp)
830016f4:	0007aa83          	lw	s5,0(a5)
830016f8:	00478793          	addi	a5,a5,4
830016fc:	000ac863          	bltz	s5,8300170c <_vfiprintf_r+0xab8>
83001700:	00f12e23          	sw	a5,28(sp)
83001704:	000b0793          	mv	a5,s6
83001708:	ed0ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
8300170c:	fff00a93          	li	s5,-1
83001710:	00f12e23          	sw	a5,28(sp)
83001714:	ff1ff06f          	j	83001704 <_vfiprintf_r+0xab0>

83001718 <vfiprintf>:
83001718:	83007737          	lui	a4,0x83007
8300171c:	00050793          	mv	a5,a0
83001720:	88872503          	lw	a0,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
83001724:	00060693          	mv	a3,a2
83001728:	00058613          	mv	a2,a1
8300172c:	00078593          	mv	a1,a5
83001730:	fffff317          	auipc	t1,0xfffff
83001734:	52430067          	jr	1316(t1) # 83000c54 <_vfiprintf_r>

83001738 <_fputc_r>:
83001738:	fe010113          	addi	sp,sp,-32
8300173c:	00812c23          	sw	s0,24(sp)
83001740:	00112e23          	sw	ra,28(sp)
83001744:	00050413          	mv	s0,a0
83001748:	00050663          	beqz	a0,83001754 <_fputc_r+0x1c>
8300174c:	03852783          	lw	a5,56(a0)
83001750:	00078e63          	beqz	a5,8300176c <_fputc_r+0x34>
83001754:	00040513          	mv	a0,s0
83001758:	01812403          	lw	s0,24(sp)
8300175c:	01c12083          	lw	ra,28(sp)
83001760:	02010113          	addi	sp,sp,32
83001764:	00001317          	auipc	t1,0x1
83001768:	65030067          	jr	1616(t1) # 83002db4 <_putc_r>
8300176c:	00c12623          	sw	a2,12(sp)
83001770:	00b12423          	sw	a1,8(sp)
83001774:	00001097          	auipc	ra,0x1
83001778:	2bc080e7          	jalr	700(ra) # 83002a30 <__sinit>
8300177c:	00040513          	mv	a0,s0
83001780:	01812403          	lw	s0,24(sp)
83001784:	00c12603          	lw	a2,12(sp)
83001788:	00812583          	lw	a1,8(sp)
8300178c:	01c12083          	lw	ra,28(sp)
83001790:	02010113          	addi	sp,sp,32
83001794:	00001317          	auipc	t1,0x1
83001798:	62030067          	jr	1568(t1) # 83002db4 <_putc_r>

8300179c <fputc>:
8300179c:	fe010113          	addi	sp,sp,-32
830017a0:	830077b7          	lui	a5,0x83007
830017a4:	00912a23          	sw	s1,20(sp)
830017a8:	8887a483          	lw	s1,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
830017ac:	00812c23          	sw	s0,24(sp)
830017b0:	00112e23          	sw	ra,28(sp)
830017b4:	00050413          	mv	s0,a0
830017b8:	00058613          	mv	a2,a1
830017bc:	00048663          	beqz	s1,830017c8 <fputc+0x2c>
830017c0:	0384a783          	lw	a5,56(s1)
830017c4:	02078263          	beqz	a5,830017e8 <fputc+0x4c>
830017c8:	00040593          	mv	a1,s0
830017cc:	01812403          	lw	s0,24(sp)
830017d0:	01c12083          	lw	ra,28(sp)
830017d4:	00048513          	mv	a0,s1
830017d8:	01412483          	lw	s1,20(sp)
830017dc:	02010113          	addi	sp,sp,32
830017e0:	00001317          	auipc	t1,0x1
830017e4:	5d430067          	jr	1492(t1) # 83002db4 <_putc_r>
830017e8:	00048513          	mv	a0,s1
830017ec:	00b12623          	sw	a1,12(sp)
830017f0:	00001097          	auipc	ra,0x1
830017f4:	240080e7          	jalr	576(ra) # 83002a30 <__sinit>
830017f8:	00040593          	mv	a1,s0
830017fc:	01812403          	lw	s0,24(sp)
83001800:	00c12603          	lw	a2,12(sp)
83001804:	01c12083          	lw	ra,28(sp)
83001808:	00048513          	mv	a0,s1
8300180c:	01412483          	lw	s1,20(sp)
83001810:	02010113          	addi	sp,sp,32
83001814:	00001317          	auipc	t1,0x1
83001818:	5a030067          	jr	1440(t1) # 83002db4 <_putc_r>

8300181c <memchr>:
8300181c:	00357793          	andi	a5,a0,3
83001820:	0ff5f693          	zext.b	a3,a1
83001824:	02078a63          	beqz	a5,83001858 <memchr+0x3c>
83001828:	fff60793          	addi	a5,a2,-1
8300182c:	02060e63          	beqz	a2,83001868 <memchr+0x4c>
83001830:	fff00613          	li	a2,-1
83001834:	0180006f          	j	8300184c <memchr+0x30>
83001838:	00150513          	addi	a0,a0,1
8300183c:	00357713          	andi	a4,a0,3
83001840:	00070e63          	beqz	a4,8300185c <memchr+0x40>
83001844:	fff78793          	addi	a5,a5,-1
83001848:	02c78063          	beq	a5,a2,83001868 <memchr+0x4c>
8300184c:	00054703          	lbu	a4,0(a0)
83001850:	fed714e3          	bne	a4,a3,83001838 <memchr+0x1c>
83001854:	00008067          	ret
83001858:	00060793          	mv	a5,a2
8300185c:	00300713          	li	a4,3
83001860:	02f76663          	bltu	a4,a5,8300188c <memchr+0x70>
83001864:	00079663          	bnez	a5,83001870 <memchr+0x54>
83001868:	00000513          	li	a0,0
8300186c:	00008067          	ret
83001870:	00f507b3          	add	a5,a0,a5
83001874:	00c0006f          	j	83001880 <memchr+0x64>
83001878:	00150513          	addi	a0,a0,1
8300187c:	fea786e3          	beq	a5,a0,83001868 <memchr+0x4c>
83001880:	00054703          	lbu	a4,0(a0)
83001884:	fed71ae3          	bne	a4,a3,83001878 <memchr+0x5c>
83001888:	00008067          	ret
8300188c:	0ff5f593          	zext.b	a1,a1
83001890:	00859713          	slli	a4,a1,0x8
83001894:	00b76733          	or	a4,a4,a1
83001898:	01071893          	slli	a7,a4,0x10
8300189c:	feff0837          	lui	a6,0xfeff0
830018a0:	808085b7          	lui	a1,0x80808
830018a4:	00e8e8b3          	or	a7,a7,a4
830018a8:	eff80813          	addi	a6,a6,-257 # fefefeff <__BSS_END__+0x7bfe962b>
830018ac:	08058593          	addi	a1,a1,128 # 80808080 <__BSS_END__+0xfd8017ac>
830018b0:	00300313          	li	t1,3
830018b4:	00052703          	lw	a4,0(a0)
830018b8:	00e8c733          	xor	a4,a7,a4
830018bc:	01070633          	add	a2,a4,a6
830018c0:	fff74713          	not	a4,a4
830018c4:	00e67733          	and	a4,a2,a4
830018c8:	00b77733          	and	a4,a4,a1
830018cc:	fa0712e3          	bnez	a4,83001870 <memchr+0x54>
830018d0:	ffc78793          	addi	a5,a5,-4
830018d4:	00450513          	addi	a0,a0,4
830018d8:	fcf36ee3          	bltu	t1,a5,830018b4 <memchr+0x98>
830018dc:	f8079ae3          	bnez	a5,83001870 <memchr+0x54>
830018e0:	f89ff06f          	j	83001868 <memchr+0x4c>

830018e4 <strlen>:
830018e4:	00357793          	andi	a5,a0,3
830018e8:	02078463          	beqz	a5,83001910 <strlen+0x2c>
830018ec:	00050793          	mv	a5,a0
830018f0:	0100006f          	j	83001900 <strlen+0x1c>
830018f4:	00178793          	addi	a5,a5,1
830018f8:	0037f713          	andi	a4,a5,3
830018fc:	00070c63          	beqz	a4,83001914 <strlen+0x30>
83001900:	0007c703          	lbu	a4,0(a5)
83001904:	fe0718e3          	bnez	a4,830018f4 <strlen+0x10>
83001908:	40a78533          	sub	a0,a5,a0
8300190c:	00008067          	ret
83001910:	00050793          	mv	a5,a0
83001914:	0007a683          	lw	a3,0(a5)
83001918:	feff05b7          	lui	a1,0xfeff0
8300191c:	eff58593          	addi	a1,a1,-257 # fefefeff <__BSS_END__+0x7bfe962b>
83001920:	00b68733          	add	a4,a3,a1
83001924:	80808637          	lui	a2,0x80808
83001928:	fff6c693          	not	a3,a3
8300192c:	00d77733          	and	a4,a4,a3
83001930:	08060613          	addi	a2,a2,128 # 80808080 <__BSS_END__+0xfd8017ac>
83001934:	00c77733          	and	a4,a4,a2
83001938:	02071063          	bnez	a4,83001958 <strlen+0x74>
8300193c:	0047a683          	lw	a3,4(a5)
83001940:	00478793          	addi	a5,a5,4
83001944:	00b68733          	add	a4,a3,a1
83001948:	fff6c693          	not	a3,a3
8300194c:	00d77733          	and	a4,a4,a3
83001950:	00c77733          	and	a4,a4,a2
83001954:	fe0704e3          	beqz	a4,8300193c <strlen+0x58>
83001958:	0007c703          	lbu	a4,0(a5)
8300195c:	fa0706e3          	beqz	a4,83001908 <strlen+0x24>
83001960:	0017c703          	lbu	a4,1(a5)
83001964:	00178793          	addi	a5,a5,1
83001968:	fa0700e3          	beqz	a4,83001908 <strlen+0x24>
8300196c:	0017c703          	lbu	a4,1(a5)
83001970:	00178793          	addi	a5,a5,1
83001974:	fe0716e3          	bnez	a4,83001960 <strlen+0x7c>
83001978:	f91ff06f          	j	83001908 <strlen+0x24>

8300197c <_write_r>:
8300197c:	ff010113          	addi	sp,sp,-16
83001980:	00058713          	mv	a4,a1
83001984:	00812423          	sw	s0,8(sp)
83001988:	00912223          	sw	s1,4(sp)
8300198c:	00060593          	mv	a1,a2
83001990:	00050413          	mv	s0,a0
83001994:	830074b7          	lui	s1,0x83007
83001998:	00068613          	mv	a2,a3
8300199c:	00070513          	mv	a0,a4
830019a0:	00112623          	sw	ra,12(sp)
830019a4:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
830019a8:	00003097          	auipc	ra,0x3
830019ac:	088080e7          	jalr	136(ra) # 83004a30 <_write>
830019b0:	fff00793          	li	a5,-1
830019b4:	00f50c63          	beq	a0,a5,830019cc <_write_r+0x50>
830019b8:	00c12083          	lw	ra,12(sp)
830019bc:	00812403          	lw	s0,8(sp)
830019c0:	00412483          	lw	s1,4(sp)
830019c4:	01010113          	addi	sp,sp,16
830019c8:	00008067          	ret
830019cc:	8984a783          	lw	a5,-1896(s1)
830019d0:	fe0784e3          	beqz	a5,830019b8 <_write_r+0x3c>
830019d4:	00c12083          	lw	ra,12(sp)
830019d8:	00f42023          	sw	a5,0(s0)
830019dc:	00812403          	lw	s0,8(sp)
830019e0:	00412483          	lw	s1,4(sp)
830019e4:	01010113          	addi	sp,sp,16
830019e8:	00008067          	ret

830019ec <cleanup_glue>:
830019ec:	fe010113          	addi	sp,sp,-32
830019f0:	01212823          	sw	s2,16(sp)
830019f4:	0005a903          	lw	s2,0(a1)
830019f8:	00812c23          	sw	s0,24(sp)
830019fc:	00912a23          	sw	s1,20(sp)
83001a00:	00112e23          	sw	ra,28(sp)
83001a04:	01312623          	sw	s3,12(sp)
83001a08:	01412423          	sw	s4,8(sp)
83001a0c:	00058413          	mv	s0,a1
83001a10:	00050493          	mv	s1,a0
83001a14:	04090a63          	beqz	s2,83001a68 <cleanup_glue+0x7c>
83001a18:	00092983          	lw	s3,0(s2)
83001a1c:	02098e63          	beqz	s3,83001a58 <cleanup_glue+0x6c>
83001a20:	0009aa03          	lw	s4,0(s3)
83001a24:	020a0263          	beqz	s4,83001a48 <cleanup_glue+0x5c>
83001a28:	000a2583          	lw	a1,0(s4)
83001a2c:	00058663          	beqz	a1,83001a38 <cleanup_glue+0x4c>
83001a30:	00000097          	auipc	ra,0x0
83001a34:	fbc080e7          	jalr	-68(ra) # 830019ec <cleanup_glue>
83001a38:	000a0593          	mv	a1,s4
83001a3c:	00048513          	mv	a0,s1
83001a40:	00000097          	auipc	ra,0x0
83001a44:	2e8080e7          	jalr	744(ra) # 83001d28 <_free_r>
83001a48:	00098593          	mv	a1,s3
83001a4c:	00048513          	mv	a0,s1
83001a50:	00000097          	auipc	ra,0x0
83001a54:	2d8080e7          	jalr	728(ra) # 83001d28 <_free_r>
83001a58:	00090593          	mv	a1,s2
83001a5c:	00048513          	mv	a0,s1
83001a60:	00000097          	auipc	ra,0x0
83001a64:	2c8080e7          	jalr	712(ra) # 83001d28 <_free_r>
83001a68:	00040593          	mv	a1,s0
83001a6c:	01812403          	lw	s0,24(sp)
83001a70:	01c12083          	lw	ra,28(sp)
83001a74:	01012903          	lw	s2,16(sp)
83001a78:	00c12983          	lw	s3,12(sp)
83001a7c:	00812a03          	lw	s4,8(sp)
83001a80:	00048513          	mv	a0,s1
83001a84:	01412483          	lw	s1,20(sp)
83001a88:	02010113          	addi	sp,sp,32
83001a8c:	00000317          	auipc	t1,0x0
83001a90:	29c30067          	jr	668(t1) # 83001d28 <_free_r>

83001a94 <_reclaim_reent>:
83001a94:	830077b7          	lui	a5,0x83007
83001a98:	8887a783          	lw	a5,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83001a9c:	12a78863          	beq	a5,a0,83001bcc <_reclaim_reent+0x138>
83001aa0:	04c52583          	lw	a1,76(a0)
83001aa4:	fe010113          	addi	sp,sp,-32
83001aa8:	00912a23          	sw	s1,20(sp)
83001aac:	00112e23          	sw	ra,28(sp)
83001ab0:	00812c23          	sw	s0,24(sp)
83001ab4:	01212823          	sw	s2,16(sp)
83001ab8:	01312623          	sw	s3,12(sp)
83001abc:	00050493          	mv	s1,a0
83001ac0:	04058463          	beqz	a1,83001b08 <_reclaim_reent+0x74>
83001ac4:	00000913          	li	s2,0
83001ac8:	08000993          	li	s3,128
83001acc:	012587b3          	add	a5,a1,s2
83001ad0:	0007a403          	lw	s0,0(a5)
83001ad4:	02040063          	beqz	s0,83001af4 <_reclaim_reent+0x60>
83001ad8:	00040593          	mv	a1,s0
83001adc:	00042403          	lw	s0,0(s0)
83001ae0:	00048513          	mv	a0,s1
83001ae4:	00000097          	auipc	ra,0x0
83001ae8:	244080e7          	jalr	580(ra) # 83001d28 <_free_r>
83001aec:	fe0416e3          	bnez	s0,83001ad8 <_reclaim_reent+0x44>
83001af0:	04c4a583          	lw	a1,76(s1)
83001af4:	00490913          	addi	s2,s2,4
83001af8:	fd391ae3          	bne	s2,s3,83001acc <_reclaim_reent+0x38>
83001afc:	00048513          	mv	a0,s1
83001b00:	00000097          	auipc	ra,0x0
83001b04:	228080e7          	jalr	552(ra) # 83001d28 <_free_r>
83001b08:	0404a583          	lw	a1,64(s1)
83001b0c:	00058863          	beqz	a1,83001b1c <_reclaim_reent+0x88>
83001b10:	00048513          	mv	a0,s1
83001b14:	00000097          	auipc	ra,0x0
83001b18:	214080e7          	jalr	532(ra) # 83001d28 <_free_r>
83001b1c:	1484a403          	lw	s0,328(s1)
83001b20:	02040263          	beqz	s0,83001b44 <_reclaim_reent+0xb0>
83001b24:	14c48913          	addi	s2,s1,332
83001b28:	01240e63          	beq	s0,s2,83001b44 <_reclaim_reent+0xb0>
83001b2c:	00040593          	mv	a1,s0
83001b30:	00042403          	lw	s0,0(s0)
83001b34:	00048513          	mv	a0,s1
83001b38:	00000097          	auipc	ra,0x0
83001b3c:	1f0080e7          	jalr	496(ra) # 83001d28 <_free_r>
83001b40:	fe8916e3          	bne	s2,s0,83001b2c <_reclaim_reent+0x98>
83001b44:	0544a583          	lw	a1,84(s1)
83001b48:	00058863          	beqz	a1,83001b58 <_reclaim_reent+0xc4>
83001b4c:	00048513          	mv	a0,s1
83001b50:	00000097          	auipc	ra,0x0
83001b54:	1d8080e7          	jalr	472(ra) # 83001d28 <_free_r>
83001b58:	0384a783          	lw	a5,56(s1)
83001b5c:	04078a63          	beqz	a5,83001bb0 <_reclaim_reent+0x11c>
83001b60:	03c4a783          	lw	a5,60(s1)
83001b64:	00048513          	mv	a0,s1
83001b68:	000780e7          	jalr	a5
83001b6c:	2e04a403          	lw	s0,736(s1)
83001b70:	04040063          	beqz	s0,83001bb0 <_reclaim_reent+0x11c>
83001b74:	00042583          	lw	a1,0(s0)
83001b78:	00058863          	beqz	a1,83001b88 <_reclaim_reent+0xf4>
83001b7c:	00048513          	mv	a0,s1
83001b80:	00000097          	auipc	ra,0x0
83001b84:	e6c080e7          	jalr	-404(ra) # 830019ec <cleanup_glue>
83001b88:	00040593          	mv	a1,s0
83001b8c:	01812403          	lw	s0,24(sp)
83001b90:	01c12083          	lw	ra,28(sp)
83001b94:	01012903          	lw	s2,16(sp)
83001b98:	00c12983          	lw	s3,12(sp)
83001b9c:	00048513          	mv	a0,s1
83001ba0:	01412483          	lw	s1,20(sp)
83001ba4:	02010113          	addi	sp,sp,32
83001ba8:	00000317          	auipc	t1,0x0
83001bac:	18030067          	jr	384(t1) # 83001d28 <_free_r>
83001bb0:	01c12083          	lw	ra,28(sp)
83001bb4:	01812403          	lw	s0,24(sp)
83001bb8:	01412483          	lw	s1,20(sp)
83001bbc:	01012903          	lw	s2,16(sp)
83001bc0:	00c12983          	lw	s3,12(sp)
83001bc4:	02010113          	addi	sp,sp,32
83001bc8:	00008067          	ret
83001bcc:	00008067          	ret

83001bd0 <_malloc_trim_r>:
83001bd0:	fe010113          	addi	sp,sp,-32
83001bd4:	01312623          	sw	s3,12(sp)
83001bd8:	830069b7          	lui	s3,0x83006
83001bdc:	00812c23          	sw	s0,24(sp)
83001be0:	00912a23          	sw	s1,20(sp)
83001be4:	01212823          	sw	s2,16(sp)
83001be8:	01412423          	sw	s4,8(sp)
83001bec:	00112e23          	sw	ra,28(sp)
83001bf0:	00058a13          	mv	s4,a1
83001bf4:	00050913          	mv	s2,a0
83001bf8:	42898993          	addi	s3,s3,1064 # 83006428 <__BSS_END__+0xfffffb54>
83001bfc:	00002097          	auipc	ra,0x2
83001c00:	3e4080e7          	jalr	996(ra) # 83003fe0 <__malloc_lock>
83001c04:	0089a703          	lw	a4,8(s3)
83001c08:	000017b7          	lui	a5,0x1
83001c0c:	fef78413          	addi	s0,a5,-17 # fef <main-0x82fff0c5>
83001c10:	00472483          	lw	s1,4(a4)
83001c14:	41440433          	sub	s0,s0,s4
83001c18:	ffc4f493          	andi	s1,s1,-4
83001c1c:	00940433          	add	s0,s0,s1
83001c20:	00c45413          	srli	s0,s0,0xc
83001c24:	fff40413          	addi	s0,s0,-1
83001c28:	00c41413          	slli	s0,s0,0xc
83001c2c:	02f44063          	blt	s0,a5,83001c4c <_malloc_trim_r+0x7c>
83001c30:	00000593          	li	a1,0
83001c34:	00090513          	mv	a0,s2
83001c38:	00001097          	auipc	ra,0x1
83001c3c:	5cc080e7          	jalr	1484(ra) # 83003204 <_sbrk_r>
83001c40:	0089a783          	lw	a5,8(s3)
83001c44:	009787b3          	add	a5,a5,s1
83001c48:	02f50a63          	beq	a0,a5,83001c7c <_malloc_trim_r+0xac>
83001c4c:	00090513          	mv	a0,s2
83001c50:	00002097          	auipc	ra,0x2
83001c54:	394080e7          	jalr	916(ra) # 83003fe4 <__malloc_unlock>
83001c58:	01c12083          	lw	ra,28(sp)
83001c5c:	01812403          	lw	s0,24(sp)
83001c60:	01412483          	lw	s1,20(sp)
83001c64:	01012903          	lw	s2,16(sp)
83001c68:	00c12983          	lw	s3,12(sp)
83001c6c:	00812a03          	lw	s4,8(sp)
83001c70:	00000513          	li	a0,0
83001c74:	02010113          	addi	sp,sp,32
83001c78:	00008067          	ret
83001c7c:	408005b3          	neg	a1,s0
83001c80:	00090513          	mv	a0,s2
83001c84:	00001097          	auipc	ra,0x1
83001c88:	580080e7          	jalr	1408(ra) # 83003204 <_sbrk_r>
83001c8c:	fff00793          	li	a5,-1
83001c90:	04f50c63          	beq	a0,a5,83001ce8 <_malloc_trim_r+0x118>
83001c94:	830077b7          	lui	a5,0x83007
83001c98:	8ac78793          	addi	a5,a5,-1876 # 830068ac <__BSS_END__+0xffffffd8>
83001c9c:	0007a703          	lw	a4,0(a5)
83001ca0:	0089a683          	lw	a3,8(s3)
83001ca4:	408484b3          	sub	s1,s1,s0
83001ca8:	0014e493          	ori	s1,s1,1
83001cac:	40870733          	sub	a4,a4,s0
83001cb0:	00090513          	mv	a0,s2
83001cb4:	0096a223          	sw	s1,4(a3)
83001cb8:	00e7a023          	sw	a4,0(a5)
83001cbc:	00002097          	auipc	ra,0x2
83001cc0:	328080e7          	jalr	808(ra) # 83003fe4 <__malloc_unlock>
83001cc4:	01c12083          	lw	ra,28(sp)
83001cc8:	01812403          	lw	s0,24(sp)
83001ccc:	01412483          	lw	s1,20(sp)
83001cd0:	01012903          	lw	s2,16(sp)
83001cd4:	00c12983          	lw	s3,12(sp)
83001cd8:	00812a03          	lw	s4,8(sp)
83001cdc:	00100513          	li	a0,1
83001ce0:	02010113          	addi	sp,sp,32
83001ce4:	00008067          	ret
83001ce8:	00000593          	li	a1,0
83001cec:	00090513          	mv	a0,s2
83001cf0:	00001097          	auipc	ra,0x1
83001cf4:	514080e7          	jalr	1300(ra) # 83003204 <_sbrk_r>
83001cf8:	0089a703          	lw	a4,8(s3)
83001cfc:	00f00693          	li	a3,15
83001d00:	40e507b3          	sub	a5,a0,a4
83001d04:	f4f6d4e3          	bge	a3,a5,83001c4c <_malloc_trim_r+0x7c>
83001d08:	830076b7          	lui	a3,0x83007
83001d0c:	88c6a683          	lw	a3,-1908(a3) # 8300688c <__BSS_END__+0xffffffb8>
83001d10:	0017e793          	ori	a5,a5,1
83001d14:	00f72223          	sw	a5,4(a4)
83001d18:	40d50533          	sub	a0,a0,a3
83001d1c:	830076b7          	lui	a3,0x83007
83001d20:	8aa6a623          	sw	a0,-1876(a3) # 830068ac <__BSS_END__+0xffffffd8>
83001d24:	f29ff06f          	j	83001c4c <_malloc_trim_r+0x7c>

83001d28 <_free_r>:
83001d28:	12058e63          	beqz	a1,83001e64 <_free_r+0x13c>
83001d2c:	ff010113          	addi	sp,sp,-16
83001d30:	00812423          	sw	s0,8(sp)
83001d34:	00912223          	sw	s1,4(sp)
83001d38:	00058413          	mv	s0,a1
83001d3c:	00050493          	mv	s1,a0
83001d40:	00112623          	sw	ra,12(sp)
83001d44:	00002097          	auipc	ra,0x2
83001d48:	29c080e7          	jalr	668(ra) # 83003fe0 <__malloc_lock>
83001d4c:	ffc42803          	lw	a6,-4(s0)
83001d50:	ff840713          	addi	a4,s0,-8
83001d54:	830065b7          	lui	a1,0x83006
83001d58:	ffe87793          	andi	a5,a6,-2
83001d5c:	00f70633          	add	a2,a4,a5
83001d60:	42858593          	addi	a1,a1,1064 # 83006428 <__BSS_END__+0xfffffb54>
83001d64:	00462683          	lw	a3,4(a2)
83001d68:	0085a503          	lw	a0,8(a1)
83001d6c:	ffc6f693          	andi	a3,a3,-4
83001d70:	1cc50063          	beq	a0,a2,83001f30 <_free_r+0x208>
83001d74:	00d62223          	sw	a3,4(a2)
83001d78:	00187813          	andi	a6,a6,1
83001d7c:	00d60533          	add	a0,a2,a3
83001d80:	0a081263          	bnez	a6,83001e24 <_free_r+0xfc>
83001d84:	ff842303          	lw	t1,-8(s0)
83001d88:	00452803          	lw	a6,4(a0)
83001d8c:	83006537          	lui	a0,0x83006
83001d90:	40670733          	sub	a4,a4,t1
83001d94:	00872883          	lw	a7,8(a4)
83001d98:	43050513          	addi	a0,a0,1072 # 83006430 <__BSS_END__+0xfffffb5c>
83001d9c:	006787b3          	add	a5,a5,t1
83001da0:	00187813          	andi	a6,a6,1
83001da4:	14a88463          	beq	a7,a0,83001eec <_free_r+0x1c4>
83001da8:	00c72303          	lw	t1,12(a4)
83001dac:	0068a623          	sw	t1,12(a7)
83001db0:	01132423          	sw	a7,8(t1)
83001db4:	1e080c63          	beqz	a6,83001fac <_free_r+0x284>
83001db8:	0017e693          	ori	a3,a5,1
83001dbc:	00d72223          	sw	a3,4(a4)
83001dc0:	00f62023          	sw	a5,0(a2)
83001dc4:	1ff00693          	li	a3,511
83001dc8:	0af6ea63          	bltu	a3,a5,83001e7c <_free_r+0x154>
83001dcc:	ff87f693          	andi	a3,a5,-8
83001dd0:	00868693          	addi	a3,a3,8
83001dd4:	0045a503          	lw	a0,4(a1)
83001dd8:	00d586b3          	add	a3,a1,a3
83001ddc:	0006a603          	lw	a2,0(a3)
83001de0:	0057d813          	srli	a6,a5,0x5
83001de4:	00100793          	li	a5,1
83001de8:	010797b3          	sll	a5,a5,a6
83001dec:	00a7e7b3          	or	a5,a5,a0
83001df0:	ff868513          	addi	a0,a3,-8
83001df4:	00a72623          	sw	a0,12(a4)
83001df8:	00c72423          	sw	a2,8(a4)
83001dfc:	00f5a223          	sw	a5,4(a1)
83001e00:	00e6a023          	sw	a4,0(a3)
83001e04:	00e62623          	sw	a4,12(a2)
83001e08:	00812403          	lw	s0,8(sp)
83001e0c:	00c12083          	lw	ra,12(sp)
83001e10:	00048513          	mv	a0,s1
83001e14:	00412483          	lw	s1,4(sp)
83001e18:	01010113          	addi	sp,sp,16
83001e1c:	00002317          	auipc	t1,0x2
83001e20:	1c830067          	jr	456(t1) # 83003fe4 <__malloc_unlock>
83001e24:	00452503          	lw	a0,4(a0)
83001e28:	00157513          	andi	a0,a0,1
83001e2c:	02051e63          	bnez	a0,83001e68 <_free_r+0x140>
83001e30:	83006537          	lui	a0,0x83006
83001e34:	00d787b3          	add	a5,a5,a3
83001e38:	43050513          	addi	a0,a0,1072 # 83006430 <__BSS_END__+0xfffffb5c>
83001e3c:	00862683          	lw	a3,8(a2)
83001e40:	0017e893          	ori	a7,a5,1
83001e44:	00f70833          	add	a6,a4,a5
83001e48:	16a68e63          	beq	a3,a0,83001fc4 <_free_r+0x29c>
83001e4c:	00c62603          	lw	a2,12(a2)
83001e50:	00c6a623          	sw	a2,12(a3)
83001e54:	00d62423          	sw	a3,8(a2)
83001e58:	01172223          	sw	a7,4(a4)
83001e5c:	00f82023          	sw	a5,0(a6)
83001e60:	f65ff06f          	j	83001dc4 <_free_r+0x9c>
83001e64:	00008067          	ret
83001e68:	0017e693          	ori	a3,a5,1
83001e6c:	fed42e23          	sw	a3,-4(s0)
83001e70:	00f62023          	sw	a5,0(a2)
83001e74:	1ff00693          	li	a3,511
83001e78:	f4f6fae3          	bgeu	a3,a5,83001dcc <_free_r+0xa4>
83001e7c:	0097d693          	srli	a3,a5,0x9
83001e80:	00400613          	li	a2,4
83001e84:	10d66263          	bltu	a2,a3,83001f88 <_free_r+0x260>
83001e88:	0067d693          	srli	a3,a5,0x6
83001e8c:	03968813          	addi	a6,a3,57
83001e90:	03868613          	addi	a2,a3,56
83001e94:	00381813          	slli	a6,a6,0x3
83001e98:	01058833          	add	a6,a1,a6
83001e9c:	00082683          	lw	a3,0(a6)
83001ea0:	ff880813          	addi	a6,a6,-8
83001ea4:	12d80e63          	beq	a6,a3,83001fe0 <_free_r+0x2b8>
83001ea8:	0046a603          	lw	a2,4(a3)
83001eac:	ffc67613          	andi	a2,a2,-4
83001eb0:	00c7f663          	bgeu	a5,a2,83001ebc <_free_r+0x194>
83001eb4:	0086a683          	lw	a3,8(a3)
83001eb8:	fed818e3          	bne	a6,a3,83001ea8 <_free_r+0x180>
83001ebc:	00c6a803          	lw	a6,12(a3)
83001ec0:	01072623          	sw	a6,12(a4)
83001ec4:	00d72423          	sw	a3,8(a4)
83001ec8:	00812403          	lw	s0,8(sp)
83001ecc:	00c12083          	lw	ra,12(sp)
83001ed0:	00e82423          	sw	a4,8(a6)
83001ed4:	00048513          	mv	a0,s1
83001ed8:	00412483          	lw	s1,4(sp)
83001edc:	00e6a623          	sw	a4,12(a3)
83001ee0:	01010113          	addi	sp,sp,16
83001ee4:	00002317          	auipc	t1,0x2
83001ee8:	10030067          	jr	256(t1) # 83003fe4 <__malloc_unlock>
83001eec:	14081a63          	bnez	a6,83002040 <_free_r+0x318>
83001ef0:	00c62583          	lw	a1,12(a2)
83001ef4:	00862603          	lw	a2,8(a2)
83001ef8:	00f686b3          	add	a3,a3,a5
83001efc:	00812403          	lw	s0,8(sp)
83001f00:	00b62623          	sw	a1,12(a2)
83001f04:	00c5a423          	sw	a2,8(a1)
83001f08:	0016e793          	ori	a5,a3,1
83001f0c:	00c12083          	lw	ra,12(sp)
83001f10:	00f72223          	sw	a5,4(a4)
83001f14:	00048513          	mv	a0,s1
83001f18:	00d70733          	add	a4,a4,a3
83001f1c:	00412483          	lw	s1,4(sp)
83001f20:	00d72023          	sw	a3,0(a4)
83001f24:	01010113          	addi	sp,sp,16
83001f28:	00002317          	auipc	t1,0x2
83001f2c:	0bc30067          	jr	188(t1) # 83003fe4 <__malloc_unlock>
83001f30:	00187813          	andi	a6,a6,1
83001f34:	00d786b3          	add	a3,a5,a3
83001f38:	02081063          	bnez	a6,83001f58 <_free_r+0x230>
83001f3c:	ff842503          	lw	a0,-8(s0)
83001f40:	40a70733          	sub	a4,a4,a0
83001f44:	00c72783          	lw	a5,12(a4)
83001f48:	00872603          	lw	a2,8(a4)
83001f4c:	00a686b3          	add	a3,a3,a0
83001f50:	00f62623          	sw	a5,12(a2)
83001f54:	00c7a423          	sw	a2,8(a5)
83001f58:	830077b7          	lui	a5,0x83007
83001f5c:	0016e613          	ori	a2,a3,1
83001f60:	8907a783          	lw	a5,-1904(a5) # 83006890 <__BSS_END__+0xffffffbc>
83001f64:	00c72223          	sw	a2,4(a4)
83001f68:	00e5a423          	sw	a4,8(a1)
83001f6c:	e8f6eee3          	bltu	a3,a5,83001e08 <_free_r+0xe0>
83001f70:	830077b7          	lui	a5,0x83007
83001f74:	8a47a583          	lw	a1,-1884(a5) # 830068a4 <__BSS_END__+0xffffffd0>
83001f78:	00048513          	mv	a0,s1
83001f7c:	00000097          	auipc	ra,0x0
83001f80:	c54080e7          	jalr	-940(ra) # 83001bd0 <_malloc_trim_r>
83001f84:	e85ff06f          	j	83001e08 <_free_r+0xe0>
83001f88:	01400613          	li	a2,20
83001f8c:	02d67463          	bgeu	a2,a3,83001fb4 <_free_r+0x28c>
83001f90:	05400613          	li	a2,84
83001f94:	06d66463          	bltu	a2,a3,83001ffc <_free_r+0x2d4>
83001f98:	00c7d693          	srli	a3,a5,0xc
83001f9c:	06f68813          	addi	a6,a3,111
83001fa0:	06e68613          	addi	a2,a3,110
83001fa4:	00381813          	slli	a6,a6,0x3
83001fa8:	ef1ff06f          	j	83001e98 <_free_r+0x170>
83001fac:	00d787b3          	add	a5,a5,a3
83001fb0:	e8dff06f          	j	83001e3c <_free_r+0x114>
83001fb4:	05c68813          	addi	a6,a3,92
83001fb8:	05b68613          	addi	a2,a3,91
83001fbc:	00381813          	slli	a6,a6,0x3
83001fc0:	ed9ff06f          	j	83001e98 <_free_r+0x170>
83001fc4:	00e5aa23          	sw	a4,20(a1)
83001fc8:	00e5a823          	sw	a4,16(a1)
83001fcc:	00a72623          	sw	a0,12(a4)
83001fd0:	00a72423          	sw	a0,8(a4)
83001fd4:	01172223          	sw	a7,4(a4)
83001fd8:	00f82023          	sw	a5,0(a6)
83001fdc:	e2dff06f          	j	83001e08 <_free_r+0xe0>
83001fe0:	0045a503          	lw	a0,4(a1)
83001fe4:	40265613          	srai	a2,a2,0x2
83001fe8:	00100793          	li	a5,1
83001fec:	00c797b3          	sll	a5,a5,a2
83001ff0:	00a7e7b3          	or	a5,a5,a0
83001ff4:	00f5a223          	sw	a5,4(a1)
83001ff8:	ec9ff06f          	j	83001ec0 <_free_r+0x198>
83001ffc:	15400613          	li	a2,340
83002000:	00d66c63          	bltu	a2,a3,83002018 <_free_r+0x2f0>
83002004:	00f7d693          	srli	a3,a5,0xf
83002008:	07868813          	addi	a6,a3,120
8300200c:	07768613          	addi	a2,a3,119
83002010:	00381813          	slli	a6,a6,0x3
83002014:	e85ff06f          	j	83001e98 <_free_r+0x170>
83002018:	55400613          	li	a2,1364
8300201c:	00d66c63          	bltu	a2,a3,83002034 <_free_r+0x30c>
83002020:	0127d693          	srli	a3,a5,0x12
83002024:	07d68813          	addi	a6,a3,125
83002028:	07c68613          	addi	a2,a3,124
8300202c:	00381813          	slli	a6,a6,0x3
83002030:	e69ff06f          	j	83001e98 <_free_r+0x170>
83002034:	3f800813          	li	a6,1016
83002038:	07e00613          	li	a2,126
8300203c:	e5dff06f          	j	83001e98 <_free_r+0x170>
83002040:	0017e693          	ori	a3,a5,1
83002044:	00d72223          	sw	a3,4(a4)
83002048:	00f62023          	sw	a5,0(a2)
8300204c:	dbdff06f          	j	83001e08 <_free_r+0xe0>

83002050 <__swsetup_r>:
83002050:	830077b7          	lui	a5,0x83007
83002054:	8887a783          	lw	a5,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83002058:	ff010113          	addi	sp,sp,-16
8300205c:	00812423          	sw	s0,8(sp)
83002060:	00912223          	sw	s1,4(sp)
83002064:	00112623          	sw	ra,12(sp)
83002068:	00050493          	mv	s1,a0
8300206c:	00058413          	mv	s0,a1
83002070:	00078663          	beqz	a5,8300207c <__swsetup_r+0x2c>
83002074:	0387a703          	lw	a4,56(a5)
83002078:	08070463          	beqz	a4,83002100 <__swsetup_r+0xb0>
8300207c:	00c41703          	lh	a4,12(s0)
83002080:	01071793          	slli	a5,a4,0x10
83002084:	00877693          	andi	a3,a4,8
83002088:	0107d793          	srli	a5,a5,0x10
8300208c:	08068a63          	beqz	a3,83002120 <__swsetup_r+0xd0>
83002090:	01042683          	lw	a3,16(s0)
83002094:	0a068a63          	beqz	a3,83002148 <__swsetup_r+0xf8>
83002098:	0017f613          	andi	a2,a5,1
8300209c:	02060863          	beqz	a2,830020cc <__swsetup_r+0x7c>
830020a0:	01442603          	lw	a2,20(s0)
830020a4:	00042423          	sw	zero,8(s0)
830020a8:	00000513          	li	a0,0
830020ac:	40c00633          	neg	a2,a2
830020b0:	00c42c23          	sw	a2,24(s0)
830020b4:	02068a63          	beqz	a3,830020e8 <__swsetup_r+0x98>
830020b8:	00c12083          	lw	ra,12(sp)
830020bc:	00812403          	lw	s0,8(sp)
830020c0:	00412483          	lw	s1,4(sp)
830020c4:	01010113          	addi	sp,sp,16
830020c8:	00008067          	ret
830020cc:	0027f613          	andi	a2,a5,2
830020d0:	00000593          	li	a1,0
830020d4:	00061463          	bnez	a2,830020dc <__swsetup_r+0x8c>
830020d8:	01442583          	lw	a1,20(s0)
830020dc:	00b42423          	sw	a1,8(s0)
830020e0:	00000513          	li	a0,0
830020e4:	fc069ae3          	bnez	a3,830020b8 <__swsetup_r+0x68>
830020e8:	0807f793          	andi	a5,a5,128
830020ec:	fc0786e3          	beqz	a5,830020b8 <__swsetup_r+0x68>
830020f0:	04076713          	ori	a4,a4,64
830020f4:	00e41623          	sh	a4,12(s0)
830020f8:	fff00513          	li	a0,-1
830020fc:	fbdff06f          	j	830020b8 <__swsetup_r+0x68>
83002100:	00078513          	mv	a0,a5
83002104:	00001097          	auipc	ra,0x1
83002108:	92c080e7          	jalr	-1748(ra) # 83002a30 <__sinit>
8300210c:	00c41703          	lh	a4,12(s0)
83002110:	01071793          	slli	a5,a4,0x10
83002114:	00877693          	andi	a3,a4,8
83002118:	0107d793          	srli	a5,a5,0x10
8300211c:	f6069ae3          	bnez	a3,83002090 <__swsetup_r+0x40>
83002120:	0107f693          	andi	a3,a5,16
83002124:	08068663          	beqz	a3,830021b0 <__swsetup_r+0x160>
83002128:	0047f793          	andi	a5,a5,4
8300212c:	04079663          	bnez	a5,83002178 <__swsetup_r+0x128>
83002130:	01042683          	lw	a3,16(s0)
83002134:	00876713          	ori	a4,a4,8
83002138:	01071793          	slli	a5,a4,0x10
8300213c:	00e41623          	sh	a4,12(s0)
83002140:	0107d793          	srli	a5,a5,0x10
83002144:	f4069ae3          	bnez	a3,83002098 <__swsetup_r+0x48>
83002148:	2807f613          	andi	a2,a5,640
8300214c:	20000593          	li	a1,512
83002150:	f4b604e3          	beq	a2,a1,83002098 <__swsetup_r+0x48>
83002154:	00040593          	mv	a1,s0
83002158:	00048513          	mv	a0,s1
8300215c:	00002097          	auipc	ra,0x2
83002160:	e8c080e7          	jalr	-372(ra) # 83003fe8 <__smakebuf_r>
83002164:	00c41703          	lh	a4,12(s0)
83002168:	01042683          	lw	a3,16(s0)
8300216c:	01071793          	slli	a5,a4,0x10
83002170:	0107d793          	srli	a5,a5,0x10
83002174:	f25ff06f          	j	83002098 <__swsetup_r+0x48>
83002178:	03042583          	lw	a1,48(s0)
8300217c:	02058063          	beqz	a1,8300219c <__swsetup_r+0x14c>
83002180:	04040793          	addi	a5,s0,64
83002184:	00f58a63          	beq	a1,a5,83002198 <__swsetup_r+0x148>
83002188:	00048513          	mv	a0,s1
8300218c:	00000097          	auipc	ra,0x0
83002190:	b9c080e7          	jalr	-1124(ra) # 83001d28 <_free_r>
83002194:	00c41703          	lh	a4,12(s0)
83002198:	02042823          	sw	zero,48(s0)
8300219c:	01042683          	lw	a3,16(s0)
830021a0:	fdb77713          	andi	a4,a4,-37
830021a4:	00042223          	sw	zero,4(s0)
830021a8:	00d42023          	sw	a3,0(s0)
830021ac:	f89ff06f          	j	83002134 <__swsetup_r+0xe4>
830021b0:	00900793          	li	a5,9
830021b4:	00f4a023          	sw	a5,0(s1)
830021b8:	04076713          	ori	a4,a4,64
830021bc:	00e41623          	sh	a4,12(s0)
830021c0:	fff00513          	li	a0,-1
830021c4:	ef5ff06f          	j	830020b8 <__swsetup_r+0x68>

830021c8 <__sfvwrite_r>:
830021c8:	00862783          	lw	a5,8(a2)
830021cc:	32078a63          	beqz	a5,83002500 <__sfvwrite_r+0x338>
830021d0:	00c5d683          	lhu	a3,12(a1)
830021d4:	fd010113          	addi	sp,sp,-48
830021d8:	02812423          	sw	s0,40(sp)
830021dc:	01412c23          	sw	s4,24(sp)
830021e0:	01712623          	sw	s7,12(sp)
830021e4:	02112623          	sw	ra,44(sp)
830021e8:	02912223          	sw	s1,36(sp)
830021ec:	03212023          	sw	s2,32(sp)
830021f0:	01312e23          	sw	s3,28(sp)
830021f4:	01512a23          	sw	s5,20(sp)
830021f8:	01612823          	sw	s6,16(sp)
830021fc:	01812423          	sw	s8,8(sp)
83002200:	01912223          	sw	s9,4(sp)
83002204:	01a12023          	sw	s10,0(sp)
83002208:	0086f793          	andi	a5,a3,8
8300220c:	00060b93          	mv	s7,a2
83002210:	00050a13          	mv	s4,a0
83002214:	00058413          	mv	s0,a1
83002218:	08078663          	beqz	a5,830022a4 <__sfvwrite_r+0xdc>
8300221c:	0105a783          	lw	a5,16(a1)
83002220:	08078263          	beqz	a5,830022a4 <__sfvwrite_r+0xdc>
83002224:	0026f793          	andi	a5,a3,2
83002228:	000ba483          	lw	s1,0(s7)
8300222c:	08078e63          	beqz	a5,830022c8 <__sfvwrite_r+0x100>
83002230:	02442783          	lw	a5,36(s0)
83002234:	01c42583          	lw	a1,28(s0)
83002238:	80000ab7          	lui	s5,0x80000
8300223c:	00000993          	li	s3,0
83002240:	00000913          	li	s2,0
83002244:	c00aca93          	xori	s5,s5,-1024
83002248:	00098613          	mv	a2,s3
8300224c:	000a0513          	mv	a0,s4
83002250:	04090263          	beqz	s2,83002294 <__sfvwrite_r+0xcc>
83002254:	00090693          	mv	a3,s2
83002258:	012af463          	bgeu	s5,s2,83002260 <__sfvwrite_r+0x98>
8300225c:	000a8693          	mv	a3,s5
83002260:	000780e7          	jalr	a5
83002264:	28a05463          	blez	a0,830024ec <__sfvwrite_r+0x324>
83002268:	008ba783          	lw	a5,8(s7)
8300226c:	00a989b3          	add	s3,s3,a0
83002270:	40a90933          	sub	s2,s2,a0
83002274:	40a787b3          	sub	a5,a5,a0
83002278:	00fba423          	sw	a5,8(s7)
8300227c:	22078063          	beqz	a5,8300249c <__sfvwrite_r+0x2d4>
83002280:	02442783          	lw	a5,36(s0)
83002284:	01c42583          	lw	a1,28(s0)
83002288:	00098613          	mv	a2,s3
8300228c:	000a0513          	mv	a0,s4
83002290:	fc0912e3          	bnez	s2,83002254 <__sfvwrite_r+0x8c>
83002294:	0004a983          	lw	s3,0(s1)
83002298:	0044a903          	lw	s2,4(s1)
8300229c:	00848493          	addi	s1,s1,8
830022a0:	fa9ff06f          	j	83002248 <__sfvwrite_r+0x80>
830022a4:	00040593          	mv	a1,s0
830022a8:	000a0513          	mv	a0,s4
830022ac:	00000097          	auipc	ra,0x0
830022b0:	da4080e7          	jalr	-604(ra) # 83002050 <__swsetup_r>
830022b4:	3e051863          	bnez	a0,830026a4 <__sfvwrite_r+0x4dc>
830022b8:	00c45683          	lhu	a3,12(s0)
830022bc:	000ba483          	lw	s1,0(s7)
830022c0:	0026f793          	andi	a5,a3,2
830022c4:	f60796e3          	bnez	a5,83002230 <__sfvwrite_r+0x68>
830022c8:	0016f793          	andi	a5,a3,1
830022cc:	14079463          	bnez	a5,83002414 <__sfvwrite_r+0x24c>
830022d0:	00042783          	lw	a5,0(s0)
830022d4:	00842703          	lw	a4,8(s0)
830022d8:	80000ab7          	lui	s5,0x80000
830022dc:	ffeacb13          	xori	s6,s5,-2
830022e0:	00000c13          	li	s8,0
830022e4:	00000993          	li	s3,0
830022e8:	fffaca93          	not	s5,s5
830022ec:	00078513          	mv	a0,a5
830022f0:	00070c93          	mv	s9,a4
830022f4:	10098863          	beqz	s3,83002404 <__sfvwrite_r+0x23c>
830022f8:	2006f613          	andi	a2,a3,512
830022fc:	26060c63          	beqz	a2,83002574 <__sfvwrite_r+0x3ac>
83002300:	00070d13          	mv	s10,a4
83002304:	30e9e863          	bltu	s3,a4,83002614 <__sfvwrite_r+0x44c>
83002308:	4806f713          	andi	a4,a3,1152
8300230c:	08070e63          	beqz	a4,830023a8 <__sfvwrite_r+0x1e0>
83002310:	01442603          	lw	a2,20(s0)
83002314:	01042583          	lw	a1,16(s0)
83002318:	00161713          	slli	a4,a2,0x1
8300231c:	00c70733          	add	a4,a4,a2
83002320:	40b78933          	sub	s2,a5,a1
83002324:	01f75c93          	srli	s9,a4,0x1f
83002328:	00ec8cb3          	add	s9,s9,a4
8300232c:	00190793          	addi	a5,s2,1
83002330:	401cdc93          	srai	s9,s9,0x1
83002334:	013787b3          	add	a5,a5,s3
83002338:	000c8613          	mv	a2,s9
8300233c:	00fcf663          	bgeu	s9,a5,83002348 <__sfvwrite_r+0x180>
83002340:	00078c93          	mv	s9,a5
83002344:	00078613          	mv	a2,a5
83002348:	4006f693          	andi	a3,a3,1024
8300234c:	30068263          	beqz	a3,83002650 <__sfvwrite_r+0x488>
83002350:	00060593          	mv	a1,a2
83002354:	000a0513          	mv	a0,s4
83002358:	00001097          	auipc	ra,0x1
8300235c:	f10080e7          	jalr	-240(ra) # 83003268 <_malloc_r>
83002360:	00050d13          	mv	s10,a0
83002364:	32050863          	beqz	a0,83002694 <__sfvwrite_r+0x4cc>
83002368:	01042583          	lw	a1,16(s0)
8300236c:	00090613          	mv	a2,s2
83002370:	00001097          	auipc	ra,0x1
83002374:	c80080e7          	jalr	-896(ra) # 83002ff0 <memcpy>
83002378:	00c45783          	lhu	a5,12(s0)
8300237c:	b7f7f793          	andi	a5,a5,-1153
83002380:	0807e793          	ori	a5,a5,128
83002384:	00f41623          	sh	a5,12(s0)
83002388:	012d0533          	add	a0,s10,s2
8300238c:	412c87b3          	sub	a5,s9,s2
83002390:	01a42823          	sw	s10,16(s0)
83002394:	01942a23          	sw	s9,20(s0)
83002398:	00a42023          	sw	a0,0(s0)
8300239c:	00098c93          	mv	s9,s3
830023a0:	00f42423          	sw	a5,8(s0)
830023a4:	00098d13          	mv	s10,s3
830023a8:	000d0613          	mv	a2,s10
830023ac:	000c0593          	mv	a1,s8
830023b0:	00001097          	auipc	ra,0x1
830023b4:	d34080e7          	jalr	-716(ra) # 830030e4 <memmove>
830023b8:	00842703          	lw	a4,8(s0)
830023bc:	00042783          	lw	a5,0(s0)
830023c0:	00098913          	mv	s2,s3
830023c4:	41970733          	sub	a4,a4,s9
830023c8:	01a787b3          	add	a5,a5,s10
830023cc:	00e42423          	sw	a4,8(s0)
830023d0:	00f42023          	sw	a5,0(s0)
830023d4:	00000993          	li	s3,0
830023d8:	008ba783          	lw	a5,8(s7)
830023dc:	012c0c33          	add	s8,s8,s2
830023e0:	412787b3          	sub	a5,a5,s2
830023e4:	00fba423          	sw	a5,8(s7)
830023e8:	0a078a63          	beqz	a5,8300249c <__sfvwrite_r+0x2d4>
830023ec:	00042783          	lw	a5,0(s0)
830023f0:	00842703          	lw	a4,8(s0)
830023f4:	00c45683          	lhu	a3,12(s0)
830023f8:	00078513          	mv	a0,a5
830023fc:	00070c93          	mv	s9,a4
83002400:	ee099ce3          	bnez	s3,830022f8 <__sfvwrite_r+0x130>
83002404:	0004ac03          	lw	s8,0(s1)
83002408:	0044a983          	lw	s3,4(s1)
8300240c:	00848493          	addi	s1,s1,8
83002410:	eddff06f          	j	830022ec <__sfvwrite_r+0x124>
83002414:	00000a93          	li	s5,0
83002418:	00000513          	li	a0,0
8300241c:	00000c13          	li	s8,0
83002420:	00000993          	li	s3,0
83002424:	0e098263          	beqz	s3,83002508 <__sfvwrite_r+0x340>
83002428:	0e050a63          	beqz	a0,8300251c <__sfvwrite_r+0x354>
8300242c:	000a8793          	mv	a5,s5
83002430:	00098b13          	mv	s6,s3
83002434:	0137f463          	bgeu	a5,s3,8300243c <__sfvwrite_r+0x274>
83002438:	00078b13          	mv	s6,a5
8300243c:	00042503          	lw	a0,0(s0)
83002440:	01042783          	lw	a5,16(s0)
83002444:	00842903          	lw	s2,8(s0)
83002448:	01442683          	lw	a3,20(s0)
8300244c:	00a7f663          	bgeu	a5,a0,83002458 <__sfvwrite_r+0x290>
83002450:	00d90933          	add	s2,s2,a3
83002454:	0f694663          	blt	s2,s6,83002540 <__sfvwrite_r+0x378>
83002458:	1cdb4463          	blt	s6,a3,83002620 <__sfvwrite_r+0x458>
8300245c:	02442783          	lw	a5,36(s0)
83002460:	01c42583          	lw	a1,28(s0)
83002464:	000c0613          	mv	a2,s8
83002468:	000a0513          	mv	a0,s4
8300246c:	000780e7          	jalr	a5
83002470:	00050913          	mv	s2,a0
83002474:	06a05c63          	blez	a0,830024ec <__sfvwrite_r+0x324>
83002478:	412a8ab3          	sub	s5,s5,s2
8300247c:	00100513          	li	a0,1
83002480:	040a8c63          	beqz	s5,830024d8 <__sfvwrite_r+0x310>
83002484:	008ba783          	lw	a5,8(s7)
83002488:	012c0c33          	add	s8,s8,s2
8300248c:	412989b3          	sub	s3,s3,s2
83002490:	412787b3          	sub	a5,a5,s2
83002494:	00fba423          	sw	a5,8(s7)
83002498:	f80796e3          	bnez	a5,83002424 <__sfvwrite_r+0x25c>
8300249c:	00000513          	li	a0,0
830024a0:	02c12083          	lw	ra,44(sp)
830024a4:	02812403          	lw	s0,40(sp)
830024a8:	02412483          	lw	s1,36(sp)
830024ac:	02012903          	lw	s2,32(sp)
830024b0:	01c12983          	lw	s3,28(sp)
830024b4:	01812a03          	lw	s4,24(sp)
830024b8:	01412a83          	lw	s5,20(sp)
830024bc:	01012b03          	lw	s6,16(sp)
830024c0:	00c12b83          	lw	s7,12(sp)
830024c4:	00812c03          	lw	s8,8(sp)
830024c8:	00412c83          	lw	s9,4(sp)
830024cc:	00012d03          	lw	s10,0(sp)
830024d0:	03010113          	addi	sp,sp,48
830024d4:	00008067          	ret
830024d8:	00040593          	mv	a1,s0
830024dc:	000a0513          	mv	a0,s4
830024e0:	00000097          	auipc	ra,0x0
830024e4:	7dc080e7          	jalr	2012(ra) # 83002cbc <_fflush_r>
830024e8:	f8050ee3          	beqz	a0,83002484 <__sfvwrite_r+0x2bc>
830024ec:	00c41783          	lh	a5,12(s0)
830024f0:	0407e793          	ori	a5,a5,64
830024f4:	00f41623          	sh	a5,12(s0)
830024f8:	fff00513          	li	a0,-1
830024fc:	fa5ff06f          	j	830024a0 <__sfvwrite_r+0x2d8>
83002500:	00000513          	li	a0,0
83002504:	00008067          	ret
83002508:	0044a983          	lw	s3,4(s1)
8300250c:	00048793          	mv	a5,s1
83002510:	00848493          	addi	s1,s1,8
83002514:	fe098ae3          	beqz	s3,83002508 <__sfvwrite_r+0x340>
83002518:	0007ac03          	lw	s8,0(a5)
8300251c:	00098613          	mv	a2,s3
83002520:	00a00593          	li	a1,10
83002524:	000c0513          	mv	a0,s8
83002528:	fffff097          	auipc	ra,0xfffff
8300252c:	2f4080e7          	jalr	756(ra) # 8300181c <memchr>
83002530:	14050c63          	beqz	a0,83002688 <__sfvwrite_r+0x4c0>
83002534:	00150513          	addi	a0,a0,1
83002538:	41850ab3          	sub	s5,a0,s8
8300253c:	ef1ff06f          	j	8300242c <__sfvwrite_r+0x264>
83002540:	000c0593          	mv	a1,s8
83002544:	00090613          	mv	a2,s2
83002548:	00001097          	auipc	ra,0x1
8300254c:	b9c080e7          	jalr	-1124(ra) # 830030e4 <memmove>
83002550:	00042783          	lw	a5,0(s0)
83002554:	00040593          	mv	a1,s0
83002558:	000a0513          	mv	a0,s4
8300255c:	012787b3          	add	a5,a5,s2
83002560:	00f42023          	sw	a5,0(s0)
83002564:	00000097          	auipc	ra,0x0
83002568:	758080e7          	jalr	1880(ra) # 83002cbc <_fflush_r>
8300256c:	f00506e3          	beqz	a0,83002478 <__sfvwrite_r+0x2b0>
83002570:	f7dff06f          	j	830024ec <__sfvwrite_r+0x324>
83002574:	01042683          	lw	a3,16(s0)
83002578:	04f6e263          	bltu	a3,a5,830025bc <__sfvwrite_r+0x3f4>
8300257c:	01442803          	lw	a6,20(s0)
83002580:	0309ee63          	bltu	s3,a6,830025bc <__sfvwrite_r+0x3f4>
83002584:	00098693          	mv	a3,s3
83002588:	013b7463          	bgeu	s6,s3,83002590 <__sfvwrite_r+0x3c8>
8300258c:	000a8693          	mv	a3,s5
83002590:	0306c6b3          	div	a3,a3,a6
83002594:	02442783          	lw	a5,36(s0)
83002598:	01c42583          	lw	a1,28(s0)
8300259c:	000c0613          	mv	a2,s8
830025a0:	000a0513          	mv	a0,s4
830025a4:	030686b3          	mul	a3,a3,a6
830025a8:	000780e7          	jalr	a5
830025ac:	00050913          	mv	s2,a0
830025b0:	f2a05ee3          	blez	a0,830024ec <__sfvwrite_r+0x324>
830025b4:	412989b3          	sub	s3,s3,s2
830025b8:	e21ff06f          	j	830023d8 <__sfvwrite_r+0x210>
830025bc:	00070913          	mv	s2,a4
830025c0:	00e9f463          	bgeu	s3,a4,830025c8 <__sfvwrite_r+0x400>
830025c4:	00098913          	mv	s2,s3
830025c8:	00078513          	mv	a0,a5
830025cc:	00090613          	mv	a2,s2
830025d0:	000c0593          	mv	a1,s8
830025d4:	00001097          	auipc	ra,0x1
830025d8:	b10080e7          	jalr	-1264(ra) # 830030e4 <memmove>
830025dc:	00842703          	lw	a4,8(s0)
830025e0:	00042783          	lw	a5,0(s0)
830025e4:	41270733          	sub	a4,a4,s2
830025e8:	012787b3          	add	a5,a5,s2
830025ec:	00e42423          	sw	a4,8(s0)
830025f0:	00f42023          	sw	a5,0(s0)
830025f4:	fc0710e3          	bnez	a4,830025b4 <__sfvwrite_r+0x3ec>
830025f8:	00040593          	mv	a1,s0
830025fc:	000a0513          	mv	a0,s4
83002600:	00000097          	auipc	ra,0x0
83002604:	6bc080e7          	jalr	1724(ra) # 83002cbc <_fflush_r>
83002608:	ee0512e3          	bnez	a0,830024ec <__sfvwrite_r+0x324>
8300260c:	412989b3          	sub	s3,s3,s2
83002610:	dc9ff06f          	j	830023d8 <__sfvwrite_r+0x210>
83002614:	00098c93          	mv	s9,s3
83002618:	00098d13          	mv	s10,s3
8300261c:	d8dff06f          	j	830023a8 <__sfvwrite_r+0x1e0>
83002620:	000b0613          	mv	a2,s6
83002624:	000c0593          	mv	a1,s8
83002628:	00001097          	auipc	ra,0x1
8300262c:	abc080e7          	jalr	-1348(ra) # 830030e4 <memmove>
83002630:	00842703          	lw	a4,8(s0)
83002634:	00042783          	lw	a5,0(s0)
83002638:	000b0913          	mv	s2,s6
8300263c:	41670733          	sub	a4,a4,s6
83002640:	016787b3          	add	a5,a5,s6
83002644:	00e42423          	sw	a4,8(s0)
83002648:	00f42023          	sw	a5,0(s0)
8300264c:	e2dff06f          	j	83002478 <__sfvwrite_r+0x2b0>
83002650:	000a0513          	mv	a0,s4
83002654:	00001097          	auipc	ra,0x1
83002658:	400080e7          	jalr	1024(ra) # 83003a54 <_realloc_r>
8300265c:	00050d13          	mv	s10,a0
83002660:	d20514e3          	bnez	a0,83002388 <__sfvwrite_r+0x1c0>
83002664:	01042583          	lw	a1,16(s0)
83002668:	000a0513          	mv	a0,s4
8300266c:	fffff097          	auipc	ra,0xfffff
83002670:	6bc080e7          	jalr	1724(ra) # 83001d28 <_free_r>
83002674:	00c41783          	lh	a5,12(s0)
83002678:	00c00713          	li	a4,12
8300267c:	00ea2023          	sw	a4,0(s4)
83002680:	f7f7f793          	andi	a5,a5,-129
83002684:	e6dff06f          	j	830024f0 <__sfvwrite_r+0x328>
83002688:	00198793          	addi	a5,s3,1
8300268c:	00078a93          	mv	s5,a5
83002690:	da1ff06f          	j	83002430 <__sfvwrite_r+0x268>
83002694:	00c00713          	li	a4,12
83002698:	00c41783          	lh	a5,12(s0)
8300269c:	00ea2023          	sw	a4,0(s4)
830026a0:	e51ff06f          	j	830024f0 <__sfvwrite_r+0x328>
830026a4:	fff00513          	li	a0,-1
830026a8:	df9ff06f          	j	830024a0 <__sfvwrite_r+0x2d8>

830026ac <__fp_lock>:
830026ac:	00000513          	li	a0,0
830026b0:	00008067          	ret

830026b4 <_cleanup_r>:
830026b4:	830045b7          	lui	a1,0x83004
830026b8:	60458593          	addi	a1,a1,1540 # 83004604 <__BSS_END__+0xffffdd30>
830026bc:	00002317          	auipc	t1,0x2
830026c0:	e9430067          	jr	-364(t1) # 83004550 <_fwalk_reent>

830026c4 <__fp_unlock>:
830026c4:	00000513          	li	a0,0
830026c8:	00008067          	ret

830026cc <__sinit.part.0>:
830026cc:	fe010113          	addi	sp,sp,-32
830026d0:	830027b7          	lui	a5,0x83002
830026d4:	00112e23          	sw	ra,28(sp)
830026d8:	00812c23          	sw	s0,24(sp)
830026dc:	00912a23          	sw	s1,20(sp)
830026e0:	01212823          	sw	s2,16(sp)
830026e4:	01312623          	sw	s3,12(sp)
830026e8:	01412423          	sw	s4,8(sp)
830026ec:	01512223          	sw	s5,4(sp)
830026f0:	01612023          	sw	s6,0(sp)
830026f4:	00452403          	lw	s0,4(a0)
830026f8:	6b478793          	addi	a5,a5,1716 # 830026b4 <__BSS_END__+0xffffbde0>
830026fc:	02f52e23          	sw	a5,60(a0)
83002700:	2ec50713          	addi	a4,a0,748
83002704:	00300793          	li	a5,3
83002708:	2ee52423          	sw	a4,744(a0)
8300270c:	2ef52223          	sw	a5,740(a0)
83002710:	2e052023          	sw	zero,736(a0)
83002714:	00400793          	li	a5,4
83002718:	00050913          	mv	s2,a0
8300271c:	00f42623          	sw	a5,12(s0)
83002720:	00800613          	li	a2,8
83002724:	00000593          	li	a1,0
83002728:	06042223          	sw	zero,100(s0)
8300272c:	00042023          	sw	zero,0(s0)
83002730:	00042223          	sw	zero,4(s0)
83002734:	00042423          	sw	zero,8(s0)
83002738:	00042823          	sw	zero,16(s0)
8300273c:	00042a23          	sw	zero,20(s0)
83002740:	00042c23          	sw	zero,24(s0)
83002744:	05c40513          	addi	a0,s0,92
83002748:	00000097          	auipc	ra,0x0
8300274c:	7bc080e7          	jalr	1980(ra) # 83002f04 <memset>
83002750:	83004b37          	lui	s6,0x83004
83002754:	00892483          	lw	s1,8(s2)
83002758:	83004ab7          	lui	s5,0x83004
8300275c:	83004a37          	lui	s4,0x83004
83002760:	830049b7          	lui	s3,0x83004
83002764:	1d0b0b13          	addi	s6,s6,464 # 830041d0 <__BSS_END__+0xffffd8fc>
83002768:	238a8a93          	addi	s5,s5,568 # 83004238 <__BSS_END__+0xffffd964>
8300276c:	2c8a0a13          	addi	s4,s4,712 # 830042c8 <__BSS_END__+0xffffd9f4>
83002770:	33498993          	addi	s3,s3,820 # 83004334 <__BSS_END__+0xffffda60>
83002774:	000107b7          	lui	a5,0x10
83002778:	03642023          	sw	s6,32(s0)
8300277c:	03542223          	sw	s5,36(s0)
83002780:	03442423          	sw	s4,40(s0)
83002784:	03342623          	sw	s3,44(s0)
83002788:	00842e23          	sw	s0,28(s0)
8300278c:	00978793          	addi	a5,a5,9 # 10009 <main-0x82ff00ab>
83002790:	00f4a623          	sw	a5,12(s1)
83002794:	00800613          	li	a2,8
83002798:	00000593          	li	a1,0
8300279c:	0604a223          	sw	zero,100(s1)
830027a0:	0004a023          	sw	zero,0(s1)
830027a4:	0004a223          	sw	zero,4(s1)
830027a8:	0004a423          	sw	zero,8(s1)
830027ac:	0004a823          	sw	zero,16(s1)
830027b0:	0004aa23          	sw	zero,20(s1)
830027b4:	0004ac23          	sw	zero,24(s1)
830027b8:	05c48513          	addi	a0,s1,92
830027bc:	00000097          	auipc	ra,0x0
830027c0:	748080e7          	jalr	1864(ra) # 83002f04 <memset>
830027c4:	00c92403          	lw	s0,12(s2)
830027c8:	000207b7          	lui	a5,0x20
830027cc:	0364a023          	sw	s6,32(s1)
830027d0:	0354a223          	sw	s5,36(s1)
830027d4:	0344a423          	sw	s4,40(s1)
830027d8:	0334a623          	sw	s3,44(s1)
830027dc:	0094ae23          	sw	s1,28(s1)
830027e0:	01278793          	addi	a5,a5,18 # 20012 <main-0x82fe00a2>
830027e4:	00f42623          	sw	a5,12(s0)
830027e8:	06042223          	sw	zero,100(s0)
830027ec:	00042023          	sw	zero,0(s0)
830027f0:	00042223          	sw	zero,4(s0)
830027f4:	00042423          	sw	zero,8(s0)
830027f8:	00042823          	sw	zero,16(s0)
830027fc:	00042a23          	sw	zero,20(s0)
83002800:	00042c23          	sw	zero,24(s0)
83002804:	05c40513          	addi	a0,s0,92
83002808:	00800613          	li	a2,8
8300280c:	00000593          	li	a1,0
83002810:	00000097          	auipc	ra,0x0
83002814:	6f4080e7          	jalr	1780(ra) # 83002f04 <memset>
83002818:	01c12083          	lw	ra,28(sp)
8300281c:	03642023          	sw	s6,32(s0)
83002820:	03542223          	sw	s5,36(s0)
83002824:	03442423          	sw	s4,40(s0)
83002828:	03342623          	sw	s3,44(s0)
8300282c:	00842e23          	sw	s0,28(s0)
83002830:	01812403          	lw	s0,24(sp)
83002834:	00100793          	li	a5,1
83002838:	02f92c23          	sw	a5,56(s2)
8300283c:	01412483          	lw	s1,20(sp)
83002840:	01012903          	lw	s2,16(sp)
83002844:	00c12983          	lw	s3,12(sp)
83002848:	00812a03          	lw	s4,8(sp)
8300284c:	00412a83          	lw	s5,4(sp)
83002850:	00012b03          	lw	s6,0(sp)
83002854:	02010113          	addi	sp,sp,32
83002858:	00008067          	ret

8300285c <__sfmoreglue>:
8300285c:	ff010113          	addi	sp,sp,-16
83002860:	00912223          	sw	s1,4(sp)
83002864:	06800793          	li	a5,104
83002868:	fff58493          	addi	s1,a1,-1
8300286c:	02f484b3          	mul	s1,s1,a5
83002870:	01212023          	sw	s2,0(sp)
83002874:	00058913          	mv	s2,a1
83002878:	00812423          	sw	s0,8(sp)
8300287c:	00112623          	sw	ra,12(sp)
83002880:	07448593          	addi	a1,s1,116
83002884:	00001097          	auipc	ra,0x1
83002888:	9e4080e7          	jalr	-1564(ra) # 83003268 <_malloc_r>
8300288c:	00050413          	mv	s0,a0
83002890:	02050263          	beqz	a0,830028b4 <__sfmoreglue+0x58>
83002894:	00c50513          	addi	a0,a0,12
83002898:	00042023          	sw	zero,0(s0)
8300289c:	01242223          	sw	s2,4(s0)
830028a0:	00a42423          	sw	a0,8(s0)
830028a4:	06848613          	addi	a2,s1,104
830028a8:	00000593          	li	a1,0
830028ac:	00000097          	auipc	ra,0x0
830028b0:	658080e7          	jalr	1624(ra) # 83002f04 <memset>
830028b4:	00c12083          	lw	ra,12(sp)
830028b8:	00040513          	mv	a0,s0
830028bc:	00812403          	lw	s0,8(sp)
830028c0:	00412483          	lw	s1,4(sp)
830028c4:	00012903          	lw	s2,0(sp)
830028c8:	01010113          	addi	sp,sp,16
830028cc:	00008067          	ret

830028d0 <__sfp>:
830028d0:	fe010113          	addi	sp,sp,-32
830028d4:	830077b7          	lui	a5,0x83007
830028d8:	01212823          	sw	s2,16(sp)
830028dc:	8307a903          	lw	s2,-2000(a5) # 83006830 <__BSS_END__+0xffffff5c>
830028e0:	01312623          	sw	s3,12(sp)
830028e4:	00112e23          	sw	ra,28(sp)
830028e8:	03892783          	lw	a5,56(s2)
830028ec:	00812c23          	sw	s0,24(sp)
830028f0:	00912a23          	sw	s1,20(sp)
830028f4:	01412423          	sw	s4,8(sp)
830028f8:	00050993          	mv	s3,a0
830028fc:	0a078c63          	beqz	a5,830029b4 <__sfp+0xe4>
83002900:	2e090913          	addi	s2,s2,736
83002904:	fff00493          	li	s1,-1
83002908:	00400a13          	li	s4,4
8300290c:	00492783          	lw	a5,4(s2)
83002910:	00892403          	lw	s0,8(s2)
83002914:	fff78793          	addi	a5,a5,-1
83002918:	0007d863          	bgez	a5,83002928 <__sfp+0x58>
8300291c:	0880006f          	j	830029a4 <__sfp+0xd4>
83002920:	06840413          	addi	s0,s0,104
83002924:	08978063          	beq	a5,s1,830029a4 <__sfp+0xd4>
83002928:	00c41703          	lh	a4,12(s0)
8300292c:	fff78793          	addi	a5,a5,-1
83002930:	fe0718e3          	bnez	a4,83002920 <__sfp+0x50>
83002934:	ffff07b7          	lui	a5,0xffff0
83002938:	00178793          	addi	a5,a5,1 # ffff0001 <__BSS_END__+0x7cfe972d>
8300293c:	06042223          	sw	zero,100(s0)
83002940:	00042023          	sw	zero,0(s0)
83002944:	00042223          	sw	zero,4(s0)
83002948:	00042423          	sw	zero,8(s0)
8300294c:	00f42623          	sw	a5,12(s0)
83002950:	00042823          	sw	zero,16(s0)
83002954:	00042a23          	sw	zero,20(s0)
83002958:	00042c23          	sw	zero,24(s0)
8300295c:	00800613          	li	a2,8
83002960:	00000593          	li	a1,0
83002964:	05c40513          	addi	a0,s0,92
83002968:	00000097          	auipc	ra,0x0
8300296c:	59c080e7          	jalr	1436(ra) # 83002f04 <memset>
83002970:	02042823          	sw	zero,48(s0)
83002974:	02042a23          	sw	zero,52(s0)
83002978:	04042223          	sw	zero,68(s0)
8300297c:	04042423          	sw	zero,72(s0)
83002980:	01c12083          	lw	ra,28(sp)
83002984:	00040513          	mv	a0,s0
83002988:	01812403          	lw	s0,24(sp)
8300298c:	01412483          	lw	s1,20(sp)
83002990:	01012903          	lw	s2,16(sp)
83002994:	00c12983          	lw	s3,12(sp)
83002998:	00812a03          	lw	s4,8(sp)
8300299c:	02010113          	addi	sp,sp,32
830029a0:	00008067          	ret
830029a4:	00092403          	lw	s0,0(s2)
830029a8:	00040e63          	beqz	s0,830029c4 <__sfp+0xf4>
830029ac:	00040913          	mv	s2,s0
830029b0:	f5dff06f          	j	8300290c <__sfp+0x3c>
830029b4:	00090513          	mv	a0,s2
830029b8:	00000097          	auipc	ra,0x0
830029bc:	d14080e7          	jalr	-748(ra) # 830026cc <__sinit.part.0>
830029c0:	f41ff06f          	j	83002900 <__sfp+0x30>
830029c4:	1ac00593          	li	a1,428
830029c8:	00098513          	mv	a0,s3
830029cc:	00001097          	auipc	ra,0x1
830029d0:	89c080e7          	jalr	-1892(ra) # 83003268 <_malloc_r>
830029d4:	00050413          	mv	s0,a0
830029d8:	02050863          	beqz	a0,83002a08 <__sfp+0x138>
830029dc:	00c50513          	addi	a0,a0,12
830029e0:	00042023          	sw	zero,0(s0)
830029e4:	01442223          	sw	s4,4(s0)
830029e8:	00a42423          	sw	a0,8(s0)
830029ec:	1a000613          	li	a2,416
830029f0:	00000593          	li	a1,0
830029f4:	00000097          	auipc	ra,0x0
830029f8:	510080e7          	jalr	1296(ra) # 83002f04 <memset>
830029fc:	00892023          	sw	s0,0(s2)
83002a00:	00040913          	mv	s2,s0
83002a04:	f09ff06f          	j	8300290c <__sfp+0x3c>
83002a08:	00092023          	sw	zero,0(s2)
83002a0c:	00c00793          	li	a5,12
83002a10:	00f9a023          	sw	a5,0(s3)
83002a14:	f6dff06f          	j	83002980 <__sfp+0xb0>

83002a18 <_cleanup>:
83002a18:	830077b7          	lui	a5,0x83007
83002a1c:	8307a503          	lw	a0,-2000(a5) # 83006830 <__BSS_END__+0xffffff5c>
83002a20:	830045b7          	lui	a1,0x83004
83002a24:	60458593          	addi	a1,a1,1540 # 83004604 <__BSS_END__+0xffffdd30>
83002a28:	00002317          	auipc	t1,0x2
83002a2c:	b2830067          	jr	-1240(t1) # 83004550 <_fwalk_reent>

83002a30 <__sinit>:
83002a30:	03852783          	lw	a5,56(a0)
83002a34:	00078463          	beqz	a5,83002a3c <__sinit+0xc>
83002a38:	00008067          	ret
83002a3c:	00000317          	auipc	t1,0x0
83002a40:	c9030067          	jr	-880(t1) # 830026cc <__sinit.part.0>

83002a44 <__sfp_lock_acquire>:
83002a44:	00008067          	ret

83002a48 <__sfp_lock_release>:
83002a48:	00008067          	ret

83002a4c <__sinit_lock_acquire>:
83002a4c:	00008067          	ret

83002a50 <__sinit_lock_release>:
83002a50:	00008067          	ret

83002a54 <__fp_lock_all>:
83002a54:	830077b7          	lui	a5,0x83007
83002a58:	8887a503          	lw	a0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83002a5c:	830025b7          	lui	a1,0x83002
83002a60:	6ac58593          	addi	a1,a1,1708 # 830026ac <__BSS_END__+0xffffbdd8>
83002a64:	00002317          	auipc	t1,0x2
83002a68:	a4830067          	jr	-1464(t1) # 830044ac <_fwalk>

83002a6c <__fp_unlock_all>:
83002a6c:	830077b7          	lui	a5,0x83007
83002a70:	8887a503          	lw	a0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83002a74:	830025b7          	lui	a1,0x83002
83002a78:	6c458593          	addi	a1,a1,1732 # 830026c4 <__BSS_END__+0xffffbdf0>
83002a7c:	00002317          	auipc	t1,0x2
83002a80:	a3030067          	jr	-1488(t1) # 830044ac <_fwalk>

83002a84 <__sflush_r>:
83002a84:	00c5d783          	lhu	a5,12(a1)
83002a88:	fe010113          	addi	sp,sp,-32
83002a8c:	00812c23          	sw	s0,24(sp)
83002a90:	01312623          	sw	s3,12(sp)
83002a94:	00112e23          	sw	ra,28(sp)
83002a98:	00912a23          	sw	s1,20(sp)
83002a9c:	01212823          	sw	s2,16(sp)
83002aa0:	0087f713          	andi	a4,a5,8
83002aa4:	00058413          	mv	s0,a1
83002aa8:	00050993          	mv	s3,a0
83002aac:	0e071a63          	bnez	a4,83002ba0 <__sflush_r+0x11c>
83002ab0:	0045a703          	lw	a4,4(a1)
83002ab4:	16e05863          	blez	a4,83002c24 <__sflush_r+0x1a0>
83002ab8:	02842703          	lw	a4,40(s0)
83002abc:	0c070263          	beqz	a4,83002b80 <__sflush_r+0xfc>
83002ac0:	000016b7          	lui	a3,0x1
83002ac4:	0009a483          	lw	s1,0(s3)
83002ac8:	00d7f6b3          	and	a3,a5,a3
83002acc:	0009a023          	sw	zero,0(s3)
83002ad0:	01c42583          	lw	a1,28(s0)
83002ad4:	14069e63          	bnez	a3,83002c30 <__sflush_r+0x1ac>
83002ad8:	00100693          	li	a3,1
83002adc:	00000613          	li	a2,0
83002ae0:	00098513          	mv	a0,s3
83002ae4:	000700e7          	jalr	a4
83002ae8:	fff00793          	li	a5,-1
83002aec:	16f50863          	beq	a0,a5,83002c5c <__sflush_r+0x1d8>
83002af0:	00c45783          	lhu	a5,12(s0)
83002af4:	02842703          	lw	a4,40(s0)
83002af8:	01c42583          	lw	a1,28(s0)
83002afc:	0047f793          	andi	a5,a5,4
83002b00:	00078e63          	beqz	a5,83002b1c <__sflush_r+0x98>
83002b04:	00442683          	lw	a3,4(s0)
83002b08:	03042783          	lw	a5,48(s0)
83002b0c:	40d50533          	sub	a0,a0,a3
83002b10:	00078663          	beqz	a5,83002b1c <__sflush_r+0x98>
83002b14:	03c42783          	lw	a5,60(s0)
83002b18:	40f50533          	sub	a0,a0,a5
83002b1c:	00050613          	mv	a2,a0
83002b20:	00000693          	li	a3,0
83002b24:	00098513          	mv	a0,s3
83002b28:	000700e7          	jalr	a4
83002b2c:	fff00793          	li	a5,-1
83002b30:	10f51463          	bne	a0,a5,83002c38 <__sflush_r+0x1b4>
83002b34:	0009a783          	lw	a5,0(s3)
83002b38:	00c41703          	lh	a4,12(s0)
83002b3c:	14078463          	beqz	a5,83002c84 <__sflush_r+0x200>
83002b40:	01d00693          	li	a3,29
83002b44:	00d78663          	beq	a5,a3,83002b50 <__sflush_r+0xcc>
83002b48:	01600693          	li	a3,22
83002b4c:	16d79263          	bne	a5,a3,83002cb0 <__sflush_r+0x22c>
83002b50:	01042783          	lw	a5,16(s0)
83002b54:	00042223          	sw	zero,4(s0)
83002b58:	00f42023          	sw	a5,0(s0)
83002b5c:	03042583          	lw	a1,48(s0)
83002b60:	0099a023          	sw	s1,0(s3)
83002b64:	00058e63          	beqz	a1,83002b80 <__sflush_r+0xfc>
83002b68:	04040793          	addi	a5,s0,64
83002b6c:	00f58863          	beq	a1,a5,83002b7c <__sflush_r+0xf8>
83002b70:	00098513          	mv	a0,s3
83002b74:	fffff097          	auipc	ra,0xfffff
83002b78:	1b4080e7          	jalr	436(ra) # 83001d28 <_free_r>
83002b7c:	02042823          	sw	zero,48(s0)
83002b80:	00000513          	li	a0,0
83002b84:	01c12083          	lw	ra,28(sp)
83002b88:	01812403          	lw	s0,24(sp)
83002b8c:	01412483          	lw	s1,20(sp)
83002b90:	01012903          	lw	s2,16(sp)
83002b94:	00c12983          	lw	s3,12(sp)
83002b98:	02010113          	addi	sp,sp,32
83002b9c:	00008067          	ret
83002ba0:	0105a903          	lw	s2,16(a1)
83002ba4:	fc090ee3          	beqz	s2,83002b80 <__sflush_r+0xfc>
83002ba8:	0005a483          	lw	s1,0(a1)
83002bac:	0037f793          	andi	a5,a5,3
83002bb0:	0125a023          	sw	s2,0(a1)
83002bb4:	412484b3          	sub	s1,s1,s2
83002bb8:	00000713          	li	a4,0
83002bbc:	00079463          	bnez	a5,83002bc4 <__sflush_r+0x140>
83002bc0:	0145a703          	lw	a4,20(a1)
83002bc4:	00e42423          	sw	a4,8(s0)
83002bc8:	00904863          	bgtz	s1,83002bd8 <__sflush_r+0x154>
83002bcc:	fb5ff06f          	j	83002b80 <__sflush_r+0xfc>
83002bd0:	00a90933          	add	s2,s2,a0
83002bd4:	fa9056e3          	blez	s1,83002b80 <__sflush_r+0xfc>
83002bd8:	02442783          	lw	a5,36(s0)
83002bdc:	01c42583          	lw	a1,28(s0)
83002be0:	00048693          	mv	a3,s1
83002be4:	00090613          	mv	a2,s2
83002be8:	00098513          	mv	a0,s3
83002bec:	000780e7          	jalr	a5
83002bf0:	40a484b3          	sub	s1,s1,a0
83002bf4:	fca04ee3          	bgtz	a0,83002bd0 <__sflush_r+0x14c>
83002bf8:	00c45783          	lhu	a5,12(s0)
83002bfc:	01c12083          	lw	ra,28(sp)
83002c00:	01412483          	lw	s1,20(sp)
83002c04:	0407e793          	ori	a5,a5,64
83002c08:	00f41623          	sh	a5,12(s0)
83002c0c:	01812403          	lw	s0,24(sp)
83002c10:	01012903          	lw	s2,16(sp)
83002c14:	00c12983          	lw	s3,12(sp)
83002c18:	fff00513          	li	a0,-1
83002c1c:	02010113          	addi	sp,sp,32
83002c20:	00008067          	ret
83002c24:	03c5a703          	lw	a4,60(a1)
83002c28:	e8e048e3          	bgtz	a4,83002ab8 <__sflush_r+0x34>
83002c2c:	f55ff06f          	j	83002b80 <__sflush_r+0xfc>
83002c30:	05042503          	lw	a0,80(s0)
83002c34:	ec9ff06f          	j	83002afc <__sflush_r+0x78>
83002c38:	01042703          	lw	a4,16(s0)
83002c3c:	00c45783          	lhu	a5,12(s0)
83002c40:	00042223          	sw	zero,4(s0)
83002c44:	00e42023          	sw	a4,0(s0)
83002c48:	00001737          	lui	a4,0x1
83002c4c:	00e7f7b3          	and	a5,a5,a4
83002c50:	f00786e3          	beqz	a5,83002b5c <__sflush_r+0xd8>
83002c54:	04a42823          	sw	a0,80(s0)
83002c58:	f05ff06f          	j	83002b5c <__sflush_r+0xd8>
83002c5c:	0009a783          	lw	a5,0(s3)
83002c60:	e80788e3          	beqz	a5,83002af0 <__sflush_r+0x6c>
83002c64:	01d00713          	li	a4,29
83002c68:	02e78e63          	beq	a5,a4,83002ca4 <__sflush_r+0x220>
83002c6c:	01600713          	li	a4,22
83002c70:	02e78a63          	beq	a5,a4,83002ca4 <__sflush_r+0x220>
83002c74:	00c45783          	lhu	a5,12(s0)
83002c78:	0407e793          	ori	a5,a5,64
83002c7c:	00f41623          	sh	a5,12(s0)
83002c80:	f05ff06f          	j	83002b84 <__sflush_r+0x100>
83002c84:	01042683          	lw	a3,16(s0)
83002c88:	00c75793          	srli	a5,a4,0xc
83002c8c:	00042223          	sw	zero,4(s0)
83002c90:	00d42023          	sw	a3,0(s0)
83002c94:	0017f793          	andi	a5,a5,1
83002c98:	ec0782e3          	beqz	a5,83002b5c <__sflush_r+0xd8>
83002c9c:	04a42823          	sw	a0,80(s0)
83002ca0:	ebdff06f          	j	83002b5c <__sflush_r+0xd8>
83002ca4:	0099a023          	sw	s1,0(s3)
83002ca8:	00000513          	li	a0,0
83002cac:	ed9ff06f          	j	83002b84 <__sflush_r+0x100>
83002cb0:	04076713          	ori	a4,a4,64
83002cb4:	00e41623          	sh	a4,12(s0)
83002cb8:	ecdff06f          	j	83002b84 <__sflush_r+0x100>

83002cbc <_fflush_r>:
83002cbc:	fe010113          	addi	sp,sp,-32
83002cc0:	00812c23          	sw	s0,24(sp)
83002cc4:	00112e23          	sw	ra,28(sp)
83002cc8:	00050413          	mv	s0,a0
83002ccc:	00050663          	beqz	a0,83002cd8 <_fflush_r+0x1c>
83002cd0:	03852783          	lw	a5,56(a0)
83002cd4:	02078063          	beqz	a5,83002cf4 <_fflush_r+0x38>
83002cd8:	00c59783          	lh	a5,12(a1)
83002cdc:	02079863          	bnez	a5,83002d0c <_fflush_r+0x50>
83002ce0:	01c12083          	lw	ra,28(sp)
83002ce4:	01812403          	lw	s0,24(sp)
83002ce8:	00000513          	li	a0,0
83002cec:	02010113          	addi	sp,sp,32
83002cf0:	00008067          	ret
83002cf4:	00b12623          	sw	a1,12(sp)
83002cf8:	00000097          	auipc	ra,0x0
83002cfc:	d38080e7          	jalr	-712(ra) # 83002a30 <__sinit>
83002d00:	00c12583          	lw	a1,12(sp)
83002d04:	00c59783          	lh	a5,12(a1)
83002d08:	fc078ce3          	beqz	a5,83002ce0 <_fflush_r+0x24>
83002d0c:	00040513          	mv	a0,s0
83002d10:	01812403          	lw	s0,24(sp)
83002d14:	01c12083          	lw	ra,28(sp)
83002d18:	02010113          	addi	sp,sp,32
83002d1c:	00000317          	auipc	t1,0x0
83002d20:	d6830067          	jr	-664(t1) # 83002a84 <__sflush_r>

83002d24 <fflush>:
83002d24:	06050c63          	beqz	a0,83002d9c <fflush+0x78>
83002d28:	fe010113          	addi	sp,sp,-32
83002d2c:	830077b7          	lui	a5,0x83007
83002d30:	00812c23          	sw	s0,24(sp)
83002d34:	00050413          	mv	s0,a0
83002d38:	8887a503          	lw	a0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83002d3c:	00112e23          	sw	ra,28(sp)
83002d40:	00050663          	beqz	a0,83002d4c <fflush+0x28>
83002d44:	03852783          	lw	a5,56(a0)
83002d48:	02078c63          	beqz	a5,83002d80 <fflush+0x5c>
83002d4c:	00c41783          	lh	a5,12(s0)
83002d50:	00079c63          	bnez	a5,83002d68 <fflush+0x44>
83002d54:	01c12083          	lw	ra,28(sp)
83002d58:	01812403          	lw	s0,24(sp)
83002d5c:	00000513          	li	a0,0
83002d60:	02010113          	addi	sp,sp,32
83002d64:	00008067          	ret
83002d68:	00040593          	mv	a1,s0
83002d6c:	01812403          	lw	s0,24(sp)
83002d70:	01c12083          	lw	ra,28(sp)
83002d74:	02010113          	addi	sp,sp,32
83002d78:	00000317          	auipc	t1,0x0
83002d7c:	d0c30067          	jr	-756(t1) # 83002a84 <__sflush_r>
83002d80:	00a12623          	sw	a0,12(sp)
83002d84:	00000097          	auipc	ra,0x0
83002d88:	cac080e7          	jalr	-852(ra) # 83002a30 <__sinit>
83002d8c:	00c41783          	lh	a5,12(s0)
83002d90:	00c12503          	lw	a0,12(sp)
83002d94:	fc0780e3          	beqz	a5,83002d54 <fflush+0x30>
83002d98:	fd1ff06f          	j	83002d68 <fflush+0x44>
83002d9c:	830077b7          	lui	a5,0x83007
83002da0:	8307a503          	lw	a0,-2000(a5) # 83006830 <__BSS_END__+0xffffff5c>
83002da4:	830035b7          	lui	a1,0x83003
83002da8:	cbc58593          	addi	a1,a1,-836 # 83002cbc <__BSS_END__+0xffffc3e8>
83002dac:	00001317          	auipc	t1,0x1
83002db0:	7a430067          	jr	1956(t1) # 83004550 <_fwalk_reent>

83002db4 <_putc_r>:
83002db4:	fe010113          	addi	sp,sp,-32
83002db8:	01212c23          	sw	s2,24(sp)
83002dbc:	00112e23          	sw	ra,28(sp)
83002dc0:	00050913          	mv	s2,a0
83002dc4:	00050663          	beqz	a0,83002dd0 <_putc_r+0x1c>
83002dc8:	03852783          	lw	a5,56(a0)
83002dcc:	04078663          	beqz	a5,83002e18 <_putc_r+0x64>
83002dd0:	00862783          	lw	a5,8(a2)
83002dd4:	fff78793          	addi	a5,a5,-1
83002dd8:	00f62423          	sw	a5,8(a2)
83002ddc:	0007dc63          	bgez	a5,83002df4 <_putc_r+0x40>
83002de0:	01862703          	lw	a4,24(a2)
83002de4:	04e7c863          	blt	a5,a4,83002e34 <_putc_r+0x80>
83002de8:	0ff5f793          	zext.b	a5,a1
83002dec:	00a00713          	li	a4,10
83002df0:	04e78263          	beq	a5,a4,83002e34 <_putc_r+0x80>
83002df4:	00062783          	lw	a5,0(a2)
83002df8:	0ff5f513          	zext.b	a0,a1
83002dfc:	00178713          	addi	a4,a5,1
83002e00:	00e62023          	sw	a4,0(a2)
83002e04:	00b78023          	sb	a1,0(a5)
83002e08:	01c12083          	lw	ra,28(sp)
83002e0c:	01812903          	lw	s2,24(sp)
83002e10:	02010113          	addi	sp,sp,32
83002e14:	00008067          	ret
83002e18:	00c12623          	sw	a2,12(sp)
83002e1c:	00b12423          	sw	a1,8(sp)
83002e20:	00000097          	auipc	ra,0x0
83002e24:	c10080e7          	jalr	-1008(ra) # 83002a30 <__sinit>
83002e28:	00c12603          	lw	a2,12(sp)
83002e2c:	00812583          	lw	a1,8(sp)
83002e30:	fa1ff06f          	j	83002dd0 <_putc_r+0x1c>
83002e34:	01c12083          	lw	ra,28(sp)
83002e38:	00090513          	mv	a0,s2
83002e3c:	01812903          	lw	s2,24(sp)
83002e40:	02010113          	addi	sp,sp,32
83002e44:	00001317          	auipc	t1,0x1
83002e48:	4fc30067          	jr	1276(t1) # 83004340 <__swbuf_r>

83002e4c <putc>:
83002e4c:	ff010113          	addi	sp,sp,-16
83002e50:	830077b7          	lui	a5,0x83007
83002e54:	01212023          	sw	s2,0(sp)
83002e58:	8887a903          	lw	s2,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83002e5c:	00812423          	sw	s0,8(sp)
83002e60:	00912223          	sw	s1,4(sp)
83002e64:	00112623          	sw	ra,12(sp)
83002e68:	00050493          	mv	s1,a0
83002e6c:	00058413          	mv	s0,a1
83002e70:	00090663          	beqz	s2,83002e7c <putc+0x30>
83002e74:	03892783          	lw	a5,56(s2)
83002e78:	04078a63          	beqz	a5,83002ecc <putc+0x80>
83002e7c:	00842783          	lw	a5,8(s0)
83002e80:	fff78793          	addi	a5,a5,-1
83002e84:	00f42423          	sw	a5,8(s0)
83002e88:	0007dc63          	bgez	a5,83002ea0 <putc+0x54>
83002e8c:	01842703          	lw	a4,24(s0)
83002e90:	04e7c663          	blt	a5,a4,83002edc <putc+0x90>
83002e94:	0ff4f793          	zext.b	a5,s1
83002e98:	00a00713          	li	a4,10
83002e9c:	04e78063          	beq	a5,a4,83002edc <putc+0x90>
83002ea0:	00042783          	lw	a5,0(s0)
83002ea4:	0ff4f513          	zext.b	a0,s1
83002ea8:	00178713          	addi	a4,a5,1
83002eac:	00e42023          	sw	a4,0(s0)
83002eb0:	00978023          	sb	s1,0(a5)
83002eb4:	00c12083          	lw	ra,12(sp)
83002eb8:	00812403          	lw	s0,8(sp)
83002ebc:	00412483          	lw	s1,4(sp)
83002ec0:	00012903          	lw	s2,0(sp)
83002ec4:	01010113          	addi	sp,sp,16
83002ec8:	00008067          	ret
83002ecc:	00090513          	mv	a0,s2
83002ed0:	00000097          	auipc	ra,0x0
83002ed4:	b60080e7          	jalr	-1184(ra) # 83002a30 <__sinit>
83002ed8:	fa5ff06f          	j	83002e7c <putc+0x30>
83002edc:	00040613          	mv	a2,s0
83002ee0:	00812403          	lw	s0,8(sp)
83002ee4:	00c12083          	lw	ra,12(sp)
83002ee8:	00048593          	mv	a1,s1
83002eec:	00090513          	mv	a0,s2
83002ef0:	00412483          	lw	s1,4(sp)
83002ef4:	00012903          	lw	s2,0(sp)
83002ef8:	01010113          	addi	sp,sp,16
83002efc:	00001317          	auipc	t1,0x1
83002f00:	44430067          	jr	1092(t1) # 83004340 <__swbuf_r>

83002f04 <memset>:
83002f04:	00357793          	andi	a5,a0,3
83002f08:	0c078863          	beqz	a5,83002fd8 <memset+0xd4>
83002f0c:	fff60713          	addi	a4,a2,-1
83002f10:	0ff5f813          	zext.b	a6,a1
83002f14:	00050793          	mv	a5,a0
83002f18:	fff00893          	li	a7,-1
83002f1c:	00061863          	bnez	a2,83002f2c <memset+0x28>
83002f20:	0c40006f          	j	83002fe4 <memset+0xe0>
83002f24:	fff70713          	addi	a4,a4,-1 # fff <main-0x82fff0b5>
83002f28:	0b170463          	beq	a4,a7,83002fd0 <memset+0xcc>
83002f2c:	00178793          	addi	a5,a5,1
83002f30:	0037f693          	andi	a3,a5,3
83002f34:	ff078fa3          	sb	a6,-1(a5)
83002f38:	fe0696e3          	bnez	a3,83002f24 <memset+0x20>
83002f3c:	00300693          	li	a3,3
83002f40:	06e6fc63          	bgeu	a3,a4,83002fb8 <memset+0xb4>
83002f44:	0ff5f693          	zext.b	a3,a1
83002f48:	00869613          	slli	a2,a3,0x8
83002f4c:	00d66633          	or	a2,a2,a3
83002f50:	01061693          	slli	a3,a2,0x10
83002f54:	00f00813          	li	a6,15
83002f58:	00c6e6b3          	or	a3,a3,a2
83002f5c:	08e87663          	bgeu	a6,a4,83002fe8 <memset+0xe4>
83002f60:	ff070613          	addi	a2,a4,-16
83002f64:	ff067613          	andi	a2,a2,-16
83002f68:	01060613          	addi	a2,a2,16
83002f6c:	00c78633          	add	a2,a5,a2
83002f70:	00d7a023          	sw	a3,0(a5)
83002f74:	00d7a223          	sw	a3,4(a5)
83002f78:	00d7a423          	sw	a3,8(a5)
83002f7c:	00d7a623          	sw	a3,12(a5)
83002f80:	01078793          	addi	a5,a5,16
83002f84:	fef616e3          	bne	a2,a5,83002f70 <memset+0x6c>
83002f88:	00f77613          	andi	a2,a4,15
83002f8c:	00c77813          	andi	a6,a4,12
83002f90:	00060713          	mv	a4,a2
83002f94:	02080263          	beqz	a6,83002fb8 <memset+0xb4>
83002f98:	ffc60713          	addi	a4,a2,-4
83002f9c:	ffc77713          	andi	a4,a4,-4
83002fa0:	00470713          	addi	a4,a4,4
83002fa4:	00e78733          	add	a4,a5,a4
83002fa8:	00478793          	addi	a5,a5,4
83002fac:	fed7ae23          	sw	a3,-4(a5)
83002fb0:	fef71ce3          	bne	a4,a5,83002fa8 <memset+0xa4>
83002fb4:	00367713          	andi	a4,a2,3
83002fb8:	0ff5f693          	zext.b	a3,a1
83002fbc:	00e78633          	add	a2,a5,a4
83002fc0:	00070a63          	beqz	a4,83002fd4 <memset+0xd0>
83002fc4:	00178793          	addi	a5,a5,1
83002fc8:	fed78fa3          	sb	a3,-1(a5)
83002fcc:	fef61ce3          	bne	a2,a5,83002fc4 <memset+0xc0>
83002fd0:	00008067          	ret
83002fd4:	00008067          	ret
83002fd8:	00050793          	mv	a5,a0
83002fdc:	00060713          	mv	a4,a2
83002fe0:	f5dff06f          	j	83002f3c <memset+0x38>
83002fe4:	00008067          	ret
83002fe8:	00070613          	mv	a2,a4
83002fec:	fadff06f          	j	83002f98 <memset+0x94>

83002ff0 <memcpy>:
83002ff0:	00f00793          	li	a5,15
83002ff4:	0ac7f863          	bgeu	a5,a2,830030a4 <memcpy+0xb4>
83002ff8:	00b567b3          	or	a5,a0,a1
83002ffc:	0037f793          	andi	a5,a5,3
83003000:	0c079863          	bnez	a5,830030d0 <memcpy+0xe0>
83003004:	ff060e13          	addi	t3,a2,-16
83003008:	ff0e7e13          	andi	t3,t3,-16
8300300c:	010e0e13          	addi	t3,t3,16
83003010:	01c50333          	add	t1,a0,t3
83003014:	00058713          	mv	a4,a1
83003018:	00050793          	mv	a5,a0
8300301c:	00472683          	lw	a3,4(a4)
83003020:	00072883          	lw	a7,0(a4)
83003024:	00872803          	lw	a6,8(a4)
83003028:	00d7a223          	sw	a3,4(a5)
8300302c:	00c72683          	lw	a3,12(a4)
83003030:	0117a023          	sw	a7,0(a5)
83003034:	0107a423          	sw	a6,8(a5)
83003038:	00d7a623          	sw	a3,12(a5)
8300303c:	01078793          	addi	a5,a5,16
83003040:	01070713          	addi	a4,a4,16
83003044:	fcf31ce3          	bne	t1,a5,8300301c <memcpy+0x2c>
83003048:	00c67713          	andi	a4,a2,12
8300304c:	01c585b3          	add	a1,a1,t3
83003050:	00f67813          	andi	a6,a2,15
83003054:	08070463          	beqz	a4,830030dc <memcpy+0xec>
83003058:	00058713          	mv	a4,a1
8300305c:	00078893          	mv	a7,a5
83003060:	00300e13          	li	t3,3
83003064:	00072303          	lw	t1,0(a4)
83003068:	00470713          	addi	a4,a4,4
8300306c:	40e806b3          	sub	a3,a6,a4
83003070:	0068a023          	sw	t1,0(a7)
83003074:	00d586b3          	add	a3,a1,a3
83003078:	00488893          	addi	a7,a7,4
8300307c:	fede64e3          	bltu	t3,a3,83003064 <memcpy+0x74>
83003080:	ffc80713          	addi	a4,a6,-4
83003084:	ffc77713          	andi	a4,a4,-4
83003088:	00470713          	addi	a4,a4,4
8300308c:	00367613          	andi	a2,a2,3
83003090:	00e787b3          	add	a5,a5,a4
83003094:	00e585b3          	add	a1,a1,a4
83003098:	fff60693          	addi	a3,a2,-1
8300309c:	00061a63          	bnez	a2,830030b0 <memcpy+0xc0>
830030a0:	00008067          	ret
830030a4:	00050793          	mv	a5,a0
830030a8:	fff60693          	addi	a3,a2,-1
830030ac:	fe060ae3          	beqz	a2,830030a0 <memcpy+0xb0>
830030b0:	00168693          	addi	a3,a3,1 # 1001 <main-0x82fff0b3>
830030b4:	00d786b3          	add	a3,a5,a3
830030b8:	0005c703          	lbu	a4,0(a1)
830030bc:	00178793          	addi	a5,a5,1
830030c0:	00158593          	addi	a1,a1,1
830030c4:	fee78fa3          	sb	a4,-1(a5)
830030c8:	fef698e3          	bne	a3,a5,830030b8 <memcpy+0xc8>
830030cc:	00008067          	ret
830030d0:	fff60693          	addi	a3,a2,-1
830030d4:	00050793          	mv	a5,a0
830030d8:	fd9ff06f          	j	830030b0 <memcpy+0xc0>
830030dc:	00080613          	mv	a2,a6
830030e0:	fc9ff06f          	j	830030a8 <memcpy+0xb8>

830030e4 <memmove>:
830030e4:	02a5f663          	bgeu	a1,a0,83003110 <memmove+0x2c>
830030e8:	00c587b3          	add	a5,a1,a2
830030ec:	02f57263          	bgeu	a0,a5,83003110 <memmove+0x2c>
830030f0:	00c50733          	add	a4,a0,a2
830030f4:	0e060a63          	beqz	a2,830031e8 <memmove+0x104>
830030f8:	fff7c683          	lbu	a3,-1(a5)
830030fc:	fff78793          	addi	a5,a5,-1
83003100:	fff70713          	addi	a4,a4,-1
83003104:	00d70023          	sb	a3,0(a4)
83003108:	fef598e3          	bne	a1,a5,830030f8 <memmove+0x14>
8300310c:	00008067          	ret
83003110:	00f00793          	li	a5,15
83003114:	02c7e863          	bltu	a5,a2,83003144 <memmove+0x60>
83003118:	00050793          	mv	a5,a0
8300311c:	fff60693          	addi	a3,a2,-1
83003120:	0c060c63          	beqz	a2,830031f8 <memmove+0x114>
83003124:	00168693          	addi	a3,a3,1
83003128:	00d786b3          	add	a3,a5,a3
8300312c:	0005c703          	lbu	a4,0(a1)
83003130:	00178793          	addi	a5,a5,1
83003134:	00158593          	addi	a1,a1,1
83003138:	fee78fa3          	sb	a4,-1(a5)
8300313c:	fed798e3          	bne	a5,a3,8300312c <memmove+0x48>
83003140:	00008067          	ret
83003144:	00b567b3          	or	a5,a0,a1
83003148:	0037f793          	andi	a5,a5,3
8300314c:	0a079063          	bnez	a5,830031ec <memmove+0x108>
83003150:	ff060893          	addi	a7,a2,-16
83003154:	ff08f893          	andi	a7,a7,-16
83003158:	01088893          	addi	a7,a7,16
8300315c:	01150833          	add	a6,a0,a7
83003160:	00058713          	mv	a4,a1
83003164:	00050793          	mv	a5,a0
83003168:	00072683          	lw	a3,0(a4)
8300316c:	01070713          	addi	a4,a4,16
83003170:	01078793          	addi	a5,a5,16
83003174:	fed7a823          	sw	a3,-16(a5)
83003178:	ff472683          	lw	a3,-12(a4)
8300317c:	fed7aa23          	sw	a3,-12(a5)
83003180:	ff872683          	lw	a3,-8(a4)
83003184:	fed7ac23          	sw	a3,-8(a5)
83003188:	ffc72683          	lw	a3,-4(a4)
8300318c:	fed7ae23          	sw	a3,-4(a5)
83003190:	fcf81ce3          	bne	a6,a5,83003168 <memmove+0x84>
83003194:	00c67713          	andi	a4,a2,12
83003198:	011585b3          	add	a1,a1,a7
8300319c:	00f67813          	andi	a6,a2,15
830031a0:	04070e63          	beqz	a4,830031fc <memmove+0x118>
830031a4:	00058713          	mv	a4,a1
830031a8:	00078893          	mv	a7,a5
830031ac:	00300e13          	li	t3,3
830031b0:	00072303          	lw	t1,0(a4)
830031b4:	00470713          	addi	a4,a4,4
830031b8:	40e806b3          	sub	a3,a6,a4
830031bc:	0068a023          	sw	t1,0(a7)
830031c0:	00d586b3          	add	a3,a1,a3
830031c4:	00488893          	addi	a7,a7,4
830031c8:	fede64e3          	bltu	t3,a3,830031b0 <memmove+0xcc>
830031cc:	ffc80713          	addi	a4,a6,-4
830031d0:	ffc77713          	andi	a4,a4,-4
830031d4:	00470713          	addi	a4,a4,4
830031d8:	00367613          	andi	a2,a2,3
830031dc:	00e787b3          	add	a5,a5,a4
830031e0:	00e585b3          	add	a1,a1,a4
830031e4:	f39ff06f          	j	8300311c <memmove+0x38>
830031e8:	00008067          	ret
830031ec:	fff60693          	addi	a3,a2,-1
830031f0:	00050793          	mv	a5,a0
830031f4:	f31ff06f          	j	83003124 <memmove+0x40>
830031f8:	00008067          	ret
830031fc:	00080613          	mv	a2,a6
83003200:	f1dff06f          	j	8300311c <memmove+0x38>

83003204 <_sbrk_r>:
83003204:	ff010113          	addi	sp,sp,-16
83003208:	00812423          	sw	s0,8(sp)
8300320c:	00912223          	sw	s1,4(sp)
83003210:	00050413          	mv	s0,a0
83003214:	830074b7          	lui	s1,0x83007
83003218:	00058513          	mv	a0,a1
8300321c:	00112623          	sw	ra,12(sp)
83003220:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
83003224:	00002097          	auipc	ra,0x2
83003228:	81c080e7          	jalr	-2020(ra) # 83004a40 <_sbrk>
8300322c:	fff00793          	li	a5,-1
83003230:	00f50c63          	beq	a0,a5,83003248 <_sbrk_r+0x44>
83003234:	00c12083          	lw	ra,12(sp)
83003238:	00812403          	lw	s0,8(sp)
8300323c:	00412483          	lw	s1,4(sp)
83003240:	01010113          	addi	sp,sp,16
83003244:	00008067          	ret
83003248:	8984a783          	lw	a5,-1896(s1)
8300324c:	fe0784e3          	beqz	a5,83003234 <_sbrk_r+0x30>
83003250:	00c12083          	lw	ra,12(sp)
83003254:	00f42023          	sw	a5,0(s0)
83003258:	00812403          	lw	s0,8(sp)
8300325c:	00412483          	lw	s1,4(sp)
83003260:	01010113          	addi	sp,sp,16
83003264:	00008067          	ret

83003268 <_malloc_r>:
83003268:	fd010113          	addi	sp,sp,-48
8300326c:	01312e23          	sw	s3,28(sp)
83003270:	02112623          	sw	ra,44(sp)
83003274:	02812423          	sw	s0,40(sp)
83003278:	02912223          	sw	s1,36(sp)
8300327c:	03212023          	sw	s2,32(sp)
83003280:	01412c23          	sw	s4,24(sp)
83003284:	01512a23          	sw	s5,20(sp)
83003288:	01612823          	sw	s6,16(sp)
8300328c:	01712623          	sw	s7,12(sp)
83003290:	01812423          	sw	s8,8(sp)
83003294:	01912223          	sw	s9,4(sp)
83003298:	00b58793          	addi	a5,a1,11
8300329c:	01600713          	li	a4,22
830032a0:	00050993          	mv	s3,a0
830032a4:	06f76a63          	bltu	a4,a5,83003318 <_malloc_r+0xb0>
830032a8:	01000793          	li	a5,16
830032ac:	1eb7ee63          	bltu	a5,a1,830034a8 <_malloc_r+0x240>
830032b0:	00001097          	auipc	ra,0x1
830032b4:	d30080e7          	jalr	-720(ra) # 83003fe0 <__malloc_lock>
830032b8:	01000493          	li	s1,16
830032bc:	01800793          	li	a5,24
830032c0:	00200613          	li	a2,2
830032c4:	83006937          	lui	s2,0x83006
830032c8:	42890913          	addi	s2,s2,1064 # 83006428 <__BSS_END__+0xfffffb54>
830032cc:	00f907b3          	add	a5,s2,a5
830032d0:	0047a403          	lw	s0,4(a5)
830032d4:	ff878713          	addi	a4,a5,-8
830032d8:	22e40063          	beq	s0,a4,830034f8 <_malloc_r+0x290>
830032dc:	00442783          	lw	a5,4(s0)
830032e0:	00c42683          	lw	a3,12(s0)
830032e4:	00842603          	lw	a2,8(s0)
830032e8:	ffc7f793          	andi	a5,a5,-4
830032ec:	00f407b3          	add	a5,s0,a5
830032f0:	0047a703          	lw	a4,4(a5)
830032f4:	00d62623          	sw	a3,12(a2)
830032f8:	00c6a423          	sw	a2,8(a3)
830032fc:	00176713          	ori	a4,a4,1
83003300:	00098513          	mv	a0,s3
83003304:	00e7a223          	sw	a4,4(a5)
83003308:	00001097          	auipc	ra,0x1
8300330c:	cdc080e7          	jalr	-804(ra) # 83003fe4 <__malloc_unlock>
83003310:	00840513          	addi	a0,s0,8
83003314:	1a00006f          	j	830034b4 <_malloc_r+0x24c>
83003318:	ff87f493          	andi	s1,a5,-8
8300331c:	1807c663          	bltz	a5,830034a8 <_malloc_r+0x240>
83003320:	18b4e463          	bltu	s1,a1,830034a8 <_malloc_r+0x240>
83003324:	00001097          	auipc	ra,0x1
83003328:	cbc080e7          	jalr	-836(ra) # 83003fe0 <__malloc_lock>
8300332c:	1f700793          	li	a5,503
83003330:	4897f063          	bgeu	a5,s1,830037b0 <_malloc_r+0x548>
83003334:	0094d793          	srli	a5,s1,0x9
83003338:	1a078863          	beqz	a5,830034e8 <_malloc_r+0x280>
8300333c:	00400713          	li	a4,4
83003340:	3ef76463          	bltu	a4,a5,83003728 <_malloc_r+0x4c0>
83003344:	0064d793          	srli	a5,s1,0x6
83003348:	03978613          	addi	a2,a5,57
8300334c:	03878513          	addi	a0,a5,56
83003350:	00361693          	slli	a3,a2,0x3
83003354:	83006937          	lui	s2,0x83006
83003358:	42890913          	addi	s2,s2,1064 # 83006428 <__BSS_END__+0xfffffb54>
8300335c:	00d906b3          	add	a3,s2,a3
83003360:	0046a403          	lw	s0,4(a3)
83003364:	ff868693          	addi	a3,a3,-8
83003368:	02868663          	beq	a3,s0,83003394 <_malloc_r+0x12c>
8300336c:	00f00593          	li	a1,15
83003370:	0100006f          	j	83003380 <_malloc_r+0x118>
83003374:	34075463          	bgez	a4,830036bc <_malloc_r+0x454>
83003378:	00c42403          	lw	s0,12(s0)
8300337c:	00868c63          	beq	a3,s0,83003394 <_malloc_r+0x12c>
83003380:	00442783          	lw	a5,4(s0)
83003384:	ffc7f793          	andi	a5,a5,-4
83003388:	40978733          	sub	a4,a5,s1
8300338c:	fee5d4e3          	bge	a1,a4,83003374 <_malloc_r+0x10c>
83003390:	00050613          	mv	a2,a0
83003394:	01092403          	lw	s0,16(s2)
83003398:	00890893          	addi	a7,s2,8
8300339c:	17140a63          	beq	s0,a7,83003510 <_malloc_r+0x2a8>
830033a0:	00442583          	lw	a1,4(s0)
830033a4:	00f00713          	li	a4,15
830033a8:	ffc5f593          	andi	a1,a1,-4
830033ac:	409587b3          	sub	a5,a1,s1
830033b0:	42f74863          	blt	a4,a5,830037e0 <_malloc_r+0x578>
830033b4:	01192a23          	sw	a7,20(s2)
830033b8:	01192823          	sw	a7,16(s2)
830033bc:	4007d063          	bgez	a5,830037bc <_malloc_r+0x554>
830033c0:	1ff00793          	li	a5,511
830033c4:	30b7e263          	bltu	a5,a1,830036c8 <_malloc_r+0x460>
830033c8:	ff85f793          	andi	a5,a1,-8
830033cc:	00878793          	addi	a5,a5,8
830033d0:	00492503          	lw	a0,4(s2)
830033d4:	00f907b3          	add	a5,s2,a5
830033d8:	0007a683          	lw	a3,0(a5)
830033dc:	0055d593          	srli	a1,a1,0x5
830033e0:	00100713          	li	a4,1
830033e4:	00b71733          	sll	a4,a4,a1
830033e8:	00a76733          	or	a4,a4,a0
830033ec:	ff878593          	addi	a1,a5,-8
830033f0:	00b42623          	sw	a1,12(s0)
830033f4:	00d42423          	sw	a3,8(s0)
830033f8:	00e92223          	sw	a4,4(s2)
830033fc:	0087a023          	sw	s0,0(a5)
83003400:	0086a623          	sw	s0,12(a3)
83003404:	40265793          	srai	a5,a2,0x2
83003408:	00100593          	li	a1,1
8300340c:	00f595b3          	sll	a1,a1,a5
83003410:	10b76a63          	bltu	a4,a1,83003524 <_malloc_r+0x2bc>
83003414:	00e5f7b3          	and	a5,a1,a4
83003418:	02079463          	bnez	a5,83003440 <_malloc_r+0x1d8>
8300341c:	00159593          	slli	a1,a1,0x1
83003420:	ffc67613          	andi	a2,a2,-4
83003424:	00e5f7b3          	and	a5,a1,a4
83003428:	00460613          	addi	a2,a2,4
8300342c:	00079a63          	bnez	a5,83003440 <_malloc_r+0x1d8>
83003430:	00159593          	slli	a1,a1,0x1
83003434:	00e5f7b3          	and	a5,a1,a4
83003438:	00460613          	addi	a2,a2,4
8300343c:	fe078ae3          	beqz	a5,83003430 <_malloc_r+0x1c8>
83003440:	00f00813          	li	a6,15
83003444:	00361313          	slli	t1,a2,0x3
83003448:	00690333          	add	t1,s2,t1
8300344c:	00030513          	mv	a0,t1
83003450:	00c52783          	lw	a5,12(a0)
83003454:	00060e13          	mv	t3,a2
83003458:	2ef50a63          	beq	a0,a5,8300374c <_malloc_r+0x4e4>
8300345c:	0047a703          	lw	a4,4(a5)
83003460:	00078413          	mv	s0,a5
83003464:	00c7a783          	lw	a5,12(a5)
83003468:	ffc77713          	andi	a4,a4,-4
8300346c:	409706b3          	sub	a3,a4,s1
83003470:	2ed84a63          	blt	a6,a3,83003764 <_malloc_r+0x4fc>
83003474:	fe06c2e3          	bltz	a3,83003458 <_malloc_r+0x1f0>
83003478:	00e40733          	add	a4,s0,a4
8300347c:	00472683          	lw	a3,4(a4)
83003480:	00842603          	lw	a2,8(s0)
83003484:	00098513          	mv	a0,s3
83003488:	0016e693          	ori	a3,a3,1
8300348c:	00d72223          	sw	a3,4(a4)
83003490:	00f62623          	sw	a5,12(a2)
83003494:	00c7a423          	sw	a2,8(a5)
83003498:	00001097          	auipc	ra,0x1
8300349c:	b4c080e7          	jalr	-1204(ra) # 83003fe4 <__malloc_unlock>
830034a0:	00840513          	addi	a0,s0,8
830034a4:	0100006f          	j	830034b4 <_malloc_r+0x24c>
830034a8:	00c00793          	li	a5,12
830034ac:	00f9a023          	sw	a5,0(s3)
830034b0:	00000513          	li	a0,0
830034b4:	02c12083          	lw	ra,44(sp)
830034b8:	02812403          	lw	s0,40(sp)
830034bc:	02412483          	lw	s1,36(sp)
830034c0:	02012903          	lw	s2,32(sp)
830034c4:	01c12983          	lw	s3,28(sp)
830034c8:	01812a03          	lw	s4,24(sp)
830034cc:	01412a83          	lw	s5,20(sp)
830034d0:	01012b03          	lw	s6,16(sp)
830034d4:	00c12b83          	lw	s7,12(sp)
830034d8:	00812c03          	lw	s8,8(sp)
830034dc:	00412c83          	lw	s9,4(sp)
830034e0:	03010113          	addi	sp,sp,48
830034e4:	00008067          	ret
830034e8:	20000693          	li	a3,512
830034ec:	04000613          	li	a2,64
830034f0:	03f00513          	li	a0,63
830034f4:	e61ff06f          	j	83003354 <_malloc_r+0xec>
830034f8:	00c7a403          	lw	s0,12(a5)
830034fc:	00260613          	addi	a2,a2,2
83003500:	dc879ee3          	bne	a5,s0,830032dc <_malloc_r+0x74>
83003504:	01092403          	lw	s0,16(s2)
83003508:	00890893          	addi	a7,s2,8
8300350c:	e9141ae3          	bne	s0,a7,830033a0 <_malloc_r+0x138>
83003510:	00492703          	lw	a4,4(s2)
83003514:	40265793          	srai	a5,a2,0x2
83003518:	00100593          	li	a1,1
8300351c:	00f595b3          	sll	a1,a1,a5
83003520:	eeb77ae3          	bgeu	a4,a1,83003414 <_malloc_r+0x1ac>
83003524:	00892403          	lw	s0,8(s2)
83003528:	00442b03          	lw	s6,4(s0)
8300352c:	ffcb7b13          	andi	s6,s6,-4
83003530:	009b6863          	bltu	s6,s1,83003540 <_malloc_r+0x2d8>
83003534:	409b07b3          	sub	a5,s6,s1
83003538:	00f00713          	li	a4,15
8300353c:	14f74a63          	blt	a4,a5,83003690 <_malloc_r+0x428>
83003540:	830077b7          	lui	a5,0x83007
83003544:	83007cb7          	lui	s9,0x83007
83003548:	8a47aa83          	lw	s5,-1884(a5) # 830068a4 <__BSS_END__+0xffffffd0>
8300354c:	88cca703          	lw	a4,-1908(s9) # 8300688c <__BSS_END__+0xffffffb8>
83003550:	fff00793          	li	a5,-1
83003554:	01640a33          	add	s4,s0,s6
83003558:	01548ab3          	add	s5,s1,s5
8300355c:	36f70863          	beq	a4,a5,830038cc <_malloc_r+0x664>
83003560:	000017b7          	lui	a5,0x1
83003564:	00f78793          	addi	a5,a5,15 # 100f <main-0x82fff0a5>
83003568:	00fa8ab3          	add	s5,s5,a5
8300356c:	fffff7b7          	lui	a5,0xfffff
83003570:	00fafab3          	and	s5,s5,a5
83003574:	000a8593          	mv	a1,s5
83003578:	00098513          	mv	a0,s3
8300357c:	00000097          	auipc	ra,0x0
83003580:	c88080e7          	jalr	-888(ra) # 83003204 <_sbrk_r>
83003584:	fff00793          	li	a5,-1
83003588:	00050b93          	mv	s7,a0
8300358c:	2af50663          	beq	a0,a5,83003838 <_malloc_r+0x5d0>
83003590:	2b456263          	bltu	a0,s4,83003834 <_malloc_r+0x5cc>
83003594:	83007c37          	lui	s8,0x83007
83003598:	8acc0c13          	addi	s8,s8,-1876 # 830068ac <__BSS_END__+0xffffffd8>
8300359c:	000c2583          	lw	a1,0(s8)
830035a0:	00ba85b3          	add	a1,s5,a1
830035a4:	00bc2023          	sw	a1,0(s8)
830035a8:	00058793          	mv	a5,a1
830035ac:	3caa0263          	beq	s4,a0,83003970 <_malloc_r+0x708>
830035b0:	88cca683          	lw	a3,-1908(s9)
830035b4:	fff00713          	li	a4,-1
830035b8:	3ce68a63          	beq	a3,a4,8300398c <_malloc_r+0x724>
830035bc:	414b8a33          	sub	s4,s7,s4
830035c0:	00fa07b3          	add	a5,s4,a5
830035c4:	00fc2023          	sw	a5,0(s8)
830035c8:	007bfc93          	andi	s9,s7,7
830035cc:	320c8263          	beqz	s9,830038f0 <_malloc_r+0x688>
830035d0:	000017b7          	lui	a5,0x1
830035d4:	419b8bb3          	sub	s7,s7,s9
830035d8:	00878593          	addi	a1,a5,8 # 1008 <main-0x82fff0ac>
830035dc:	008b8b93          	addi	s7,s7,8
830035e0:	419585b3          	sub	a1,a1,s9
830035e4:	015b8ab3          	add	s5,s7,s5
830035e8:	fff78793          	addi	a5,a5,-1
830035ec:	415585b3          	sub	a1,a1,s5
830035f0:	00f5fa33          	and	s4,a1,a5
830035f4:	000a0593          	mv	a1,s4
830035f8:	00098513          	mv	a0,s3
830035fc:	00000097          	auipc	ra,0x0
83003600:	c08080e7          	jalr	-1016(ra) # 83003204 <_sbrk_r>
83003604:	fff00793          	li	a5,-1
83003608:	3cf50c63          	beq	a0,a5,830039e0 <_malloc_r+0x778>
8300360c:	41750533          	sub	a0,a0,s7
83003610:	01450ab3          	add	s5,a0,s4
83003614:	000c2783          	lw	a5,0(s8)
83003618:	01792423          	sw	s7,8(s2)
8300361c:	001aea93          	ori	s5,s5,1
83003620:	00fa05b3          	add	a1,s4,a5
83003624:	00bc2023          	sw	a1,0(s8)
83003628:	015ba223          	sw	s5,4(s7)
8300362c:	37240463          	beq	s0,s2,83003994 <_malloc_r+0x72c>
83003630:	00f00693          	li	a3,15
83003634:	3766f463          	bgeu	a3,s6,8300399c <_malloc_r+0x734>
83003638:	00442703          	lw	a4,4(s0)
8300363c:	ff4b0793          	addi	a5,s6,-12
83003640:	ff87f793          	andi	a5,a5,-8
83003644:	00177713          	andi	a4,a4,1
83003648:	00f76733          	or	a4,a4,a5
8300364c:	00e42223          	sw	a4,4(s0)
83003650:	00500613          	li	a2,5
83003654:	00f40733          	add	a4,s0,a5
83003658:	00c72223          	sw	a2,4(a4)
8300365c:	00c72423          	sw	a2,8(a4)
83003660:	38f6ea63          	bltu	a3,a5,830039f4 <_malloc_r+0x78c>
83003664:	004baa83          	lw	s5,4(s7)
83003668:	000b8413          	mv	s0,s7
8300366c:	830077b7          	lui	a5,0x83007
83003670:	8a07a703          	lw	a4,-1888(a5) # 830068a0 <__BSS_END__+0xffffffcc>
83003674:	00b77463          	bgeu	a4,a1,8300367c <_malloc_r+0x414>
83003678:	8ab7a023          	sw	a1,-1888(a5)
8300367c:	830077b7          	lui	a5,0x83007
83003680:	89c7a703          	lw	a4,-1892(a5) # 8300689c <__BSS_END__+0xffffffc8>
83003684:	1ab77e63          	bgeu	a4,a1,83003840 <_malloc_r+0x5d8>
83003688:	88b7ae23          	sw	a1,-1892(a5)
8300368c:	1b40006f          	j	83003840 <_malloc_r+0x5d8>
83003690:	0014e713          	ori	a4,s1,1
83003694:	00e42223          	sw	a4,4(s0)
83003698:	009404b3          	add	s1,s0,s1
8300369c:	00992423          	sw	s1,8(s2)
830036a0:	0017e793          	ori	a5,a5,1
830036a4:	00098513          	mv	a0,s3
830036a8:	00f4a223          	sw	a5,4(s1)
830036ac:	00001097          	auipc	ra,0x1
830036b0:	938080e7          	jalr	-1736(ra) # 83003fe4 <__malloc_unlock>
830036b4:	00840513          	addi	a0,s0,8
830036b8:	dfdff06f          	j	830034b4 <_malloc_r+0x24c>
830036bc:	00c42683          	lw	a3,12(s0)
830036c0:	00842603          	lw	a2,8(s0)
830036c4:	c29ff06f          	j	830032ec <_malloc_r+0x84>
830036c8:	0095d793          	srli	a5,a1,0x9
830036cc:	00400713          	li	a4,4
830036d0:	14f77863          	bgeu	a4,a5,83003820 <_malloc_r+0x5b8>
830036d4:	01400713          	li	a4,20
830036d8:	24f76463          	bltu	a4,a5,83003920 <_malloc_r+0x6b8>
830036dc:	05c78693          	addi	a3,a5,92
830036e0:	05b78713          	addi	a4,a5,91
830036e4:	00369693          	slli	a3,a3,0x3
830036e8:	00d906b3          	add	a3,s2,a3
830036ec:	0006a783          	lw	a5,0(a3)
830036f0:	ff868693          	addi	a3,a3,-8
830036f4:	1ef68063          	beq	a3,a5,830038d4 <_malloc_r+0x66c>
830036f8:	0047a703          	lw	a4,4(a5)
830036fc:	ffc77713          	andi	a4,a4,-4
83003700:	00e5f663          	bgeu	a1,a4,8300370c <_malloc_r+0x4a4>
83003704:	0087a783          	lw	a5,8(a5)
83003708:	fef698e3          	bne	a3,a5,830036f8 <_malloc_r+0x490>
8300370c:	00c7a683          	lw	a3,12(a5)
83003710:	00492703          	lw	a4,4(s2)
83003714:	00d42623          	sw	a3,12(s0)
83003718:	00f42423          	sw	a5,8(s0)
8300371c:	0086a423          	sw	s0,8(a3)
83003720:	0087a623          	sw	s0,12(a5)
83003724:	ce1ff06f          	j	83003404 <_malloc_r+0x19c>
83003728:	01400713          	li	a4,20
8300372c:	12f77e63          	bgeu	a4,a5,83003868 <_malloc_r+0x600>
83003730:	05400713          	li	a4,84
83003734:	20f76463          	bltu	a4,a5,8300393c <_malloc_r+0x6d4>
83003738:	00c4d793          	srli	a5,s1,0xc
8300373c:	06f78613          	addi	a2,a5,111
83003740:	06e78513          	addi	a0,a5,110
83003744:	00361693          	slli	a3,a2,0x3
83003748:	c0dff06f          	j	83003354 <_malloc_r+0xec>
8300374c:	001e0e13          	addi	t3,t3,1
83003750:	003e7793          	andi	a5,t3,3
83003754:	00850513          	addi	a0,a0,8
83003758:	12078663          	beqz	a5,83003884 <_malloc_r+0x61c>
8300375c:	00c52783          	lw	a5,12(a0)
83003760:	cf9ff06f          	j	83003458 <_malloc_r+0x1f0>
83003764:	00842603          	lw	a2,8(s0)
83003768:	0014e593          	ori	a1,s1,1
8300376c:	00b42223          	sw	a1,4(s0)
83003770:	00f62623          	sw	a5,12(a2)
83003774:	00c7a423          	sw	a2,8(a5)
83003778:	009404b3          	add	s1,s0,s1
8300377c:	00992a23          	sw	s1,20(s2)
83003780:	00992823          	sw	s1,16(s2)
83003784:	0016e793          	ori	a5,a3,1
83003788:	0114a623          	sw	a7,12(s1)
8300378c:	0114a423          	sw	a7,8(s1)
83003790:	00f4a223          	sw	a5,4(s1)
83003794:	00e40733          	add	a4,s0,a4
83003798:	00098513          	mv	a0,s3
8300379c:	00d72023          	sw	a3,0(a4)
830037a0:	00001097          	auipc	ra,0x1
830037a4:	844080e7          	jalr	-1980(ra) # 83003fe4 <__malloc_unlock>
830037a8:	00840513          	addi	a0,s0,8
830037ac:	d09ff06f          	j	830034b4 <_malloc_r+0x24c>
830037b0:	0034d613          	srli	a2,s1,0x3
830037b4:	00848793          	addi	a5,s1,8
830037b8:	b0dff06f          	j	830032c4 <_malloc_r+0x5c>
830037bc:	00b405b3          	add	a1,s0,a1
830037c0:	0045a783          	lw	a5,4(a1)
830037c4:	00098513          	mv	a0,s3
830037c8:	0017e793          	ori	a5,a5,1
830037cc:	00f5a223          	sw	a5,4(a1)
830037d0:	00001097          	auipc	ra,0x1
830037d4:	814080e7          	jalr	-2028(ra) # 83003fe4 <__malloc_unlock>
830037d8:	00840513          	addi	a0,s0,8
830037dc:	cd9ff06f          	j	830034b4 <_malloc_r+0x24c>
830037e0:	0014e713          	ori	a4,s1,1
830037e4:	00e42223          	sw	a4,4(s0)
830037e8:	009404b3          	add	s1,s0,s1
830037ec:	00992a23          	sw	s1,20(s2)
830037f0:	00992823          	sw	s1,16(s2)
830037f4:	0017e713          	ori	a4,a5,1
830037f8:	0114a623          	sw	a7,12(s1)
830037fc:	0114a423          	sw	a7,8(s1)
83003800:	00e4a223          	sw	a4,4(s1)
83003804:	00b405b3          	add	a1,s0,a1
83003808:	00098513          	mv	a0,s3
8300380c:	00f5a023          	sw	a5,0(a1)
83003810:	00000097          	auipc	ra,0x0
83003814:	7d4080e7          	jalr	2004(ra) # 83003fe4 <__malloc_unlock>
83003818:	00840513          	addi	a0,s0,8
8300381c:	c99ff06f          	j	830034b4 <_malloc_r+0x24c>
83003820:	0065d793          	srli	a5,a1,0x6
83003824:	03978693          	addi	a3,a5,57
83003828:	03878713          	addi	a4,a5,56
8300382c:	00369693          	slli	a3,a3,0x3
83003830:	eb9ff06f          	j	830036e8 <_malloc_r+0x480>
83003834:	13240263          	beq	s0,s2,83003958 <_malloc_r+0x6f0>
83003838:	00892403          	lw	s0,8(s2)
8300383c:	00442a83          	lw	s5,4(s0)
83003840:	ffcafa93          	andi	s5,s5,-4
83003844:	409a87b3          	sub	a5,s5,s1
83003848:	009ae663          	bltu	s5,s1,83003854 <_malloc_r+0x5ec>
8300384c:	00f00713          	li	a4,15
83003850:	e4f740e3          	blt	a4,a5,83003690 <_malloc_r+0x428>
83003854:	00098513          	mv	a0,s3
83003858:	00000097          	auipc	ra,0x0
8300385c:	78c080e7          	jalr	1932(ra) # 83003fe4 <__malloc_unlock>
83003860:	00000513          	li	a0,0
83003864:	c51ff06f          	j	830034b4 <_malloc_r+0x24c>
83003868:	05c78613          	addi	a2,a5,92
8300386c:	05b78513          	addi	a0,a5,91
83003870:	00361693          	slli	a3,a2,0x3
83003874:	ae1ff06f          	j	83003354 <_malloc_r+0xec>
83003878:	00832783          	lw	a5,8(t1)
8300387c:	fff60613          	addi	a2,a2,-1
83003880:	1c679663          	bne	a5,t1,83003a4c <_malloc_r+0x7e4>
83003884:	00367793          	andi	a5,a2,3
83003888:	ff830313          	addi	t1,t1,-8
8300388c:	fe0796e3          	bnez	a5,83003878 <_malloc_r+0x610>
83003890:	00492703          	lw	a4,4(s2)
83003894:	fff5c793          	not	a5,a1
83003898:	00e7f7b3          	and	a5,a5,a4
8300389c:	00f92223          	sw	a5,4(s2)
830038a0:	00159593          	slli	a1,a1,0x1
830038a4:	c8b7e0e3          	bltu	a5,a1,83003524 <_malloc_r+0x2bc>
830038a8:	c6058ee3          	beqz	a1,83003524 <_malloc_r+0x2bc>
830038ac:	00f5f733          	and	a4,a1,a5
830038b0:	00071a63          	bnez	a4,830038c4 <_malloc_r+0x65c>
830038b4:	00159593          	slli	a1,a1,0x1
830038b8:	00f5f733          	and	a4,a1,a5
830038bc:	004e0e13          	addi	t3,t3,4
830038c0:	fe070ae3          	beqz	a4,830038b4 <_malloc_r+0x64c>
830038c4:	000e0613          	mv	a2,t3
830038c8:	b7dff06f          	j	83003444 <_malloc_r+0x1dc>
830038cc:	010a8a93          	addi	s5,s5,16
830038d0:	ca5ff06f          	j	83003574 <_malloc_r+0x30c>
830038d4:	00492503          	lw	a0,4(s2)
830038d8:	40275593          	srai	a1,a4,0x2
830038dc:	00100713          	li	a4,1
830038e0:	00b71733          	sll	a4,a4,a1
830038e4:	00a76733          	or	a4,a4,a0
830038e8:	00e92223          	sw	a4,4(s2)
830038ec:	e29ff06f          	j	83003714 <_malloc_r+0x4ac>
830038f0:	015b85b3          	add	a1,s7,s5
830038f4:	40b005b3          	neg	a1,a1
830038f8:	01459593          	slli	a1,a1,0x14
830038fc:	0145da13          	srli	s4,a1,0x14
83003900:	000a0593          	mv	a1,s4
83003904:	00098513          	mv	a0,s3
83003908:	00000097          	auipc	ra,0x0
8300390c:	8fc080e7          	jalr	-1796(ra) # 83003204 <_sbrk_r>
83003910:	fff00793          	li	a5,-1
83003914:	cef51ce3          	bne	a0,a5,8300360c <_malloc_r+0x3a4>
83003918:	00000a13          	li	s4,0
8300391c:	cf9ff06f          	j	83003614 <_malloc_r+0x3ac>
83003920:	05400713          	li	a4,84
83003924:	08f76263          	bltu	a4,a5,830039a8 <_malloc_r+0x740>
83003928:	00c5d793          	srli	a5,a1,0xc
8300392c:	06f78693          	addi	a3,a5,111
83003930:	06e78713          	addi	a4,a5,110
83003934:	00369693          	slli	a3,a3,0x3
83003938:	db1ff06f          	j	830036e8 <_malloc_r+0x480>
8300393c:	15400713          	li	a4,340
83003940:	08f76263          	bltu	a4,a5,830039c4 <_malloc_r+0x75c>
83003944:	00f4d793          	srli	a5,s1,0xf
83003948:	07878613          	addi	a2,a5,120
8300394c:	07778513          	addi	a0,a5,119
83003950:	00361693          	slli	a3,a2,0x3
83003954:	a01ff06f          	j	83003354 <_malloc_r+0xec>
83003958:	83007c37          	lui	s8,0x83007
8300395c:	8acc0c13          	addi	s8,s8,-1876 # 830068ac <__BSS_END__+0xffffffd8>
83003960:	000c2783          	lw	a5,0(s8)
83003964:	00fa87b3          	add	a5,s5,a5
83003968:	00fc2023          	sw	a5,0(s8)
8300396c:	c45ff06f          	j	830035b0 <_malloc_r+0x348>
83003970:	014a1713          	slli	a4,s4,0x14
83003974:	c2071ee3          	bnez	a4,830035b0 <_malloc_r+0x348>
83003978:	00892403          	lw	s0,8(s2)
8300397c:	015b0ab3          	add	s5,s6,s5
83003980:	001aea93          	ori	s5,s5,1
83003984:	01542223          	sw	s5,4(s0)
83003988:	ce5ff06f          	j	8300366c <_malloc_r+0x404>
8300398c:	897ca623          	sw	s7,-1908(s9)
83003990:	c39ff06f          	j	830035c8 <_malloc_r+0x360>
83003994:	000b8413          	mv	s0,s7
83003998:	cd5ff06f          	j	8300366c <_malloc_r+0x404>
8300399c:	00100793          	li	a5,1
830039a0:	00fba223          	sw	a5,4(s7)
830039a4:	eb1ff06f          	j	83003854 <_malloc_r+0x5ec>
830039a8:	15400713          	li	a4,340
830039ac:	06f76463          	bltu	a4,a5,83003a14 <_malloc_r+0x7ac>
830039b0:	00f5d793          	srli	a5,a1,0xf
830039b4:	07878693          	addi	a3,a5,120
830039b8:	07778713          	addi	a4,a5,119
830039bc:	00369693          	slli	a3,a3,0x3
830039c0:	d29ff06f          	j	830036e8 <_malloc_r+0x480>
830039c4:	55400713          	li	a4,1364
830039c8:	06f76463          	bltu	a4,a5,83003a30 <_malloc_r+0x7c8>
830039cc:	0124d793          	srli	a5,s1,0x12
830039d0:	07d78613          	addi	a2,a5,125
830039d4:	07c78513          	addi	a0,a5,124
830039d8:	00361693          	slli	a3,a2,0x3
830039dc:	979ff06f          	j	83003354 <_malloc_r+0xec>
830039e0:	ff8c8c93          	addi	s9,s9,-8
830039e4:	019a8ab3          	add	s5,s5,s9
830039e8:	417a8ab3          	sub	s5,s5,s7
830039ec:	00000a13          	li	s4,0
830039f0:	c25ff06f          	j	83003614 <_malloc_r+0x3ac>
830039f4:	00840593          	addi	a1,s0,8
830039f8:	00098513          	mv	a0,s3
830039fc:	ffffe097          	auipc	ra,0xffffe
83003a00:	32c080e7          	jalr	812(ra) # 83001d28 <_free_r>
83003a04:	00892403          	lw	s0,8(s2)
83003a08:	000c2583          	lw	a1,0(s8)
83003a0c:	00442a83          	lw	s5,4(s0)
83003a10:	c5dff06f          	j	8300366c <_malloc_r+0x404>
83003a14:	55400713          	li	a4,1364
83003a18:	02f76463          	bltu	a4,a5,83003a40 <_malloc_r+0x7d8>
83003a1c:	0125d793          	srli	a5,a1,0x12
83003a20:	07d78693          	addi	a3,a5,125
83003a24:	07c78713          	addi	a4,a5,124
83003a28:	00369693          	slli	a3,a3,0x3
83003a2c:	cbdff06f          	j	830036e8 <_malloc_r+0x480>
83003a30:	3f800693          	li	a3,1016
83003a34:	07f00613          	li	a2,127
83003a38:	07e00513          	li	a0,126
83003a3c:	919ff06f          	j	83003354 <_malloc_r+0xec>
83003a40:	3f800693          	li	a3,1016
83003a44:	07e00713          	li	a4,126
83003a48:	ca1ff06f          	j	830036e8 <_malloc_r+0x480>
83003a4c:	00492783          	lw	a5,4(s2)
83003a50:	e51ff06f          	j	830038a0 <_malloc_r+0x638>

83003a54 <_realloc_r>:
83003a54:	fd010113          	addi	sp,sp,-48
83003a58:	03212023          	sw	s2,32(sp)
83003a5c:	02112623          	sw	ra,44(sp)
83003a60:	02812423          	sw	s0,40(sp)
83003a64:	02912223          	sw	s1,36(sp)
83003a68:	01312e23          	sw	s3,28(sp)
83003a6c:	01412c23          	sw	s4,24(sp)
83003a70:	01512a23          	sw	s5,20(sp)
83003a74:	01612823          	sw	s6,16(sp)
83003a78:	01712623          	sw	s7,12(sp)
83003a7c:	01812423          	sw	s8,8(sp)
83003a80:	00060913          	mv	s2,a2
83003a84:	1e058063          	beqz	a1,83003c64 <_realloc_r+0x210>
83003a88:	00058413          	mv	s0,a1
83003a8c:	00050993          	mv	s3,a0
83003a90:	00000097          	auipc	ra,0x0
83003a94:	550080e7          	jalr	1360(ra) # 83003fe0 <__malloc_lock>
83003a98:	00b90493          	addi	s1,s2,11
83003a9c:	01600713          	li	a4,22
83003aa0:	ffc42783          	lw	a5,-4(s0)
83003aa4:	10977263          	bgeu	a4,s1,83003ba8 <_realloc_r+0x154>
83003aa8:	ff84f493          	andi	s1,s1,-8
83003aac:	00048713          	mv	a4,s1
83003ab0:	1004c263          	bltz	s1,83003bb4 <_realloc_r+0x160>
83003ab4:	1124e063          	bltu	s1,s2,83003bb4 <_realloc_r+0x160>
83003ab8:	ffc7fa13          	andi	s4,a5,-4
83003abc:	ff840a93          	addi	s5,s0,-8
83003ac0:	14ea5463          	bge	s4,a4,83003c08 <_realloc_r+0x1b4>
83003ac4:	830066b7          	lui	a3,0x83006
83003ac8:	42868c13          	addi	s8,a3,1064 # 83006428 <__BSS_END__+0xfffffb54>
83003acc:	008c2583          	lw	a1,8(s8)
83003ad0:	014a8633          	add	a2,s5,s4
83003ad4:	00462683          	lw	a3,4(a2)
83003ad8:	1ec58c63          	beq	a1,a2,83003cd0 <_realloc_r+0x27c>
83003adc:	ffe6f593          	andi	a1,a3,-2
83003ae0:	00b605b3          	add	a1,a2,a1
83003ae4:	0045a583          	lw	a1,4(a1)
83003ae8:	0015f593          	andi	a1,a1,1
83003aec:	14059e63          	bnez	a1,83003c48 <_realloc_r+0x1f4>
83003af0:	ffc6f693          	andi	a3,a3,-4
83003af4:	00da05b3          	add	a1,s4,a3
83003af8:	0ee5de63          	bge	a1,a4,83003bf4 <_realloc_r+0x1a0>
83003afc:	0017f793          	andi	a5,a5,1
83003b00:	02079463          	bnez	a5,83003b28 <_realloc_r+0xd4>
83003b04:	ff842b83          	lw	s7,-8(s0)
83003b08:	417a8bb3          	sub	s7,s5,s7
83003b0c:	004ba783          	lw	a5,4(s7)
83003b10:	ffc7f793          	andi	a5,a5,-4
83003b14:	00d786b3          	add	a3,a5,a3
83003b18:	01468b33          	add	s6,a3,s4
83003b1c:	38eb5263          	bge	s6,a4,83003ea0 <_realloc_r+0x44c>
83003b20:	00fa0b33          	add	s6,s4,a5
83003b24:	2eeb5263          	bge	s6,a4,83003e08 <_realloc_r+0x3b4>
83003b28:	00090593          	mv	a1,s2
83003b2c:	00098513          	mv	a0,s3
83003b30:	fffff097          	auipc	ra,0xfffff
83003b34:	738080e7          	jalr	1848(ra) # 83003268 <_malloc_r>
83003b38:	00050913          	mv	s2,a0
83003b3c:	04050e63          	beqz	a0,83003b98 <_realloc_r+0x144>
83003b40:	ffc42783          	lw	a5,-4(s0)
83003b44:	ff850713          	addi	a4,a0,-8
83003b48:	ffe7f793          	andi	a5,a5,-2
83003b4c:	00fa87b3          	add	a5,s5,a5
83003b50:	2ae78463          	beq	a5,a4,83003df8 <_realloc_r+0x3a4>
83003b54:	ffca0613          	addi	a2,s4,-4
83003b58:	02400793          	li	a5,36
83003b5c:	32c7ea63          	bltu	a5,a2,83003e90 <_realloc_r+0x43c>
83003b60:	01300713          	li	a4,19
83003b64:	22c76c63          	bltu	a4,a2,83003d9c <_realloc_r+0x348>
83003b68:	00050793          	mv	a5,a0
83003b6c:	00040713          	mv	a4,s0
83003b70:	00072683          	lw	a3,0(a4)
83003b74:	00d7a023          	sw	a3,0(a5)
83003b78:	00472683          	lw	a3,4(a4)
83003b7c:	00d7a223          	sw	a3,4(a5)
83003b80:	00872703          	lw	a4,8(a4)
83003b84:	00e7a423          	sw	a4,8(a5)
83003b88:	00040593          	mv	a1,s0
83003b8c:	00098513          	mv	a0,s3
83003b90:	ffffe097          	auipc	ra,0xffffe
83003b94:	198080e7          	jalr	408(ra) # 83001d28 <_free_r>
83003b98:	00098513          	mv	a0,s3
83003b9c:	00000097          	auipc	ra,0x0
83003ba0:	448080e7          	jalr	1096(ra) # 83003fe4 <__malloc_unlock>
83003ba4:	01c0006f          	j	83003bc0 <_realloc_r+0x16c>
83003ba8:	01000493          	li	s1,16
83003bac:	01000713          	li	a4,16
83003bb0:	f124f4e3          	bgeu	s1,s2,83003ab8 <_realloc_r+0x64>
83003bb4:	00c00793          	li	a5,12
83003bb8:	00f9a023          	sw	a5,0(s3)
83003bbc:	00000913          	li	s2,0
83003bc0:	02c12083          	lw	ra,44(sp)
83003bc4:	02812403          	lw	s0,40(sp)
83003bc8:	02412483          	lw	s1,36(sp)
83003bcc:	01c12983          	lw	s3,28(sp)
83003bd0:	01812a03          	lw	s4,24(sp)
83003bd4:	01412a83          	lw	s5,20(sp)
83003bd8:	01012b03          	lw	s6,16(sp)
83003bdc:	00c12b83          	lw	s7,12(sp)
83003be0:	00812c03          	lw	s8,8(sp)
83003be4:	00090513          	mv	a0,s2
83003be8:	02012903          	lw	s2,32(sp)
83003bec:	03010113          	addi	sp,sp,48
83003bf0:	00008067          	ret
83003bf4:	00c62783          	lw	a5,12(a2)
83003bf8:	00862703          	lw	a4,8(a2)
83003bfc:	00058a13          	mv	s4,a1
83003c00:	00f72623          	sw	a5,12(a4)
83003c04:	00e7a423          	sw	a4,8(a5)
83003c08:	004aa783          	lw	a5,4(s5)
83003c0c:	409a06b3          	sub	a3,s4,s1
83003c10:	00f00613          	li	a2,15
83003c14:	0017f793          	andi	a5,a5,1
83003c18:	014a8733          	add	a4,s5,s4
83003c1c:	08d66063          	bltu	a2,a3,83003c9c <_realloc_r+0x248>
83003c20:	00fa67b3          	or	a5,s4,a5
83003c24:	00faa223          	sw	a5,4(s5)
83003c28:	00472783          	lw	a5,4(a4)
83003c2c:	0017e793          	ori	a5,a5,1
83003c30:	00f72223          	sw	a5,4(a4)
83003c34:	00098513          	mv	a0,s3
83003c38:	00000097          	auipc	ra,0x0
83003c3c:	3ac080e7          	jalr	940(ra) # 83003fe4 <__malloc_unlock>
83003c40:	00040913          	mv	s2,s0
83003c44:	f7dff06f          	j	83003bc0 <_realloc_r+0x16c>
83003c48:	0017f793          	andi	a5,a5,1
83003c4c:	ec079ee3          	bnez	a5,83003b28 <_realloc_r+0xd4>
83003c50:	ff842b83          	lw	s7,-8(s0)
83003c54:	417a8bb3          	sub	s7,s5,s7
83003c58:	004ba783          	lw	a5,4(s7)
83003c5c:	ffc7f793          	andi	a5,a5,-4
83003c60:	ec1ff06f          	j	83003b20 <_realloc_r+0xcc>
83003c64:	02812403          	lw	s0,40(sp)
83003c68:	02c12083          	lw	ra,44(sp)
83003c6c:	02412483          	lw	s1,36(sp)
83003c70:	02012903          	lw	s2,32(sp)
83003c74:	01c12983          	lw	s3,28(sp)
83003c78:	01812a03          	lw	s4,24(sp)
83003c7c:	01412a83          	lw	s5,20(sp)
83003c80:	01012b03          	lw	s6,16(sp)
83003c84:	00c12b83          	lw	s7,12(sp)
83003c88:	00812c03          	lw	s8,8(sp)
83003c8c:	00060593          	mv	a1,a2
83003c90:	03010113          	addi	sp,sp,48
83003c94:	fffff317          	auipc	t1,0xfffff
83003c98:	5d430067          	jr	1492(t1) # 83003268 <_malloc_r>
83003c9c:	0097e7b3          	or	a5,a5,s1
83003ca0:	00faa223          	sw	a5,4(s5)
83003ca4:	009a85b3          	add	a1,s5,s1
83003ca8:	0016e693          	ori	a3,a3,1
83003cac:	00d5a223          	sw	a3,4(a1)
83003cb0:	00472783          	lw	a5,4(a4)
83003cb4:	00858593          	addi	a1,a1,8
83003cb8:	00098513          	mv	a0,s3
83003cbc:	0017e793          	ori	a5,a5,1
83003cc0:	00f72223          	sw	a5,4(a4)
83003cc4:	ffffe097          	auipc	ra,0xffffe
83003cc8:	064080e7          	jalr	100(ra) # 83001d28 <_free_r>
83003ccc:	f69ff06f          	j	83003c34 <_realloc_r+0x1e0>
83003cd0:	ffc6f693          	andi	a3,a3,-4
83003cd4:	00da0633          	add	a2,s4,a3
83003cd8:	01048593          	addi	a1,s1,16
83003cdc:	0eb65263          	bge	a2,a1,83003dc0 <_realloc_r+0x36c>
83003ce0:	0017f793          	andi	a5,a5,1
83003ce4:	e40792e3          	bnez	a5,83003b28 <_realloc_r+0xd4>
83003ce8:	ff842b83          	lw	s7,-8(s0)
83003cec:	417a8bb3          	sub	s7,s5,s7
83003cf0:	004ba783          	lw	a5,4(s7)
83003cf4:	ffc7f793          	andi	a5,a5,-4
83003cf8:	00d786b3          	add	a3,a5,a3
83003cfc:	01468b33          	add	s6,a3,s4
83003d00:	e2bb40e3          	blt	s6,a1,83003b20 <_realloc_r+0xcc>
83003d04:	00cba783          	lw	a5,12(s7)
83003d08:	008ba703          	lw	a4,8(s7)
83003d0c:	ffca0613          	addi	a2,s4,-4
83003d10:	02400693          	li	a3,36
83003d14:	00f72623          	sw	a5,12(a4)
83003d18:	00e7a423          	sw	a4,8(a5)
83003d1c:	008b8913          	addi	s2,s7,8
83003d20:	26c6e863          	bltu	a3,a2,83003f90 <_realloc_r+0x53c>
83003d24:	01300713          	li	a4,19
83003d28:	00090793          	mv	a5,s2
83003d2c:	02c77263          	bgeu	a4,a2,83003d50 <_realloc_r+0x2fc>
83003d30:	00042703          	lw	a4,0(s0)
83003d34:	01b00793          	li	a5,27
83003d38:	00eba423          	sw	a4,8(s7)
83003d3c:	00442703          	lw	a4,4(s0)
83003d40:	00eba623          	sw	a4,12(s7)
83003d44:	26c7e063          	bltu	a5,a2,83003fa4 <_realloc_r+0x550>
83003d48:	00840413          	addi	s0,s0,8
83003d4c:	010b8793          	addi	a5,s7,16
83003d50:	00042703          	lw	a4,0(s0)
83003d54:	00e7a023          	sw	a4,0(a5)
83003d58:	00442703          	lw	a4,4(s0)
83003d5c:	00e7a223          	sw	a4,4(a5)
83003d60:	00842703          	lw	a4,8(s0)
83003d64:	00e7a423          	sw	a4,8(a5)
83003d68:	009b8733          	add	a4,s7,s1
83003d6c:	409b07b3          	sub	a5,s6,s1
83003d70:	00ec2423          	sw	a4,8(s8)
83003d74:	0017e793          	ori	a5,a5,1
83003d78:	00f72223          	sw	a5,4(a4)
83003d7c:	004ba783          	lw	a5,4(s7)
83003d80:	00098513          	mv	a0,s3
83003d84:	0017f793          	andi	a5,a5,1
83003d88:	0097e7b3          	or	a5,a5,s1
83003d8c:	00fba223          	sw	a5,4(s7)
83003d90:	00000097          	auipc	ra,0x0
83003d94:	254080e7          	jalr	596(ra) # 83003fe4 <__malloc_unlock>
83003d98:	e29ff06f          	j	83003bc0 <_realloc_r+0x16c>
83003d9c:	00042683          	lw	a3,0(s0)
83003da0:	01b00713          	li	a4,27
83003da4:	00d52023          	sw	a3,0(a0)
83003da8:	00442683          	lw	a3,4(s0)
83003dac:	00d52223          	sw	a3,4(a0)
83003db0:	18c76c63          	bltu	a4,a2,83003f48 <_realloc_r+0x4f4>
83003db4:	00840713          	addi	a4,s0,8
83003db8:	00850793          	addi	a5,a0,8
83003dbc:	db5ff06f          	j	83003b70 <_realloc_r+0x11c>
83003dc0:	009a8ab3          	add	s5,s5,s1
83003dc4:	409607b3          	sub	a5,a2,s1
83003dc8:	015c2423          	sw	s5,8(s8)
83003dcc:	0017e793          	ori	a5,a5,1
83003dd0:	00faa223          	sw	a5,4(s5)
83003dd4:	ffc42783          	lw	a5,-4(s0)
83003dd8:	00098513          	mv	a0,s3
83003ddc:	00040913          	mv	s2,s0
83003de0:	0017f793          	andi	a5,a5,1
83003de4:	0097e7b3          	or	a5,a5,s1
83003de8:	fef42e23          	sw	a5,-4(s0)
83003dec:	00000097          	auipc	ra,0x0
83003df0:	1f8080e7          	jalr	504(ra) # 83003fe4 <__malloc_unlock>
83003df4:	dcdff06f          	j	83003bc0 <_realloc_r+0x16c>
83003df8:	ffc52783          	lw	a5,-4(a0)
83003dfc:	ffc7f793          	andi	a5,a5,-4
83003e00:	00fa0a33          	add	s4,s4,a5
83003e04:	e05ff06f          	j	83003c08 <_realloc_r+0x1b4>
83003e08:	00cba783          	lw	a5,12(s7)
83003e0c:	008ba703          	lw	a4,8(s7)
83003e10:	ffca0613          	addi	a2,s4,-4
83003e14:	02400693          	li	a3,36
83003e18:	00f72623          	sw	a5,12(a4)
83003e1c:	00e7a423          	sw	a4,8(a5)
83003e20:	008b8913          	addi	s2,s7,8
83003e24:	10c6e263          	bltu	a3,a2,83003f28 <_realloc_r+0x4d4>
83003e28:	01300713          	li	a4,19
83003e2c:	00090793          	mv	a5,s2
83003e30:	02c77c63          	bgeu	a4,a2,83003e68 <_realloc_r+0x414>
83003e34:	00042703          	lw	a4,0(s0)
83003e38:	01b00793          	li	a5,27
83003e3c:	00eba423          	sw	a4,8(s7)
83003e40:	00442703          	lw	a4,4(s0)
83003e44:	00eba623          	sw	a4,12(s7)
83003e48:	12c7f063          	bgeu	a5,a2,83003f68 <_realloc_r+0x514>
83003e4c:	00842783          	lw	a5,8(s0)
83003e50:	00fba823          	sw	a5,16(s7)
83003e54:	00c42783          	lw	a5,12(s0)
83003e58:	00fbaa23          	sw	a5,20(s7)
83003e5c:	0ad60863          	beq	a2,a3,83003f0c <_realloc_r+0x4b8>
83003e60:	01040413          	addi	s0,s0,16
83003e64:	018b8793          	addi	a5,s7,24
83003e68:	00042703          	lw	a4,0(s0)
83003e6c:	000b0a13          	mv	s4,s6
83003e70:	000b8a93          	mv	s5,s7
83003e74:	00e7a023          	sw	a4,0(a5)
83003e78:	00442703          	lw	a4,4(s0)
83003e7c:	00e7a223          	sw	a4,4(a5)
83003e80:	00842703          	lw	a4,8(s0)
83003e84:	00090413          	mv	s0,s2
83003e88:	00e7a423          	sw	a4,8(a5)
83003e8c:	d7dff06f          	j	83003c08 <_realloc_r+0x1b4>
83003e90:	00040593          	mv	a1,s0
83003e94:	fffff097          	auipc	ra,0xfffff
83003e98:	250080e7          	jalr	592(ra) # 830030e4 <memmove>
83003e9c:	cedff06f          	j	83003b88 <_realloc_r+0x134>
83003ea0:	00c62783          	lw	a5,12(a2)
83003ea4:	00862703          	lw	a4,8(a2)
83003ea8:	02400693          	li	a3,36
83003eac:	ffca0613          	addi	a2,s4,-4
83003eb0:	00f72623          	sw	a5,12(a4)
83003eb4:	00e7a423          	sw	a4,8(a5)
83003eb8:	008ba703          	lw	a4,8(s7)
83003ebc:	00cba783          	lw	a5,12(s7)
83003ec0:	008b8913          	addi	s2,s7,8
83003ec4:	00f72623          	sw	a5,12(a4)
83003ec8:	00e7a423          	sw	a4,8(a5)
83003ecc:	04c6ee63          	bltu	a3,a2,83003f28 <_realloc_r+0x4d4>
83003ed0:	01300713          	li	a4,19
83003ed4:	00090793          	mv	a5,s2
83003ed8:	f8c778e3          	bgeu	a4,a2,83003e68 <_realloc_r+0x414>
83003edc:	00042703          	lw	a4,0(s0)
83003ee0:	01b00793          	li	a5,27
83003ee4:	00eba423          	sw	a4,8(s7)
83003ee8:	00442703          	lw	a4,4(s0)
83003eec:	00eba623          	sw	a4,12(s7)
83003ef0:	06c7fc63          	bgeu	a5,a2,83003f68 <_realloc_r+0x514>
83003ef4:	00842703          	lw	a4,8(s0)
83003ef8:	02400793          	li	a5,36
83003efc:	00eba823          	sw	a4,16(s7)
83003f00:	00c42703          	lw	a4,12(s0)
83003f04:	00ebaa23          	sw	a4,20(s7)
83003f08:	f4f61ce3          	bne	a2,a5,83003e60 <_realloc_r+0x40c>
83003f0c:	01042703          	lw	a4,16(s0)
83003f10:	020b8793          	addi	a5,s7,32
83003f14:	01840413          	addi	s0,s0,24
83003f18:	00ebac23          	sw	a4,24(s7)
83003f1c:	ffc42703          	lw	a4,-4(s0)
83003f20:	00ebae23          	sw	a4,28(s7)
83003f24:	f45ff06f          	j	83003e68 <_realloc_r+0x414>
83003f28:	00040593          	mv	a1,s0
83003f2c:	00090513          	mv	a0,s2
83003f30:	fffff097          	auipc	ra,0xfffff
83003f34:	1b4080e7          	jalr	436(ra) # 830030e4 <memmove>
83003f38:	00090413          	mv	s0,s2
83003f3c:	000b0a13          	mv	s4,s6
83003f40:	000b8a93          	mv	s5,s7
83003f44:	cc5ff06f          	j	83003c08 <_realloc_r+0x1b4>
83003f48:	00842703          	lw	a4,8(s0)
83003f4c:	00e52423          	sw	a4,8(a0)
83003f50:	00c42703          	lw	a4,12(s0)
83003f54:	00e52623          	sw	a4,12(a0)
83003f58:	00f60e63          	beq	a2,a5,83003f74 <_realloc_r+0x520>
83003f5c:	01040713          	addi	a4,s0,16
83003f60:	01050793          	addi	a5,a0,16
83003f64:	c0dff06f          	j	83003b70 <_realloc_r+0x11c>
83003f68:	00840413          	addi	s0,s0,8
83003f6c:	010b8793          	addi	a5,s7,16
83003f70:	ef9ff06f          	j	83003e68 <_realloc_r+0x414>
83003f74:	01042683          	lw	a3,16(s0)
83003f78:	01840713          	addi	a4,s0,24
83003f7c:	01850793          	addi	a5,a0,24
83003f80:	00d52823          	sw	a3,16(a0)
83003f84:	01442683          	lw	a3,20(s0)
83003f88:	00d52a23          	sw	a3,20(a0)
83003f8c:	be5ff06f          	j	83003b70 <_realloc_r+0x11c>
83003f90:	00040593          	mv	a1,s0
83003f94:	00090513          	mv	a0,s2
83003f98:	fffff097          	auipc	ra,0xfffff
83003f9c:	14c080e7          	jalr	332(ra) # 830030e4 <memmove>
83003fa0:	dc9ff06f          	j	83003d68 <_realloc_r+0x314>
83003fa4:	00842783          	lw	a5,8(s0)
83003fa8:	00fba823          	sw	a5,16(s7)
83003fac:	00c42783          	lw	a5,12(s0)
83003fb0:	00fbaa23          	sw	a5,20(s7)
83003fb4:	00d60863          	beq	a2,a3,83003fc4 <_realloc_r+0x570>
83003fb8:	01040413          	addi	s0,s0,16
83003fbc:	018b8793          	addi	a5,s7,24
83003fc0:	d91ff06f          	j	83003d50 <_realloc_r+0x2fc>
83003fc4:	01042703          	lw	a4,16(s0)
83003fc8:	020b8793          	addi	a5,s7,32
83003fcc:	01840413          	addi	s0,s0,24
83003fd0:	00ebac23          	sw	a4,24(s7)
83003fd4:	ffc42703          	lw	a4,-4(s0)
83003fd8:	00ebae23          	sw	a4,28(s7)
83003fdc:	d75ff06f          	j	83003d50 <_realloc_r+0x2fc>

83003fe0 <__malloc_lock>:
83003fe0:	00008067          	ret

83003fe4 <__malloc_unlock>:
83003fe4:	00008067          	ret

83003fe8 <__smakebuf_r>:
83003fe8:	00c5d783          	lhu	a5,12(a1)
83003fec:	fa010113          	addi	sp,sp,-96
83003ff0:	04812c23          	sw	s0,88(sp)
83003ff4:	04112e23          	sw	ra,92(sp)
83003ff8:	04912a23          	sw	s1,84(sp)
83003ffc:	05212823          	sw	s2,80(sp)
83004000:	05312623          	sw	s3,76(sp)
83004004:	0027f713          	andi	a4,a5,2
83004008:	00058413          	mv	s0,a1
8300400c:	02070a63          	beqz	a4,83004040 <__smakebuf_r+0x58>
83004010:	04358793          	addi	a5,a1,67
83004014:	00f5a023          	sw	a5,0(a1)
83004018:	00f5a823          	sw	a5,16(a1)
8300401c:	00100793          	li	a5,1
83004020:	00f5aa23          	sw	a5,20(a1)
83004024:	05c12083          	lw	ra,92(sp)
83004028:	05812403          	lw	s0,88(sp)
8300402c:	05412483          	lw	s1,84(sp)
83004030:	05012903          	lw	s2,80(sp)
83004034:	04c12983          	lw	s3,76(sp)
83004038:	06010113          	addi	sp,sp,96
8300403c:	00008067          	ret
83004040:	00e59583          	lh	a1,14(a1)
83004044:	00050493          	mv	s1,a0
83004048:	0805cc63          	bltz	a1,830040e0 <__smakebuf_r+0xf8>
8300404c:	00410613          	addi	a2,sp,4
83004050:	00000097          	auipc	ra,0x0
83004054:	6f4080e7          	jalr	1780(ra) # 83004744 <_fstat_r>
83004058:	08054263          	bltz	a0,830040dc <__smakebuf_r+0xf4>
8300405c:	00812783          	lw	a5,8(sp)
83004060:	0000f937          	lui	s2,0xf
83004064:	00f97933          	and	s2,s2,a5
83004068:	ffffe7b7          	lui	a5,0xffffe
8300406c:	00f90933          	add	s2,s2,a5
83004070:	00193913          	seqz	s2,s2
83004074:	40000993          	li	s3,1024
83004078:	00098593          	mv	a1,s3
8300407c:	00048513          	mv	a0,s1
83004080:	fffff097          	auipc	ra,0xfffff
83004084:	1e8080e7          	jalr	488(ra) # 83003268 <_malloc_r>
83004088:	06050e63          	beqz	a0,83004104 <__smakebuf_r+0x11c>
8300408c:	00c45783          	lhu	a5,12(s0)
83004090:	83002737          	lui	a4,0x83002
83004094:	6b470713          	addi	a4,a4,1716 # 830026b4 <__BSS_END__+0xffffbde0>
83004098:	02e4ae23          	sw	a4,60(s1)
8300409c:	0807e793          	ori	a5,a5,128
830040a0:	00f41623          	sh	a5,12(s0)
830040a4:	00a42023          	sw	a0,0(s0)
830040a8:	00a42823          	sw	a0,16(s0)
830040ac:	01342a23          	sw	s3,20(s0)
830040b0:	f6090ae3          	beqz	s2,83004024 <__smakebuf_r+0x3c>
830040b4:	00e41583          	lh	a1,14(s0)
830040b8:	00048513          	mv	a0,s1
830040bc:	00001097          	auipc	ra,0x1
830040c0:	838080e7          	jalr	-1992(ra) # 830048f4 <_isatty_r>
830040c4:	f60500e3          	beqz	a0,83004024 <__smakebuf_r+0x3c>
830040c8:	00c45783          	lhu	a5,12(s0)
830040cc:	ffc7f793          	andi	a5,a5,-4
830040d0:	0017e793          	ori	a5,a5,1
830040d4:	00f41623          	sh	a5,12(s0)
830040d8:	f4dff06f          	j	83004024 <__smakebuf_r+0x3c>
830040dc:	00c45783          	lhu	a5,12(s0)
830040e0:	0807f793          	andi	a5,a5,128
830040e4:	00000913          	li	s2,0
830040e8:	04000993          	li	s3,64
830040ec:	f80784e3          	beqz	a5,83004074 <__smakebuf_r+0x8c>
830040f0:	00098593          	mv	a1,s3
830040f4:	00048513          	mv	a0,s1
830040f8:	fffff097          	auipc	ra,0xfffff
830040fc:	170080e7          	jalr	368(ra) # 83003268 <_malloc_r>
83004100:	f80516e3          	bnez	a0,8300408c <__smakebuf_r+0xa4>
83004104:	00c41783          	lh	a5,12(s0)
83004108:	2007f713          	andi	a4,a5,512
8300410c:	f0071ce3          	bnez	a4,83004024 <__smakebuf_r+0x3c>
83004110:	ffc7f793          	andi	a5,a5,-4
83004114:	0027e793          	ori	a5,a5,2
83004118:	04340713          	addi	a4,s0,67
8300411c:	00f41623          	sh	a5,12(s0)
83004120:	00100793          	li	a5,1
83004124:	00e42023          	sw	a4,0(s0)
83004128:	00e42823          	sw	a4,16(s0)
8300412c:	00f42a23          	sw	a5,20(s0)
83004130:	ef5ff06f          	j	83004024 <__smakebuf_r+0x3c>

83004134 <__swhatbuf_r>:
83004134:	fb010113          	addi	sp,sp,-80
83004138:	04812423          	sw	s0,72(sp)
8300413c:	00058413          	mv	s0,a1
83004140:	00e59583          	lh	a1,14(a1)
83004144:	04912223          	sw	s1,68(sp)
83004148:	05212023          	sw	s2,64(sp)
8300414c:	04112623          	sw	ra,76(sp)
83004150:	00060493          	mv	s1,a2
83004154:	00068913          	mv	s2,a3
83004158:	0405ca63          	bltz	a1,830041ac <__swhatbuf_r+0x78>
8300415c:	00410613          	addi	a2,sp,4
83004160:	00000097          	auipc	ra,0x0
83004164:	5e4080e7          	jalr	1508(ra) # 83004744 <_fstat_r>
83004168:	04054263          	bltz	a0,830041ac <__swhatbuf_r+0x78>
8300416c:	00812703          	lw	a4,8(sp)
83004170:	0000f7b7          	lui	a5,0xf
83004174:	00e7f7b3          	and	a5,a5,a4
83004178:	ffffe737          	lui	a4,0xffffe
8300417c:	00e787b3          	add	a5,a5,a4
83004180:	0017b793          	seqz	a5,a5
83004184:	40000713          	li	a4,1024
83004188:	04c12083          	lw	ra,76(sp)
8300418c:	04812403          	lw	s0,72(sp)
83004190:	00f92023          	sw	a5,0(s2) # f000 <main-0x82ff10b4>
83004194:	00e4a023          	sw	a4,0(s1)
83004198:	04012903          	lw	s2,64(sp)
8300419c:	04412483          	lw	s1,68(sp)
830041a0:	00000513          	li	a0,0
830041a4:	05010113          	addi	sp,sp,80
830041a8:	00008067          	ret
830041ac:	00c45783          	lhu	a5,12(s0)
830041b0:	0807f793          	andi	a5,a5,128
830041b4:	00078863          	beqz	a5,830041c4 <__swhatbuf_r+0x90>
830041b8:	00000793          	li	a5,0
830041bc:	04000713          	li	a4,64
830041c0:	fc9ff06f          	j	83004188 <__swhatbuf_r+0x54>
830041c4:	00000793          	li	a5,0
830041c8:	40000713          	li	a4,1024
830041cc:	fbdff06f          	j	83004188 <__swhatbuf_r+0x54>

830041d0 <__sread>:
830041d0:	ff010113          	addi	sp,sp,-16
830041d4:	00812423          	sw	s0,8(sp)
830041d8:	00058413          	mv	s0,a1
830041dc:	00e59583          	lh	a1,14(a1)
830041e0:	00112623          	sw	ra,12(sp)
830041e4:	00000097          	auipc	ra,0x0
830041e8:	5cc080e7          	jalr	1484(ra) # 830047b0 <_read_r>
830041ec:	02054063          	bltz	a0,8300420c <__sread+0x3c>
830041f0:	05042783          	lw	a5,80(s0)
830041f4:	00c12083          	lw	ra,12(sp)
830041f8:	00a787b3          	add	a5,a5,a0
830041fc:	04f42823          	sw	a5,80(s0)
83004200:	00812403          	lw	s0,8(sp)
83004204:	01010113          	addi	sp,sp,16
83004208:	00008067          	ret
8300420c:	00c45783          	lhu	a5,12(s0)
83004210:	fffff737          	lui	a4,0xfffff
83004214:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0x7cff872b>
83004218:	00e7f7b3          	and	a5,a5,a4
8300421c:	00c12083          	lw	ra,12(sp)
83004220:	00f41623          	sh	a5,12(s0)
83004224:	00812403          	lw	s0,8(sp)
83004228:	01010113          	addi	sp,sp,16
8300422c:	00008067          	ret

83004230 <__seofread>:
83004230:	00000513          	li	a0,0
83004234:	00008067          	ret

83004238 <__swrite>:
83004238:	00c59783          	lh	a5,12(a1)
8300423c:	fe010113          	addi	sp,sp,-32
83004240:	00812c23          	sw	s0,24(sp)
83004244:	00912a23          	sw	s1,20(sp)
83004248:	01212823          	sw	s2,16(sp)
8300424c:	01312623          	sw	s3,12(sp)
83004250:	00112e23          	sw	ra,28(sp)
83004254:	1007f713          	andi	a4,a5,256
83004258:	00058413          	mv	s0,a1
8300425c:	00050493          	mv	s1,a0
83004260:	00060913          	mv	s2,a2
83004264:	00068993          	mv	s3,a3
83004268:	04071263          	bnez	a4,830042ac <__swrite+0x74>
8300426c:	fffff737          	lui	a4,0xfffff
83004270:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0x7cff872b>
83004274:	00e7f7b3          	and	a5,a5,a4
83004278:	00e41583          	lh	a1,14(s0)
8300427c:	00f41623          	sh	a5,12(s0)
83004280:	01812403          	lw	s0,24(sp)
83004284:	01c12083          	lw	ra,28(sp)
83004288:	00098693          	mv	a3,s3
8300428c:	00090613          	mv	a2,s2
83004290:	00c12983          	lw	s3,12(sp)
83004294:	01012903          	lw	s2,16(sp)
83004298:	00048513          	mv	a0,s1
8300429c:	01412483          	lw	s1,20(sp)
830042a0:	02010113          	addi	sp,sp,32
830042a4:	ffffd317          	auipc	t1,0xffffd
830042a8:	6d830067          	jr	1752(t1) # 8300197c <_write_r>
830042ac:	00e59583          	lh	a1,14(a1)
830042b0:	00200693          	li	a3,2
830042b4:	00000613          	li	a2,0
830042b8:	00000097          	auipc	ra,0x0
830042bc:	5cc080e7          	jalr	1484(ra) # 83004884 <_lseek_r>
830042c0:	00c41783          	lh	a5,12(s0)
830042c4:	fa9ff06f          	j	8300426c <__swrite+0x34>

830042c8 <__sseek>:
830042c8:	ff010113          	addi	sp,sp,-16
830042cc:	00812423          	sw	s0,8(sp)
830042d0:	00058413          	mv	s0,a1
830042d4:	00e59583          	lh	a1,14(a1)
830042d8:	00112623          	sw	ra,12(sp)
830042dc:	00000097          	auipc	ra,0x0
830042e0:	5a8080e7          	jalr	1448(ra) # 83004884 <_lseek_r>
830042e4:	fff00793          	li	a5,-1
830042e8:	02f50463          	beq	a0,a5,83004310 <__sseek+0x48>
830042ec:	00c45783          	lhu	a5,12(s0)
830042f0:	00001737          	lui	a4,0x1
830042f4:	00c12083          	lw	ra,12(sp)
830042f8:	00e7e7b3          	or	a5,a5,a4
830042fc:	04a42823          	sw	a0,80(s0)
83004300:	00f41623          	sh	a5,12(s0)
83004304:	00812403          	lw	s0,8(sp)
83004308:	01010113          	addi	sp,sp,16
8300430c:	00008067          	ret
83004310:	00c45783          	lhu	a5,12(s0)
83004314:	fffff737          	lui	a4,0xfffff
83004318:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0x7cff872b>
8300431c:	00e7f7b3          	and	a5,a5,a4
83004320:	00c12083          	lw	ra,12(sp)
83004324:	00f41623          	sh	a5,12(s0)
83004328:	00812403          	lw	s0,8(sp)
8300432c:	01010113          	addi	sp,sp,16
83004330:	00008067          	ret

83004334 <__sclose>:
83004334:	00e59583          	lh	a1,14(a1)
83004338:	00000317          	auipc	t1,0x0
8300433c:	4e830067          	jr	1256(t1) # 83004820 <_close_r>

83004340 <__swbuf_r>:
83004340:	fe010113          	addi	sp,sp,-32
83004344:	00812c23          	sw	s0,24(sp)
83004348:	00912a23          	sw	s1,20(sp)
8300434c:	01212823          	sw	s2,16(sp)
83004350:	00112e23          	sw	ra,28(sp)
83004354:	01312623          	sw	s3,12(sp)
83004358:	00050913          	mv	s2,a0
8300435c:	00058493          	mv	s1,a1
83004360:	00060413          	mv	s0,a2
83004364:	00050663          	beqz	a0,83004370 <__swbuf_r+0x30>
83004368:	03852783          	lw	a5,56(a0)
8300436c:	10078c63          	beqz	a5,83004484 <__swbuf_r+0x144>
83004370:	01842703          	lw	a4,24(s0)
83004374:	00c45783          	lhu	a5,12(s0)
83004378:	00e42423          	sw	a4,8(s0)
8300437c:	0087f793          	andi	a5,a5,8
83004380:	06078e63          	beqz	a5,830043fc <__swbuf_r+0xbc>
83004384:	01042783          	lw	a5,16(s0)
83004388:	06078a63          	beqz	a5,830043fc <__swbuf_r+0xbc>
8300438c:	00042703          	lw	a4,0(s0)
83004390:	01442683          	lw	a3,20(s0)
83004394:	0ff4f993          	zext.b	s3,s1
83004398:	40f707b3          	sub	a5,a4,a5
8300439c:	0ff4f493          	zext.b	s1,s1
830043a0:	08d7d663          	bge	a5,a3,8300442c <__swbuf_r+0xec>
830043a4:	00842683          	lw	a3,8(s0)
830043a8:	00170613          	addi	a2,a4,1
830043ac:	00c42023          	sw	a2,0(s0)
830043b0:	fff68693          	addi	a3,a3,-1
830043b4:	00d42423          	sw	a3,8(s0)
830043b8:	01370023          	sb	s3,0(a4)
830043bc:	01442703          	lw	a4,20(s0)
830043c0:	00178793          	addi	a5,a5,1 # f001 <main-0x82ff10b3>
830043c4:	0af70263          	beq	a4,a5,83004468 <__swbuf_r+0x128>
830043c8:	00c45783          	lhu	a5,12(s0)
830043cc:	0017f793          	andi	a5,a5,1
830043d0:	00078663          	beqz	a5,830043dc <__swbuf_r+0x9c>
830043d4:	00a00793          	li	a5,10
830043d8:	08f48863          	beq	s1,a5,83004468 <__swbuf_r+0x128>
830043dc:	01c12083          	lw	ra,28(sp)
830043e0:	01812403          	lw	s0,24(sp)
830043e4:	01012903          	lw	s2,16(sp)
830043e8:	00c12983          	lw	s3,12(sp)
830043ec:	00048513          	mv	a0,s1
830043f0:	01412483          	lw	s1,20(sp)
830043f4:	02010113          	addi	sp,sp,32
830043f8:	00008067          	ret
830043fc:	00040593          	mv	a1,s0
83004400:	00090513          	mv	a0,s2
83004404:	ffffe097          	auipc	ra,0xffffe
83004408:	c4c080e7          	jalr	-948(ra) # 83002050 <__swsetup_r>
8300440c:	06051863          	bnez	a0,8300447c <__swbuf_r+0x13c>
83004410:	01042783          	lw	a5,16(s0)
83004414:	00042703          	lw	a4,0(s0)
83004418:	01442683          	lw	a3,20(s0)
8300441c:	0ff4f993          	zext.b	s3,s1
83004420:	40f707b3          	sub	a5,a4,a5
83004424:	0ff4f493          	zext.b	s1,s1
83004428:	f6d7cee3          	blt	a5,a3,830043a4 <__swbuf_r+0x64>
8300442c:	00040593          	mv	a1,s0
83004430:	00090513          	mv	a0,s2
83004434:	fffff097          	auipc	ra,0xfffff
83004438:	888080e7          	jalr	-1912(ra) # 83002cbc <_fflush_r>
8300443c:	04051063          	bnez	a0,8300447c <__swbuf_r+0x13c>
83004440:	00042703          	lw	a4,0(s0)
83004444:	00842683          	lw	a3,8(s0)
83004448:	00100793          	li	a5,1
8300444c:	00170613          	addi	a2,a4,1
83004450:	fff68693          	addi	a3,a3,-1
83004454:	00c42023          	sw	a2,0(s0)
83004458:	00d42423          	sw	a3,8(s0)
8300445c:	01370023          	sb	s3,0(a4)
83004460:	01442703          	lw	a4,20(s0)
83004464:	f6f712e3          	bne	a4,a5,830043c8 <__swbuf_r+0x88>
83004468:	00040593          	mv	a1,s0
8300446c:	00090513          	mv	a0,s2
83004470:	fffff097          	auipc	ra,0xfffff
83004474:	84c080e7          	jalr	-1972(ra) # 83002cbc <_fflush_r>
83004478:	f60502e3          	beqz	a0,830043dc <__swbuf_r+0x9c>
8300447c:	fff00493          	li	s1,-1
83004480:	f5dff06f          	j	830043dc <__swbuf_r+0x9c>
83004484:	ffffe097          	auipc	ra,0xffffe
83004488:	5ac080e7          	jalr	1452(ra) # 83002a30 <__sinit>
8300448c:	ee5ff06f          	j	83004370 <__swbuf_r+0x30>

83004490 <__swbuf>:
83004490:	83007737          	lui	a4,0x83007
83004494:	00050793          	mv	a5,a0
83004498:	88872503          	lw	a0,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
8300449c:	00058613          	mv	a2,a1
830044a0:	00078593          	mv	a1,a5
830044a4:	00000317          	auipc	t1,0x0
830044a8:	e9c30067          	jr	-356(t1) # 83004340 <__swbuf_r>

830044ac <_fwalk>:
830044ac:	fe010113          	addi	sp,sp,-32
830044b0:	01212823          	sw	s2,16(sp)
830044b4:	01312623          	sw	s3,12(sp)
830044b8:	01412423          	sw	s4,8(sp)
830044bc:	01512223          	sw	s5,4(sp)
830044c0:	01612023          	sw	s6,0(sp)
830044c4:	00112e23          	sw	ra,28(sp)
830044c8:	00812c23          	sw	s0,24(sp)
830044cc:	00912a23          	sw	s1,20(sp)
830044d0:	00058b13          	mv	s6,a1
830044d4:	2e050a93          	addi	s5,a0,736
830044d8:	00000a13          	li	s4,0
830044dc:	00100993          	li	s3,1
830044e0:	fff00913          	li	s2,-1
830044e4:	004aa483          	lw	s1,4(s5)
830044e8:	008aa403          	lw	s0,8(s5)
830044ec:	fff48493          	addi	s1,s1,-1
830044f0:	0204c663          	bltz	s1,8300451c <_fwalk+0x70>
830044f4:	00c45783          	lhu	a5,12(s0)
830044f8:	fff48493          	addi	s1,s1,-1
830044fc:	00f9fc63          	bgeu	s3,a5,83004514 <_fwalk+0x68>
83004500:	00e41783          	lh	a5,14(s0)
83004504:	00040513          	mv	a0,s0
83004508:	01278663          	beq	a5,s2,83004514 <_fwalk+0x68>
8300450c:	000b00e7          	jalr	s6
83004510:	00aa6a33          	or	s4,s4,a0
83004514:	06840413          	addi	s0,s0,104
83004518:	fd249ee3          	bne	s1,s2,830044f4 <_fwalk+0x48>
8300451c:	000aaa83          	lw	s5,0(s5)
83004520:	fc0a92e3          	bnez	s5,830044e4 <_fwalk+0x38>
83004524:	01c12083          	lw	ra,28(sp)
83004528:	01812403          	lw	s0,24(sp)
8300452c:	01412483          	lw	s1,20(sp)
83004530:	01012903          	lw	s2,16(sp)
83004534:	00c12983          	lw	s3,12(sp)
83004538:	00412a83          	lw	s5,4(sp)
8300453c:	00012b03          	lw	s6,0(sp)
83004540:	000a0513          	mv	a0,s4
83004544:	00812a03          	lw	s4,8(sp)
83004548:	02010113          	addi	sp,sp,32
8300454c:	00008067          	ret

83004550 <_fwalk_reent>:
83004550:	fd010113          	addi	sp,sp,-48
83004554:	03212023          	sw	s2,32(sp)
83004558:	01312e23          	sw	s3,28(sp)
8300455c:	01412c23          	sw	s4,24(sp)
83004560:	01512a23          	sw	s5,20(sp)
83004564:	01612823          	sw	s6,16(sp)
83004568:	01712623          	sw	s7,12(sp)
8300456c:	02112623          	sw	ra,44(sp)
83004570:	02812423          	sw	s0,40(sp)
83004574:	02912223          	sw	s1,36(sp)
83004578:	00050a93          	mv	s5,a0
8300457c:	00058b93          	mv	s7,a1
83004580:	2e050b13          	addi	s6,a0,736
83004584:	00000a13          	li	s4,0
83004588:	00100993          	li	s3,1
8300458c:	fff00913          	li	s2,-1
83004590:	004b2483          	lw	s1,4(s6)
83004594:	008b2403          	lw	s0,8(s6)
83004598:	fff48493          	addi	s1,s1,-1
8300459c:	0204c863          	bltz	s1,830045cc <_fwalk_reent+0x7c>
830045a0:	00c45783          	lhu	a5,12(s0)
830045a4:	fff48493          	addi	s1,s1,-1
830045a8:	00f9fe63          	bgeu	s3,a5,830045c4 <_fwalk_reent+0x74>
830045ac:	00e41783          	lh	a5,14(s0)
830045b0:	00040593          	mv	a1,s0
830045b4:	000a8513          	mv	a0,s5
830045b8:	01278663          	beq	a5,s2,830045c4 <_fwalk_reent+0x74>
830045bc:	000b80e7          	jalr	s7
830045c0:	00aa6a33          	or	s4,s4,a0
830045c4:	06840413          	addi	s0,s0,104
830045c8:	fd249ce3          	bne	s1,s2,830045a0 <_fwalk_reent+0x50>
830045cc:	000b2b03          	lw	s6,0(s6)
830045d0:	fc0b10e3          	bnez	s6,83004590 <_fwalk_reent+0x40>
830045d4:	02c12083          	lw	ra,44(sp)
830045d8:	02812403          	lw	s0,40(sp)
830045dc:	02412483          	lw	s1,36(sp)
830045e0:	02012903          	lw	s2,32(sp)
830045e4:	01c12983          	lw	s3,28(sp)
830045e8:	01412a83          	lw	s5,20(sp)
830045ec:	01012b03          	lw	s6,16(sp)
830045f0:	00c12b83          	lw	s7,12(sp)
830045f4:	000a0513          	mv	a0,s4
830045f8:	01812a03          	lw	s4,24(sp)
830045fc:	03010113          	addi	sp,sp,48
83004600:	00008067          	ret

83004604 <_fclose_r>:
83004604:	ff010113          	addi	sp,sp,-16
83004608:	00112623          	sw	ra,12(sp)
8300460c:	00812423          	sw	s0,8(sp)
83004610:	00912223          	sw	s1,4(sp)
83004614:	01212023          	sw	s2,0(sp)
83004618:	02058063          	beqz	a1,83004638 <_fclose_r+0x34>
8300461c:	00058413          	mv	s0,a1
83004620:	00050493          	mv	s1,a0
83004624:	00050663          	beqz	a0,83004630 <_fclose_r+0x2c>
83004628:	03852783          	lw	a5,56(a0)
8300462c:	0c078663          	beqz	a5,830046f8 <_fclose_r+0xf4>
83004630:	00c41783          	lh	a5,12(s0)
83004634:	02079263          	bnez	a5,83004658 <_fclose_r+0x54>
83004638:	00c12083          	lw	ra,12(sp)
8300463c:	00812403          	lw	s0,8(sp)
83004640:	00000913          	li	s2,0
83004644:	00412483          	lw	s1,4(sp)
83004648:	00090513          	mv	a0,s2
8300464c:	00012903          	lw	s2,0(sp)
83004650:	01010113          	addi	sp,sp,16
83004654:	00008067          	ret
83004658:	00040593          	mv	a1,s0
8300465c:	00048513          	mv	a0,s1
83004660:	ffffe097          	auipc	ra,0xffffe
83004664:	424080e7          	jalr	1060(ra) # 83002a84 <__sflush_r>
83004668:	02c42783          	lw	a5,44(s0)
8300466c:	00050913          	mv	s2,a0
83004670:	00078a63          	beqz	a5,83004684 <_fclose_r+0x80>
83004674:	01c42583          	lw	a1,28(s0)
83004678:	00048513          	mv	a0,s1
8300467c:	000780e7          	jalr	a5
83004680:	08054663          	bltz	a0,8300470c <_fclose_r+0x108>
83004684:	00c45783          	lhu	a5,12(s0)
83004688:	0807f793          	andi	a5,a5,128
8300468c:	08079863          	bnez	a5,8300471c <_fclose_r+0x118>
83004690:	03042583          	lw	a1,48(s0)
83004694:	00058e63          	beqz	a1,830046b0 <_fclose_r+0xac>
83004698:	04040793          	addi	a5,s0,64
8300469c:	00f58863          	beq	a1,a5,830046ac <_fclose_r+0xa8>
830046a0:	00048513          	mv	a0,s1
830046a4:	ffffd097          	auipc	ra,0xffffd
830046a8:	684080e7          	jalr	1668(ra) # 83001d28 <_free_r>
830046ac:	02042823          	sw	zero,48(s0)
830046b0:	04442583          	lw	a1,68(s0)
830046b4:	00058a63          	beqz	a1,830046c8 <_fclose_r+0xc4>
830046b8:	00048513          	mv	a0,s1
830046bc:	ffffd097          	auipc	ra,0xffffd
830046c0:	66c080e7          	jalr	1644(ra) # 83001d28 <_free_r>
830046c4:	04042223          	sw	zero,68(s0)
830046c8:	ffffe097          	auipc	ra,0xffffe
830046cc:	37c080e7          	jalr	892(ra) # 83002a44 <__sfp_lock_acquire>
830046d0:	00041623          	sh	zero,12(s0)
830046d4:	ffffe097          	auipc	ra,0xffffe
830046d8:	374080e7          	jalr	884(ra) # 83002a48 <__sfp_lock_release>
830046dc:	00c12083          	lw	ra,12(sp)
830046e0:	00812403          	lw	s0,8(sp)
830046e4:	00412483          	lw	s1,4(sp)
830046e8:	00090513          	mv	a0,s2
830046ec:	00012903          	lw	s2,0(sp)
830046f0:	01010113          	addi	sp,sp,16
830046f4:	00008067          	ret
830046f8:	ffffe097          	auipc	ra,0xffffe
830046fc:	338080e7          	jalr	824(ra) # 83002a30 <__sinit>
83004700:	00c41783          	lh	a5,12(s0)
83004704:	f2078ae3          	beqz	a5,83004638 <_fclose_r+0x34>
83004708:	f51ff06f          	j	83004658 <_fclose_r+0x54>
8300470c:	00c45783          	lhu	a5,12(s0)
83004710:	fff00913          	li	s2,-1
83004714:	0807f793          	andi	a5,a5,128
83004718:	f6078ce3          	beqz	a5,83004690 <_fclose_r+0x8c>
8300471c:	01042583          	lw	a1,16(s0)
83004720:	00048513          	mv	a0,s1
83004724:	ffffd097          	auipc	ra,0xffffd
83004728:	604080e7          	jalr	1540(ra) # 83001d28 <_free_r>
8300472c:	f65ff06f          	j	83004690 <_fclose_r+0x8c>

83004730 <fclose>:
83004730:	830077b7          	lui	a5,0x83007
83004734:	00050593          	mv	a1,a0
83004738:	8887a503          	lw	a0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
8300473c:	00000317          	auipc	t1,0x0
83004740:	ec830067          	jr	-312(t1) # 83004604 <_fclose_r>

83004744 <_fstat_r>:
83004744:	ff010113          	addi	sp,sp,-16
83004748:	00058713          	mv	a4,a1
8300474c:	00812423          	sw	s0,8(sp)
83004750:	00912223          	sw	s1,4(sp)
83004754:	00050413          	mv	s0,a0
83004758:	830074b7          	lui	s1,0x83007
8300475c:	00060593          	mv	a1,a2
83004760:	00070513          	mv	a0,a4
83004764:	00112623          	sw	ra,12(sp)
83004768:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
8300476c:	00000097          	auipc	ra,0x0
83004770:	340080e7          	jalr	832(ra) # 83004aac <_fstat>
83004774:	fff00793          	li	a5,-1
83004778:	00f50c63          	beq	a0,a5,83004790 <_fstat_r+0x4c>
8300477c:	00c12083          	lw	ra,12(sp)
83004780:	00812403          	lw	s0,8(sp)
83004784:	00412483          	lw	s1,4(sp)
83004788:	01010113          	addi	sp,sp,16
8300478c:	00008067          	ret
83004790:	8984a783          	lw	a5,-1896(s1)
83004794:	fe0784e3          	beqz	a5,8300477c <_fstat_r+0x38>
83004798:	00c12083          	lw	ra,12(sp)
8300479c:	00f42023          	sw	a5,0(s0)
830047a0:	00812403          	lw	s0,8(sp)
830047a4:	00412483          	lw	s1,4(sp)
830047a8:	01010113          	addi	sp,sp,16
830047ac:	00008067          	ret

830047b0 <_read_r>:
830047b0:	ff010113          	addi	sp,sp,-16
830047b4:	00058713          	mv	a4,a1
830047b8:	00812423          	sw	s0,8(sp)
830047bc:	00912223          	sw	s1,4(sp)
830047c0:	00060593          	mv	a1,a2
830047c4:	00050413          	mv	s0,a0
830047c8:	830074b7          	lui	s1,0x83007
830047cc:	00068613          	mv	a2,a3
830047d0:	00070513          	mv	a0,a4
830047d4:	00112623          	sw	ra,12(sp)
830047d8:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
830047dc:	00000097          	auipc	ra,0x0
830047e0:	26c080e7          	jalr	620(ra) # 83004a48 <_read>
830047e4:	fff00793          	li	a5,-1
830047e8:	00f50c63          	beq	a0,a5,83004800 <_read_r+0x50>
830047ec:	00c12083          	lw	ra,12(sp)
830047f0:	00812403          	lw	s0,8(sp)
830047f4:	00412483          	lw	s1,4(sp)
830047f8:	01010113          	addi	sp,sp,16
830047fc:	00008067          	ret
83004800:	8984a783          	lw	a5,-1896(s1)
83004804:	fe0784e3          	beqz	a5,830047ec <_read_r+0x3c>
83004808:	00c12083          	lw	ra,12(sp)
8300480c:	00f42023          	sw	a5,0(s0)
83004810:	00812403          	lw	s0,8(sp)
83004814:	00412483          	lw	s1,4(sp)
83004818:	01010113          	addi	sp,sp,16
8300481c:	00008067          	ret

83004820 <_close_r>:
83004820:	ff010113          	addi	sp,sp,-16
83004824:	00812423          	sw	s0,8(sp)
83004828:	00912223          	sw	s1,4(sp)
8300482c:	00050413          	mv	s0,a0
83004830:	830074b7          	lui	s1,0x83007
83004834:	00058513          	mv	a0,a1
83004838:	00112623          	sw	ra,12(sp)
8300483c:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
83004840:	00000097          	auipc	ra,0x0
83004844:	21c080e7          	jalr	540(ra) # 83004a5c <_close>
83004848:	fff00793          	li	a5,-1
8300484c:	00f50c63          	beq	a0,a5,83004864 <_close_r+0x44>
83004850:	00c12083          	lw	ra,12(sp)
83004854:	00812403          	lw	s0,8(sp)
83004858:	00412483          	lw	s1,4(sp)
8300485c:	01010113          	addi	sp,sp,16
83004860:	00008067          	ret
83004864:	8984a783          	lw	a5,-1896(s1)
83004868:	fe0784e3          	beqz	a5,83004850 <_close_r+0x30>
8300486c:	00c12083          	lw	ra,12(sp)
83004870:	00f42023          	sw	a5,0(s0)
83004874:	00812403          	lw	s0,8(sp)
83004878:	00412483          	lw	s1,4(sp)
8300487c:	01010113          	addi	sp,sp,16
83004880:	00008067          	ret

83004884 <_lseek_r>:
83004884:	ff010113          	addi	sp,sp,-16
83004888:	00058713          	mv	a4,a1
8300488c:	00812423          	sw	s0,8(sp)
83004890:	00912223          	sw	s1,4(sp)
83004894:	00060593          	mv	a1,a2
83004898:	00050413          	mv	s0,a0
8300489c:	830074b7          	lui	s1,0x83007
830048a0:	00068613          	mv	a2,a3
830048a4:	00070513          	mv	a0,a4
830048a8:	00112623          	sw	ra,12(sp)
830048ac:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
830048b0:	00000097          	auipc	ra,0x0
830048b4:	1c0080e7          	jalr	448(ra) # 83004a70 <_lseek>
830048b8:	fff00793          	li	a5,-1
830048bc:	00f50c63          	beq	a0,a5,830048d4 <_lseek_r+0x50>
830048c0:	00c12083          	lw	ra,12(sp)
830048c4:	00812403          	lw	s0,8(sp)
830048c8:	00412483          	lw	s1,4(sp)
830048cc:	01010113          	addi	sp,sp,16
830048d0:	00008067          	ret
830048d4:	8984a783          	lw	a5,-1896(s1)
830048d8:	fe0784e3          	beqz	a5,830048c0 <_lseek_r+0x3c>
830048dc:	00c12083          	lw	ra,12(sp)
830048e0:	00f42023          	sw	a5,0(s0)
830048e4:	00812403          	lw	s0,8(sp)
830048e8:	00412483          	lw	s1,4(sp)
830048ec:	01010113          	addi	sp,sp,16
830048f0:	00008067          	ret

830048f4 <_isatty_r>:
830048f4:	ff010113          	addi	sp,sp,-16
830048f8:	00812423          	sw	s0,8(sp)
830048fc:	00912223          	sw	s1,4(sp)
83004900:	00050413          	mv	s0,a0
83004904:	830074b7          	lui	s1,0x83007
83004908:	00058513          	mv	a0,a1
8300490c:	00112623          	sw	ra,12(sp)
83004910:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
83004914:	00000097          	auipc	ra,0x0
83004918:	044080e7          	jalr	68(ra) # 83004958 <_isatty>
8300491c:	fff00793          	li	a5,-1
83004920:	00f50c63          	beq	a0,a5,83004938 <_isatty_r+0x44>
83004924:	00c12083          	lw	ra,12(sp)
83004928:	00812403          	lw	s0,8(sp)
8300492c:	00412483          	lw	s1,4(sp)
83004930:	01010113          	addi	sp,sp,16
83004934:	00008067          	ret
83004938:	8984a783          	lw	a5,-1896(s1)
8300493c:	fe0784e3          	beqz	a5,83004924 <_isatty_r+0x30>
83004940:	00c12083          	lw	ra,12(sp)
83004944:	00f42023          	sw	a5,0(s0)
83004948:	00812403          	lw	s0,8(sp)
8300494c:	00412483          	lw	s1,4(sp)
83004950:	01010113          	addi	sp,sp,16
83004954:	00008067          	ret

83004958 <_isatty>:
83004958:	fb010113          	addi	sp,sp,-80
8300495c:	00410593          	addi	a1,sp,4
83004960:	04112623          	sw	ra,76(sp)
83004964:	00000097          	auipc	ra,0x0
83004968:	064080e7          	jalr	100(ra) # 830049c8 <fstat>
8300496c:	02054e63          	bltz	a0,830049a8 <_isatty+0x50>
83004970:	00812683          	lw	a3,8(sp)
83004974:	0000f7b7          	lui	a5,0xf
83004978:	00002737          	lui	a4,0x2
8300497c:	00d7f7b3          	and	a5,a5,a3
83004980:	00100513          	li	a0,1
83004984:	00e78c63          	beq	a5,a4,8300499c <_isatty+0x44>
83004988:	00000097          	auipc	ra,0x0
8300498c:	05c080e7          	jalr	92(ra) # 830049e4 <__errno>
83004990:	01900793          	li	a5,25
83004994:	00f52023          	sw	a5,0(a0)
83004998:	00000513          	li	a0,0
8300499c:	04c12083          	lw	ra,76(sp)
830049a0:	05010113          	addi	sp,sp,80
830049a4:	00008067          	ret
830049a8:	00000097          	auipc	ra,0x0
830049ac:	03c080e7          	jalr	60(ra) # 830049e4 <__errno>
830049b0:	04c12083          	lw	ra,76(sp)
830049b4:	00900793          	li	a5,9
830049b8:	00f52023          	sw	a5,0(a0)
830049bc:	00000513          	li	a0,0
830049c0:	05010113          	addi	sp,sp,80
830049c4:	00008067          	ret

830049c8 <fstat>:
830049c8:	83007737          	lui	a4,0x83007
830049cc:	00050793          	mv	a5,a0
830049d0:	88872503          	lw	a0,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
830049d4:	00058613          	mv	a2,a1
830049d8:	00078593          	mv	a1,a5
830049dc:	00000317          	auipc	t1,0x0
830049e0:	d6830067          	jr	-664(t1) # 83004744 <_fstat_r>

830049e4 <__errno>:
830049e4:	830077b7          	lui	a5,0x83007
830049e8:	8887a503          	lw	a0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
830049ec:	00008067          	ret

830049f0 <_syscall_>:
830049f0:	00050893          	mv	a7,a0
830049f4:	00058513          	mv	a0,a1
830049f8:	00060593          	mv	a1,a2
830049fc:	00068613          	mv	a2,a3
83004a00:	00000073          	ecall
83004a04:	00008067          	ret

83004a08 <_exit>:
83004a08:	00000893          	li	a7,0
83004a0c:	00000593          	li	a1,0
83004a10:	00000613          	li	a2,0
83004a14:	00000073          	ecall
83004a18:	0000006f          	j	83004a18 <_exit+0x10>

83004a1c <_open>:
83004a1c:	ff010113          	addi	sp,sp,-16
83004a20:	00200513          	li	a0,2
83004a24:	00112623          	sw	ra,12(sp)
83004a28:	00000097          	auipc	ra,0x0
83004a2c:	fe0080e7          	jalr	-32(ra) # 83004a08 <_exit>

83004a30 <_write>:
83004a30:	00400893          	li	a7,4
83004a34:	00000073          	ecall
83004a38:	00000513          	li	a0,0
83004a3c:	00008067          	ret

83004a40 <_sbrk>:
83004a40:	fff00513          	li	a0,-1
83004a44:	00008067          	ret

83004a48 <_read>:
83004a48:	ff010113          	addi	sp,sp,-16
83004a4c:	00300513          	li	a0,3
83004a50:	00112623          	sw	ra,12(sp)
83004a54:	00000097          	auipc	ra,0x0
83004a58:	fb4080e7          	jalr	-76(ra) # 83004a08 <_exit>

83004a5c <_close>:
83004a5c:	ff010113          	addi	sp,sp,-16
83004a60:	00700513          	li	a0,7
83004a64:	00112623          	sw	ra,12(sp)
83004a68:	00000097          	auipc	ra,0x0
83004a6c:	fa0080e7          	jalr	-96(ra) # 83004a08 <_exit>

83004a70 <_lseek>:
83004a70:	ff010113          	addi	sp,sp,-16
83004a74:	00800513          	li	a0,8
83004a78:	00112623          	sw	ra,12(sp)
83004a7c:	00000097          	auipc	ra,0x0
83004a80:	f8c080e7          	jalr	-116(ra) # 83004a08 <_exit>

83004a84 <_gettimeofday>:
83004a84:	ff010113          	addi	sp,sp,-16
83004a88:	01300513          	li	a0,19
83004a8c:	00112623          	sw	ra,12(sp)
83004a90:	00000097          	auipc	ra,0x0
83004a94:	f78080e7          	jalr	-136(ra) # 83004a08 <_exit>

83004a98 <_execve>:
83004a98:	ff010113          	addi	sp,sp,-16
83004a9c:	00d00513          	li	a0,13
83004aa0:	00112623          	sw	ra,12(sp)
83004aa4:	00000097          	auipc	ra,0x0
83004aa8:	f64080e7          	jalr	-156(ra) # 83004a08 <_exit>

83004aac <_fstat>:
83004aac:	fff00513          	li	a0,-1
83004ab0:	00008067          	ret

83004ab4 <_stat>:
83004ab4:	830066b7          	lui	a3,0x83006
83004ab8:	83007637          	lui	a2,0x83007
83004abc:	83006537          	lui	a0,0x83006
83004ac0:	ff010113          	addi	sp,sp,-16
83004ac4:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004ac8:	88060613          	addi	a2,a2,-1920 # 83006880 <__BSS_END__+0xffffffac>
83004acc:	06b00593          	li	a1,107
83004ad0:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004ad4:	00112623          	sw	ra,12(sp)
83004ad8:	00000097          	auipc	ra,0x0
83004adc:	2b8080e7          	jalr	696(ra) # 83004d90 <__assert_func>

83004ae0 <_kill>:
83004ae0:	ff010113          	addi	sp,sp,-16
83004ae4:	ffb00513          	li	a0,-5
83004ae8:	00112623          	sw	ra,12(sp)
83004aec:	00000097          	auipc	ra,0x0
83004af0:	f1c080e7          	jalr	-228(ra) # 83004a08 <_exit>

83004af4 <_getpid>:
83004af4:	ff010113          	addi	sp,sp,-16
83004af8:	ffa00513          	li	a0,-6
83004afc:	00112623          	sw	ra,12(sp)
83004b00:	00000097          	auipc	ra,0x0
83004b04:	f08080e7          	jalr	-248(ra) # 83004a08 <_exit>

83004b08 <_fork>:
83004b08:	830066b7          	lui	a3,0x83006
83004b0c:	83007637          	lui	a2,0x83007
83004b10:	83006537          	lui	a0,0x83006
83004b14:	ff010113          	addi	sp,sp,-16
83004b18:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004b1c:	87860613          	addi	a2,a2,-1928 # 83006878 <__BSS_END__+0xffffffa4>
83004b20:	07a00593          	li	a1,122
83004b24:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004b28:	00112623          	sw	ra,12(sp)
83004b2c:	00000097          	auipc	ra,0x0
83004b30:	264080e7          	jalr	612(ra) # 83004d90 <__assert_func>

83004b34 <vfork>:
83004b34:	830066b7          	lui	a3,0x83006
83004b38:	83007637          	lui	a2,0x83007
83004b3c:	83006537          	lui	a0,0x83006
83004b40:	ff010113          	addi	sp,sp,-16
83004b44:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004b48:	87060613          	addi	a2,a2,-1936 # 83006870 <__BSS_END__+0xffffff9c>
83004b4c:	07f00593          	li	a1,127
83004b50:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004b54:	00112623          	sw	ra,12(sp)
83004b58:	00000097          	auipc	ra,0x0
83004b5c:	238080e7          	jalr	568(ra) # 83004d90 <__assert_func>

83004b60 <_link>:
83004b60:	830066b7          	lui	a3,0x83006
83004b64:	83007637          	lui	a2,0x83007
83004b68:	83006537          	lui	a0,0x83006
83004b6c:	ff010113          	addi	sp,sp,-16
83004b70:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004b74:	86860613          	addi	a2,a2,-1944 # 83006868 <__BSS_END__+0xffffff94>
83004b78:	08400593          	li	a1,132
83004b7c:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004b80:	00112623          	sw	ra,12(sp)
83004b84:	00000097          	auipc	ra,0x0
83004b88:	20c080e7          	jalr	524(ra) # 83004d90 <__assert_func>

83004b8c <_unlink>:
83004b8c:	830066b7          	lui	a3,0x83006
83004b90:	83007637          	lui	a2,0x83007
83004b94:	83006537          	lui	a0,0x83006
83004b98:	ff010113          	addi	sp,sp,-16
83004b9c:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004ba0:	86060613          	addi	a2,a2,-1952 # 83006860 <__BSS_END__+0xffffff8c>
83004ba4:	08900593          	li	a1,137
83004ba8:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004bac:	00112623          	sw	ra,12(sp)
83004bb0:	00000097          	auipc	ra,0x0
83004bb4:	1e0080e7          	jalr	480(ra) # 83004d90 <__assert_func>

83004bb8 <_wait>:
83004bb8:	830066b7          	lui	a3,0x83006
83004bbc:	83007637          	lui	a2,0x83007
83004bc0:	83006537          	lui	a0,0x83006
83004bc4:	ff010113          	addi	sp,sp,-16
83004bc8:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004bcc:	85860613          	addi	a2,a2,-1960 # 83006858 <__BSS_END__+0xffffff84>
83004bd0:	08e00593          	li	a1,142
83004bd4:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004bd8:	00112623          	sw	ra,12(sp)
83004bdc:	00000097          	auipc	ra,0x0
83004be0:	1b4080e7          	jalr	436(ra) # 83004d90 <__assert_func>

83004be4 <_times>:
83004be4:	830066b7          	lui	a3,0x83006
83004be8:	83007637          	lui	a2,0x83007
83004bec:	83006537          	lui	a0,0x83006
83004bf0:	ff010113          	addi	sp,sp,-16
83004bf4:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004bf8:	85060613          	addi	a2,a2,-1968 # 83006850 <__BSS_END__+0xffffff7c>
83004bfc:	09300593          	li	a1,147
83004c00:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004c04:	00112623          	sw	ra,12(sp)
83004c08:	00000097          	auipc	ra,0x0
83004c0c:	188080e7          	jalr	392(ra) # 83004d90 <__assert_func>

83004c10 <pipe>:
83004c10:	830066b7          	lui	a3,0x83006
83004c14:	83007637          	lui	a2,0x83007
83004c18:	83006537          	lui	a0,0x83006
83004c1c:	ff010113          	addi	sp,sp,-16
83004c20:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004c24:	84860613          	addi	a2,a2,-1976 # 83006848 <__BSS_END__+0xffffff74>
83004c28:	09800593          	li	a1,152
83004c2c:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004c30:	00112623          	sw	ra,12(sp)
83004c34:	00000097          	auipc	ra,0x0
83004c38:	15c080e7          	jalr	348(ra) # 83004d90 <__assert_func>

83004c3c <dup>:
83004c3c:	830066b7          	lui	a3,0x83006
83004c40:	83007637          	lui	a2,0x83007
83004c44:	83006537          	lui	a0,0x83006
83004c48:	ff010113          	addi	sp,sp,-16
83004c4c:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004c50:	84460613          	addi	a2,a2,-1980 # 83006844 <__BSS_END__+0xffffff70>
83004c54:	09d00593          	li	a1,157
83004c58:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004c5c:	00112623          	sw	ra,12(sp)
83004c60:	00000097          	auipc	ra,0x0
83004c64:	130080e7          	jalr	304(ra) # 83004d90 <__assert_func>

83004c68 <dup2>:
83004c68:	fff00513          	li	a0,-1
83004c6c:	00008067          	ret

83004c70 <sleep>:
83004c70:	830066b7          	lui	a3,0x83006
83004c74:	83007637          	lui	a2,0x83007
83004c78:	83006537          	lui	a0,0x83006
83004c7c:	ff010113          	addi	sp,sp,-16
83004c80:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004c84:	83c60613          	addi	a2,a2,-1988 # 8300683c <__BSS_END__+0xffffff68>
83004c88:	0a600593          	li	a1,166
83004c8c:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004c90:	00112623          	sw	ra,12(sp)
83004c94:	00000097          	auipc	ra,0x0
83004c98:	0fc080e7          	jalr	252(ra) # 83004d90 <__assert_func>

83004c9c <readlink>:
83004c9c:	830066b7          	lui	a3,0x83006
83004ca0:	83006637          	lui	a2,0x83006
83004ca4:	83006537          	lui	a0,0x83006
83004ca8:	ff010113          	addi	sp,sp,-16
83004cac:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004cb0:	9c060613          	addi	a2,a2,-1600 # 830059c0 <__BSS_END__+0xfffff0ec>
83004cb4:	0ab00593          	li	a1,171
83004cb8:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004cbc:	00112623          	sw	ra,12(sp)
83004cc0:	00000097          	auipc	ra,0x0
83004cc4:	0d0080e7          	jalr	208(ra) # 83004d90 <__assert_func>

83004cc8 <symlink>:
83004cc8:	830066b7          	lui	a3,0x83006
83004ccc:	83007637          	lui	a2,0x83007
83004cd0:	83006537          	lui	a0,0x83006
83004cd4:	ff010113          	addi	sp,sp,-16
83004cd8:	98068693          	addi	a3,a3,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004cdc:	83460613          	addi	a2,a2,-1996 # 83006834 <__BSS_END__+0xffffff60>
83004ce0:	0b000593          	li	a1,176
83004ce4:	98450513          	addi	a0,a0,-1660 # 83005984 <__BSS_END__+0xfffff0b0>
83004ce8:	00112623          	sw	ra,12(sp)
83004cec:	00000097          	auipc	ra,0x0
83004cf0:	0a4080e7          	jalr	164(ra) # 83004d90 <__assert_func>

83004cf4 <ioctl>:
83004cf4:	fe010113          	addi	sp,sp,-32
83004cf8:	00c12423          	sw	a2,8(sp)
83004cfc:	00d12623          	sw	a3,12(sp)
83004d00:	00e12823          	sw	a4,16(sp)
83004d04:	00f12a23          	sw	a5,20(sp)
83004d08:	01012c23          	sw	a6,24(sp)
83004d0c:	01112e23          	sw	a7,28(sp)
83004d10:	fff00513          	li	a0,-1
83004d14:	02010113          	addi	sp,sp,32
83004d18:	00008067          	ret

83004d1c <_start>:
83004d1c:	00000413          	li	s0,0
83004d20:	004000ef          	jal	ra,83004d24 <call_main>

83004d24 <call_main>:
83004d24:	fe010113          	addi	sp,sp,-32
83004d28:	00c10613          	addi	a2,sp,12
83004d2c:	830077b7          	lui	a5,0x83007
83004d30:	00060593          	mv	a1,a2
83004d34:	00000513          	li	a0,0
83004d38:	00112e23          	sw	ra,28(sp)
83004d3c:	88c7aa23          	sw	a2,-1900(a5) # 83006894 <__BSS_END__+0xffffffc0>
83004d40:	00012623          	sw	zero,12(sp)
83004d44:	ffffb097          	auipc	ra,0xffffb
83004d48:	370080e7          	jalr	880(ra) # 830000b4 <main>
83004d4c:	00000097          	auipc	ra,0x0
83004d50:	008080e7          	jalr	8(ra) # 83004d54 <exit>

83004d54 <exit>:
83004d54:	ff010113          	addi	sp,sp,-16
83004d58:	00000593          	li	a1,0
83004d5c:	00812423          	sw	s0,8(sp)
83004d60:	00112623          	sw	ra,12(sp)
83004d64:	00050413          	mv	s0,a0
83004d68:	00000097          	auipc	ra,0x0
83004d6c:	77c080e7          	jalr	1916(ra) # 830054e4 <__call_exitprocs>
83004d70:	830077b7          	lui	a5,0x83007
83004d74:	8307a503          	lw	a0,-2000(a5) # 83006830 <__BSS_END__+0xffffff5c>
83004d78:	03c52783          	lw	a5,60(a0)
83004d7c:	00078463          	beqz	a5,83004d84 <exit+0x30>
83004d80:	000780e7          	jalr	a5
83004d84:	00040513          	mv	a0,s0
83004d88:	00000097          	auipc	ra,0x0
83004d8c:	c80080e7          	jalr	-896(ra) # 83004a08 <_exit>

83004d90 <__assert_func>:
83004d90:	830077b7          	lui	a5,0x83007
83004d94:	8887a703          	lw	a4,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83004d98:	ff010113          	addi	sp,sp,-16
83004d9c:	00068793          	mv	a5,a3
83004da0:	00060813          	mv	a6,a2
83004da4:	00112623          	sw	ra,12(sp)
83004da8:	00c72883          	lw	a7,12(a4)
83004dac:	00050693          	mv	a3,a0
83004db0:	00058713          	mv	a4,a1
83004db4:	00078613          	mv	a2,a5
83004db8:	02080463          	beqz	a6,83004de0 <__assert_func+0x50>
83004dbc:	830067b7          	lui	a5,0x83006
83004dc0:	9cc78793          	addi	a5,a5,-1588 # 830059cc <__BSS_END__+0xfffff0f8>
83004dc4:	830065b7          	lui	a1,0x83006
83004dc8:	9dc58593          	addi	a1,a1,-1572 # 830059dc <__BSS_END__+0xfffff108>
83004dcc:	00088513          	mv	a0,a7
83004dd0:	00000097          	auipc	ra,0x0
83004dd4:	64c080e7          	jalr	1612(ra) # 8300541c <fiprintf>
83004dd8:	00000097          	auipc	ra,0x0
83004ddc:	030080e7          	jalr	48(ra) # 83004e08 <abort>
83004de0:	83006837          	lui	a6,0x83006
83004de4:	9d880793          	addi	a5,a6,-1576 # 830059d8 <__BSS_END__+0xfffff104>
83004de8:	9d880813          	addi	a6,a6,-1576
83004dec:	fd9ff06f          	j	83004dc4 <__assert_func+0x34>

83004df0 <__assert>:
83004df0:	ff010113          	addi	sp,sp,-16
83004df4:	00060693          	mv	a3,a2
83004df8:	00000613          	li	a2,0
83004dfc:	00112623          	sw	ra,12(sp)
83004e00:	00000097          	auipc	ra,0x0
83004e04:	f90080e7          	jalr	-112(ra) # 83004d90 <__assert_func>

83004e08 <abort>:
83004e08:	ff010113          	addi	sp,sp,-16
83004e0c:	00600513          	li	a0,6
83004e10:	00112623          	sw	ra,12(sp)
83004e14:	00000097          	auipc	ra,0x0
83004e18:	2e8080e7          	jalr	744(ra) # 830050fc <raise>
83004e1c:	00100513          	li	a0,1
83004e20:	00000097          	auipc	ra,0x0
83004e24:	be8080e7          	jalr	-1048(ra) # 83004a08 <_exit>

83004e28 <_init_signal_r>:
83004e28:	2dc52783          	lw	a5,732(a0)
83004e2c:	00078663          	beqz	a5,83004e38 <_init_signal_r+0x10>
83004e30:	00000513          	li	a0,0
83004e34:	00008067          	ret
83004e38:	ff010113          	addi	sp,sp,-16
83004e3c:	08000593          	li	a1,128
83004e40:	00812423          	sw	s0,8(sp)
83004e44:	00112623          	sw	ra,12(sp)
83004e48:	00050413          	mv	s0,a0
83004e4c:	ffffe097          	auipc	ra,0xffffe
83004e50:	41c080e7          	jalr	1052(ra) # 83003268 <_malloc_r>
83004e54:	2ca42e23          	sw	a0,732(s0)
83004e58:	02050463          	beqz	a0,83004e80 <_init_signal_r+0x58>
83004e5c:	08050793          	addi	a5,a0,128
83004e60:	00052023          	sw	zero,0(a0)
83004e64:	00450513          	addi	a0,a0,4
83004e68:	fef51ce3          	bne	a0,a5,83004e60 <_init_signal_r+0x38>
83004e6c:	00000513          	li	a0,0
83004e70:	00c12083          	lw	ra,12(sp)
83004e74:	00812403          	lw	s0,8(sp)
83004e78:	01010113          	addi	sp,sp,16
83004e7c:	00008067          	ret
83004e80:	fff00513          	li	a0,-1
83004e84:	fedff06f          	j	83004e70 <_init_signal_r+0x48>

83004e88 <_signal_r>:
83004e88:	fe010113          	addi	sp,sp,-32
83004e8c:	00912a23          	sw	s1,20(sp)
83004e90:	00112e23          	sw	ra,28(sp)
83004e94:	00812c23          	sw	s0,24(sp)
83004e98:	01f00793          	li	a5,31
83004e9c:	00050493          	mv	s1,a0
83004ea0:	02b7ea63          	bltu	a5,a1,83004ed4 <_signal_r+0x4c>
83004ea4:	2dc52703          	lw	a4,732(a0)
83004ea8:	00058413          	mv	s0,a1
83004eac:	04070463          	beqz	a4,83004ef4 <_signal_r+0x6c>
83004eb0:	00241413          	slli	s0,s0,0x2
83004eb4:	00870733          	add	a4,a4,s0
83004eb8:	00072503          	lw	a0,0(a4)
83004ebc:	00c72023          	sw	a2,0(a4)
83004ec0:	01c12083          	lw	ra,28(sp)
83004ec4:	01812403          	lw	s0,24(sp)
83004ec8:	01412483          	lw	s1,20(sp)
83004ecc:	02010113          	addi	sp,sp,32
83004ed0:	00008067          	ret
83004ed4:	01c12083          	lw	ra,28(sp)
83004ed8:	01812403          	lw	s0,24(sp)
83004edc:	01600793          	li	a5,22
83004ee0:	00f52023          	sw	a5,0(a0)
83004ee4:	01412483          	lw	s1,20(sp)
83004ee8:	fff00513          	li	a0,-1
83004eec:	02010113          	addi	sp,sp,32
83004ef0:	00008067          	ret
83004ef4:	08000593          	li	a1,128
83004ef8:	00c12623          	sw	a2,12(sp)
83004efc:	ffffe097          	auipc	ra,0xffffe
83004f00:	36c080e7          	jalr	876(ra) # 83003268 <_malloc_r>
83004f04:	2ca4ae23          	sw	a0,732(s1)
83004f08:	00050713          	mv	a4,a0
83004f0c:	02050063          	beqz	a0,83004f2c <_signal_r+0xa4>
83004f10:	00c12603          	lw	a2,12(sp)
83004f14:	00050793          	mv	a5,a0
83004f18:	08050693          	addi	a3,a0,128
83004f1c:	0007a023          	sw	zero,0(a5)
83004f20:	00478793          	addi	a5,a5,4
83004f24:	fed79ce3          	bne	a5,a3,83004f1c <_signal_r+0x94>
83004f28:	f89ff06f          	j	83004eb0 <_signal_r+0x28>
83004f2c:	fff00513          	li	a0,-1
83004f30:	f91ff06f          	j	83004ec0 <_signal_r+0x38>

83004f34 <_raise_r>:
83004f34:	ff010113          	addi	sp,sp,-16
83004f38:	00912223          	sw	s1,4(sp)
83004f3c:	00112623          	sw	ra,12(sp)
83004f40:	00812423          	sw	s0,8(sp)
83004f44:	01f00793          	li	a5,31
83004f48:	00050493          	mv	s1,a0
83004f4c:	0ab7ee63          	bltu	a5,a1,83005008 <_raise_r+0xd4>
83004f50:	2dc52783          	lw	a5,732(a0)
83004f54:	00058413          	mv	s0,a1
83004f58:	04078463          	beqz	a5,83004fa0 <_raise_r+0x6c>
83004f5c:	00259713          	slli	a4,a1,0x2
83004f60:	00e787b3          	add	a5,a5,a4
83004f64:	0007a703          	lw	a4,0(a5)
83004f68:	02070c63          	beqz	a4,83004fa0 <_raise_r+0x6c>
83004f6c:	00100693          	li	a3,1
83004f70:	08d70063          	beq	a4,a3,83004ff0 <_raise_r+0xbc>
83004f74:	fff00693          	li	a3,-1
83004f78:	04d70c63          	beq	a4,a3,83004fd0 <_raise_r+0x9c>
83004f7c:	00058513          	mv	a0,a1
83004f80:	0007a023          	sw	zero,0(a5)
83004f84:	000700e7          	jalr	a4
83004f88:	00000513          	li	a0,0
83004f8c:	00c12083          	lw	ra,12(sp)
83004f90:	00812403          	lw	s0,8(sp)
83004f94:	00412483          	lw	s1,4(sp)
83004f98:	01010113          	addi	sp,sp,16
83004f9c:	00008067          	ret
83004fa0:	00048513          	mv	a0,s1
83004fa4:	00000097          	auipc	ra,0x0
83004fa8:	538080e7          	jalr	1336(ra) # 830054dc <_getpid_r>
83004fac:	00040613          	mv	a2,s0
83004fb0:	00812403          	lw	s0,8(sp)
83004fb4:	00c12083          	lw	ra,12(sp)
83004fb8:	00050593          	mv	a1,a0
83004fbc:	00048513          	mv	a0,s1
83004fc0:	00412483          	lw	s1,4(sp)
83004fc4:	01010113          	addi	sp,sp,16
83004fc8:	00000317          	auipc	t1,0x0
83004fcc:	4a830067          	jr	1192(t1) # 83005470 <_kill_r>
83004fd0:	00c12083          	lw	ra,12(sp)
83004fd4:	00812403          	lw	s0,8(sp)
83004fd8:	01600793          	li	a5,22
83004fdc:	00f52023          	sw	a5,0(a0)
83004fe0:	00412483          	lw	s1,4(sp)
83004fe4:	00100513          	li	a0,1
83004fe8:	01010113          	addi	sp,sp,16
83004fec:	00008067          	ret
83004ff0:	00c12083          	lw	ra,12(sp)
83004ff4:	00812403          	lw	s0,8(sp)
83004ff8:	00412483          	lw	s1,4(sp)
83004ffc:	00000513          	li	a0,0
83005000:	01010113          	addi	sp,sp,16
83005004:	00008067          	ret
83005008:	01600793          	li	a5,22
8300500c:	00f52023          	sw	a5,0(a0)
83005010:	fff00513          	li	a0,-1
83005014:	f79ff06f          	j	83004f8c <_raise_r+0x58>

83005018 <__sigtramp_r>:
83005018:	01f00793          	li	a5,31
8300501c:	0cb7ec63          	bltu	a5,a1,830050f4 <__sigtramp_r+0xdc>
83005020:	2dc52703          	lw	a4,732(a0)
83005024:	ff010113          	addi	sp,sp,-16
83005028:	00812423          	sw	s0,8(sp)
8300502c:	00912223          	sw	s1,4(sp)
83005030:	00112623          	sw	ra,12(sp)
83005034:	00058413          	mv	s0,a1
83005038:	00050493          	mv	s1,a0
8300503c:	06070063          	beqz	a4,8300509c <__sigtramp_r+0x84>
83005040:	00241793          	slli	a5,s0,0x2
83005044:	00f70733          	add	a4,a4,a5
83005048:	00072783          	lw	a5,0(a4)
8300504c:	02078c63          	beqz	a5,83005084 <__sigtramp_r+0x6c>
83005050:	fff00693          	li	a3,-1
83005054:	08d78863          	beq	a5,a3,830050e4 <__sigtramp_r+0xcc>
83005058:	00100693          	li	a3,1
8300505c:	06d78863          	beq	a5,a3,830050cc <__sigtramp_r+0xb4>
83005060:	00040513          	mv	a0,s0
83005064:	00072023          	sw	zero,0(a4)
83005068:	000780e7          	jalr	a5
8300506c:	00000513          	li	a0,0
83005070:	00c12083          	lw	ra,12(sp)
83005074:	00812403          	lw	s0,8(sp)
83005078:	00412483          	lw	s1,4(sp)
8300507c:	01010113          	addi	sp,sp,16
83005080:	00008067          	ret
83005084:	00c12083          	lw	ra,12(sp)
83005088:	00812403          	lw	s0,8(sp)
8300508c:	00412483          	lw	s1,4(sp)
83005090:	00100513          	li	a0,1
83005094:	01010113          	addi	sp,sp,16
83005098:	00008067          	ret
8300509c:	08000593          	li	a1,128
830050a0:	ffffe097          	auipc	ra,0xffffe
830050a4:	1c8080e7          	jalr	456(ra) # 83003268 <_malloc_r>
830050a8:	2ca4ae23          	sw	a0,732(s1)
830050ac:	00050713          	mv	a4,a0
830050b0:	02050e63          	beqz	a0,830050ec <__sigtramp_r+0xd4>
830050b4:	00050793          	mv	a5,a0
830050b8:	08050693          	addi	a3,a0,128
830050bc:	0007a023          	sw	zero,0(a5)
830050c0:	00478793          	addi	a5,a5,4
830050c4:	fed79ce3          	bne	a5,a3,830050bc <__sigtramp_r+0xa4>
830050c8:	f79ff06f          	j	83005040 <__sigtramp_r+0x28>
830050cc:	00c12083          	lw	ra,12(sp)
830050d0:	00812403          	lw	s0,8(sp)
830050d4:	00412483          	lw	s1,4(sp)
830050d8:	00300513          	li	a0,3
830050dc:	01010113          	addi	sp,sp,16
830050e0:	00008067          	ret
830050e4:	00200513          	li	a0,2
830050e8:	f89ff06f          	j	83005070 <__sigtramp_r+0x58>
830050ec:	fff00513          	li	a0,-1
830050f0:	f81ff06f          	j	83005070 <__sigtramp_r+0x58>
830050f4:	fff00513          	li	a0,-1
830050f8:	00008067          	ret

830050fc <raise>:
830050fc:	ff010113          	addi	sp,sp,-16
83005100:	00912223          	sw	s1,4(sp)
83005104:	83007737          	lui	a4,0x83007
83005108:	00112623          	sw	ra,12(sp)
8300510c:	00812423          	sw	s0,8(sp)
83005110:	01f00793          	li	a5,31
83005114:	88872483          	lw	s1,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
83005118:	0aa7ec63          	bltu	a5,a0,830051d0 <raise+0xd4>
8300511c:	2dc4a783          	lw	a5,732(s1)
83005120:	00050413          	mv	s0,a0
83005124:	04078263          	beqz	a5,83005168 <raise+0x6c>
83005128:	00251713          	slli	a4,a0,0x2
8300512c:	00e787b3          	add	a5,a5,a4
83005130:	0007a703          	lw	a4,0(a5)
83005134:	02070a63          	beqz	a4,83005168 <raise+0x6c>
83005138:	00100693          	li	a3,1
8300513c:	06d70e63          	beq	a4,a3,830051b8 <raise+0xbc>
83005140:	fff00693          	li	a3,-1
83005144:	04d70a63          	beq	a4,a3,83005198 <raise+0x9c>
83005148:	0007a023          	sw	zero,0(a5)
8300514c:	000700e7          	jalr	a4
83005150:	00000513          	li	a0,0
83005154:	00c12083          	lw	ra,12(sp)
83005158:	00812403          	lw	s0,8(sp)
8300515c:	00412483          	lw	s1,4(sp)
83005160:	01010113          	addi	sp,sp,16
83005164:	00008067          	ret
83005168:	00048513          	mv	a0,s1
8300516c:	00000097          	auipc	ra,0x0
83005170:	370080e7          	jalr	880(ra) # 830054dc <_getpid_r>
83005174:	00040613          	mv	a2,s0
83005178:	00812403          	lw	s0,8(sp)
8300517c:	00c12083          	lw	ra,12(sp)
83005180:	00050593          	mv	a1,a0
83005184:	00048513          	mv	a0,s1
83005188:	00412483          	lw	s1,4(sp)
8300518c:	01010113          	addi	sp,sp,16
83005190:	00000317          	auipc	t1,0x0
83005194:	2e030067          	jr	736(t1) # 83005470 <_kill_r>
83005198:	00c12083          	lw	ra,12(sp)
8300519c:	00812403          	lw	s0,8(sp)
830051a0:	01600793          	li	a5,22
830051a4:	00f4a023          	sw	a5,0(s1)
830051a8:	00100513          	li	a0,1
830051ac:	00412483          	lw	s1,4(sp)
830051b0:	01010113          	addi	sp,sp,16
830051b4:	00008067          	ret
830051b8:	00c12083          	lw	ra,12(sp)
830051bc:	00812403          	lw	s0,8(sp)
830051c0:	00412483          	lw	s1,4(sp)
830051c4:	00000513          	li	a0,0
830051c8:	01010113          	addi	sp,sp,16
830051cc:	00008067          	ret
830051d0:	01600793          	li	a5,22
830051d4:	00f4a023          	sw	a5,0(s1)
830051d8:	fff00513          	li	a0,-1
830051dc:	f79ff06f          	j	83005154 <raise+0x58>

830051e0 <signal>:
830051e0:	ff010113          	addi	sp,sp,-16
830051e4:	01212023          	sw	s2,0(sp)
830051e8:	83007737          	lui	a4,0x83007
830051ec:	00112623          	sw	ra,12(sp)
830051f0:	00812423          	sw	s0,8(sp)
830051f4:	00912223          	sw	s1,4(sp)
830051f8:	01f00793          	li	a5,31
830051fc:	88872903          	lw	s2,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
83005200:	02a7ee63          	bltu	a5,a0,8300523c <signal+0x5c>
83005204:	00050413          	mv	s0,a0
83005208:	2dc92503          	lw	a0,732(s2)
8300520c:	00058493          	mv	s1,a1
83005210:	04050863          	beqz	a0,83005260 <signal+0x80>
83005214:	00241413          	slli	s0,s0,0x2
83005218:	008507b3          	add	a5,a0,s0
8300521c:	0007a503          	lw	a0,0(a5)
83005220:	0097a023          	sw	s1,0(a5)
83005224:	00c12083          	lw	ra,12(sp)
83005228:	00812403          	lw	s0,8(sp)
8300522c:	00412483          	lw	s1,4(sp)
83005230:	00012903          	lw	s2,0(sp)
83005234:	01010113          	addi	sp,sp,16
83005238:	00008067          	ret
8300523c:	00c12083          	lw	ra,12(sp)
83005240:	00812403          	lw	s0,8(sp)
83005244:	01600793          	li	a5,22
83005248:	00f92023          	sw	a5,0(s2)
8300524c:	00412483          	lw	s1,4(sp)
83005250:	00012903          	lw	s2,0(sp)
83005254:	fff00513          	li	a0,-1
83005258:	01010113          	addi	sp,sp,16
8300525c:	00008067          	ret
83005260:	08000593          	li	a1,128
83005264:	00090513          	mv	a0,s2
83005268:	ffffe097          	auipc	ra,0xffffe
8300526c:	000080e7          	jalr	ra # 83003268 <_malloc_r>
83005270:	2ca92e23          	sw	a0,732(s2)
83005274:	00050e63          	beqz	a0,83005290 <signal+0xb0>
83005278:	00050793          	mv	a5,a0
8300527c:	08050713          	addi	a4,a0,128
83005280:	0007a023          	sw	zero,0(a5)
83005284:	00478793          	addi	a5,a5,4
83005288:	fee79ce3          	bne	a5,a4,83005280 <signal+0xa0>
8300528c:	f89ff06f          	j	83005214 <signal+0x34>
83005290:	fff00513          	li	a0,-1
83005294:	f91ff06f          	j	83005224 <signal+0x44>

83005298 <_init_signal>:
83005298:	ff010113          	addi	sp,sp,-16
8300529c:	830077b7          	lui	a5,0x83007
830052a0:	00812423          	sw	s0,8(sp)
830052a4:	8887a403          	lw	s0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
830052a8:	00112623          	sw	ra,12(sp)
830052ac:	2dc42783          	lw	a5,732(s0)
830052b0:	00078c63          	beqz	a5,830052c8 <_init_signal+0x30>
830052b4:	00000513          	li	a0,0
830052b8:	00c12083          	lw	ra,12(sp)
830052bc:	00812403          	lw	s0,8(sp)
830052c0:	01010113          	addi	sp,sp,16
830052c4:	00008067          	ret
830052c8:	08000593          	li	a1,128
830052cc:	00040513          	mv	a0,s0
830052d0:	ffffe097          	auipc	ra,0xffffe
830052d4:	f98080e7          	jalr	-104(ra) # 83003268 <_malloc_r>
830052d8:	2ca42e23          	sw	a0,732(s0)
830052dc:	00050c63          	beqz	a0,830052f4 <_init_signal+0x5c>
830052e0:	08050793          	addi	a5,a0,128
830052e4:	00052023          	sw	zero,0(a0)
830052e8:	00450513          	addi	a0,a0,4
830052ec:	fef51ce3          	bne	a0,a5,830052e4 <_init_signal+0x4c>
830052f0:	fc5ff06f          	j	830052b4 <_init_signal+0x1c>
830052f4:	fff00513          	li	a0,-1
830052f8:	fc1ff06f          	j	830052b8 <_init_signal+0x20>

830052fc <__sigtramp>:
830052fc:	ff010113          	addi	sp,sp,-16
83005300:	00912223          	sw	s1,4(sp)
83005304:	83007737          	lui	a4,0x83007
83005308:	00112623          	sw	ra,12(sp)
8300530c:	00812423          	sw	s0,8(sp)
83005310:	01f00793          	li	a5,31
83005314:	88872483          	lw	s1,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
83005318:	0ca7e063          	bltu	a5,a0,830053d8 <__sigtramp+0xdc>
8300531c:	2dc4a703          	lw	a4,732(s1)
83005320:	00050413          	mv	s0,a0
83005324:	06070063          	beqz	a4,83005384 <__sigtramp+0x88>
83005328:	00241793          	slli	a5,s0,0x2
8300532c:	00f70733          	add	a4,a4,a5
83005330:	00072783          	lw	a5,0(a4)
83005334:	02078c63          	beqz	a5,8300536c <__sigtramp+0x70>
83005338:	fff00693          	li	a3,-1
8300533c:	08d78a63          	beq	a5,a3,830053d0 <__sigtramp+0xd4>
83005340:	00100693          	li	a3,1
83005344:	06d78a63          	beq	a5,a3,830053b8 <__sigtramp+0xbc>
83005348:	00040513          	mv	a0,s0
8300534c:	00072023          	sw	zero,0(a4)
83005350:	000780e7          	jalr	a5
83005354:	00000513          	li	a0,0
83005358:	00c12083          	lw	ra,12(sp)
8300535c:	00812403          	lw	s0,8(sp)
83005360:	00412483          	lw	s1,4(sp)
83005364:	01010113          	addi	sp,sp,16
83005368:	00008067          	ret
8300536c:	00c12083          	lw	ra,12(sp)
83005370:	00812403          	lw	s0,8(sp)
83005374:	00412483          	lw	s1,4(sp)
83005378:	00100513          	li	a0,1
8300537c:	01010113          	addi	sp,sp,16
83005380:	00008067          	ret
83005384:	08000593          	li	a1,128
83005388:	00048513          	mv	a0,s1
8300538c:	ffffe097          	auipc	ra,0xffffe
83005390:	edc080e7          	jalr	-292(ra) # 83003268 <_malloc_r>
83005394:	2ca4ae23          	sw	a0,732(s1)
83005398:	00050713          	mv	a4,a0
8300539c:	02050e63          	beqz	a0,830053d8 <__sigtramp+0xdc>
830053a0:	00050793          	mv	a5,a0
830053a4:	08050693          	addi	a3,a0,128
830053a8:	0007a023          	sw	zero,0(a5)
830053ac:	00478793          	addi	a5,a5,4
830053b0:	fed79ce3          	bne	a5,a3,830053a8 <__sigtramp+0xac>
830053b4:	f75ff06f          	j	83005328 <__sigtramp+0x2c>
830053b8:	00c12083          	lw	ra,12(sp)
830053bc:	00812403          	lw	s0,8(sp)
830053c0:	00412483          	lw	s1,4(sp)
830053c4:	00300513          	li	a0,3
830053c8:	01010113          	addi	sp,sp,16
830053cc:	00008067          	ret
830053d0:	00200513          	li	a0,2
830053d4:	f85ff06f          	j	83005358 <__sigtramp+0x5c>
830053d8:	fff00513          	li	a0,-1
830053dc:	f7dff06f          	j	83005358 <__sigtramp+0x5c>

830053e0 <_fiprintf_r>:
830053e0:	fc010113          	addi	sp,sp,-64
830053e4:	02c10313          	addi	t1,sp,44
830053e8:	02d12623          	sw	a3,44(sp)
830053ec:	00030693          	mv	a3,t1
830053f0:	00112e23          	sw	ra,28(sp)
830053f4:	02e12823          	sw	a4,48(sp)
830053f8:	02f12a23          	sw	a5,52(sp)
830053fc:	03012c23          	sw	a6,56(sp)
83005400:	03112e23          	sw	a7,60(sp)
83005404:	00612623          	sw	t1,12(sp)
83005408:	ffffc097          	auipc	ra,0xffffc
8300540c:	84c080e7          	jalr	-1972(ra) # 83000c54 <_vfiprintf_r>
83005410:	01c12083          	lw	ra,28(sp)
83005414:	04010113          	addi	sp,sp,64
83005418:	00008067          	ret

8300541c <fiprintf>:
8300541c:	00050e13          	mv	t3,a0
83005420:	83007537          	lui	a0,0x83007
83005424:	fc010113          	addi	sp,sp,-64
83005428:	88852503          	lw	a0,-1912(a0) # 83006888 <__BSS_END__+0xffffffb4>
8300542c:	02810313          	addi	t1,sp,40
83005430:	02c12423          	sw	a2,40(sp)
83005434:	02d12623          	sw	a3,44(sp)
83005438:	00058613          	mv	a2,a1
8300543c:	00030693          	mv	a3,t1
83005440:	000e0593          	mv	a1,t3
83005444:	00112e23          	sw	ra,28(sp)
83005448:	02e12823          	sw	a4,48(sp)
8300544c:	02f12a23          	sw	a5,52(sp)
83005450:	03012c23          	sw	a6,56(sp)
83005454:	03112e23          	sw	a7,60(sp)
83005458:	00612623          	sw	t1,12(sp)
8300545c:	ffffb097          	auipc	ra,0xffffb
83005460:	7f8080e7          	jalr	2040(ra) # 83000c54 <_vfiprintf_r>
83005464:	01c12083          	lw	ra,28(sp)
83005468:	04010113          	addi	sp,sp,64
8300546c:	00008067          	ret

83005470 <_kill_r>:
83005470:	ff010113          	addi	sp,sp,-16
83005474:	00058713          	mv	a4,a1
83005478:	00812423          	sw	s0,8(sp)
8300547c:	00912223          	sw	s1,4(sp)
83005480:	00050413          	mv	s0,a0
83005484:	830074b7          	lui	s1,0x83007
83005488:	00060593          	mv	a1,a2
8300548c:	00070513          	mv	a0,a4
83005490:	00112623          	sw	ra,12(sp)
83005494:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
83005498:	fffff097          	auipc	ra,0xfffff
8300549c:	648080e7          	jalr	1608(ra) # 83004ae0 <_kill>
830054a0:	fff00793          	li	a5,-1
830054a4:	00f50c63          	beq	a0,a5,830054bc <_kill_r+0x4c>
830054a8:	00c12083          	lw	ra,12(sp)
830054ac:	00812403          	lw	s0,8(sp)
830054b0:	00412483          	lw	s1,4(sp)
830054b4:	01010113          	addi	sp,sp,16
830054b8:	00008067          	ret
830054bc:	8984a783          	lw	a5,-1896(s1)
830054c0:	fe0784e3          	beqz	a5,830054a8 <_kill_r+0x38>
830054c4:	00c12083          	lw	ra,12(sp)
830054c8:	00f42023          	sw	a5,0(s0)
830054cc:	00812403          	lw	s0,8(sp)
830054d0:	00412483          	lw	s1,4(sp)
830054d4:	01010113          	addi	sp,sp,16
830054d8:	00008067          	ret

830054dc <_getpid_r>:
830054dc:	fffff317          	auipc	t1,0xfffff
830054e0:	61830067          	jr	1560(t1) # 83004af4 <_getpid>

830054e4 <__call_exitprocs>:
830054e4:	fd010113          	addi	sp,sp,-48
830054e8:	830077b7          	lui	a5,0x83007
830054ec:	01412c23          	sw	s4,24(sp)
830054f0:	8307aa03          	lw	s4,-2000(a5) # 83006830 <__BSS_END__+0xffffff5c>
830054f4:	03212023          	sw	s2,32(sp)
830054f8:	02112623          	sw	ra,44(sp)
830054fc:	148a2903          	lw	s2,328(s4)
83005500:	02812423          	sw	s0,40(sp)
83005504:	02912223          	sw	s1,36(sp)
83005508:	01312e23          	sw	s3,28(sp)
8300550c:	01512a23          	sw	s5,20(sp)
83005510:	01612823          	sw	s6,16(sp)
83005514:	01712623          	sw	s7,12(sp)
83005518:	01812423          	sw	s8,8(sp)
8300551c:	04090063          	beqz	s2,8300555c <__call_exitprocs+0x78>
83005520:	00050b13          	mv	s6,a0
83005524:	00058b93          	mv	s7,a1
83005528:	00100a93          	li	s5,1
8300552c:	fff00993          	li	s3,-1
83005530:	00492483          	lw	s1,4(s2)
83005534:	fff48413          	addi	s0,s1,-1
83005538:	02044263          	bltz	s0,8300555c <__call_exitprocs+0x78>
8300553c:	00249493          	slli	s1,s1,0x2
83005540:	009904b3          	add	s1,s2,s1
83005544:	040b8463          	beqz	s7,8300558c <__call_exitprocs+0xa8>
83005548:	1044a783          	lw	a5,260(s1)
8300554c:	05778063          	beq	a5,s7,8300558c <__call_exitprocs+0xa8>
83005550:	fff40413          	addi	s0,s0,-1
83005554:	ffc48493          	addi	s1,s1,-4
83005558:	ff3416e3          	bne	s0,s3,83005544 <__call_exitprocs+0x60>
8300555c:	02c12083          	lw	ra,44(sp)
83005560:	02812403          	lw	s0,40(sp)
83005564:	02412483          	lw	s1,36(sp)
83005568:	02012903          	lw	s2,32(sp)
8300556c:	01c12983          	lw	s3,28(sp)
83005570:	01812a03          	lw	s4,24(sp)
83005574:	01412a83          	lw	s5,20(sp)
83005578:	01012b03          	lw	s6,16(sp)
8300557c:	00c12b83          	lw	s7,12(sp)
83005580:	00812c03          	lw	s8,8(sp)
83005584:	03010113          	addi	sp,sp,48
83005588:	00008067          	ret
8300558c:	00492783          	lw	a5,4(s2)
83005590:	0044a683          	lw	a3,4(s1)
83005594:	fff78793          	addi	a5,a5,-1
83005598:	04878e63          	beq	a5,s0,830055f4 <__call_exitprocs+0x110>
8300559c:	0004a223          	sw	zero,4(s1)
830055a0:	fa0688e3          	beqz	a3,83005550 <__call_exitprocs+0x6c>
830055a4:	18892783          	lw	a5,392(s2)
830055a8:	008a9733          	sll	a4,s5,s0
830055ac:	00492c03          	lw	s8,4(s2)
830055b0:	00f777b3          	and	a5,a4,a5
830055b4:	02079263          	bnez	a5,830055d8 <__call_exitprocs+0xf4>
830055b8:	000680e7          	jalr	a3
830055bc:	00492703          	lw	a4,4(s2)
830055c0:	148a2783          	lw	a5,328(s4)
830055c4:	01871463          	bne	a4,s8,830055cc <__call_exitprocs+0xe8>
830055c8:	f92784e3          	beq	a5,s2,83005550 <__call_exitprocs+0x6c>
830055cc:	f80788e3          	beqz	a5,8300555c <__call_exitprocs+0x78>
830055d0:	00078913          	mv	s2,a5
830055d4:	f5dff06f          	j	83005530 <__call_exitprocs+0x4c>
830055d8:	18c92783          	lw	a5,396(s2)
830055dc:	0844a583          	lw	a1,132(s1)
830055e0:	00f77733          	and	a4,a4,a5
830055e4:	00071c63          	bnez	a4,830055fc <__call_exitprocs+0x118>
830055e8:	000b0513          	mv	a0,s6
830055ec:	000680e7          	jalr	a3
830055f0:	fcdff06f          	j	830055bc <__call_exitprocs+0xd8>
830055f4:	00892223          	sw	s0,4(s2)
830055f8:	fa9ff06f          	j	830055a0 <__call_exitprocs+0xbc>
830055fc:	00058513          	mv	a0,a1
83005600:	000680e7          	jalr	a3
83005604:	fb9ff06f          	j	830055bc <__call_exitprocs+0xd8>

build/hello-riscv32:     file format elf32-littleriscv


Disassembly of section .text:

830000b4 <main>:
830000b4:	830055b7          	lui	a1,0x83005
830000b8:	fe010113          	addi	sp,sp,-32
830000bc:	60458593          	addi	a1,a1,1540 # 83005604 <__BSS_END__+0xffffed30>
830000c0:	00d00613          	li	a2,13
830000c4:	00100513          	li	a0,1
830000c8:	00812c23          	sw	s0,24(sp)
830000cc:	01212823          	sw	s2,16(sp)
830000d0:	00112e23          	sw	ra,28(sp)
830000d4:	00912a23          	sw	s1,20(sp)
830000d8:	00002437          	lui	s0,0x2
830000dc:	00000097          	auipc	ra,0x0
830000e0:	048080e7          	jalr	72(ra) # 83000124 <write>
830000e4:	00200593          	li	a1,2
830000e8:	00012623          	sw	zero,12(sp)
830000ec:	83005937          	lui	s2,0x83005
830000f0:	71040413          	addi	s0,s0,1808 # 2710 <main-0x82ffd9a4>
830000f4:	00c12783          	lw	a5,12(sp)
830000f8:	00178793          	addi	a5,a5,1
830000fc:	00f12623          	sw	a5,12(sp)
83000100:	00c12783          	lw	a5,12(sp)
83000104:	fe8798e3          	bne	a5,s0,830000f4 <main+0x40>
83000108:	61490513          	addi	a0,s2,1556 # 83005614 <__BSS_END__+0xffffed40>
8300010c:	00158493          	addi	s1,a1,1
83000110:	00000097          	auipc	ra,0x0
83000114:	078080e7          	jalr	120(ra) # 83000188 <printf>
83000118:	00048593          	mv	a1,s1
8300011c:	00012623          	sw	zero,12(sp)
83000120:	fd5ff06f          	j	830000f4 <main+0x40>

83000124 <write>:
83000124:	83007737          	lui	a4,0x83007
83000128:	00050793          	mv	a5,a0
8300012c:	88872503          	lw	a0,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
83000130:	00060693          	mv	a3,a2
83000134:	00058613          	mv	a2,a1
83000138:	00078593          	mv	a1,a5
8300013c:	00002317          	auipc	t1,0x2
83000140:	84030067          	jr	-1984(t1) # 8300197c <_write_r>

83000144 <_printf_r>:
83000144:	fc010113          	addi	sp,sp,-64
83000148:	02c12423          	sw	a2,40(sp)
8300014c:	02d12623          	sw	a3,44(sp)
83000150:	02e12823          	sw	a4,48(sp)
83000154:	02f12a23          	sw	a5,52(sp)
83000158:	03012c23          	sw	a6,56(sp)
8300015c:	03112e23          	sw	a7,60(sp)
83000160:	00058613          	mv	a2,a1
83000164:	00852583          	lw	a1,8(a0)
83000168:	02810693          	addi	a3,sp,40
8300016c:	00112e23          	sw	ra,28(sp)
83000170:	00d12623          	sw	a3,12(sp)
83000174:	00000097          	auipc	ra,0x0
83000178:	068080e7          	jalr	104(ra) # 830001dc <_vfprintf_r>
8300017c:	01c12083          	lw	ra,28(sp)
83000180:	04010113          	addi	sp,sp,64
83000184:	00008067          	ret

83000188 <printf>:
83000188:	83007337          	lui	t1,0x83007
8300018c:	88832303          	lw	t1,-1912(t1) # 83006888 <__BSS_END__+0xffffffb4>
83000190:	fc010113          	addi	sp,sp,-64
83000194:	02c12423          	sw	a2,40(sp)
83000198:	02d12623          	sw	a3,44(sp)
8300019c:	02b12223          	sw	a1,36(sp)
830001a0:	02e12823          	sw	a4,48(sp)
830001a4:	02f12a23          	sw	a5,52(sp)
830001a8:	03012c23          	sw	a6,56(sp)
830001ac:	03112e23          	sw	a7,60(sp)
830001b0:	00832583          	lw	a1,8(t1)
830001b4:	02410693          	addi	a3,sp,36
830001b8:	00050613          	mv	a2,a0
830001bc:	00030513          	mv	a0,t1
830001c0:	00112e23          	sw	ra,28(sp)
830001c4:	00d12623          	sw	a3,12(sp)
830001c8:	00000097          	auipc	ra,0x0
830001cc:	014080e7          	jalr	20(ra) # 830001dc <_vfprintf_r>
830001d0:	01c12083          	lw	ra,28(sp)
830001d4:	04010113          	addi	sp,sp,64
830001d8:	00008067          	ret

830001dc <_vfprintf_r>:
830001dc:	f7010113          	addi	sp,sp,-144
830001e0:	08912223          	sw	s1,132(sp)
830001e4:	09212023          	sw	s2,128(sp)
830001e8:	07312e23          	sw	s3,124(sp)
830001ec:	07812423          	sw	s8,104(sp)
830001f0:	08112623          	sw	ra,140(sp)
830001f4:	08812423          	sw	s0,136(sp)
830001f8:	07412c23          	sw	s4,120(sp)
830001fc:	07512a23          	sw	s5,116(sp)
83000200:	07612823          	sw	s6,112(sp)
83000204:	07712623          	sw	s7,108(sp)
83000208:	07912223          	sw	s9,100(sp)
8300020c:	07a12023          	sw	s10,96(sp)
83000210:	05b12e23          	sw	s11,92(sp)
83000214:	00050993          	mv	s3,a0
83000218:	00058913          	mv	s2,a1
8300021c:	00060493          	mv	s1,a2
83000220:	00068c13          	mv	s8,a3
83000224:	00050663          	beqz	a0,83000230 <_vfprintf_r+0x54>
83000228:	03852783          	lw	a5,56(a0)
8300022c:	22078a63          	beqz	a5,83000460 <_vfprintf_r+0x284>
83000230:	00c95783          	lhu	a5,12(s2)
83000234:	0087f793          	andi	a5,a5,8
83000238:	1e078c63          	beqz	a5,83000430 <_vfprintf_r+0x254>
8300023c:	01092783          	lw	a5,16(s2)
83000240:	1e078863          	beqz	a5,83000430 <_vfprintf_r+0x254>
83000244:	830057b7          	lui	a5,0x83005
83000248:	67478793          	addi	a5,a5,1652 # 83005674 <__BSS_END__+0xffffeda0>
8300024c:	00f12c23          	sw	a5,24(sp)
83000250:	830057b7          	lui	a5,0x83005
83000254:	83005ab7          	lui	s5,0x83005
83000258:	64478793          	addi	a5,a5,1604 # 83005644 <__BSS_END__+0xffffed70>
8300025c:	00012623          	sw	zero,12(sp)
83000260:	00012423          	sw	zero,8(sp)
83000264:	7e8a8a93          	addi	s5,s5,2024 # 830057e8 <__BSS_END__+0xffffef14>
83000268:	00f12e23          	sw	a5,28(sp)
8300026c:	0004c783          	lbu	a5,0(s1)
83000270:	16078a63          	beqz	a5,830003e4 <_vfprintf_r+0x208>
83000274:	00048413          	mv	s0,s1
83000278:	02500713          	li	a4,37
8300027c:	1ce78a63          	beq	a5,a4,83000450 <_vfprintf_r+0x274>
83000280:	00144783          	lbu	a5,1(s0)
83000284:	00140413          	addi	s0,s0,1
83000288:	fe079ae3          	bnez	a5,8300027c <_vfprintf_r+0xa0>
8300028c:	40940a33          	sub	s4,s0,s1
83000290:	14940a63          	beq	s0,s1,830003e4 <_vfprintf_r+0x208>
83000294:	000a0693          	mv	a3,s4
83000298:	00048613          	mv	a2,s1
8300029c:	00090593          	mv	a1,s2
830002a0:	00098513          	mv	a0,s3
830002a4:	00001097          	auipc	ra,0x1
830002a8:	8bc080e7          	jalr	-1860(ra) # 83000b60 <__sfputs_r>
830002ac:	fff00793          	li	a5,-1
830002b0:	12f50a63          	beq	a0,a5,830003e4 <_vfprintf_r+0x208>
830002b4:	00812703          	lw	a4,8(sp)
830002b8:	00044783          	lbu	a5,0(s0)
830002bc:	01470733          	add	a4,a4,s4
830002c0:	00e12423          	sw	a4,8(sp)
830002c4:	12078063          	beqz	a5,830003e4 <_vfprintf_r+0x208>
830002c8:	00140413          	addi	s0,s0,1
830002cc:	020101a3          	sb	zero,35(sp)
830002d0:	00000813          	li	a6,0
830002d4:	00000893          	li	a7,0
830002d8:	fff00d93          	li	s11,-1
830002dc:	00000a13          	li	s4,0
830002e0:	00000d13          	li	s10,0
830002e4:	05800593          	li	a1,88
830002e8:	00900513          	li	a0,9
830002ec:	02a00313          	li	t1,42
830002f0:	00044683          	lbu	a3,0(s0)
830002f4:	00140493          	addi	s1,s0,1
830002f8:	fe068793          	addi	a5,a3,-32
830002fc:	04f5e463          	bltu	a1,a5,83000344 <_vfprintf_r+0x168>
83000300:	01812703          	lw	a4,24(sp)
83000304:	00279793          	slli	a5,a5,0x2
83000308:	00e787b3          	add	a5,a5,a4
8300030c:	0007a783          	lw	a5,0(a5)
83000310:	00078067          	jr	a5
83000314:	00000a13          	li	s4,0
83000318:	fd068793          	addi	a5,a3,-48
8300031c:	0004c683          	lbu	a3,0(s1)
83000320:	002a1613          	slli	a2,s4,0x2
83000324:	01460633          	add	a2,a2,s4
83000328:	00161613          	slli	a2,a2,0x1
8300032c:	00c78a33          	add	s4,a5,a2
83000330:	fd068793          	addi	a5,a3,-48
83000334:	00148493          	addi	s1,s1,1
83000338:	fef572e3          	bgeu	a0,a5,8300031c <_vfprintf_r+0x140>
8300033c:	fe068793          	addi	a5,a3,-32
83000340:	fcf5f0e3          	bgeu	a1,a5,83000300 <_vfprintf_r+0x124>
83000344:	0a068063          	beqz	a3,830003e4 <_vfprintf_r+0x208>
83000348:	02d10423          	sb	a3,40(sp)
8300034c:	020101a3          	sb	zero,35(sp)
83000350:	00100b13          	li	s6,1
83000354:	00100c93          	li	s9,1
83000358:	02810413          	addi	s0,sp,40
8300035c:	000d0b93          	mv	s7,s10
83000360:	00000d93          	li	s11,0
83000364:	002bf793          	andi	a5,s7,2
83000368:	00f12823          	sw	a5,16(sp)
8300036c:	00078463          	beqz	a5,83000374 <_vfprintf_r+0x198>
83000370:	002b0b13          	addi	s6,s6,2
83000374:	084bf793          	andi	a5,s7,132
83000378:	00f12a23          	sw	a5,20(sp)
8300037c:	00079663          	bnez	a5,83000388 <_vfprintf_r+0x1ac>
83000380:	416a0d33          	sub	s10,s4,s6
83000384:	63a04463          	bgtz	s10,830009ac <_vfprintf_r+0x7d0>
83000388:	02314783          	lbu	a5,35(sp)
8300038c:	5a079863          	bnez	a5,8300093c <_vfprintf_r+0x760>
83000390:	01012783          	lw	a5,16(sp)
83000394:	5c079863          	bnez	a5,83000964 <_vfprintf_r+0x788>
83000398:	01412703          	lw	a4,20(sp)
8300039c:	08000793          	li	a5,128
830003a0:	54f70063          	beq	a4,a5,830008e0 <_vfprintf_r+0x704>
830003a4:	419d8db3          	sub	s11,s11,s9
830003a8:	41b05063          	blez	s11,830007a8 <_vfprintf_r+0x5cc>
830003ac:	01000713          	li	a4,16
830003b0:	3db75c63          	bge	a4,s11,83000788 <_vfprintf_r+0x5ac>
830003b4:	fff00d13          	li	s10,-1
830003b8:	0100006f          	j	830003c8 <_vfprintf_r+0x1ec>
830003bc:	ff0d8d93          	addi	s11,s11,-16
830003c0:	01000713          	li	a4,16
830003c4:	3db75263          	bge	a4,s11,83000788 <_vfprintf_r+0x5ac>
830003c8:	01000693          	li	a3,16
830003cc:	000a8613          	mv	a2,s5
830003d0:	00090593          	mv	a1,s2
830003d4:	00098513          	mv	a0,s3
830003d8:	00000097          	auipc	ra,0x0
830003dc:	788080e7          	jalr	1928(ra) # 83000b60 <__sfputs_r>
830003e0:	fda51ee3          	bne	a0,s10,830003bc <_vfprintf_r+0x1e0>
830003e4:	00c95783          	lhu	a5,12(s2)
830003e8:	0407f793          	andi	a5,a5,64
830003ec:	04079c63          	bnez	a5,83000444 <_vfprintf_r+0x268>
830003f0:	08c12083          	lw	ra,140(sp)
830003f4:	08812403          	lw	s0,136(sp)
830003f8:	00812503          	lw	a0,8(sp)
830003fc:	08412483          	lw	s1,132(sp)
83000400:	08012903          	lw	s2,128(sp)
83000404:	07c12983          	lw	s3,124(sp)
83000408:	07812a03          	lw	s4,120(sp)
8300040c:	07412a83          	lw	s5,116(sp)
83000410:	07012b03          	lw	s6,112(sp)
83000414:	06c12b83          	lw	s7,108(sp)
83000418:	06812c03          	lw	s8,104(sp)
8300041c:	06412c83          	lw	s9,100(sp)
83000420:	06012d03          	lw	s10,96(sp)
83000424:	05c12d83          	lw	s11,92(sp)
83000428:	09010113          	addi	sp,sp,144
8300042c:	00008067          	ret
83000430:	00090593          	mv	a1,s2
83000434:	00098513          	mv	a0,s3
83000438:	00002097          	auipc	ra,0x2
8300043c:	c18080e7          	jalr	-1000(ra) # 83002050 <__swsetup_r>
83000440:	e00502e3          	beqz	a0,83000244 <_vfprintf_r+0x68>
83000444:	fff00793          	li	a5,-1
83000448:	00f12423          	sw	a5,8(sp)
8300044c:	fa5ff06f          	j	830003f0 <_vfprintf_r+0x214>
83000450:	40940a33          	sub	s4,s0,s1
83000454:	e49410e3          	bne	s0,s1,83000294 <_vfprintf_r+0xb8>
83000458:	00044783          	lbu	a5,0(s0)
8300045c:	e69ff06f          	j	830002c4 <_vfprintf_r+0xe8>
83000460:	00002097          	auipc	ra,0x2
83000464:	5d0080e7          	jalr	1488(ra) # 83002a30 <__sinit>
83000468:	dc9ff06f          	j	83000230 <_vfprintf_r+0x54>
8300046c:	010d6d13          	ori	s10,s10,16
83000470:	00048413          	mv	s0,s1
83000474:	e7dff06f          	j	830002f0 <_vfprintf_r+0x114>
83000478:	000c2a03          	lw	s4,0(s8)
8300047c:	004c0c13          	addi	s8,s8,4
83000480:	fe0a58e3          	bgez	s4,83000470 <_vfprintf_r+0x294>
83000484:	41400a33          	neg	s4,s4
83000488:	004d6d13          	ori	s10,s10,4
8300048c:	00048413          	mv	s0,s1
83000490:	e61ff06f          	j	830002f0 <_vfprintf_r+0x114>
83000494:	66081663          	bnez	a6,83000b00 <_vfprintf_r+0x924>
83000498:	010d7793          	andi	a5,s10,16
8300049c:	000c2683          	lw	a3,0(s8)
830004a0:	004c0c13          	addi	s8,s8,4
830004a4:	00079c63          	bnez	a5,830004bc <_vfprintf_r+0x2e0>
830004a8:	040d7613          	andi	a2,s10,64
830004ac:	00068793          	mv	a5,a3
830004b0:	00060863          	beqz	a2,830004c0 <_vfprintf_r+0x2e4>
830004b4:	01069693          	slli	a3,a3,0x10
830004b8:	4106d693          	srai	a3,a3,0x10
830004bc:	00068793          	mv	a5,a3
830004c0:	5406ce63          	bltz	a3,83000a1c <_vfprintf_r+0x840>
830004c4:	fff00593          	li	a1,-1
830004c8:	02314603          	lbu	a2,35(sp)
830004cc:	4cbd8063          	beq	s11,a1,8300098c <_vfprintf_r+0x7b0>
830004d0:	f7fd7b93          	andi	s7,s10,-129
830004d4:	4a069a63          	bnez	a3,83000988 <_vfprintf_r+0x7ac>
830004d8:	600d9063          	bnez	s11,83000ad8 <_vfprintf_r+0x8fc>
830004dc:	00000d93          	li	s11,0
830004e0:	00000c93          	li	s9,0
830004e4:	05010413          	addi	s0,sp,80
830004e8:	000d8b13          	mv	s6,s11
830004ec:	019dd463          	bge	s11,s9,830004f4 <_vfprintf_r+0x318>
830004f0:	000c8b13          	mv	s6,s9
830004f4:	00c03633          	snez	a2,a2
830004f8:	00cb0b33          	add	s6,s6,a2
830004fc:	e69ff06f          	j	83000364 <_vfprintf_r+0x188>
83000500:	000c2783          	lw	a5,0(s8)
83000504:	010d6d13          	ori	s10,s10,16
83000508:	004c0c13          	addi	s8,s8,4
8300050c:	00000593          	li	a1,0
83000510:	00000613          	li	a2,0
83000514:	02c101a3          	sb	a2,35(sp)
83000518:	fff00693          	li	a3,-1
8300051c:	32dd8063          	beq	s11,a3,8300083c <_vfprintf_r+0x660>
83000520:	f7fd7b93          	andi	s7,s10,-129
83000524:	30079a63          	bnez	a5,83000838 <_vfprintf_r+0x65c>
83000528:	360d9863          	bnez	s11,83000898 <_vfprintf_r+0x6bc>
8300052c:	fa0598e3          	bnez	a1,830004dc <_vfprintf_r+0x300>
83000530:	001d7c93          	andi	s9,s10,1
83000534:	05010413          	addi	s0,sp,80
83000538:	fa0c88e3          	beqz	s9,830004e8 <_vfprintf_r+0x30c>
8300053c:	03000793          	li	a5,48
83000540:	04f107a3          	sb	a5,79(sp)
83000544:	04f10413          	addi	s0,sp,79
83000548:	fa1ff06f          	j	830004e8 <_vfprintf_r+0x30c>
8300054c:	000c2783          	lw	a5,0(s8)
83000550:	010d6d13          	ori	s10,s10,16
83000554:	004c0c13          	addi	s8,s8,4
83000558:	00100593          	li	a1,1
8300055c:	fb5ff06f          	j	83000510 <_vfprintf_r+0x334>
83000560:	5a081c63          	bnez	a6,83000b18 <_vfprintf_r+0x93c>
83000564:	010d7693          	andi	a3,s10,16
83000568:	000c2783          	lw	a5,0(s8)
8300056c:	004c0c13          	addi	s8,s8,4
83000570:	f8069ee3          	bnez	a3,8300050c <_vfprintf_r+0x330>
83000574:	040d7693          	andi	a3,s10,64
83000578:	f8068ae3          	beqz	a3,8300050c <_vfprintf_r+0x330>
8300057c:	01079793          	slli	a5,a5,0x10
83000580:	0107d793          	srli	a5,a5,0x10
83000584:	00000593          	li	a1,0
83000588:	f89ff06f          	j	83000510 <_vfprintf_r+0x334>
8300058c:	ffff86b7          	lui	a3,0xffff8
83000590:	8306c693          	xori	a3,a3,-2000
83000594:	02d11223          	sh	a3,36(sp)
83000598:	830056b7          	lui	a3,0x83005
8300059c:	65868713          	addi	a4,a3,1624 # 83005658 <__BSS_END__+0xffffed84>
830005a0:	000c2783          	lw	a5,0(s8)
830005a4:	002d6d13          	ori	s10,s10,2
830005a8:	004c0c13          	addi	s8,s8,4
830005ac:	00e12623          	sw	a4,12(sp)
830005b0:	00200593          	li	a1,2
830005b4:	f5dff06f          	j	83000510 <_vfprintf_r+0x334>
830005b8:	000c2403          	lw	s0,0(s8)
830005bc:	020101a3          	sb	zero,35(sp)
830005c0:	004c0c13          	addi	s8,s8,4
830005c4:	4c040863          	beqz	s0,83000a94 <_vfprintf_r+0x8b8>
830005c8:	fff00793          	li	a5,-1
830005cc:	4efd8263          	beq	s11,a5,83000ab0 <_vfprintf_r+0x8d4>
830005d0:	000d8613          	mv	a2,s11
830005d4:	00000593          	li	a1,0
830005d8:	00040513          	mv	a0,s0
830005dc:	00001097          	auipc	ra,0x1
830005e0:	240080e7          	jalr	576(ra) # 8300181c <memchr>
830005e4:	02314603          	lbu	a2,35(sp)
830005e8:	4e050c63          	beqz	a0,83000ae0 <_vfprintf_r+0x904>
830005ec:	40850cb3          	sub	s9,a0,s0
830005f0:	000d0b93          	mv	s7,s10
830005f4:	00000d93          	li	s11,0
830005f8:	ef1ff06f          	j	830004e8 <_vfprintf_r+0x30c>
830005fc:	4e081a63          	bnez	a6,83000af0 <_vfprintf_r+0x914>
83000600:	010d7693          	andi	a3,s10,16
83000604:	000c2783          	lw	a5,0(s8)
83000608:	004c0c13          	addi	s8,s8,4
8300060c:	f40696e3          	bnez	a3,83000558 <_vfprintf_r+0x37c>
83000610:	040d7693          	andi	a3,s10,64
83000614:	f40682e3          	beqz	a3,83000558 <_vfprintf_r+0x37c>
83000618:	01079793          	slli	a5,a5,0x10
8300061c:	0107d793          	srli	a5,a5,0x10
83000620:	00100593          	li	a1,1
83000624:	eedff06f          	j	83000510 <_vfprintf_r+0x334>
83000628:	4e081463          	bnez	a6,83000b10 <_vfprintf_r+0x934>
8300062c:	01c12783          	lw	a5,28(sp)
83000630:	00f12623          	sw	a5,12(sp)
83000634:	010d7613          	andi	a2,s10,16
83000638:	000c2783          	lw	a5,0(s8)
8300063c:	004c0c13          	addi	s8,s8,4
83000640:	00061a63          	bnez	a2,83000654 <_vfprintf_r+0x478>
83000644:	040d7613          	andi	a2,s10,64
83000648:	00060663          	beqz	a2,83000654 <_vfprintf_r+0x478>
8300064c:	01079793          	slli	a5,a5,0x10
83000650:	0107d793          	srli	a5,a5,0x10
83000654:	001d7613          	andi	a2,s10,1
83000658:	00200593          	li	a1,2
8300065c:	ea060ae3          	beqz	a2,83000510 <_vfprintf_r+0x334>
83000660:	ea0788e3          	beqz	a5,83000510 <_vfprintf_r+0x334>
83000664:	03000613          	li	a2,48
83000668:	02c10223          	sb	a2,36(sp)
8300066c:	02d102a3          	sb	a3,37(sp)
83000670:	002d6d13          	ori	s10,s10,2
83000674:	e9dff06f          	j	83000510 <_vfprintf_r+0x334>
83000678:	000c2783          	lw	a5,0(s8)
8300067c:	020101a3          	sb	zero,35(sp)
83000680:	004c0c13          	addi	s8,s8,4
83000684:	02f10423          	sb	a5,40(sp)
83000688:	00100b13          	li	s6,1
8300068c:	00100c93          	li	s9,1
83000690:	02810413          	addi	s0,sp,40
83000694:	cc9ff06f          	j	8300035c <_vfprintf_r+0x180>
83000698:	46081863          	bnez	a6,83000b08 <_vfprintf_r+0x92c>
8300069c:	830057b7          	lui	a5,0x83005
830006a0:	65878793          	addi	a5,a5,1624 # 83005658 <__BSS_END__+0xffffed84>
830006a4:	00f12623          	sw	a5,12(sp)
830006a8:	f8dff06f          	j	83000634 <_vfprintf_r+0x458>
830006ac:	040d6d13          	ori	s10,s10,64
830006b0:	00048413          	mv	s0,s1
830006b4:	c3dff06f          	j	830002f0 <_vfprintf_r+0x114>
830006b8:	44081063          	bnez	a6,83000af8 <_vfprintf_r+0x91c>
830006bc:	010d7793          	andi	a5,s10,16
830006c0:	004c0713          	addi	a4,s8,4
830006c4:	0a079863          	bnez	a5,83000774 <_vfprintf_r+0x598>
830006c8:	040d7d13          	andi	s10,s10,64
830006cc:	0a0d0463          	beqz	s10,83000774 <_vfprintf_r+0x598>
830006d0:	000c2783          	lw	a5,0(s8)
830006d4:	00070c13          	mv	s8,a4
830006d8:	00812703          	lw	a4,8(sp)
830006dc:	00e79023          	sh	a4,0(a5)
830006e0:	b8dff06f          	j	8300026c <_vfprintf_r+0x90>
830006e4:	d80896e3          	bnez	a7,83000470 <_vfprintf_r+0x294>
830006e8:	00100813          	li	a6,1
830006ec:	02000893          	li	a7,32
830006f0:	00048413          	mv	s0,s1
830006f4:	bfdff06f          	j	830002f0 <_vfprintf_r+0x114>
830006f8:	001d6d13          	ori	s10,s10,1
830006fc:	00048413          	mv	s0,s1
83000700:	bf1ff06f          	j	830002f0 <_vfprintf_r+0x114>
83000704:	080d6d13          	ori	s10,s10,128
83000708:	00048413          	mv	s0,s1
8300070c:	be5ff06f          	j	830002f0 <_vfprintf_r+0x114>
83000710:	40081863          	bnez	a6,83000b20 <_vfprintf_r+0x944>
83000714:	000c2683          	lw	a3,0(s8)
83000718:	010d6d13          	ori	s10,s10,16
8300071c:	004c0c13          	addi	s8,s8,4
83000720:	00068793          	mv	a5,a3
83000724:	d9dff06f          	j	830004c0 <_vfprintf_r+0x2e4>
83000728:	0004c683          	lbu	a3,0(s1)
8300072c:	00148493          	addi	s1,s1,1
83000730:	3e668c63          	beq	a3,t1,83000b28 <_vfprintf_r+0x94c>
83000734:	fd068793          	addi	a5,a3,-48
83000738:	00000d93          	li	s11,0
8300073c:	baf56ee3          	bltu	a0,a5,830002f8 <_vfprintf_r+0x11c>
83000740:	0004c683          	lbu	a3,0(s1)
83000744:	002d9613          	slli	a2,s11,0x2
83000748:	01b60733          	add	a4,a2,s11
8300074c:	00171713          	slli	a4,a4,0x1
83000750:	00f70db3          	add	s11,a4,a5
83000754:	fd068793          	addi	a5,a3,-48
83000758:	00148493          	addi	s1,s1,1
8300075c:	fef572e3          	bgeu	a0,a5,83000740 <_vfprintf_r+0x564>
83000760:	b99ff06f          	j	830002f8 <_vfprintf_r+0x11c>
83000764:	00100813          	li	a6,1
83000768:	02b00893          	li	a7,43
8300076c:	00048413          	mv	s0,s1
83000770:	b81ff06f          	j	830002f0 <_vfprintf_r+0x114>
83000774:	000c2783          	lw	a5,0(s8)
83000778:	00070c13          	mv	s8,a4
8300077c:	00812703          	lw	a4,8(sp)
83000780:	00e7a023          	sw	a4,0(a5)
83000784:	ae9ff06f          	j	8300026c <_vfprintf_r+0x90>
83000788:	000d8693          	mv	a3,s11
8300078c:	000a8613          	mv	a2,s5
83000790:	00090593          	mv	a1,s2
83000794:	00098513          	mv	a0,s3
83000798:	00000097          	auipc	ra,0x0
8300079c:	3c8080e7          	jalr	968(ra) # 83000b60 <__sfputs_r>
830007a0:	fff00793          	li	a5,-1
830007a4:	c4f500e3          	beq	a0,a5,830003e4 <_vfprintf_r+0x208>
830007a8:	000c8693          	mv	a3,s9
830007ac:	00040613          	mv	a2,s0
830007b0:	00090593          	mv	a1,s2
830007b4:	00098513          	mv	a0,s3
830007b8:	00000097          	auipc	ra,0x0
830007bc:	3a8080e7          	jalr	936(ra) # 83000b60 <__sfputs_r>
830007c0:	fff00793          	li	a5,-1
830007c4:	c2f500e3          	beq	a0,a5,830003e4 <_vfprintf_r+0x208>
830007c8:	004bfb93          	andi	s7,s7,4
830007cc:	000b8663          	beqz	s7,830007d8 <_vfprintf_r+0x5fc>
830007d0:	416a0bb3          	sub	s7,s4,s6
830007d4:	01704e63          	bgtz	s7,830007f0 <_vfprintf_r+0x614>
830007d8:	016a5463          	bge	s4,s6,830007e0 <_vfprintf_r+0x604>
830007dc:	000b0a13          	mv	s4,s6
830007e0:	00812783          	lw	a5,8(sp)
830007e4:	014787b3          	add	a5,a5,s4
830007e8:	00f12423          	sw	a5,8(sp)
830007ec:	a81ff06f          	j	8300026c <_vfprintf_r+0x90>
830007f0:	01000793          	li	a5,16
830007f4:	2377dc63          	bge	a5,s7,83000a2c <_vfprintf_r+0x850>
830007f8:	830057b7          	lui	a5,0x83005
830007fc:	00f12223          	sw	a5,4(sp)
83000800:	fff00413          	li	s0,-1
83000804:	0100006f          	j	83000814 <_vfprintf_r+0x638>
83000808:	ff0b8b93          	addi	s7,s7,-16
8300080c:	01000793          	li	a5,16
83000810:	2377d263          	bge	a5,s7,83000a34 <_vfprintf_r+0x858>
83000814:	00412783          	lw	a5,4(sp)
83000818:	01000693          	li	a3,16
8300081c:	00090593          	mv	a1,s2
83000820:	7d878613          	addi	a2,a5,2008 # 830057d8 <__BSS_END__+0xffffef04>
83000824:	00098513          	mv	a0,s3
83000828:	00000097          	auipc	ra,0x0
8300082c:	338080e7          	jalr	824(ra) # 83000b60 <__sfputs_r>
83000830:	fc851ce3          	bne	a0,s0,83000808 <_vfprintf_r+0x62c>
83000834:	bb1ff06f          	j	830003e4 <_vfprintf_r+0x208>
83000838:	000b8d13          	mv	s10,s7
8300083c:	00100693          	li	a3,1
83000840:	14d58663          	beq	a1,a3,8300098c <_vfprintf_r+0x7b0>
83000844:	00200693          	li	a3,2
83000848:	06d58263          	beq	a1,a3,830008ac <_vfprintf_r+0x6d0>
8300084c:	05010413          	addi	s0,sp,80
83000850:	0077f693          	andi	a3,a5,7
83000854:	03068693          	addi	a3,a3,48
83000858:	fed40fa3          	sb	a3,-1(s0)
8300085c:	0037d793          	srli	a5,a5,0x3
83000860:	00040593          	mv	a1,s0
83000864:	fff40413          	addi	s0,s0,-1
83000868:	fe0794e3          	bnez	a5,83000850 <_vfprintf_r+0x674>
8300086c:	001d7793          	andi	a5,s10,1
83000870:	06078063          	beqz	a5,830008d0 <_vfprintf_r+0x6f4>
83000874:	03000793          	li	a5,48
83000878:	04f68c63          	beq	a3,a5,830008d0 <_vfprintf_r+0x6f4>
8300087c:	ffe58593          	addi	a1,a1,-2
83000880:	fef40fa3          	sb	a5,-1(s0)
83000884:	05010793          	addi	a5,sp,80
83000888:	40b78cb3          	sub	s9,a5,a1
8300088c:	000d0b93          	mv	s7,s10
83000890:	00058413          	mv	s0,a1
83000894:	c55ff06f          	j	830004e8 <_vfprintf_r+0x30c>
83000898:	00100693          	li	a3,1
8300089c:	22d58e63          	beq	a1,a3,83000ad8 <_vfprintf_r+0x8fc>
830008a0:	00200693          	li	a3,2
830008a4:	000b8d13          	mv	s10,s7
830008a8:	fad592e3          	bne	a1,a3,8300084c <_vfprintf_r+0x670>
830008ac:	05010413          	addi	s0,sp,80
830008b0:	00c12703          	lw	a4,12(sp)
830008b4:	00f7f693          	andi	a3,a5,15
830008b8:	fff40413          	addi	s0,s0,-1
830008bc:	00d706b3          	add	a3,a4,a3
830008c0:	0006c683          	lbu	a3,0(a3)
830008c4:	0047d793          	srli	a5,a5,0x4
830008c8:	00d40023          	sb	a3,0(s0)
830008cc:	fe0792e3          	bnez	a5,830008b0 <_vfprintf_r+0x6d4>
830008d0:	05010793          	addi	a5,sp,80
830008d4:	40878cb3          	sub	s9,a5,s0
830008d8:	000d0b93          	mv	s7,s10
830008dc:	c0dff06f          	j	830004e8 <_vfprintf_r+0x30c>
830008e0:	416a0d33          	sub	s10,s4,s6
830008e4:	ada050e3          	blez	s10,830003a4 <_vfprintf_r+0x1c8>
830008e8:	0280006f          	j	83000910 <_vfprintf_r+0x734>
830008ec:	01000693          	li	a3,16
830008f0:	000a8613          	mv	a2,s5
830008f4:	00090593          	mv	a1,s2
830008f8:	00098513          	mv	a0,s3
830008fc:	00000097          	auipc	ra,0x0
83000900:	264080e7          	jalr	612(ra) # 83000b60 <__sfputs_r>
83000904:	fff00793          	li	a5,-1
83000908:	acf50ee3          	beq	a0,a5,830003e4 <_vfprintf_r+0x208>
8300090c:	ff0d0d13          	addi	s10,s10,-16
83000910:	01000693          	li	a3,16
83000914:	fda6cce3          	blt	a3,s10,830008ec <_vfprintf_r+0x710>
83000918:	000d0693          	mv	a3,s10
8300091c:	000a8613          	mv	a2,s5
83000920:	00090593          	mv	a1,s2
83000924:	00098513          	mv	a0,s3
83000928:	00000097          	auipc	ra,0x0
8300092c:	238080e7          	jalr	568(ra) # 83000b60 <__sfputs_r>
83000930:	fff00793          	li	a5,-1
83000934:	a6f518e3          	bne	a0,a5,830003a4 <_vfprintf_r+0x1c8>
83000938:	aadff06f          	j	830003e4 <_vfprintf_r+0x208>
8300093c:	00100693          	li	a3,1
83000940:	02310613          	addi	a2,sp,35
83000944:	00090593          	mv	a1,s2
83000948:	00098513          	mv	a0,s3
8300094c:	00000097          	auipc	ra,0x0
83000950:	214080e7          	jalr	532(ra) # 83000b60 <__sfputs_r>
83000954:	fff00793          	li	a5,-1
83000958:	a8f506e3          	beq	a0,a5,830003e4 <_vfprintf_r+0x208>
8300095c:	01012783          	lw	a5,16(sp)
83000960:	a2078ce3          	beqz	a5,83000398 <_vfprintf_r+0x1bc>
83000964:	00200693          	li	a3,2
83000968:	02410613          	addi	a2,sp,36
8300096c:	00090593          	mv	a1,s2
83000970:	00098513          	mv	a0,s3
83000974:	00000097          	auipc	ra,0x0
83000978:	1ec080e7          	jalr	492(ra) # 83000b60 <__sfputs_r>
8300097c:	fff00793          	li	a5,-1
83000980:	a0f51ce3          	bne	a0,a5,83000398 <_vfprintf_r+0x1bc>
83000984:	a61ff06f          	j	830003e4 <_vfprintf_r+0x208>
83000988:	000b8d13          	mv	s10,s7
8300098c:	00900693          	li	a3,9
83000990:	0cf6e663          	bltu	a3,a5,83000a5c <_vfprintf_r+0x880>
83000994:	03078793          	addi	a5,a5,48
83000998:	04f107a3          	sb	a5,79(sp)
8300099c:	000d0b93          	mv	s7,s10
830009a0:	00100c93          	li	s9,1
830009a4:	04f10413          	addi	s0,sp,79
830009a8:	b41ff06f          	j	830004e8 <_vfprintf_r+0x30c>
830009ac:	830057b7          	lui	a5,0x83005
830009b0:	01000693          	li	a3,16
830009b4:	00f12223          	sw	a5,4(sp)
830009b8:	01a6ca63          	blt	a3,s10,830009cc <_vfprintf_r+0x7f0>
830009bc:	0380006f          	j	830009f4 <_vfprintf_r+0x818>
830009c0:	ff0d0d13          	addi	s10,s10,-16
830009c4:	01000693          	li	a3,16
830009c8:	03a6d663          	bge	a3,s10,830009f4 <_vfprintf_r+0x818>
830009cc:	00412783          	lw	a5,4(sp)
830009d0:	01000693          	li	a3,16
830009d4:	00090593          	mv	a1,s2
830009d8:	7d878613          	addi	a2,a5,2008 # 830057d8 <__BSS_END__+0xffffef04>
830009dc:	00098513          	mv	a0,s3
830009e0:	00000097          	auipc	ra,0x0
830009e4:	180080e7          	jalr	384(ra) # 83000b60 <__sfputs_r>
830009e8:	fff00793          	li	a5,-1
830009ec:	fcf51ae3          	bne	a0,a5,830009c0 <_vfprintf_r+0x7e4>
830009f0:	9f5ff06f          	j	830003e4 <_vfprintf_r+0x208>
830009f4:	00412783          	lw	a5,4(sp)
830009f8:	000d0693          	mv	a3,s10
830009fc:	00090593          	mv	a1,s2
83000a00:	7d878613          	addi	a2,a5,2008
83000a04:	00098513          	mv	a0,s3
83000a08:	00000097          	auipc	ra,0x0
83000a0c:	158080e7          	jalr	344(ra) # 83000b60 <__sfputs_r>
83000a10:	fff00793          	li	a5,-1
83000a14:	96f51ae3          	bne	a0,a5,83000388 <_vfprintf_r+0x1ac>
83000a18:	9cdff06f          	j	830003e4 <_vfprintf_r+0x208>
83000a1c:	40d007b3          	neg	a5,a3
83000a20:	02d00613          	li	a2,45
83000a24:	00100593          	li	a1,1
83000a28:	aedff06f          	j	83000514 <_vfprintf_r+0x338>
83000a2c:	830057b7          	lui	a5,0x83005
83000a30:	00f12223          	sw	a5,4(sp)
83000a34:	00412783          	lw	a5,4(sp)
83000a38:	000b8693          	mv	a3,s7
83000a3c:	00090593          	mv	a1,s2
83000a40:	7d878613          	addi	a2,a5,2008 # 830057d8 <__BSS_END__+0xffffef04>
83000a44:	00098513          	mv	a0,s3
83000a48:	00000097          	auipc	ra,0x0
83000a4c:	118080e7          	jalr	280(ra) # 83000b60 <__sfputs_r>
83000a50:	fff00793          	li	a5,-1
83000a54:	d8f512e3          	bne	a0,a5,830007d8 <_vfprintf_r+0x5fc>
83000a58:	98dff06f          	j	830003e4 <_vfprintf_r+0x208>
83000a5c:	05010413          	addi	s0,sp,80
83000a60:	00a00593          	li	a1,10
83000a64:	00900813          	li	a6,9
83000a68:	02b7f6b3          	remu	a3,a5,a1
83000a6c:	fff40413          	addi	s0,s0,-1
83000a70:	00078513          	mv	a0,a5
83000a74:	03068693          	addi	a3,a3,48
83000a78:	00d40023          	sb	a3,0(s0)
83000a7c:	02b7d7b3          	divu	a5,a5,a1
83000a80:	fea864e3          	bltu	a6,a0,83000a68 <_vfprintf_r+0x88c>
83000a84:	05010793          	addi	a5,sp,80
83000a88:	40878cb3          	sub	s9,a5,s0
83000a8c:	000d0b93          	mv	s7,s10
83000a90:	a59ff06f          	j	830004e8 <_vfprintf_r+0x30c>
83000a94:	00600793          	li	a5,6
83000a98:	000d8c93          	mv	s9,s11
83000a9c:	03b7ea63          	bltu	a5,s11,83000ad0 <_vfprintf_r+0x8f4>
83000aa0:	83005437          	lui	s0,0x83005
83000aa4:	000c8b13          	mv	s6,s9
83000aa8:	66c40413          	addi	s0,s0,1644 # 8300566c <__BSS_END__+0xffffed98>
83000aac:	8b1ff06f          	j	8300035c <_vfprintf_r+0x180>
83000ab0:	00040513          	mv	a0,s0
83000ab4:	00001097          	auipc	ra,0x1
83000ab8:	e30080e7          	jalr	-464(ra) # 830018e4 <strlen>
83000abc:	02314603          	lbu	a2,35(sp)
83000ac0:	00050c93          	mv	s9,a0
83000ac4:	000d0b93          	mv	s7,s10
83000ac8:	00000d93          	li	s11,0
83000acc:	a1dff06f          	j	830004e8 <_vfprintf_r+0x30c>
83000ad0:	00600c93          	li	s9,6
83000ad4:	fcdff06f          	j	83000aa0 <_vfprintf_r+0x8c4>
83000ad8:	000b8d13          	mv	s10,s7
83000adc:	eb9ff06f          	j	83000994 <_vfprintf_r+0x7b8>
83000ae0:	000d8c93          	mv	s9,s11
83000ae4:	000d0b93          	mv	s7,s10
83000ae8:	00000d93          	li	s11,0
83000aec:	9fdff06f          	j	830004e8 <_vfprintf_r+0x30c>
83000af0:	031101a3          	sb	a7,35(sp)
83000af4:	b0dff06f          	j	83000600 <_vfprintf_r+0x424>
83000af8:	031101a3          	sb	a7,35(sp)
83000afc:	bc1ff06f          	j	830006bc <_vfprintf_r+0x4e0>
83000b00:	031101a3          	sb	a7,35(sp)
83000b04:	995ff06f          	j	83000498 <_vfprintf_r+0x2bc>
83000b08:	031101a3          	sb	a7,35(sp)
83000b0c:	b91ff06f          	j	8300069c <_vfprintf_r+0x4c0>
83000b10:	031101a3          	sb	a7,35(sp)
83000b14:	b19ff06f          	j	8300062c <_vfprintf_r+0x450>
83000b18:	031101a3          	sb	a7,35(sp)
83000b1c:	a49ff06f          	j	83000564 <_vfprintf_r+0x388>
83000b20:	031101a3          	sb	a7,35(sp)
83000b24:	bf1ff06f          	j	83000714 <_vfprintf_r+0x538>
83000b28:	000c2d83          	lw	s11,0(s8)
83000b2c:	004c0c13          	addi	s8,s8,4
83000b30:	940dd0e3          	bgez	s11,83000470 <_vfprintf_r+0x294>
83000b34:	fff00d93          	li	s11,-1
83000b38:	00048413          	mv	s0,s1
83000b3c:	fb4ff06f          	j	830002f0 <_vfprintf_r+0x114>

83000b40 <vfprintf>:
83000b40:	83007737          	lui	a4,0x83007
83000b44:	00050793          	mv	a5,a0
83000b48:	88872503          	lw	a0,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
83000b4c:	00060693          	mv	a3,a2
83000b50:	00058613          	mv	a2,a1
83000b54:	00078593          	mv	a1,a5
83000b58:	fffff317          	auipc	t1,0xfffff
83000b5c:	68430067          	jr	1668(t1) # 830001dc <_vfprintf_r>

83000b60 <__sfputs_r>:
83000b60:	08068e63          	beqz	a3,83000bfc <__sfputs_r+0x9c>
83000b64:	fe010113          	addi	sp,sp,-32
83000b68:	00812c23          	sw	s0,24(sp)
83000b6c:	00912a23          	sw	s1,20(sp)
83000b70:	01212823          	sw	s2,16(sp)
83000b74:	01312623          	sw	s3,12(sp)
83000b78:	01412423          	sw	s4,8(sp)
83000b7c:	00112e23          	sw	ra,28(sp)
83000b80:	00050913          	mv	s2,a0
83000b84:	00058993          	mv	s3,a1
83000b88:	00060413          	mv	s0,a2
83000b8c:	00d604b3          	add	s1,a2,a3
83000b90:	fff00a13          	li	s4,-1
83000b94:	0080006f          	j	83000b9c <__sfputs_r+0x3c>
83000b98:	04940063          	beq	s0,s1,83000bd8 <__sfputs_r+0x78>
83000b9c:	00044583          	lbu	a1,0(s0)
83000ba0:	00098613          	mv	a2,s3
83000ba4:	00090513          	mv	a0,s2
83000ba8:	00001097          	auipc	ra,0x1
83000bac:	b90080e7          	jalr	-1136(ra) # 83001738 <_fputc_r>
83000bb0:	00140413          	addi	s0,s0,1
83000bb4:	ff4512e3          	bne	a0,s4,83000b98 <__sfputs_r+0x38>
83000bb8:	01c12083          	lw	ra,28(sp)
83000bbc:	01812403          	lw	s0,24(sp)
83000bc0:	01412483          	lw	s1,20(sp)
83000bc4:	01012903          	lw	s2,16(sp)
83000bc8:	00c12983          	lw	s3,12(sp)
83000bcc:	00812a03          	lw	s4,8(sp)
83000bd0:	02010113          	addi	sp,sp,32
83000bd4:	00008067          	ret
83000bd8:	01c12083          	lw	ra,28(sp)
83000bdc:	01812403          	lw	s0,24(sp)
83000be0:	01412483          	lw	s1,20(sp)
83000be4:	01012903          	lw	s2,16(sp)
83000be8:	00c12983          	lw	s3,12(sp)
83000bec:	00812a03          	lw	s4,8(sp)
83000bf0:	00000513          	li	a0,0
83000bf4:	02010113          	addi	sp,sp,32
83000bf8:	00008067          	ret
83000bfc:	00000513          	li	a0,0
83000c00:	00008067          	ret

83000c04 <__sprint_r>:
83000c04:	00862783          	lw	a5,8(a2)
83000c08:	ff010113          	addi	sp,sp,-16
83000c0c:	00812423          	sw	s0,8(sp)
83000c10:	00112623          	sw	ra,12(sp)
83000c14:	00060413          	mv	s0,a2
83000c18:	00079e63          	bnez	a5,83000c34 <__sprint_r+0x30>
83000c1c:	00c12083          	lw	ra,12(sp)
83000c20:	00042223          	sw	zero,4(s0)
83000c24:	00812403          	lw	s0,8(sp)
83000c28:	00000513          	li	a0,0
83000c2c:	01010113          	addi	sp,sp,16
83000c30:	00008067          	ret
83000c34:	00001097          	auipc	ra,0x1
83000c38:	594080e7          	jalr	1428(ra) # 830021c8 <__sfvwrite_r>
83000c3c:	00c12083          	lw	ra,12(sp)
83000c40:	00042423          	sw	zero,8(s0)
83000c44:	00042223          	sw	zero,4(s0)
83000c48:	00812403          	lw	s0,8(sp)
83000c4c:	01010113          	addi	sp,sp,16
83000c50:	00008067          	ret

83000c54 <_vfiprintf_r>:
83000c54:	f6010113          	addi	sp,sp,-160
83000c58:	08812c23          	sw	s0,152(sp)
83000c5c:	08912a23          	sw	s1,148(sp)
83000c60:	09612023          	sw	s6,128(sp)
83000c64:	08112e23          	sw	ra,156(sp)
83000c68:	09212823          	sw	s2,144(sp)
83000c6c:	09312623          	sw	s3,140(sp)
83000c70:	09412423          	sw	s4,136(sp)
83000c74:	09512223          	sw	s5,132(sp)
83000c78:	07712e23          	sw	s7,124(sp)
83000c7c:	07812c23          	sw	s8,120(sp)
83000c80:	07912a23          	sw	s9,116(sp)
83000c84:	07a12823          	sw	s10,112(sp)
83000c88:	07b12623          	sw	s11,108(sp)
83000c8c:	00d12e23          	sw	a3,28(sp)
83000c90:	02012623          	sw	zero,44(sp)
83000c94:	00050493          	mv	s1,a0
83000c98:	00058413          	mv	s0,a1
83000c9c:	00060b13          	mv	s6,a2
83000ca0:	00050663          	beqz	a0,83000cac <_vfiprintf_r+0x58>
83000ca4:	03852783          	lw	a5,56(a0)
83000ca8:	24078e63          	beqz	a5,83000f04 <_vfiprintf_r+0x2b0>
83000cac:	00c45783          	lhu	a5,12(s0)
83000cb0:	0087f793          	andi	a5,a5,8
83000cb4:	0c078a63          	beqz	a5,83000d88 <_vfiprintf_r+0x134>
83000cb8:	01042783          	lw	a5,16(s0)
83000cbc:	0c078663          	beqz	a5,83000d88 <_vfiprintf_r+0x134>
83000cc0:	83006c37          	lui	s8,0x83006
83000cc4:	830057b7          	lui	a5,0x83005
83000cc8:	95cc0c13          	addi	s8,s8,-1700 # 8300595c <__BSS_END__+0xfffff088>
83000ccc:	7f878793          	addi	a5,a5,2040 # 830057f8 <__BSS_END__+0xffffef24>
83000cd0:	02012023          	sw	zero,32(sp)
83000cd4:	00012c23          	sw	zero,24(sp)
83000cd8:	02f12423          	sw	a5,40(sp)
83000cdc:	020c0913          	addi	s2,s8,32
83000ce0:	000b4583          	lbu	a1,0(s6)
83000ce4:	04058c63          	beqz	a1,83000d3c <_vfiprintf_r+0xe8>
83000ce8:	000b0a93          	mv	s5,s6
83000cec:	00058793          	mv	a5,a1
83000cf0:	02500713          	li	a4,37
83000cf4:	0ae78a63          	beq	a5,a4,83000da8 <_vfiprintf_r+0x154>
83000cf8:	001ac783          	lbu	a5,1(s5)
83000cfc:	001a8a93          	addi	s5,s5,1
83000d00:	fe079ae3          	bnez	a5,83000cf4 <_vfiprintf_r+0xa0>
83000d04:	416a89b3          	sub	s3,s5,s6
83000d08:	036a8a63          	beq	s5,s6,83000d3c <_vfiprintf_r+0xe8>
83000d0c:	00000b93          	li	s7,0
83000d10:	fff00a13          	li	s4,-1
83000d14:	0140006f          	j	83000d28 <_vfiprintf_r+0xd4>
83000d18:	001b8b93          	addi	s7,s7,1
83000d1c:	1d3bfa63          	bgeu	s7,s3,83000ef0 <_vfiprintf_r+0x29c>
83000d20:	017b07b3          	add	a5,s6,s7
83000d24:	0007c583          	lbu	a1,0(a5)
83000d28:	00040613          	mv	a2,s0
83000d2c:	00048513          	mv	a0,s1
83000d30:	00001097          	auipc	ra,0x1
83000d34:	a08080e7          	jalr	-1528(ra) # 83001738 <_fputc_r>
83000d38:	ff4510e3          	bne	a0,s4,83000d18 <_vfiprintf_r+0xc4>
83000d3c:	00c45783          	lhu	a5,12(s0)
83000d40:	0407f793          	andi	a5,a5,64
83000d44:	04079c63          	bnez	a5,83000d9c <_vfiprintf_r+0x148>
83000d48:	09c12083          	lw	ra,156(sp)
83000d4c:	09812403          	lw	s0,152(sp)
83000d50:	01812503          	lw	a0,24(sp)
83000d54:	09412483          	lw	s1,148(sp)
83000d58:	09012903          	lw	s2,144(sp)
83000d5c:	08c12983          	lw	s3,140(sp)
83000d60:	08812a03          	lw	s4,136(sp)
83000d64:	08412a83          	lw	s5,132(sp)
83000d68:	08012b03          	lw	s6,128(sp)
83000d6c:	07c12b83          	lw	s7,124(sp)
83000d70:	07812c03          	lw	s8,120(sp)
83000d74:	07412c83          	lw	s9,116(sp)
83000d78:	07012d03          	lw	s10,112(sp)
83000d7c:	06c12d83          	lw	s11,108(sp)
83000d80:	0a010113          	addi	sp,sp,160
83000d84:	00008067          	ret
83000d88:	00040593          	mv	a1,s0
83000d8c:	00048513          	mv	a0,s1
83000d90:	00001097          	auipc	ra,0x1
83000d94:	2c0080e7          	jalr	704(ra) # 83002050 <__swsetup_r>
83000d98:	f20504e3          	beqz	a0,83000cc0 <_vfiprintf_r+0x6c>
83000d9c:	fff00793          	li	a5,-1
83000da0:	00f12c23          	sw	a5,24(sp)
83000da4:	fa5ff06f          	j	83000d48 <_vfiprintf_r+0xf4>
83000da8:	416a89b3          	sub	s3,s5,s6
83000dac:	f76a90e3          	bne	s5,s6,83000d0c <_vfiprintf_r+0xb8>
83000db0:	000ac783          	lbu	a5,0(s5)
83000db4:	f80784e3          	beqz	a5,83000d3c <_vfiprintf_r+0xe8>
83000db8:	001a8793          	addi	a5,s5,1
83000dbc:	00000c93          	li	s9,0
83000dc0:	fff00a93          	li	s5,-1
83000dc4:	00012023          	sw	zero,0(sp)
83000dc8:	00000a13          	li	s4,0
83000dcc:	05800613          	li	a2,88
83000dd0:	00900593          	li	a1,9
83000dd4:	02a00513          	li	a0,42
83000dd8:	0007c703          	lbu	a4,0(a5)
83000ddc:	00178b13          	addi	s6,a5,1
83000de0:	fe070793          	addi	a5,a4,-32
83000de4:	04f66863          	bltu	a2,a5,83000e34 <_vfiprintf_r+0x1e0>
83000de8:	02812683          	lw	a3,40(sp)
83000dec:	00279793          	slli	a5,a5,0x2
83000df0:	00d787b3          	add	a5,a5,a3
83000df4:	0007a783          	lw	a5,0(a5)
83000df8:	00078067          	jr	a5
83000dfc:	00012023          	sw	zero,0(sp)
83000e00:	fd070793          	addi	a5,a4,-48
83000e04:	00012803          	lw	a6,0(sp)
83000e08:	000b4703          	lbu	a4,0(s6)
83000e0c:	001b0b13          	addi	s6,s6,1
83000e10:	00281693          	slli	a3,a6,0x2
83000e14:	010686b3          	add	a3,a3,a6
83000e18:	00169693          	slli	a3,a3,0x1
83000e1c:	00d787b3          	add	a5,a5,a3
83000e20:	00f12023          	sw	a5,0(sp)
83000e24:	fd070793          	addi	a5,a4,-48
83000e28:	fcf5fee3          	bgeu	a1,a5,83000e04 <_vfiprintf_r+0x1b0>
83000e2c:	fe070793          	addi	a5,a4,-32
83000e30:	faf67ce3          	bgeu	a2,a5,83000de8 <_vfiprintf_r+0x194>
83000e34:	f00704e3          	beqz	a4,83000d3c <_vfiprintf_r+0xe8>
83000e38:	00100793          	li	a5,1
83000e3c:	02e10c23          	sb	a4,56(sp)
83000e40:	00100d93          	li	s11,1
83000e44:	00f12823          	sw	a5,16(sp)
83000e48:	03810993          	addi	s3,sp,56
83000e4c:	01412423          	sw	s4,8(sp)
83000e50:	00000c93          	li	s9,0
83000e54:	00000a93          	li	s5,0
83000e58:	00812783          	lw	a5,8(sp)
83000e5c:	0027f793          	andi	a5,a5,2
83000e60:	00f12223          	sw	a5,4(sp)
83000e64:	00078463          	beqz	a5,83000e6c <_vfiprintf_r+0x218>
83000e68:	002d8d93          	addi	s11,s11,2
83000e6c:	00812783          	lw	a5,8(sp)
83000e70:	0847f793          	andi	a5,a5,132
83000e74:	02f12223          	sw	a5,36(sp)
83000e78:	00079a63          	bnez	a5,83000e8c <_vfiprintf_r+0x238>
83000e7c:	00012783          	lw	a5,0(sp)
83000e80:	41b787b3          	sub	a5,a5,s11
83000e84:	00f12623          	sw	a5,12(sp)
83000e88:	0cf04063          	bgtz	a5,83000f48 <_vfiprintf_r+0x2f4>
83000e8c:	440c9863          	bnez	s9,830012dc <_vfiprintf_r+0x688>
83000e90:	00412783          	lw	a5,4(sp)
83000e94:	46079663          	bnez	a5,83001300 <_vfiprintf_r+0x6ac>
83000e98:	02412703          	lw	a4,36(sp)
83000e9c:	08000793          	li	a5,128
83000ea0:	4af70063          	beq	a4,a5,83001340 <_vfiprintf_r+0x6ec>
83000ea4:	01012783          	lw	a5,16(sp)
83000ea8:	40fa8ab3          	sub	s5,s5,a5
83000eac:	53505863          	blez	s5,830013dc <_vfiprintf_r+0x788>
83000eb0:	01000793          	li	a5,16
83000eb4:	3f57d663          	bge	a5,s5,830012a0 <_vfiprintf_r+0x64c>
83000eb8:	fff00a13          	li	s4,-1
83000ebc:	01000b93          	li	s7,16
83000ec0:	011c0c93          	addi	s9,s8,17
83000ec4:	03000593          	li	a1,48
83000ec8:	0100006f          	j	83000ed8 <_vfiprintf_r+0x284>
83000ecc:	3d990663          	beq	s2,s9,83001298 <_vfiprintf_r+0x644>
83000ed0:	000cc583          	lbu	a1,0(s9)
83000ed4:	001c8c93          	addi	s9,s9,1
83000ed8:	00040613          	mv	a2,s0
83000edc:	00048513          	mv	a0,s1
83000ee0:	00001097          	auipc	ra,0x1
83000ee4:	858080e7          	jalr	-1960(ra) # 83001738 <_fputc_r>
83000ee8:	ff4512e3          	bne	a0,s4,83000ecc <_vfiprintf_r+0x278>
83000eec:	e51ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
83000ef0:	01812703          	lw	a4,24(sp)
83000ef4:	000ac783          	lbu	a5,0(s5)
83000ef8:	01370733          	add	a4,a4,s3
83000efc:	00e12c23          	sw	a4,24(sp)
83000f00:	eb5ff06f          	j	83000db4 <_vfiprintf_r+0x160>
83000f04:	00002097          	auipc	ra,0x2
83000f08:	b2c080e7          	jalr	-1236(ra) # 83002a30 <__sinit>
83000f0c:	da1ff06f          	j	83000cac <_vfiprintf_r+0x58>
83000f10:	010a6a13          	ori	s4,s4,16
83000f14:	000b0793          	mv	a5,s6
83000f18:	ec1ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
83000f1c:	01c12703          	lw	a4,28(sp)
83000f20:	00072783          	lw	a5,0(a4)
83000f24:	00470713          	addi	a4,a4,4
83000f28:	00e12e23          	sw	a4,28(sp)
83000f2c:	00f12023          	sw	a5,0(sp)
83000f30:	fe07d2e3          	bgez	a5,83000f14 <_vfiprintf_r+0x2c0>
83000f34:	40f007b3          	neg	a5,a5
83000f38:	00f12023          	sw	a5,0(sp)
83000f3c:	004a6a13          	ori	s4,s4,4
83000f40:	000b0793          	mv	a5,s6
83000f44:	e95ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
83000f48:	00c12703          	lw	a4,12(sp)
83000f4c:	01000793          	li	a5,16
83000f50:	78e7d063          	bge	a5,a4,830016d0 <_vfiprintf_r+0xa7c>
83000f54:	830067b7          	lui	a5,0x83006
83000f58:	95d78793          	addi	a5,a5,-1699 # 8300595d <__BSS_END__+0xfffff089>
83000f5c:	83006a37          	lui	s4,0x83006
83000f60:	00f12a23          	sw	a5,20(sp)
83000f64:	96ca0a13          	addi	s4,s4,-1684 # 8300596c <__BSS_END__+0xfffff098>
83000f68:	fff00b93          	li	s7,-1
83000f6c:	01412d03          	lw	s10,20(sp)
83000f70:	02000593          	li	a1,32
83000f74:	0100006f          	j	83000f84 <_vfiprintf_r+0x330>
83000f78:	41aa0a63          	beq	s4,s10,8300138c <_vfiprintf_r+0x738>
83000f7c:	000d4583          	lbu	a1,0(s10)
83000f80:	001d0d13          	addi	s10,s10,1
83000f84:	00040613          	mv	a2,s0
83000f88:	00048513          	mv	a0,s1
83000f8c:	00000097          	auipc	ra,0x0
83000f90:	7ac080e7          	jalr	1964(ra) # 83001738 <_fputc_r>
83000f94:	ff7512e3          	bne	a0,s7,83000f78 <_vfiprintf_r+0x324>
83000f98:	da5ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
83000f9c:	01c12683          	lw	a3,28(sp)
83000fa0:	010a7793          	andi	a5,s4,16
83000fa4:	0006a703          	lw	a4,0(a3)
83000fa8:	00468693          	addi	a3,a3,4
83000fac:	00d12e23          	sw	a3,28(sp)
83000fb0:	00079c63          	bnez	a5,83000fc8 <_vfiprintf_r+0x374>
83000fb4:	040a7693          	andi	a3,s4,64
83000fb8:	00070793          	mv	a5,a4
83000fbc:	00068863          	beqz	a3,83000fcc <_vfiprintf_r+0x378>
83000fc0:	01071713          	slli	a4,a4,0x10
83000fc4:	41075713          	srai	a4,a4,0x10
83000fc8:	00070793          	mv	a5,a4
83000fcc:	62074663          	bltz	a4,830015f8 <_vfiprintf_r+0x9a4>
83000fd0:	fff00693          	li	a3,-1
83000fd4:	56da8663          	beq	s5,a3,83001540 <_vfiprintf_r+0x8ec>
83000fd8:	f7fa7693          	andi	a3,s4,-129
83000fdc:	00d12423          	sw	a3,8(sp)
83000fe0:	54071e63          	bnez	a4,8300153c <_vfiprintf_r+0x8e8>
83000fe4:	6c0a9a63          	bnez	s5,830016b8 <_vfiprintf_r+0xa64>
83000fe8:	00000a93          	li	s5,0
83000fec:	00012823          	sw	zero,16(sp)
83000ff0:	06010993          	addi	s3,sp,96
83000ff4:	01012783          	lw	a5,16(sp)
83000ff8:	000a8d93          	mv	s11,s5
83000ffc:	00fad463          	bge	s5,a5,83001004 <_vfiprintf_r+0x3b0>
83001000:	00078d93          	mv	s11,a5
83001004:	019037b3          	snez	a5,s9
83001008:	00fd8db3          	add	s11,s11,a5
8300100c:	e4dff06f          	j	83000e58 <_vfiprintf_r+0x204>
83001010:	01c12703          	lw	a4,28(sp)
83001014:	010a6a13          	ori	s4,s4,16
83001018:	00072783          	lw	a5,0(a4)
8300101c:	00470713          	addi	a4,a4,4
83001020:	00e12e23          	sw	a4,28(sp)
83001024:	00000693          	li	a3,0
83001028:	00000c93          	li	s9,0
8300102c:	fff00713          	li	a4,-1
83001030:	40ea8e63          	beq	s5,a4,8300144c <_vfiprintf_r+0x7f8>
83001034:	f7fa7713          	andi	a4,s4,-129
83001038:	00e12423          	sw	a4,8(sp)
8300103c:	40079663          	bnez	a5,83001448 <_vfiprintf_r+0x7f4>
83001040:	460a9663          	bnez	s5,830014ac <_vfiprintf_r+0x858>
83001044:	fa0692e3          	bnez	a3,83000fe8 <_vfiprintf_r+0x394>
83001048:	001a7793          	andi	a5,s4,1
8300104c:	00f12823          	sw	a5,16(sp)
83001050:	06010993          	addi	s3,sp,96
83001054:	fa0780e3          	beqz	a5,83000ff4 <_vfiprintf_r+0x3a0>
83001058:	03000793          	li	a5,48
8300105c:	04f10fa3          	sb	a5,95(sp)
83001060:	05f10993          	addi	s3,sp,95
83001064:	f91ff06f          	j	83000ff4 <_vfiprintf_r+0x3a0>
83001068:	01c12703          	lw	a4,28(sp)
8300106c:	010a6a13          	ori	s4,s4,16
83001070:	00072783          	lw	a5,0(a4)
83001074:	00470713          	addi	a4,a4,4
83001078:	00e12e23          	sw	a4,28(sp)
8300107c:	00100693          	li	a3,1
83001080:	fa9ff06f          	j	83001028 <_vfiprintf_r+0x3d4>
83001084:	01c12703          	lw	a4,28(sp)
83001088:	00100d93          	li	s11,1
8300108c:	03810993          	addi	s3,sp,56
83001090:	00072783          	lw	a5,0(a4)
83001094:	00470713          	addi	a4,a4,4
83001098:	00e12e23          	sw	a4,28(sp)
8300109c:	02f10c23          	sb	a5,56(sp)
830010a0:	00100793          	li	a5,1
830010a4:	00f12823          	sw	a5,16(sp)
830010a8:	da5ff06f          	j	83000e4c <_vfiprintf_r+0x1f8>
830010ac:	040a6a13          	ori	s4,s4,64
830010b0:	000b0793          	mv	a5,s6
830010b4:	d25ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
830010b8:	01c12683          	lw	a3,28(sp)
830010bc:	010a7713          	andi	a4,s4,16
830010c0:	0006a783          	lw	a5,0(a3)
830010c4:	00468693          	addi	a3,a3,4
830010c8:	00d12e23          	sw	a3,28(sp)
830010cc:	f4071ce3          	bnez	a4,83001024 <_vfiprintf_r+0x3d0>
830010d0:	040a7713          	andi	a4,s4,64
830010d4:	f40708e3          	beqz	a4,83001024 <_vfiprintf_r+0x3d0>
830010d8:	01079793          	slli	a5,a5,0x10
830010dc:	0107d793          	srli	a5,a5,0x10
830010e0:	00000693          	li	a3,0
830010e4:	f45ff06f          	j	83001028 <_vfiprintf_r+0x3d4>
830010e8:	01c12703          	lw	a4,28(sp)
830010ec:	002a6a13          	ori	s4,s4,2
830010f0:	00200693          	li	a3,2
830010f4:	00072783          	lw	a5,0(a4)
830010f8:	00470713          	addi	a4,a4,4
830010fc:	00e12e23          	sw	a4,28(sp)
83001100:	07800713          	li	a4,120
83001104:	02e12623          	sw	a4,44(sp)
83001108:	83005737          	lui	a4,0x83005
8300110c:	65870713          	addi	a4,a4,1624 # 83005658 <__BSS_END__+0xffffed84>
83001110:	02e12023          	sw	a4,32(sp)
83001114:	f15ff06f          	j	83001028 <_vfiprintf_r+0x3d4>
83001118:	01c12783          	lw	a5,28(sp)
8300111c:	0007a983          	lw	s3,0(a5)
83001120:	00478b93          	addi	s7,a5,4
83001124:	54098a63          	beqz	s3,83001678 <_vfiprintf_r+0xa24>
83001128:	fff00793          	li	a5,-1
8300112c:	52fa8c63          	beq	s5,a5,83001664 <_vfiprintf_r+0xa10>
83001130:	000a8613          	mv	a2,s5
83001134:	00000593          	li	a1,0
83001138:	00098513          	mv	a0,s3
8300113c:	00000097          	auipc	ra,0x0
83001140:	6e0080e7          	jalr	1760(ra) # 8300181c <memchr>
83001144:	56050e63          	beqz	a0,830016c0 <_vfiprintf_r+0xa6c>
83001148:	413507b3          	sub	a5,a0,s3
8300114c:	fff7cd93          	not	s11,a5
83001150:	41fddd93          	srai	s11,s11,0x1f
83001154:	00f12823          	sw	a5,16(sp)
83001158:	01b7fdb3          	and	s11,a5,s11
8300115c:	01712e23          	sw	s7,28(sp)
83001160:	cedff06f          	j	83000e4c <_vfiprintf_r+0x1f8>
83001164:	01c12683          	lw	a3,28(sp)
83001168:	010a7713          	andi	a4,s4,16
8300116c:	0006a783          	lw	a5,0(a3)
83001170:	00468693          	addi	a3,a3,4
83001174:	00d12e23          	sw	a3,28(sp)
83001178:	f00712e3          	bnez	a4,8300107c <_vfiprintf_r+0x428>
8300117c:	040a7713          	andi	a4,s4,64
83001180:	ee070ee3          	beqz	a4,8300107c <_vfiprintf_r+0x428>
83001184:	01079793          	slli	a5,a5,0x10
83001188:	0107d793          	srli	a5,a5,0x10
8300118c:	00100693          	li	a3,1
83001190:	e99ff06f          	j	83001028 <_vfiprintf_r+0x3d4>
83001194:	080a6a13          	ori	s4,s4,128
83001198:	000b0793          	mv	a5,s6
8300119c:	c3dff06f          	j	83000dd8 <_vfiprintf_r+0x184>
830011a0:	01c12783          	lw	a5,28(sp)
830011a4:	010a6a13          	ori	s4,s4,16
830011a8:	0007a703          	lw	a4,0(a5)
830011ac:	00478793          	addi	a5,a5,4
830011b0:	00f12e23          	sw	a5,28(sp)
830011b4:	00070793          	mv	a5,a4
830011b8:	e15ff06f          	j	83000fcc <_vfiprintf_r+0x378>
830011bc:	000b4703          	lbu	a4,0(s6)
830011c0:	001b0b13          	addi	s6,s6,1
830011c4:	52a70663          	beq	a4,a0,830016f0 <_vfiprintf_r+0xa9c>
830011c8:	fd070793          	addi	a5,a4,-48
830011cc:	00000a93          	li	s5,0
830011d0:	c0f5e8e3          	bltu	a1,a5,83000de0 <_vfiprintf_r+0x18c>
830011d4:	000b4703          	lbu	a4,0(s6)
830011d8:	002a9693          	slli	a3,s5,0x2
830011dc:	015686b3          	add	a3,a3,s5
830011e0:	00169693          	slli	a3,a3,0x1
830011e4:	00f68ab3          	add	s5,a3,a5
830011e8:	fd070793          	addi	a5,a4,-48
830011ec:	001b0b13          	addi	s6,s6,1
830011f0:	fef5f2e3          	bgeu	a1,a5,830011d4 <_vfiprintf_r+0x580>
830011f4:	bedff06f          	j	83000de0 <_vfiprintf_r+0x18c>
830011f8:	01c12683          	lw	a3,28(sp)
830011fc:	010a7793          	andi	a5,s4,16
83001200:	00468713          	addi	a4,a3,4
83001204:	44078063          	beqz	a5,83001644 <_vfiprintf_r+0x9f0>
83001208:	00e12e23          	sw	a4,28(sp)
8300120c:	0006a783          	lw	a5,0(a3)
83001210:	01812703          	lw	a4,24(sp)
83001214:	00e7a023          	sw	a4,0(a5)
83001218:	ac9ff06f          	j	83000ce0 <_vfiprintf_r+0x8c>
8300121c:	ce0c9ce3          	bnez	s9,83000f14 <_vfiprintf_r+0x2c0>
83001220:	02000c93          	li	s9,32
83001224:	000b0793          	mv	a5,s6
83001228:	bb1ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
8300122c:	001a6a13          	ori	s4,s4,1
83001230:	000b0793          	mv	a5,s6
83001234:	ba5ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
83001238:	02b00c93          	li	s9,43
8300123c:	000b0793          	mv	a5,s6
83001240:	b99ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
83001244:	830057b7          	lui	a5,0x83005
83001248:	65878793          	addi	a5,a5,1624 # 83005658 <__BSS_END__+0xffffed84>
8300124c:	02f12023          	sw	a5,32(sp)
83001250:	01c12603          	lw	a2,28(sp)
83001254:	010a7693          	andi	a3,s4,16
83001258:	00062783          	lw	a5,0(a2)
8300125c:	00460613          	addi	a2,a2,4
83001260:	00c12e23          	sw	a2,28(sp)
83001264:	00069a63          	bnez	a3,83001278 <_vfiprintf_r+0x624>
83001268:	040a7693          	andi	a3,s4,64
8300126c:	00068663          	beqz	a3,83001278 <_vfiprintf_r+0x624>
83001270:	01079793          	slli	a5,a5,0x10
83001274:	0107d793          	srli	a5,a5,0x10
83001278:	001a7613          	andi	a2,s4,1
8300127c:	00200693          	li	a3,2
83001280:	da0604e3          	beqz	a2,83001028 <_vfiprintf_r+0x3d4>
83001284:	da0782e3          	beqz	a5,83001028 <_vfiprintf_r+0x3d4>
83001288:	0ff77713          	zext.b	a4,a4
8300128c:	02e12623          	sw	a4,44(sp)
83001290:	002a6a13          	ori	s4,s4,2
83001294:	d95ff06f          	j	83001028 <_vfiprintf_r+0x3d4>
83001298:	ff0a8a93          	addi	s5,s5,-16
8300129c:	c35bc2e3          	blt	s7,s5,83000ec0 <_vfiprintf_r+0x26c>
830012a0:	010c0a13          	addi	s4,s8,16
830012a4:	015a0ab3          	add	s5,s4,s5
830012a8:	011c0b93          	addi	s7,s8,17
830012ac:	03000593          	li	a1,48
830012b0:	fff00a13          	li	s4,-1
830012b4:	0100006f          	j	830012c4 <_vfiprintf_r+0x670>
830012b8:	137a8263          	beq	s5,s7,830013dc <_vfiprintf_r+0x788>
830012bc:	000bc583          	lbu	a1,0(s7)
830012c0:	001b8b93          	addi	s7,s7,1
830012c4:	00040613          	mv	a2,s0
830012c8:	00048513          	mv	a0,s1
830012cc:	00000097          	auipc	ra,0x0
830012d0:	46c080e7          	jalr	1132(ra) # 83001738 <_fputc_r>
830012d4:	ff4512e3          	bne	a0,s4,830012b8 <_vfiprintf_r+0x664>
830012d8:	a65ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
830012dc:	00040613          	mv	a2,s0
830012e0:	000c8593          	mv	a1,s9
830012e4:	00048513          	mv	a0,s1
830012e8:	00000097          	auipc	ra,0x0
830012ec:	450080e7          	jalr	1104(ra) # 83001738 <_fputc_r>
830012f0:	fff00793          	li	a5,-1
830012f4:	a4f504e3          	beq	a0,a5,83000d3c <_vfiprintf_r+0xe8>
830012f8:	00412783          	lw	a5,4(sp)
830012fc:	b8078ee3          	beqz	a5,83000e98 <_vfiprintf_r+0x244>
83001300:	00040613          	mv	a2,s0
83001304:	03000593          	li	a1,48
83001308:	00048513          	mv	a0,s1
8300130c:	00000097          	auipc	ra,0x0
83001310:	42c080e7          	jalr	1068(ra) # 83001738 <_fputc_r>
83001314:	fff00a13          	li	s4,-1
83001318:	a34502e3          	beq	a0,s4,83000d3c <_vfiprintf_r+0xe8>
8300131c:	02c12583          	lw	a1,44(sp)
83001320:	00040613          	mv	a2,s0
83001324:	00048513          	mv	a0,s1
83001328:	00000097          	auipc	ra,0x0
8300132c:	410080e7          	jalr	1040(ra) # 83001738 <_fputc_r>
83001330:	a14506e3          	beq	a0,s4,83000d3c <_vfiprintf_r+0xe8>
83001334:	02412703          	lw	a4,36(sp)
83001338:	08000793          	li	a5,128
8300133c:	b6f714e3          	bne	a4,a5,83000ea4 <_vfiprintf_r+0x250>
83001340:	00012783          	lw	a5,0(sp)
83001344:	41b78bb3          	sub	s7,a5,s11
83001348:	b5705ee3          	blez	s7,83000ea4 <_vfiprintf_r+0x250>
8300134c:	01000793          	li	a5,16
83001350:	1b77d863          	bge	a5,s7,83001500 <_vfiprintf_r+0x8ac>
83001354:	fff00a13          	li	s4,-1
83001358:	01000c93          	li	s9,16
8300135c:	011c0d13          	addi	s10,s8,17
83001360:	03000593          	li	a1,48
83001364:	0100006f          	j	83001374 <_vfiprintf_r+0x720>
83001368:	192d0863          	beq	s10,s2,830014f8 <_vfiprintf_r+0x8a4>
8300136c:	000d4583          	lbu	a1,0(s10)
83001370:	001d0d13          	addi	s10,s10,1
83001374:	00040613          	mv	a2,s0
83001378:	00048513          	mv	a0,s1
8300137c:	00000097          	auipc	ra,0x0
83001380:	3bc080e7          	jalr	956(ra) # 83001738 <_fputc_r>
83001384:	ff4512e3          	bne	a0,s4,83001368 <_vfiprintf_r+0x714>
83001388:	9b5ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
8300138c:	00c12783          	lw	a5,12(sp)
83001390:	01000713          	li	a4,16
83001394:	ff078793          	addi	a5,a5,-16
83001398:	00f12623          	sw	a5,12(sp)
8300139c:	bcf748e3          	blt	a4,a5,83000f6c <_vfiprintf_r+0x318>
830013a0:	00c12783          	lw	a5,12(sp)
830013a4:	01412b83          	lw	s7,20(sp)
830013a8:	02000593          	li	a1,32
830013ac:	00fc0d33          	add	s10,s8,a5
830013b0:	fff00a13          	li	s4,-1
830013b4:	0100006f          	j	830013c4 <_vfiprintf_r+0x770>
830013b8:	adab8ae3          	beq	s7,s10,83000e8c <_vfiprintf_r+0x238>
830013bc:	000bc583          	lbu	a1,0(s7)
830013c0:	001b8b93          	addi	s7,s7,1
830013c4:	00040613          	mv	a2,s0
830013c8:	00048513          	mv	a0,s1
830013cc:	00000097          	auipc	ra,0x0
830013d0:	36c080e7          	jalr	876(ra) # 83001738 <_fputc_r>
830013d4:	ff4512e3          	bne	a0,s4,830013b8 <_vfiprintf_r+0x764>
830013d8:	965ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
830013dc:	01012783          	lw	a5,16(sp)
830013e0:	02078a63          	beqz	a5,83001414 <_vfiprintf_r+0x7c0>
830013e4:	00f98ab3          	add	s5,s3,a5
830013e8:	fff00a13          	li	s4,-1
830013ec:	00c0006f          	j	830013f8 <_vfiprintf_r+0x7a4>
830013f0:	00198993          	addi	s3,s3,1
830013f4:	03598063          	beq	s3,s5,83001414 <_vfiprintf_r+0x7c0>
830013f8:	0009c583          	lbu	a1,0(s3)
830013fc:	00040613          	mv	a2,s0
83001400:	00048513          	mv	a0,s1
83001404:	00000097          	auipc	ra,0x0
83001408:	334080e7          	jalr	820(ra) # 83001738 <_fputc_r>
8300140c:	ff4512e3          	bne	a0,s4,830013f0 <_vfiprintf_r+0x79c>
83001410:	92dff06f          	j	83000d3c <_vfiprintf_r+0xe8>
83001414:	00812783          	lw	a5,8(sp)
83001418:	0047f793          	andi	a5,a5,4
8300141c:	00078863          	beqz	a5,8300142c <_vfiprintf_r+0x7d8>
83001420:	00012783          	lw	a5,0(sp)
83001424:	41b78ab3          	sub	s5,a5,s11
83001428:	13504e63          	bgtz	s5,83001564 <_vfiprintf_r+0x910>
8300142c:	00012783          	lw	a5,0(sp)
83001430:	01b7d463          	bge	a5,s11,83001438 <_vfiprintf_r+0x7e4>
83001434:	000d8793          	mv	a5,s11
83001438:	01812703          	lw	a4,24(sp)
8300143c:	00f707b3          	add	a5,a4,a5
83001440:	00f12c23          	sw	a5,24(sp)
83001444:	89dff06f          	j	83000ce0 <_vfiprintf_r+0x8c>
83001448:	00812a03          	lw	s4,8(sp)
8300144c:	00100713          	li	a4,1
83001450:	0ee68863          	beq	a3,a4,83001540 <_vfiprintf_r+0x8ec>
83001454:	00200713          	li	a4,2
83001458:	06e68463          	beq	a3,a4,830014c0 <_vfiprintf_r+0x86c>
8300145c:	06010993          	addi	s3,sp,96
83001460:	0077f713          	andi	a4,a5,7
83001464:	03070713          	addi	a4,a4,48
83001468:	fee98fa3          	sb	a4,-1(s3)
8300146c:	0037d793          	srli	a5,a5,0x3
83001470:	00098693          	mv	a3,s3
83001474:	fff98993          	addi	s3,s3,-1
83001478:	fe0794e3          	bnez	a5,83001460 <_vfiprintf_r+0x80c>
8300147c:	001a7793          	andi	a5,s4,1
83001480:	06078263          	beqz	a5,830014e4 <_vfiprintf_r+0x890>
83001484:	03000793          	li	a5,48
83001488:	04f70e63          	beq	a4,a5,830014e4 <_vfiprintf_r+0x890>
8300148c:	ffe68693          	addi	a3,a3,-2
83001490:	fef98fa3          	sb	a5,-1(s3)
83001494:	06010793          	addi	a5,sp,96
83001498:	40d787b3          	sub	a5,a5,a3
8300149c:	00f12823          	sw	a5,16(sp)
830014a0:	01412423          	sw	s4,8(sp)
830014a4:	00068993          	mv	s3,a3
830014a8:	b4dff06f          	j	83000ff4 <_vfiprintf_r+0x3a0>
830014ac:	00100713          	li	a4,1
830014b0:	20e68463          	beq	a3,a4,830016b8 <_vfiprintf_r+0xa64>
830014b4:	00200713          	li	a4,2
830014b8:	00812a03          	lw	s4,8(sp)
830014bc:	fae690e3          	bne	a3,a4,8300145c <_vfiprintf_r+0x808>
830014c0:	06010993          	addi	s3,sp,96
830014c4:	02012683          	lw	a3,32(sp)
830014c8:	00f7f713          	andi	a4,a5,15
830014cc:	fff98993          	addi	s3,s3,-1
830014d0:	00e68733          	add	a4,a3,a4
830014d4:	00074703          	lbu	a4,0(a4)
830014d8:	0047d793          	srli	a5,a5,0x4
830014dc:	00e98023          	sb	a4,0(s3)
830014e0:	fe0792e3          	bnez	a5,830014c4 <_vfiprintf_r+0x870>
830014e4:	06010793          	addi	a5,sp,96
830014e8:	413787b3          	sub	a5,a5,s3
830014ec:	00f12823          	sw	a5,16(sp)
830014f0:	01412423          	sw	s4,8(sp)
830014f4:	b01ff06f          	j	83000ff4 <_vfiprintf_r+0x3a0>
830014f8:	ff0b8b93          	addi	s7,s7,-16
830014fc:	e77cc0e3          	blt	s9,s7,8300135c <_vfiprintf_r+0x708>
83001500:	010c0a13          	addi	s4,s8,16
83001504:	017a0bb3          	add	s7,s4,s7
83001508:	011c0c93          	addi	s9,s8,17
8300150c:	03000593          	li	a1,48
83001510:	fff00a13          	li	s4,-1
83001514:	0100006f          	j	83001524 <_vfiprintf_r+0x8d0>
83001518:	999b86e3          	beq	s7,s9,83000ea4 <_vfiprintf_r+0x250>
8300151c:	000cc583          	lbu	a1,0(s9)
83001520:	001c8c93          	addi	s9,s9,1
83001524:	00040613          	mv	a2,s0
83001528:	00048513          	mv	a0,s1
8300152c:	00000097          	auipc	ra,0x0
83001530:	20c080e7          	jalr	524(ra) # 83001738 <_fputc_r>
83001534:	ff4512e3          	bne	a0,s4,83001518 <_vfiprintf_r+0x8c4>
83001538:	805ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
8300153c:	00812a03          	lw	s4,8(sp)
83001540:	00900713          	li	a4,9
83001544:	0cf76263          	bltu	a4,a5,83001608 <_vfiprintf_r+0x9b4>
83001548:	03078793          	addi	a5,a5,48
8300154c:	04f10fa3          	sb	a5,95(sp)
83001550:	00100793          	li	a5,1
83001554:	01412423          	sw	s4,8(sp)
83001558:	00f12823          	sw	a5,16(sp)
8300155c:	05f10993          	addi	s3,sp,95
83001560:	a95ff06f          	j	83000ff4 <_vfiprintf_r+0x3a0>
83001564:	01000793          	li	a5,16
83001568:	1757dc63          	bge	a5,s5,830016e0 <_vfiprintf_r+0xa8c>
8300156c:	830067b7          	lui	a5,0x83006
83001570:	95d78793          	addi	a5,a5,-1699 # 8300595d <__BSS_END__+0xfffff089>
83001574:	83006a37          	lui	s4,0x83006
83001578:	00f12a23          	sw	a5,20(sp)
8300157c:	96ca0a13          	addi	s4,s4,-1684 # 8300596c <__BSS_END__+0xfffff098>
83001580:	fff00993          	li	s3,-1
83001584:	01000b93          	li	s7,16
83001588:	01412c83          	lw	s9,20(sp)
8300158c:	02000593          	li	a1,32
83001590:	0100006f          	j	830015a0 <_vfiprintf_r+0x94c>
83001594:	039a0263          	beq	s4,s9,830015b8 <_vfiprintf_r+0x964>
83001598:	000cc583          	lbu	a1,0(s9)
8300159c:	001c8c93          	addi	s9,s9,1
830015a0:	00040613          	mv	a2,s0
830015a4:	00048513          	mv	a0,s1
830015a8:	00000097          	auipc	ra,0x0
830015ac:	190080e7          	jalr	400(ra) # 83001738 <_fputc_r>
830015b0:	ff3512e3          	bne	a0,s3,83001594 <_vfiprintf_r+0x940>
830015b4:	f88ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
830015b8:	ff0a8a93          	addi	s5,s5,-16
830015bc:	fd5bc6e3          	blt	s7,s5,83001588 <_vfiprintf_r+0x934>
830015c0:	01412a03          	lw	s4,20(sp)
830015c4:	015c0ab3          	add	s5,s8,s5
830015c8:	02000593          	li	a1,32
830015cc:	fff00993          	li	s3,-1
830015d0:	0100006f          	j	830015e0 <_vfiprintf_r+0x98c>
830015d4:	e55a0ce3          	beq	s4,s5,8300142c <_vfiprintf_r+0x7d8>
830015d8:	000a4583          	lbu	a1,0(s4)
830015dc:	001a0a13          	addi	s4,s4,1
830015e0:	00040613          	mv	a2,s0
830015e4:	00048513          	mv	a0,s1
830015e8:	00000097          	auipc	ra,0x0
830015ec:	150080e7          	jalr	336(ra) # 83001738 <_fputc_r>
830015f0:	ff3512e3          	bne	a0,s3,830015d4 <_vfiprintf_r+0x980>
830015f4:	f48ff06f          	j	83000d3c <_vfiprintf_r+0xe8>
830015f8:	40e007b3          	neg	a5,a4
830015fc:	02d00c93          	li	s9,45
83001600:	00100693          	li	a3,1
83001604:	a29ff06f          	j	8300102c <_vfiprintf_r+0x3d8>
83001608:	06010993          	addi	s3,sp,96
8300160c:	00a00693          	li	a3,10
83001610:	00900593          	li	a1,9
83001614:	02d7f733          	remu	a4,a5,a3
83001618:	fff98993          	addi	s3,s3,-1
8300161c:	00078613          	mv	a2,a5
83001620:	03070713          	addi	a4,a4,48
83001624:	00e98023          	sb	a4,0(s3)
83001628:	02d7d7b3          	divu	a5,a5,a3
8300162c:	fec5e4e3          	bltu	a1,a2,83001614 <_vfiprintf_r+0x9c0>
83001630:	06010793          	addi	a5,sp,96
83001634:	413787b3          	sub	a5,a5,s3
83001638:	00f12823          	sw	a5,16(sp)
8300163c:	01412423          	sw	s4,8(sp)
83001640:	9b5ff06f          	j	83000ff4 <_vfiprintf_r+0x3a0>
83001644:	01c12783          	lw	a5,28(sp)
83001648:	040a7a13          	andi	s4,s4,64
8300164c:	0007a783          	lw	a5,0(a5)
83001650:	00e12e23          	sw	a4,28(sp)
83001654:	01812703          	lw	a4,24(sp)
83001658:	040a0063          	beqz	s4,83001698 <_vfiprintf_r+0xa44>
8300165c:	00e79023          	sh	a4,0(a5)
83001660:	e80ff06f          	j	83000ce0 <_vfiprintf_r+0x8c>
83001664:	00098513          	mv	a0,s3
83001668:	00000097          	auipc	ra,0x0
8300166c:	27c080e7          	jalr	636(ra) # 830018e4 <strlen>
83001670:	00050793          	mv	a5,a0
83001674:	ad9ff06f          	j	8300114c <_vfiprintf_r+0x4f8>
83001678:	01512823          	sw	s5,16(sp)
8300167c:	00600793          	li	a5,6
83001680:	0357e863          	bltu	a5,s5,830016b0 <_vfiprintf_r+0xa5c>
83001684:	830059b7          	lui	s3,0x83005
83001688:	01012d83          	lw	s11,16(sp)
8300168c:	01712e23          	sw	s7,28(sp)
83001690:	66c98993          	addi	s3,s3,1644 # 8300566c <__BSS_END__+0xffffed98>
83001694:	fb8ff06f          	j	83000e4c <_vfiprintf_r+0x1f8>
83001698:	00e7a023          	sw	a4,0(a5)
8300169c:	e44ff06f          	j	83000ce0 <_vfiprintf_r+0x8c>
830016a0:	830057b7          	lui	a5,0x83005
830016a4:	64478793          	addi	a5,a5,1604 # 83005644 <__BSS_END__+0xffffed70>
830016a8:	02f12023          	sw	a5,32(sp)
830016ac:	ba5ff06f          	j	83001250 <_vfiprintf_r+0x5fc>
830016b0:	00f12823          	sw	a5,16(sp)
830016b4:	fd1ff06f          	j	83001684 <_vfiprintf_r+0xa30>
830016b8:	00812a03          	lw	s4,8(sp)
830016bc:	e8dff06f          	j	83001548 <_vfiprintf_r+0x8f4>
830016c0:	000a8d93          	mv	s11,s5
830016c4:	01712e23          	sw	s7,28(sp)
830016c8:	01512823          	sw	s5,16(sp)
830016cc:	f80ff06f          	j	83000e4c <_vfiprintf_r+0x1f8>
830016d0:	830067b7          	lui	a5,0x83006
830016d4:	95d78793          	addi	a5,a5,-1699 # 8300595d <__BSS_END__+0xfffff089>
830016d8:	00f12a23          	sw	a5,20(sp)
830016dc:	cc5ff06f          	j	830013a0 <_vfiprintf_r+0x74c>
830016e0:	830067b7          	lui	a5,0x83006
830016e4:	95d78793          	addi	a5,a5,-1699 # 8300595d <__BSS_END__+0xfffff089>
830016e8:	00f12a23          	sw	a5,20(sp)
830016ec:	ed5ff06f          	j	830015c0 <_vfiprintf_r+0x96c>
830016f0:	01c12783          	lw	a5,28(sp)
830016f4:	0007aa83          	lw	s5,0(a5)
830016f8:	00478793          	addi	a5,a5,4
830016fc:	000ac863          	bltz	s5,8300170c <_vfiprintf_r+0xab8>
83001700:	00f12e23          	sw	a5,28(sp)
83001704:	000b0793          	mv	a5,s6
83001708:	ed0ff06f          	j	83000dd8 <_vfiprintf_r+0x184>
8300170c:	fff00a93          	li	s5,-1
83001710:	00f12e23          	sw	a5,28(sp)
83001714:	ff1ff06f          	j	83001704 <_vfiprintf_r+0xab0>

83001718 <vfiprintf>:
83001718:	83007737          	lui	a4,0x83007
8300171c:	00050793          	mv	a5,a0
83001720:	88872503          	lw	a0,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
83001724:	00060693          	mv	a3,a2
83001728:	00058613          	mv	a2,a1
8300172c:	00078593          	mv	a1,a5
83001730:	fffff317          	auipc	t1,0xfffff
83001734:	52430067          	jr	1316(t1) # 83000c54 <_vfiprintf_r>

83001738 <_fputc_r>:
83001738:	fe010113          	addi	sp,sp,-32
8300173c:	00812c23          	sw	s0,24(sp)
83001740:	00112e23          	sw	ra,28(sp)
83001744:	00050413          	mv	s0,a0
83001748:	00050663          	beqz	a0,83001754 <_fputc_r+0x1c>
8300174c:	03852783          	lw	a5,56(a0)
83001750:	00078e63          	beqz	a5,8300176c <_fputc_r+0x34>
83001754:	00040513          	mv	a0,s0
83001758:	01812403          	lw	s0,24(sp)
8300175c:	01c12083          	lw	ra,28(sp)
83001760:	02010113          	addi	sp,sp,32
83001764:	00001317          	auipc	t1,0x1
83001768:	65030067          	jr	1616(t1) # 83002db4 <_putc_r>
8300176c:	00c12623          	sw	a2,12(sp)
83001770:	00b12423          	sw	a1,8(sp)
83001774:	00001097          	auipc	ra,0x1
83001778:	2bc080e7          	jalr	700(ra) # 83002a30 <__sinit>
8300177c:	00040513          	mv	a0,s0
83001780:	01812403          	lw	s0,24(sp)
83001784:	00c12603          	lw	a2,12(sp)
83001788:	00812583          	lw	a1,8(sp)
8300178c:	01c12083          	lw	ra,28(sp)
83001790:	02010113          	addi	sp,sp,32
83001794:	00001317          	auipc	t1,0x1
83001798:	62030067          	jr	1568(t1) # 83002db4 <_putc_r>

8300179c <fputc>:
8300179c:	fe010113          	addi	sp,sp,-32
830017a0:	830077b7          	lui	a5,0x83007
830017a4:	00912a23          	sw	s1,20(sp)
830017a8:	8887a483          	lw	s1,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
830017ac:	00812c23          	sw	s0,24(sp)
830017b0:	00112e23          	sw	ra,28(sp)
830017b4:	00050413          	mv	s0,a0
830017b8:	00058613          	mv	a2,a1
830017bc:	00048663          	beqz	s1,830017c8 <fputc+0x2c>
830017c0:	0384a783          	lw	a5,56(s1)
830017c4:	02078263          	beqz	a5,830017e8 <fputc+0x4c>
830017c8:	00040593          	mv	a1,s0
830017cc:	01812403          	lw	s0,24(sp)
830017d0:	01c12083          	lw	ra,28(sp)
830017d4:	00048513          	mv	a0,s1
830017d8:	01412483          	lw	s1,20(sp)
830017dc:	02010113          	addi	sp,sp,32
830017e0:	00001317          	auipc	t1,0x1
830017e4:	5d430067          	jr	1492(t1) # 83002db4 <_putc_r>
830017e8:	00048513          	mv	a0,s1
830017ec:	00b12623          	sw	a1,12(sp)
830017f0:	00001097          	auipc	ra,0x1
830017f4:	240080e7          	jalr	576(ra) # 83002a30 <__sinit>
830017f8:	00040593          	mv	a1,s0
830017fc:	01812403          	lw	s0,24(sp)
83001800:	00c12603          	lw	a2,12(sp)
83001804:	01c12083          	lw	ra,28(sp)
83001808:	00048513          	mv	a0,s1
8300180c:	01412483          	lw	s1,20(sp)
83001810:	02010113          	addi	sp,sp,32
83001814:	00001317          	auipc	t1,0x1
83001818:	5a030067          	jr	1440(t1) # 83002db4 <_putc_r>

8300181c <memchr>:
8300181c:	00357793          	andi	a5,a0,3
83001820:	0ff5f693          	zext.b	a3,a1
83001824:	02078a63          	beqz	a5,83001858 <memchr+0x3c>
83001828:	fff60793          	addi	a5,a2,-1
8300182c:	02060e63          	beqz	a2,83001868 <memchr+0x4c>
83001830:	fff00613          	li	a2,-1
83001834:	0180006f          	j	8300184c <memchr+0x30>
83001838:	00150513          	addi	a0,a0,1
8300183c:	00357713          	andi	a4,a0,3
83001840:	00070e63          	beqz	a4,8300185c <memchr+0x40>
83001844:	fff78793          	addi	a5,a5,-1
83001848:	02c78063          	beq	a5,a2,83001868 <memchr+0x4c>
8300184c:	00054703          	lbu	a4,0(a0)
83001850:	fed714e3          	bne	a4,a3,83001838 <memchr+0x1c>
83001854:	00008067          	ret
83001858:	00060793          	mv	a5,a2
8300185c:	00300713          	li	a4,3
83001860:	02f76663          	bltu	a4,a5,8300188c <memchr+0x70>
83001864:	00079663          	bnez	a5,83001870 <memchr+0x54>
83001868:	00000513          	li	a0,0
8300186c:	00008067          	ret
83001870:	00f507b3          	add	a5,a0,a5
83001874:	00c0006f          	j	83001880 <memchr+0x64>
83001878:	00150513          	addi	a0,a0,1
8300187c:	fea786e3          	beq	a5,a0,83001868 <memchr+0x4c>
83001880:	00054703          	lbu	a4,0(a0)
83001884:	fed71ae3          	bne	a4,a3,83001878 <memchr+0x5c>
83001888:	00008067          	ret
8300188c:	0ff5f593          	zext.b	a1,a1
83001890:	00859713          	slli	a4,a1,0x8
83001894:	00b76733          	or	a4,a4,a1
83001898:	01071893          	slli	a7,a4,0x10
8300189c:	feff0837          	lui	a6,0xfeff0
830018a0:	808085b7          	lui	a1,0x80808
830018a4:	00e8e8b3          	or	a7,a7,a4
830018a8:	eff80813          	addi	a6,a6,-257 # fefefeff <__BSS_END__+0x7bfe962b>
830018ac:	08058593          	addi	a1,a1,128 # 80808080 <__BSS_END__+0xfd8017ac>
830018b0:	00300313          	li	t1,3
830018b4:	00052703          	lw	a4,0(a0)
830018b8:	00e8c733          	xor	a4,a7,a4
830018bc:	01070633          	add	a2,a4,a6
830018c0:	fff74713          	not	a4,a4
830018c4:	00e67733          	and	a4,a2,a4
830018c8:	00b77733          	and	a4,a4,a1
830018cc:	fa0712e3          	bnez	a4,83001870 <memchr+0x54>
830018d0:	ffc78793          	addi	a5,a5,-4
830018d4:	00450513          	addi	a0,a0,4
830018d8:	fcf36ee3          	bltu	t1,a5,830018b4 <memchr+0x98>
830018dc:	f8079ae3          	bnez	a5,83001870 <memchr+0x54>
830018e0:	f89ff06f          	j	83001868 <memchr+0x4c>

830018e4 <strlen>:
830018e4:	00357793          	andi	a5,a0,3
830018e8:	02078463          	beqz	a5,83001910 <strlen+0x2c>
830018ec:	00050793          	mv	a5,a0
830018f0:	0100006f          	j	83001900 <strlen+0x1c>
830018f4:	00178793          	addi	a5,a5,1
830018f8:	0037f713          	andi	a4,a5,3
830018fc:	00070c63          	beqz	a4,83001914 <strlen+0x30>
83001900:	0007c703          	lbu	a4,0(a5)
83001904:	fe0718e3          	bnez	a4,830018f4 <strlen+0x10>
83001908:	40a78533          	sub	a0,a5,a0
8300190c:	00008067          	ret
83001910:	00050793          	mv	a5,a0
83001914:	0007a683          	lw	a3,0(a5)
83001918:	feff05b7          	lui	a1,0xfeff0
8300191c:	eff58593          	addi	a1,a1,-257 # fefefeff <__BSS_END__+0x7bfe962b>
83001920:	00b68733          	add	a4,a3,a1
83001924:	80808637          	lui	a2,0x80808
83001928:	fff6c693          	not	a3,a3
8300192c:	00d77733          	and	a4,a4,a3
83001930:	08060613          	addi	a2,a2,128 # 80808080 <__BSS_END__+0xfd8017ac>
83001934:	00c77733          	and	a4,a4,a2
83001938:	02071063          	bnez	a4,83001958 <strlen+0x74>
8300193c:	0047a683          	lw	a3,4(a5)
83001940:	00478793          	addi	a5,a5,4
83001944:	00b68733          	add	a4,a3,a1
83001948:	fff6c693          	not	a3,a3
8300194c:	00d77733          	and	a4,a4,a3
83001950:	00c77733          	and	a4,a4,a2
83001954:	fe0704e3          	beqz	a4,8300193c <strlen+0x58>
83001958:	0007c703          	lbu	a4,0(a5)
8300195c:	fa0706e3          	beqz	a4,83001908 <strlen+0x24>
83001960:	0017c703          	lbu	a4,1(a5)
83001964:	00178793          	addi	a5,a5,1
83001968:	fa0700e3          	beqz	a4,83001908 <strlen+0x24>
8300196c:	0017c703          	lbu	a4,1(a5)
83001970:	00178793          	addi	a5,a5,1
83001974:	fe0716e3          	bnez	a4,83001960 <strlen+0x7c>
83001978:	f91ff06f          	j	83001908 <strlen+0x24>

8300197c <_write_r>:
8300197c:	ff010113          	addi	sp,sp,-16
83001980:	00058713          	mv	a4,a1
83001984:	00812423          	sw	s0,8(sp)
83001988:	00912223          	sw	s1,4(sp)
8300198c:	00060593          	mv	a1,a2
83001990:	00050413          	mv	s0,a0
83001994:	830074b7          	lui	s1,0x83007
83001998:	00068613          	mv	a2,a3
8300199c:	00070513          	mv	a0,a4
830019a0:	00112623          	sw	ra,12(sp)
830019a4:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
830019a8:	00003097          	auipc	ra,0x3
830019ac:	088080e7          	jalr	136(ra) # 83004a30 <_write>
830019b0:	fff00793          	li	a5,-1
830019b4:	00f50c63          	beq	a0,a5,830019cc <_write_r+0x50>
830019b8:	00c12083          	lw	ra,12(sp)
830019bc:	00812403          	lw	s0,8(sp)
830019c0:	00412483          	lw	s1,4(sp)
830019c4:	01010113          	addi	sp,sp,16
830019c8:	00008067          	ret
830019cc:	8984a783          	lw	a5,-1896(s1)
830019d0:	fe0784e3          	beqz	a5,830019b8 <_write_r+0x3c>
830019d4:	00c12083          	lw	ra,12(sp)
830019d8:	00f42023          	sw	a5,0(s0)
830019dc:	00812403          	lw	s0,8(sp)
830019e0:	00412483          	lw	s1,4(sp)
830019e4:	01010113          	addi	sp,sp,16
830019e8:	00008067          	ret

830019ec <cleanup_glue>:
830019ec:	fe010113          	addi	sp,sp,-32
830019f0:	01212823          	sw	s2,16(sp)
830019f4:	0005a903          	lw	s2,0(a1)
830019f8:	00812c23          	sw	s0,24(sp)
830019fc:	00912a23          	sw	s1,20(sp)
83001a00:	00112e23          	sw	ra,28(sp)
83001a04:	01312623          	sw	s3,12(sp)
83001a08:	01412423          	sw	s4,8(sp)
83001a0c:	00058413          	mv	s0,a1
83001a10:	00050493          	mv	s1,a0
83001a14:	04090a63          	beqz	s2,83001a68 <cleanup_glue+0x7c>
83001a18:	00092983          	lw	s3,0(s2)
83001a1c:	02098e63          	beqz	s3,83001a58 <cleanup_glue+0x6c>
83001a20:	0009aa03          	lw	s4,0(s3)
83001a24:	020a0263          	beqz	s4,83001a48 <cleanup_glue+0x5c>
83001a28:	000a2583          	lw	a1,0(s4)
83001a2c:	00058663          	beqz	a1,83001a38 <cleanup_glue+0x4c>
83001a30:	00000097          	auipc	ra,0x0
83001a34:	fbc080e7          	jalr	-68(ra) # 830019ec <cleanup_glue>
83001a38:	000a0593          	mv	a1,s4
83001a3c:	00048513          	mv	a0,s1
83001a40:	00000097          	auipc	ra,0x0
83001a44:	2e8080e7          	jalr	744(ra) # 83001d28 <_free_r>
83001a48:	00098593          	mv	a1,s3
83001a4c:	00048513          	mv	a0,s1
83001a50:	00000097          	auipc	ra,0x0
83001a54:	2d8080e7          	jalr	728(ra) # 83001d28 <_free_r>
83001a58:	00090593          	mv	a1,s2
83001a5c:	00048513          	mv	a0,s1
83001a60:	00000097          	auipc	ra,0x0
83001a64:	2c8080e7          	jalr	712(ra) # 83001d28 <_free_r>
83001a68:	00040593          	mv	a1,s0
83001a6c:	01812403          	lw	s0,24(sp)
83001a70:	01c12083          	lw	ra,28(sp)
83001a74:	01012903          	lw	s2,16(sp)
83001a78:	00c12983          	lw	s3,12(sp)
83001a7c:	00812a03          	lw	s4,8(sp)
83001a80:	00048513          	mv	a0,s1
83001a84:	01412483          	lw	s1,20(sp)
83001a88:	02010113          	addi	sp,sp,32
83001a8c:	00000317          	auipc	t1,0x0
83001a90:	29c30067          	jr	668(t1) # 83001d28 <_free_r>

83001a94 <_reclaim_reent>:
83001a94:	830077b7          	lui	a5,0x83007
83001a98:	8887a783          	lw	a5,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83001a9c:	12a78863          	beq	a5,a0,83001bcc <_reclaim_reent+0x138>
83001aa0:	04c52583          	lw	a1,76(a0)
83001aa4:	fe010113          	addi	sp,sp,-32
83001aa8:	00912a23          	sw	s1,20(sp)
83001aac:	00112e23          	sw	ra,28(sp)
83001ab0:	00812c23          	sw	s0,24(sp)
83001ab4:	01212823          	sw	s2,16(sp)
83001ab8:	01312623          	sw	s3,12(sp)
83001abc:	00050493          	mv	s1,a0
83001ac0:	04058463          	beqz	a1,83001b08 <_reclaim_reent+0x74>
83001ac4:	00000913          	li	s2,0
83001ac8:	08000993          	li	s3,128
83001acc:	012587b3          	add	a5,a1,s2
83001ad0:	0007a403          	lw	s0,0(a5)
83001ad4:	02040063          	beqz	s0,83001af4 <_reclaim_reent+0x60>
83001ad8:	00040593          	mv	a1,s0
83001adc:	00042403          	lw	s0,0(s0)
83001ae0:	00048513          	mv	a0,s1
83001ae4:	00000097          	auipc	ra,0x0
83001ae8:	244080e7          	jalr	580(ra) # 83001d28 <_free_r>
83001aec:	fe0416e3          	bnez	s0,83001ad8 <_reclaim_reent+0x44>
83001af0:	04c4a583          	lw	a1,76(s1)
83001af4:	00490913          	addi	s2,s2,4
83001af8:	fd391ae3          	bne	s2,s3,83001acc <_reclaim_reent+0x38>
83001afc:	00048513          	mv	a0,s1
83001b00:	00000097          	auipc	ra,0x0
83001b04:	228080e7          	jalr	552(ra) # 83001d28 <_free_r>
83001b08:	0404a583          	lw	a1,64(s1)
83001b0c:	00058863          	beqz	a1,83001b1c <_reclaim_reent+0x88>
83001b10:	00048513          	mv	a0,s1
83001b14:	00000097          	auipc	ra,0x0
83001b18:	214080e7          	jalr	532(ra) # 83001d28 <_free_r>
83001b1c:	1484a403          	lw	s0,328(s1)
83001b20:	02040263          	beqz	s0,83001b44 <_reclaim_reent+0xb0>
83001b24:	14c48913          	addi	s2,s1,332
83001b28:	01240e63          	beq	s0,s2,83001b44 <_reclaim_reent+0xb0>
83001b2c:	00040593          	mv	a1,s0
83001b30:	00042403          	lw	s0,0(s0)
83001b34:	00048513          	mv	a0,s1
83001b38:	00000097          	auipc	ra,0x0
83001b3c:	1f0080e7          	jalr	496(ra) # 83001d28 <_free_r>
83001b40:	fe8916e3          	bne	s2,s0,83001b2c <_reclaim_reent+0x98>
83001b44:	0544a583          	lw	a1,84(s1)
83001b48:	00058863          	beqz	a1,83001b58 <_reclaim_reent+0xc4>
83001b4c:	00048513          	mv	a0,s1
83001b50:	00000097          	auipc	ra,0x0
83001b54:	1d8080e7          	jalr	472(ra) # 83001d28 <_free_r>
83001b58:	0384a783          	lw	a5,56(s1)
83001b5c:	04078a63          	beqz	a5,83001bb0 <_reclaim_reent+0x11c>
83001b60:	03c4a783          	lw	a5,60(s1)
83001b64:	00048513          	mv	a0,s1
83001b68:	000780e7          	jalr	a5
83001b6c:	2e04a403          	lw	s0,736(s1)
83001b70:	04040063          	beqz	s0,83001bb0 <_reclaim_reent+0x11c>
83001b74:	00042583          	lw	a1,0(s0)
83001b78:	00058863          	beqz	a1,83001b88 <_reclaim_reent+0xf4>
83001b7c:	00048513          	mv	a0,s1
83001b80:	00000097          	auipc	ra,0x0
83001b84:	e6c080e7          	jalr	-404(ra) # 830019ec <cleanup_glue>
83001b88:	00040593          	mv	a1,s0
83001b8c:	01812403          	lw	s0,24(sp)
83001b90:	01c12083          	lw	ra,28(sp)
83001b94:	01012903          	lw	s2,16(sp)
83001b98:	00c12983          	lw	s3,12(sp)
83001b9c:	00048513          	mv	a0,s1
83001ba0:	01412483          	lw	s1,20(sp)
83001ba4:	02010113          	addi	sp,sp,32
83001ba8:	00000317          	auipc	t1,0x0
83001bac:	18030067          	jr	384(t1) # 83001d28 <_free_r>
83001bb0:	01c12083          	lw	ra,28(sp)
83001bb4:	01812403          	lw	s0,24(sp)
83001bb8:	01412483          	lw	s1,20(sp)
83001bbc:	01012903          	lw	s2,16(sp)
83001bc0:	00c12983          	lw	s3,12(sp)
83001bc4:	02010113          	addi	sp,sp,32
83001bc8:	00008067          	ret
83001bcc:	00008067          	ret

83001bd0 <_malloc_trim_r>:
83001bd0:	fe010113          	addi	sp,sp,-32
83001bd4:	01312623          	sw	s3,12(sp)
83001bd8:	830069b7          	lui	s3,0x83006
83001bdc:	00812c23          	sw	s0,24(sp)
83001be0:	00912a23          	sw	s1,20(sp)
83001be4:	01212823          	sw	s2,16(sp)
83001be8:	01412423          	sw	s4,8(sp)
83001bec:	00112e23          	sw	ra,28(sp)
83001bf0:	00058a13          	mv	s4,a1
83001bf4:	00050913          	mv	s2,a0
83001bf8:	42898993          	addi	s3,s3,1064 # 83006428 <__BSS_END__+0xfffffb54>
83001bfc:	00002097          	auipc	ra,0x2
83001c00:	3e4080e7          	jalr	996(ra) # 83003fe0 <__malloc_lock>
83001c04:	0089a703          	lw	a4,8(s3)
83001c08:	000017b7          	lui	a5,0x1
83001c0c:	fef78413          	addi	s0,a5,-17 # fef <main-0x82fff0c5>
83001c10:	00472483          	lw	s1,4(a4)
83001c14:	41440433          	sub	s0,s0,s4
83001c18:	ffc4f493          	andi	s1,s1,-4
83001c1c:	00940433          	add	s0,s0,s1
83001c20:	00c45413          	srli	s0,s0,0xc
83001c24:	fff40413          	addi	s0,s0,-1
83001c28:	00c41413          	slli	s0,s0,0xc
83001c2c:	02f44063          	blt	s0,a5,83001c4c <_malloc_trim_r+0x7c>
83001c30:	00000593          	li	a1,0
83001c34:	00090513          	mv	a0,s2
83001c38:	00001097          	auipc	ra,0x1
83001c3c:	5cc080e7          	jalr	1484(ra) # 83003204 <_sbrk_r>
83001c40:	0089a783          	lw	a5,8(s3)
83001c44:	009787b3          	add	a5,a5,s1
83001c48:	02f50a63          	beq	a0,a5,83001c7c <_malloc_trim_r+0xac>
83001c4c:	00090513          	mv	a0,s2
83001c50:	00002097          	auipc	ra,0x2
83001c54:	394080e7          	jalr	916(ra) # 83003fe4 <__malloc_unlock>
83001c58:	01c12083          	lw	ra,28(sp)
83001c5c:	01812403          	lw	s0,24(sp)
83001c60:	01412483          	lw	s1,20(sp)
83001c64:	01012903          	lw	s2,16(sp)
83001c68:	00c12983          	lw	s3,12(sp)
83001c6c:	00812a03          	lw	s4,8(sp)
83001c70:	00000513          	li	a0,0
83001c74:	02010113          	addi	sp,sp,32
83001c78:	00008067          	ret
83001c7c:	408005b3          	neg	a1,s0
83001c80:	00090513          	mv	a0,s2
83001c84:	00001097          	auipc	ra,0x1
83001c88:	580080e7          	jalr	1408(ra) # 83003204 <_sbrk_r>
83001c8c:	fff00793          	li	a5,-1
83001c90:	04f50c63          	beq	a0,a5,83001ce8 <_malloc_trim_r+0x118>
83001c94:	830077b7          	lui	a5,0x83007
83001c98:	8ac78793          	addi	a5,a5,-1876 # 830068ac <__BSS_END__+0xffffffd8>
83001c9c:	0007a703          	lw	a4,0(a5)
83001ca0:	0089a683          	lw	a3,8(s3)
83001ca4:	408484b3          	sub	s1,s1,s0
83001ca8:	0014e493          	ori	s1,s1,1
83001cac:	40870733          	sub	a4,a4,s0
83001cb0:	00090513          	mv	a0,s2
83001cb4:	0096a223          	sw	s1,4(a3)
83001cb8:	00e7a023          	sw	a4,0(a5)
83001cbc:	00002097          	auipc	ra,0x2
83001cc0:	328080e7          	jalr	808(ra) # 83003fe4 <__malloc_unlock>
83001cc4:	01c12083          	lw	ra,28(sp)
83001cc8:	01812403          	lw	s0,24(sp)
83001ccc:	01412483          	lw	s1,20(sp)
83001cd0:	01012903          	lw	s2,16(sp)
83001cd4:	00c12983          	lw	s3,12(sp)
83001cd8:	00812a03          	lw	s4,8(sp)
83001cdc:	00100513          	li	a0,1
83001ce0:	02010113          	addi	sp,sp,32
83001ce4:	00008067          	ret
83001ce8:	00000593          	li	a1,0
83001cec:	00090513          	mv	a0,s2
83001cf0:	00001097          	auipc	ra,0x1
83001cf4:	514080e7          	jalr	1300(ra) # 83003204 <_sbrk_r>
83001cf8:	0089a703          	lw	a4,8(s3)
83001cfc:	00f00693          	li	a3,15
83001d00:	40e507b3          	sub	a5,a0,a4
83001d04:	f4f6d4e3          	bge	a3,a5,83001c4c <_malloc_trim_r+0x7c>
83001d08:	830076b7          	lui	a3,0x83007
83001d0c:	88c6a683          	lw	a3,-1908(a3) # 8300688c <__BSS_END__+0xffffffb8>
83001d10:	0017e793          	ori	a5,a5,1
83001d14:	00f72223          	sw	a5,4(a4)
83001d18:	40d50533          	sub	a0,a0,a3
83001d1c:	830076b7          	lui	a3,0x83007
83001d20:	8aa6a623          	sw	a0,-1876(a3) # 830068ac <__BSS_END__+0xffffffd8>
83001d24:	f29ff06f          	j	83001c4c <_malloc_trim_r+0x7c>

83001d28 <_free_r>:
83001d28:	12058e63          	beqz	a1,83001e64 <_free_r+0x13c>
83001d2c:	ff010113          	addi	sp,sp,-16
83001d30:	00812423          	sw	s0,8(sp)
83001d34:	00912223          	sw	s1,4(sp)
83001d38:	00058413          	mv	s0,a1
83001d3c:	00050493          	mv	s1,a0
83001d40:	00112623          	sw	ra,12(sp)
83001d44:	00002097          	auipc	ra,0x2
83001d48:	29c080e7          	jalr	668(ra) # 83003fe0 <__malloc_lock>
83001d4c:	ffc42803          	lw	a6,-4(s0)
83001d50:	ff840713          	addi	a4,s0,-8
83001d54:	830065b7          	lui	a1,0x83006
83001d58:	ffe87793          	andi	a5,a6,-2
83001d5c:	00f70633          	add	a2,a4,a5
83001d60:	42858593          	addi	a1,a1,1064 # 83006428 <__BSS_END__+0xfffffb54>
83001d64:	00462683          	lw	a3,4(a2)
83001d68:	0085a503          	lw	a0,8(a1)
83001d6c:	ffc6f693          	andi	a3,a3,-4
83001d70:	1cc50063          	beq	a0,a2,83001f30 <_free_r+0x208>
83001d74:	00d62223          	sw	a3,4(a2)
83001d78:	00187813          	andi	a6,a6,1
83001d7c:	00d60533          	add	a0,a2,a3
83001d80:	0a081263          	bnez	a6,83001e24 <_free_r+0xfc>
83001d84:	ff842303          	lw	t1,-8(s0)
83001d88:	00452803          	lw	a6,4(a0)
83001d8c:	83006537          	lui	a0,0x83006
83001d90:	40670733          	sub	a4,a4,t1
83001d94:	00872883          	lw	a7,8(a4)
83001d98:	43050513          	addi	a0,a0,1072 # 83006430 <__BSS_END__+0xfffffb5c>
83001d9c:	006787b3          	add	a5,a5,t1
83001da0:	00187813          	andi	a6,a6,1
83001da4:	14a88463          	beq	a7,a0,83001eec <_free_r+0x1c4>
83001da8:	00c72303          	lw	t1,12(a4)
83001dac:	0068a623          	sw	t1,12(a7)
83001db0:	01132423          	sw	a7,8(t1)
83001db4:	1e080c63          	beqz	a6,83001fac <_free_r+0x284>
83001db8:	0017e693          	ori	a3,a5,1
83001dbc:	00d72223          	sw	a3,4(a4)
83001dc0:	00f62023          	sw	a5,0(a2)
83001dc4:	1ff00693          	li	a3,511
83001dc8:	0af6ea63          	bltu	a3,a5,83001e7c <_free_r+0x154>
83001dcc:	ff87f693          	andi	a3,a5,-8
83001dd0:	00868693          	addi	a3,a3,8
83001dd4:	0045a503          	lw	a0,4(a1)
83001dd8:	00d586b3          	add	a3,a1,a3
83001ddc:	0006a603          	lw	a2,0(a3)
83001de0:	0057d813          	srli	a6,a5,0x5
83001de4:	00100793          	li	a5,1
83001de8:	010797b3          	sll	a5,a5,a6
83001dec:	00a7e7b3          	or	a5,a5,a0
83001df0:	ff868513          	addi	a0,a3,-8
83001df4:	00a72623          	sw	a0,12(a4)
83001df8:	00c72423          	sw	a2,8(a4)
83001dfc:	00f5a223          	sw	a5,4(a1)
83001e00:	00e6a023          	sw	a4,0(a3)
83001e04:	00e62623          	sw	a4,12(a2)
83001e08:	00812403          	lw	s0,8(sp)
83001e0c:	00c12083          	lw	ra,12(sp)
83001e10:	00048513          	mv	a0,s1
83001e14:	00412483          	lw	s1,4(sp)
83001e18:	01010113          	addi	sp,sp,16
83001e1c:	00002317          	auipc	t1,0x2
83001e20:	1c830067          	jr	456(t1) # 83003fe4 <__malloc_unlock>
83001e24:	00452503          	lw	a0,4(a0)
83001e28:	00157513          	andi	a0,a0,1
83001e2c:	02051e63          	bnez	a0,83001e68 <_free_r+0x140>
83001e30:	83006537          	lui	a0,0x83006
83001e34:	00d787b3          	add	a5,a5,a3
83001e38:	43050513          	addi	a0,a0,1072 # 83006430 <__BSS_END__+0xfffffb5c>
83001e3c:	00862683          	lw	a3,8(a2)
83001e40:	0017e893          	ori	a7,a5,1
83001e44:	00f70833          	add	a6,a4,a5
83001e48:	16a68e63          	beq	a3,a0,83001fc4 <_free_r+0x29c>
83001e4c:	00c62603          	lw	a2,12(a2)
83001e50:	00c6a623          	sw	a2,12(a3)
83001e54:	00d62423          	sw	a3,8(a2)
83001e58:	01172223          	sw	a7,4(a4)
83001e5c:	00f82023          	sw	a5,0(a6)
83001e60:	f65ff06f          	j	83001dc4 <_free_r+0x9c>
83001e64:	00008067          	ret
83001e68:	0017e693          	ori	a3,a5,1
83001e6c:	fed42e23          	sw	a3,-4(s0)
83001e70:	00f62023          	sw	a5,0(a2)
83001e74:	1ff00693          	li	a3,511
83001e78:	f4f6fae3          	bgeu	a3,a5,83001dcc <_free_r+0xa4>
83001e7c:	0097d693          	srli	a3,a5,0x9
83001e80:	00400613          	li	a2,4
83001e84:	10d66263          	bltu	a2,a3,83001f88 <_free_r+0x260>
83001e88:	0067d693          	srli	a3,a5,0x6
83001e8c:	03968813          	addi	a6,a3,57
83001e90:	03868613          	addi	a2,a3,56
83001e94:	00381813          	slli	a6,a6,0x3
83001e98:	01058833          	add	a6,a1,a6
83001e9c:	00082683          	lw	a3,0(a6)
83001ea0:	ff880813          	addi	a6,a6,-8
83001ea4:	12d80e63          	beq	a6,a3,83001fe0 <_free_r+0x2b8>
83001ea8:	0046a603          	lw	a2,4(a3)
83001eac:	ffc67613          	andi	a2,a2,-4
83001eb0:	00c7f663          	bgeu	a5,a2,83001ebc <_free_r+0x194>
83001eb4:	0086a683          	lw	a3,8(a3)
83001eb8:	fed818e3          	bne	a6,a3,83001ea8 <_free_r+0x180>
83001ebc:	00c6a803          	lw	a6,12(a3)
83001ec0:	01072623          	sw	a6,12(a4)
83001ec4:	00d72423          	sw	a3,8(a4)
83001ec8:	00812403          	lw	s0,8(sp)
83001ecc:	00c12083          	lw	ra,12(sp)
83001ed0:	00e82423          	sw	a4,8(a6)
83001ed4:	00048513          	mv	a0,s1
83001ed8:	00412483          	lw	s1,4(sp)
83001edc:	00e6a623          	sw	a4,12(a3)
83001ee0:	01010113          	addi	sp,sp,16
83001ee4:	00002317          	auipc	t1,0x2
83001ee8:	10030067          	jr	256(t1) # 83003fe4 <__malloc_unlock>
83001eec:	14081a63          	bnez	a6,83002040 <_free_r+0x318>
83001ef0:	00c62583          	lw	a1,12(a2)
83001ef4:	00862603          	lw	a2,8(a2)
83001ef8:	00f686b3          	add	a3,a3,a5
83001efc:	00812403          	lw	s0,8(sp)
83001f00:	00b62623          	sw	a1,12(a2)
83001f04:	00c5a423          	sw	a2,8(a1)
83001f08:	0016e793          	ori	a5,a3,1
83001f0c:	00c12083          	lw	ra,12(sp)
83001f10:	00f72223          	sw	a5,4(a4)
83001f14:	00048513          	mv	a0,s1
83001f18:	00d70733          	add	a4,a4,a3
83001f1c:	00412483          	lw	s1,4(sp)
83001f20:	00d72023          	sw	a3,0(a4)
83001f24:	01010113          	addi	sp,sp,16
83001f28:	00002317          	auipc	t1,0x2
83001f2c:	0bc30067          	jr	188(t1) # 83003fe4 <__malloc_unlock>
83001f30:	00187813          	andi	a6,a6,1
83001f34:	00d786b3          	add	a3,a5,a3
83001f38:	02081063          	bnez	a6,83001f58 <_free_r+0x230>
83001f3c:	ff842503          	lw	a0,-8(s0)
83001f40:	40a70733          	sub	a4,a4,a0
83001f44:	00c72783          	lw	a5,12(a4)
83001f48:	00872603          	lw	a2,8(a4)
83001f4c:	00a686b3          	add	a3,a3,a0
83001f50:	00f62623          	sw	a5,12(a2)
83001f54:	00c7a423          	sw	a2,8(a5)
83001f58:	830077b7          	lui	a5,0x83007
83001f5c:	0016e613          	ori	a2,a3,1
83001f60:	8907a783          	lw	a5,-1904(a5) # 83006890 <__BSS_END__+0xffffffbc>
83001f64:	00c72223          	sw	a2,4(a4)
83001f68:	00e5a423          	sw	a4,8(a1)
83001f6c:	e8f6eee3          	bltu	a3,a5,83001e08 <_free_r+0xe0>
83001f70:	830077b7          	lui	a5,0x83007
83001f74:	8a47a583          	lw	a1,-1884(a5) # 830068a4 <__BSS_END__+0xffffffd0>
83001f78:	00048513          	mv	a0,s1
83001f7c:	00000097          	auipc	ra,0x0
83001f80:	c54080e7          	jalr	-940(ra) # 83001bd0 <_malloc_trim_r>
83001f84:	e85ff06f          	j	83001e08 <_free_r+0xe0>
83001f88:	01400613          	li	a2,20
83001f8c:	02d67463          	bgeu	a2,a3,83001fb4 <_free_r+0x28c>
83001f90:	05400613          	li	a2,84
83001f94:	06d66463          	bltu	a2,a3,83001ffc <_free_r+0x2d4>
83001f98:	00c7d693          	srli	a3,a5,0xc
83001f9c:	06f68813          	addi	a6,a3,111
83001fa0:	06e68613          	addi	a2,a3,110
83001fa4:	00381813          	slli	a6,a6,0x3
83001fa8:	ef1ff06f          	j	83001e98 <_free_r+0x170>
83001fac:	00d787b3          	add	a5,a5,a3
83001fb0:	e8dff06f          	j	83001e3c <_free_r+0x114>
83001fb4:	05c68813          	addi	a6,a3,92
83001fb8:	05b68613          	addi	a2,a3,91
83001fbc:	00381813          	slli	a6,a6,0x3
83001fc0:	ed9ff06f          	j	83001e98 <_free_r+0x170>
83001fc4:	00e5aa23          	sw	a4,20(a1)
83001fc8:	00e5a823          	sw	a4,16(a1)
83001fcc:	00a72623          	sw	a0,12(a4)
83001fd0:	00a72423          	sw	a0,8(a4)
83001fd4:	01172223          	sw	a7,4(a4)
83001fd8:	00f82023          	sw	a5,0(a6)
83001fdc:	e2dff06f          	j	83001e08 <_free_r+0xe0>
83001fe0:	0045a503          	lw	a0,4(a1)
83001fe4:	40265613          	srai	a2,a2,0x2
83001fe8:	00100793          	li	a5,1
83001fec:	00c797b3          	sll	a5,a5,a2
83001ff0:	00a7e7b3          	or	a5,a5,a0
83001ff4:	00f5a223          	sw	a5,4(a1)
83001ff8:	ec9ff06f          	j	83001ec0 <_free_r+0x198>
83001ffc:	15400613          	li	a2,340
83002000:	00d66c63          	bltu	a2,a3,83002018 <_free_r+0x2f0>
83002004:	00f7d693          	srli	a3,a5,0xf
83002008:	07868813          	addi	a6,a3,120
8300200c:	07768613          	addi	a2,a3,119
83002010:	00381813          	slli	a6,a6,0x3
83002014:	e85ff06f          	j	83001e98 <_free_r+0x170>
83002018:	55400613          	li	a2,1364
8300201c:	00d66c63          	bltu	a2,a3,83002034 <_free_r+0x30c>
83002020:	0127d693          	srli	a3,a5,0x12
83002024:	07d68813          	addi	a6,a3,125
83002028:	07c68613          	addi	a2,a3,124
8300202c:	00381813          	slli	a6,a6,0x3
83002030:	e69ff06f          	j	83001e98 <_free_r+0x170>
83002034:	3f800813          	li	a6,1016
83002038:	07e00613          	li	a2,126
8300203c:	e5dff06f          	j	83001e98 <_free_r+0x170>
83002040:	0017e693          	ori	a3,a5,1
83002044:	00d72223          	sw	a3,4(a4)
83002048:	00f62023          	sw	a5,0(a2)
8300204c:	dbdff06f          	j	83001e08 <_free_r+0xe0>

83002050 <__swsetup_r>:
83002050:	830077b7          	lui	a5,0x83007
83002054:	8887a783          	lw	a5,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83002058:	ff010113          	addi	sp,sp,-16
8300205c:	00812423          	sw	s0,8(sp)
83002060:	00912223          	sw	s1,4(sp)
83002064:	00112623          	sw	ra,12(sp)
83002068:	00050493          	mv	s1,a0
8300206c:	00058413          	mv	s0,a1
83002070:	00078663          	beqz	a5,8300207c <__swsetup_r+0x2c>
83002074:	0387a703          	lw	a4,56(a5)
83002078:	08070463          	beqz	a4,83002100 <__swsetup_r+0xb0>
8300207c:	00c41703          	lh	a4,12(s0)
83002080:	01071793          	slli	a5,a4,0x10
83002084:	00877693          	andi	a3,a4,8
83002088:	0107d793          	srli	a5,a5,0x10
8300208c:	08068a63          	beqz	a3,83002120 <__swsetup_r+0xd0>
83002090:	01042683          	lw	a3,16(s0)
83002094:	0a068a63          	beqz	a3,83002148 <__swsetup_r+0xf8>
83002098:	0017f613          	andi	a2,a5,1
8300209c:	02060863          	beqz	a2,830020cc <__swsetup_r+0x7c>
830020a0:	01442603          	lw	a2,20(s0)
830020a4:	00042423          	sw	zero,8(s0)
830020a8:	00000513          	li	a0,0
830020ac:	40c00633          	neg	a2,a2
830020b0:	00c42c23          	sw	a2,24(s0)
830020b4:	02068a63          	beqz	a3,830020e8 <__swsetup_r+0x98>
830020b8:	00c12083          	lw	ra,12(sp)
830020bc:	00812403          	lw	s0,8(sp)
830020c0:	00412483          	lw	s1,4(sp)
830020c4:	01010113          	addi	sp,sp,16
830020c8:	00008067          	ret
830020cc:	0027f613          	andi	a2,a5,2
830020d0:	00000593          	li	a1,0
830020d4:	00061463          	bnez	a2,830020dc <__swsetup_r+0x8c>
830020d8:	01442583          	lw	a1,20(s0)
830020dc:	00b42423          	sw	a1,8(s0)
830020e0:	00000513          	li	a0,0
830020e4:	fc069ae3          	bnez	a3,830020b8 <__swsetup_r+0x68>
830020e8:	0807f793          	andi	a5,a5,128
830020ec:	fc0786e3          	beqz	a5,830020b8 <__swsetup_r+0x68>
830020f0:	04076713          	ori	a4,a4,64
830020f4:	00e41623          	sh	a4,12(s0)
830020f8:	fff00513          	li	a0,-1
830020fc:	fbdff06f          	j	830020b8 <__swsetup_r+0x68>
83002100:	00078513          	mv	a0,a5
83002104:	00001097          	auipc	ra,0x1
83002108:	92c080e7          	jalr	-1748(ra) # 83002a30 <__sinit>
8300210c:	00c41703          	lh	a4,12(s0)
83002110:	01071793          	slli	a5,a4,0x10
83002114:	00877693          	andi	a3,a4,8
83002118:	0107d793          	srli	a5,a5,0x10
8300211c:	f6069ae3          	bnez	a3,83002090 <__swsetup_r+0x40>
83002120:	0107f693          	andi	a3,a5,16
83002124:	08068663          	beqz	a3,830021b0 <__swsetup_r+0x160>
83002128:	0047f793          	andi	a5,a5,4
8300212c:	04079663          	bnez	a5,83002178 <__swsetup_r+0x128>
83002130:	01042683          	lw	a3,16(s0)
83002134:	00876713          	ori	a4,a4,8
83002138:	01071793          	slli	a5,a4,0x10
8300213c:	00e41623          	sh	a4,12(s0)
83002140:	0107d793          	srli	a5,a5,0x10
83002144:	f4069ae3          	bnez	a3,83002098 <__swsetup_r+0x48>
83002148:	2807f613          	andi	a2,a5,640
8300214c:	20000593          	li	a1,512
83002150:	f4b604e3          	beq	a2,a1,83002098 <__swsetup_r+0x48>
83002154:	00040593          	mv	a1,s0
83002158:	00048513          	mv	a0,s1
8300215c:	00002097          	auipc	ra,0x2
83002160:	e8c080e7          	jalr	-372(ra) # 83003fe8 <__smakebuf_r>
83002164:	00c41703          	lh	a4,12(s0)
83002168:	01042683          	lw	a3,16(s0)
8300216c:	01071793          	slli	a5,a4,0x10
83002170:	0107d793          	srli	a5,a5,0x10
83002174:	f25ff06f          	j	83002098 <__swsetup_r+0x48>
83002178:	03042583          	lw	a1,48(s0)
8300217c:	02058063          	beqz	a1,8300219c <__swsetup_r+0x14c>
83002180:	04040793          	addi	a5,s0,64
83002184:	00f58a63          	beq	a1,a5,83002198 <__swsetup_r+0x148>
83002188:	00048513          	mv	a0,s1
8300218c:	00000097          	auipc	ra,0x0
83002190:	b9c080e7          	jalr	-1124(ra) # 83001d28 <_free_r>
83002194:	00c41703          	lh	a4,12(s0)
83002198:	02042823          	sw	zero,48(s0)
8300219c:	01042683          	lw	a3,16(s0)
830021a0:	fdb77713          	andi	a4,a4,-37
830021a4:	00042223          	sw	zero,4(s0)
830021a8:	00d42023          	sw	a3,0(s0)
830021ac:	f89ff06f          	j	83002134 <__swsetup_r+0xe4>
830021b0:	00900793          	li	a5,9
830021b4:	00f4a023          	sw	a5,0(s1)
830021b8:	04076713          	ori	a4,a4,64
830021bc:	00e41623          	sh	a4,12(s0)
830021c0:	fff00513          	li	a0,-1
830021c4:	ef5ff06f          	j	830020b8 <__swsetup_r+0x68>

830021c8 <__sfvwrite_r>:
830021c8:	00862783          	lw	a5,8(a2)
830021cc:	32078a63          	beqz	a5,83002500 <__sfvwrite_r+0x338>
830021d0:	00c5d683          	lhu	a3,12(a1)
830021d4:	fd010113          	addi	sp,sp,-48
830021d8:	02812423          	sw	s0,40(sp)
830021dc:	01412c23          	sw	s4,24(sp)
830021e0:	01712623          	sw	s7,12(sp)
830021e4:	02112623          	sw	ra,44(sp)
830021e8:	02912223          	sw	s1,36(sp)
830021ec:	03212023          	sw	s2,32(sp)
830021f0:	01312e23          	sw	s3,28(sp)
830021f4:	01512a23          	sw	s5,20(sp)
830021f8:	01612823          	sw	s6,16(sp)
830021fc:	01812423          	sw	s8,8(sp)
83002200:	01912223          	sw	s9,4(sp)
83002204:	01a12023          	sw	s10,0(sp)
83002208:	0086f793          	andi	a5,a3,8
8300220c:	00060b93          	mv	s7,a2
83002210:	00050a13          	mv	s4,a0
83002214:	00058413          	mv	s0,a1
83002218:	08078663          	beqz	a5,830022a4 <__sfvwrite_r+0xdc>
8300221c:	0105a783          	lw	a5,16(a1)
83002220:	08078263          	beqz	a5,830022a4 <__sfvwrite_r+0xdc>
83002224:	0026f793          	andi	a5,a3,2
83002228:	000ba483          	lw	s1,0(s7)
8300222c:	08078e63          	beqz	a5,830022c8 <__sfvwrite_r+0x100>
83002230:	02442783          	lw	a5,36(s0)
83002234:	01c42583          	lw	a1,28(s0)
83002238:	80000ab7          	lui	s5,0x80000
8300223c:	00000993          	li	s3,0
83002240:	00000913          	li	s2,0
83002244:	c00aca93          	xori	s5,s5,-1024
83002248:	00098613          	mv	a2,s3
8300224c:	000a0513          	mv	a0,s4
83002250:	04090263          	beqz	s2,83002294 <__sfvwrite_r+0xcc>
83002254:	00090693          	mv	a3,s2
83002258:	012af463          	bgeu	s5,s2,83002260 <__sfvwrite_r+0x98>
8300225c:	000a8693          	mv	a3,s5
83002260:	000780e7          	jalr	a5
83002264:	28a05463          	blez	a0,830024ec <__sfvwrite_r+0x324>
83002268:	008ba783          	lw	a5,8(s7)
8300226c:	00a989b3          	add	s3,s3,a0
83002270:	40a90933          	sub	s2,s2,a0
83002274:	40a787b3          	sub	a5,a5,a0
83002278:	00fba423          	sw	a5,8(s7)
8300227c:	22078063          	beqz	a5,8300249c <__sfvwrite_r+0x2d4>
83002280:	02442783          	lw	a5,36(s0)
83002284:	01c42583          	lw	a1,28(s0)
83002288:	00098613          	mv	a2,s3
8300228c:	000a0513          	mv	a0,s4
83002290:	fc0912e3          	bnez	s2,83002254 <__sfvwrite_r+0x8c>
83002294:	0004a983          	lw	s3,0(s1)
83002298:	0044a903          	lw	s2,4(s1)
8300229c:	00848493          	addi	s1,s1,8
830022a0:	fa9ff06f          	j	83002248 <__sfvwrite_r+0x80>
830022a4:	00040593          	mv	a1,s0
830022a8:	000a0513          	mv	a0,s4
830022ac:	00000097          	auipc	ra,0x0
830022b0:	da4080e7          	jalr	-604(ra) # 83002050 <__swsetup_r>
830022b4:	3e051863          	bnez	a0,830026a4 <__sfvwrite_r+0x4dc>
830022b8:	00c45683          	lhu	a3,12(s0)
830022bc:	000ba483          	lw	s1,0(s7)
830022c0:	0026f793          	andi	a5,a3,2
830022c4:	f60796e3          	bnez	a5,83002230 <__sfvwrite_r+0x68>
830022c8:	0016f793          	andi	a5,a3,1
830022cc:	14079463          	bnez	a5,83002414 <__sfvwrite_r+0x24c>
830022d0:	00042783          	lw	a5,0(s0)
830022d4:	00842703          	lw	a4,8(s0)
830022d8:	80000ab7          	lui	s5,0x80000
830022dc:	ffeacb13          	xori	s6,s5,-2
830022e0:	00000c13          	li	s8,0
830022e4:	00000993          	li	s3,0
830022e8:	fffaca93          	not	s5,s5
830022ec:	00078513          	mv	a0,a5
830022f0:	00070c93          	mv	s9,a4
830022f4:	10098863          	beqz	s3,83002404 <__sfvwrite_r+0x23c>
830022f8:	2006f613          	andi	a2,a3,512
830022fc:	26060c63          	beqz	a2,83002574 <__sfvwrite_r+0x3ac>
83002300:	00070d13          	mv	s10,a4
83002304:	30e9e863          	bltu	s3,a4,83002614 <__sfvwrite_r+0x44c>
83002308:	4806f713          	andi	a4,a3,1152
8300230c:	08070e63          	beqz	a4,830023a8 <__sfvwrite_r+0x1e0>
83002310:	01442603          	lw	a2,20(s0)
83002314:	01042583          	lw	a1,16(s0)
83002318:	00161713          	slli	a4,a2,0x1
8300231c:	00c70733          	add	a4,a4,a2
83002320:	40b78933          	sub	s2,a5,a1
83002324:	01f75c93          	srli	s9,a4,0x1f
83002328:	00ec8cb3          	add	s9,s9,a4
8300232c:	00190793          	addi	a5,s2,1
83002330:	401cdc93          	srai	s9,s9,0x1
83002334:	013787b3          	add	a5,a5,s3
83002338:	000c8613          	mv	a2,s9
8300233c:	00fcf663          	bgeu	s9,a5,83002348 <__sfvwrite_r+0x180>
83002340:	00078c93          	mv	s9,a5
83002344:	00078613          	mv	a2,a5
83002348:	4006f693          	andi	a3,a3,1024
8300234c:	30068263          	beqz	a3,83002650 <__sfvwrite_r+0x488>
83002350:	00060593          	mv	a1,a2
83002354:	000a0513          	mv	a0,s4
83002358:	00001097          	auipc	ra,0x1
8300235c:	f10080e7          	jalr	-240(ra) # 83003268 <_malloc_r>
83002360:	00050d13          	mv	s10,a0
83002364:	32050863          	beqz	a0,83002694 <__sfvwrite_r+0x4cc>
83002368:	01042583          	lw	a1,16(s0)
8300236c:	00090613          	mv	a2,s2
83002370:	00001097          	auipc	ra,0x1
83002374:	c80080e7          	jalr	-896(ra) # 83002ff0 <memcpy>
83002378:	00c45783          	lhu	a5,12(s0)
8300237c:	b7f7f793          	andi	a5,a5,-1153
83002380:	0807e793          	ori	a5,a5,128
83002384:	00f41623          	sh	a5,12(s0)
83002388:	012d0533          	add	a0,s10,s2
8300238c:	412c87b3          	sub	a5,s9,s2
83002390:	01a42823          	sw	s10,16(s0)
83002394:	01942a23          	sw	s9,20(s0)
83002398:	00a42023          	sw	a0,0(s0)
8300239c:	00098c93          	mv	s9,s3
830023a0:	00f42423          	sw	a5,8(s0)
830023a4:	00098d13          	mv	s10,s3
830023a8:	000d0613          	mv	a2,s10
830023ac:	000c0593          	mv	a1,s8
830023b0:	00001097          	auipc	ra,0x1
830023b4:	d34080e7          	jalr	-716(ra) # 830030e4 <memmove>
830023b8:	00842703          	lw	a4,8(s0)
830023bc:	00042783          	lw	a5,0(s0)
830023c0:	00098913          	mv	s2,s3
830023c4:	41970733          	sub	a4,a4,s9
830023c8:	01a787b3          	add	a5,a5,s10
830023cc:	00e42423          	sw	a4,8(s0)
830023d0:	00f42023          	sw	a5,0(s0)
830023d4:	00000993          	li	s3,0
830023d8:	008ba783          	lw	a5,8(s7)
830023dc:	012c0c33          	add	s8,s8,s2
830023e0:	412787b3          	sub	a5,a5,s2
830023e4:	00fba423          	sw	a5,8(s7)
830023e8:	0a078a63          	beqz	a5,8300249c <__sfvwrite_r+0x2d4>
830023ec:	00042783          	lw	a5,0(s0)
830023f0:	00842703          	lw	a4,8(s0)
830023f4:	00c45683          	lhu	a3,12(s0)
830023f8:	00078513          	mv	a0,a5
830023fc:	00070c93          	mv	s9,a4
83002400:	ee099ce3          	bnez	s3,830022f8 <__sfvwrite_r+0x130>
83002404:	0004ac03          	lw	s8,0(s1)
83002408:	0044a983          	lw	s3,4(s1)
8300240c:	00848493          	addi	s1,s1,8
83002410:	eddff06f          	j	830022ec <__sfvwrite_r+0x124>
83002414:	00000a93          	li	s5,0
83002418:	00000513          	li	a0,0
8300241c:	00000c13          	li	s8,0
83002420:	00000993          	li	s3,0
83002424:	0e098263          	beqz	s3,83002508 <__sfvwrite_r+0x340>
83002428:	0e050a63          	beqz	a0,8300251c <__sfvwrite_r+0x354>
8300242c:	000a8793          	mv	a5,s5
83002430:	00098b13          	mv	s6,s3
83002434:	0137f463          	bgeu	a5,s3,8300243c <__sfvwrite_r+0x274>
83002438:	00078b13          	mv	s6,a5
8300243c:	00042503          	lw	a0,0(s0)
83002440:	01042783          	lw	a5,16(s0)
83002444:	00842903          	lw	s2,8(s0)
83002448:	01442683          	lw	a3,20(s0)
8300244c:	00a7f663          	bgeu	a5,a0,83002458 <__sfvwrite_r+0x290>
83002450:	00d90933          	add	s2,s2,a3
83002454:	0f694663          	blt	s2,s6,83002540 <__sfvwrite_r+0x378>
83002458:	1cdb4463          	blt	s6,a3,83002620 <__sfvwrite_r+0x458>
8300245c:	02442783          	lw	a5,36(s0)
83002460:	01c42583          	lw	a1,28(s0)
83002464:	000c0613          	mv	a2,s8
83002468:	000a0513          	mv	a0,s4
8300246c:	000780e7          	jalr	a5
83002470:	00050913          	mv	s2,a0
83002474:	06a05c63          	blez	a0,830024ec <__sfvwrite_r+0x324>
83002478:	412a8ab3          	sub	s5,s5,s2
8300247c:	00100513          	li	a0,1
83002480:	040a8c63          	beqz	s5,830024d8 <__sfvwrite_r+0x310>
83002484:	008ba783          	lw	a5,8(s7)
83002488:	012c0c33          	add	s8,s8,s2
8300248c:	412989b3          	sub	s3,s3,s2
83002490:	412787b3          	sub	a5,a5,s2
83002494:	00fba423          	sw	a5,8(s7)
83002498:	f80796e3          	bnez	a5,83002424 <__sfvwrite_r+0x25c>
8300249c:	00000513          	li	a0,0
830024a0:	02c12083          	lw	ra,44(sp)
830024a4:	02812403          	lw	s0,40(sp)
830024a8:	02412483          	lw	s1,36(sp)
830024ac:	02012903          	lw	s2,32(sp)
830024b0:	01c12983          	lw	s3,28(sp)
830024b4:	01812a03          	lw	s4,24(sp)
830024b8:	01412a83          	lw	s5,20(sp)
830024bc:	01012b03          	lw	s6,16(sp)
830024c0:	00c12b83          	lw	s7,12(sp)
830024c4:	00812c03          	lw	s8,8(sp)
830024c8:	00412c83          	lw	s9,4(sp)
830024cc:	00012d03          	lw	s10,0(sp)
830024d0:	03010113          	addi	sp,sp,48
830024d4:	00008067          	ret
830024d8:	00040593          	mv	a1,s0
830024dc:	000a0513          	mv	a0,s4
830024e0:	00000097          	auipc	ra,0x0
830024e4:	7dc080e7          	jalr	2012(ra) # 83002cbc <_fflush_r>
830024e8:	f8050ee3          	beqz	a0,83002484 <__sfvwrite_r+0x2bc>
830024ec:	00c41783          	lh	a5,12(s0)
830024f0:	0407e793          	ori	a5,a5,64
830024f4:	00f41623          	sh	a5,12(s0)
830024f8:	fff00513          	li	a0,-1
830024fc:	fa5ff06f          	j	830024a0 <__sfvwrite_r+0x2d8>
83002500:	00000513          	li	a0,0
83002504:	00008067          	ret
83002508:	0044a983          	lw	s3,4(s1)
8300250c:	00048793          	mv	a5,s1
83002510:	00848493          	addi	s1,s1,8
83002514:	fe098ae3          	beqz	s3,83002508 <__sfvwrite_r+0x340>
83002518:	0007ac03          	lw	s8,0(a5)
8300251c:	00098613          	mv	a2,s3
83002520:	00a00593          	li	a1,10
83002524:	000c0513          	mv	a0,s8
83002528:	fffff097          	auipc	ra,0xfffff
8300252c:	2f4080e7          	jalr	756(ra) # 8300181c <memchr>
83002530:	14050c63          	beqz	a0,83002688 <__sfvwrite_r+0x4c0>
83002534:	00150513          	addi	a0,a0,1
83002538:	41850ab3          	sub	s5,a0,s8
8300253c:	ef1ff06f          	j	8300242c <__sfvwrite_r+0x264>
83002540:	000c0593          	mv	a1,s8
83002544:	00090613          	mv	a2,s2
83002548:	00001097          	auipc	ra,0x1
8300254c:	b9c080e7          	jalr	-1124(ra) # 830030e4 <memmove>
83002550:	00042783          	lw	a5,0(s0)
83002554:	00040593          	mv	a1,s0
83002558:	000a0513          	mv	a0,s4
8300255c:	012787b3          	add	a5,a5,s2
83002560:	00f42023          	sw	a5,0(s0)
83002564:	00000097          	auipc	ra,0x0
83002568:	758080e7          	jalr	1880(ra) # 83002cbc <_fflush_r>
8300256c:	f00506e3          	beqz	a0,83002478 <__sfvwrite_r+0x2b0>
83002570:	f7dff06f          	j	830024ec <__sfvwrite_r+0x324>
83002574:	01042683          	lw	a3,16(s0)
83002578:	04f6e263          	bltu	a3,a5,830025bc <__sfvwrite_r+0x3f4>
8300257c:	01442803          	lw	a6,20(s0)
83002580:	0309ee63          	bltu	s3,a6,830025bc <__sfvwrite_r+0x3f4>
83002584:	00098693          	mv	a3,s3
83002588:	013b7463          	bgeu	s6,s3,83002590 <__sfvwrite_r+0x3c8>
8300258c:	000a8693          	mv	a3,s5
83002590:	0306c6b3          	div	a3,a3,a6
83002594:	02442783          	lw	a5,36(s0)
83002598:	01c42583          	lw	a1,28(s0)
8300259c:	000c0613          	mv	a2,s8
830025a0:	000a0513          	mv	a0,s4
830025a4:	030686b3          	mul	a3,a3,a6
830025a8:	000780e7          	jalr	a5
830025ac:	00050913          	mv	s2,a0
830025b0:	f2a05ee3          	blez	a0,830024ec <__sfvwrite_r+0x324>
830025b4:	412989b3          	sub	s3,s3,s2
830025b8:	e21ff06f          	j	830023d8 <__sfvwrite_r+0x210>
830025bc:	00070913          	mv	s2,a4
830025c0:	00e9f463          	bgeu	s3,a4,830025c8 <__sfvwrite_r+0x400>
830025c4:	00098913          	mv	s2,s3
830025c8:	00078513          	mv	a0,a5
830025cc:	00090613          	mv	a2,s2
830025d0:	000c0593          	mv	a1,s8
830025d4:	00001097          	auipc	ra,0x1
830025d8:	b10080e7          	jalr	-1264(ra) # 830030e4 <memmove>
830025dc:	00842703          	lw	a4,8(s0)
830025e0:	00042783          	lw	a5,0(s0)
830025e4:	41270733          	sub	a4,a4,s2
830025e8:	012787b3          	add	a5,a5,s2
830025ec:	00e42423          	sw	a4,8(s0)
830025f0:	00f42023          	sw	a5,0(s0)
830025f4:	fc0710e3          	bnez	a4,830025b4 <__sfvwrite_r+0x3ec>
830025f8:	00040593          	mv	a1,s0
830025fc:	000a0513          	mv	a0,s4
83002600:	00000097          	auipc	ra,0x0
83002604:	6bc080e7          	jalr	1724(ra) # 83002cbc <_fflush_r>
83002608:	ee0512e3          	bnez	a0,830024ec <__sfvwrite_r+0x324>
8300260c:	412989b3          	sub	s3,s3,s2
83002610:	dc9ff06f          	j	830023d8 <__sfvwrite_r+0x210>
83002614:	00098c93          	mv	s9,s3
83002618:	00098d13          	mv	s10,s3
8300261c:	d8dff06f          	j	830023a8 <__sfvwrite_r+0x1e0>
83002620:	000b0613          	mv	a2,s6
83002624:	000c0593          	mv	a1,s8
83002628:	00001097          	auipc	ra,0x1
8300262c:	abc080e7          	jalr	-1348(ra) # 830030e4 <memmove>
83002630:	00842703          	lw	a4,8(s0)
83002634:	00042783          	lw	a5,0(s0)
83002638:	000b0913          	mv	s2,s6
8300263c:	41670733          	sub	a4,a4,s6
83002640:	016787b3          	add	a5,a5,s6
83002644:	00e42423          	sw	a4,8(s0)
83002648:	00f42023          	sw	a5,0(s0)
8300264c:	e2dff06f          	j	83002478 <__sfvwrite_r+0x2b0>
83002650:	000a0513          	mv	a0,s4
83002654:	00001097          	auipc	ra,0x1
83002658:	400080e7          	jalr	1024(ra) # 83003a54 <_realloc_r>
8300265c:	00050d13          	mv	s10,a0
83002660:	d20514e3          	bnez	a0,83002388 <__sfvwrite_r+0x1c0>
83002664:	01042583          	lw	a1,16(s0)
83002668:	000a0513          	mv	a0,s4
8300266c:	fffff097          	auipc	ra,0xfffff
83002670:	6bc080e7          	jalr	1724(ra) # 83001d28 <_free_r>
83002674:	00c41783          	lh	a5,12(s0)
83002678:	00c00713          	li	a4,12
8300267c:	00ea2023          	sw	a4,0(s4)
83002680:	f7f7f793          	andi	a5,a5,-129
83002684:	e6dff06f          	j	830024f0 <__sfvwrite_r+0x328>
83002688:	00198793          	addi	a5,s3,1
8300268c:	00078a93          	mv	s5,a5
83002690:	da1ff06f          	j	83002430 <__sfvwrite_r+0x268>
83002694:	00c00713          	li	a4,12
83002698:	00c41783          	lh	a5,12(s0)
8300269c:	00ea2023          	sw	a4,0(s4)
830026a0:	e51ff06f          	j	830024f0 <__sfvwrite_r+0x328>
830026a4:	fff00513          	li	a0,-1
830026a8:	df9ff06f          	j	830024a0 <__sfvwrite_r+0x2d8>

830026ac <__fp_lock>:
830026ac:	00000513          	li	a0,0
830026b0:	00008067          	ret

830026b4 <_cleanup_r>:
830026b4:	830045b7          	lui	a1,0x83004
830026b8:	60458593          	addi	a1,a1,1540 # 83004604 <__BSS_END__+0xffffdd30>
830026bc:	00002317          	auipc	t1,0x2
830026c0:	e9430067          	jr	-364(t1) # 83004550 <_fwalk_reent>

830026c4 <__fp_unlock>:
830026c4:	00000513          	li	a0,0
830026c8:	00008067          	ret

830026cc <__sinit.part.0>:
830026cc:	fe010113          	addi	sp,sp,-32
830026d0:	830027b7          	lui	a5,0x83002
830026d4:	00112e23          	sw	ra,28(sp)
830026d8:	00812c23          	sw	s0,24(sp)
830026dc:	00912a23          	sw	s1,20(sp)
830026e0:	01212823          	sw	s2,16(sp)
830026e4:	01312623          	sw	s3,12(sp)
830026e8:	01412423          	sw	s4,8(sp)
830026ec:	01512223          	sw	s5,4(sp)
830026f0:	01612023          	sw	s6,0(sp)
830026f4:	00452403          	lw	s0,4(a0)
830026f8:	6b478793          	addi	a5,a5,1716 # 830026b4 <__BSS_END__+0xffffbde0>
830026fc:	02f52e23          	sw	a5,60(a0)
83002700:	2ec50713          	addi	a4,a0,748
83002704:	00300793          	li	a5,3
83002708:	2ee52423          	sw	a4,744(a0)
8300270c:	2ef52223          	sw	a5,740(a0)
83002710:	2e052023          	sw	zero,736(a0)
83002714:	00400793          	li	a5,4
83002718:	00050913          	mv	s2,a0
8300271c:	00f42623          	sw	a5,12(s0)
83002720:	00800613          	li	a2,8
83002724:	00000593          	li	a1,0
83002728:	06042223          	sw	zero,100(s0)
8300272c:	00042023          	sw	zero,0(s0)
83002730:	00042223          	sw	zero,4(s0)
83002734:	00042423          	sw	zero,8(s0)
83002738:	00042823          	sw	zero,16(s0)
8300273c:	00042a23          	sw	zero,20(s0)
83002740:	00042c23          	sw	zero,24(s0)
83002744:	05c40513          	addi	a0,s0,92
83002748:	00000097          	auipc	ra,0x0
8300274c:	7bc080e7          	jalr	1980(ra) # 83002f04 <memset>
83002750:	83004b37          	lui	s6,0x83004
83002754:	00892483          	lw	s1,8(s2)
83002758:	83004ab7          	lui	s5,0x83004
8300275c:	83004a37          	lui	s4,0x83004
83002760:	830049b7          	lui	s3,0x83004
83002764:	1d0b0b13          	addi	s6,s6,464 # 830041d0 <__BSS_END__+0xffffd8fc>
83002768:	238a8a93          	addi	s5,s5,568 # 83004238 <__BSS_END__+0xffffd964>
8300276c:	2c8a0a13          	addi	s4,s4,712 # 830042c8 <__BSS_END__+0xffffd9f4>
83002770:	33498993          	addi	s3,s3,820 # 83004334 <__BSS_END__+0xffffda60>
83002774:	000107b7          	lui	a5,0x10
83002778:	03642023          	sw	s6,32(s0)
8300277c:	03542223          	sw	s5,36(s0)
83002780:	03442423          	sw	s4,40(s0)
83002784:	03342623          	sw	s3,44(s0)
83002788:	00842e23          	sw	s0,28(s0)
8300278c:	00978793          	addi	a5,a5,9 # 10009 <main-0x82ff00ab>
83002790:	00f4a623          	sw	a5,12(s1)
83002794:	00800613          	li	a2,8
83002798:	00000593          	li	a1,0
8300279c:	0604a223          	sw	zero,100(s1)
830027a0:	0004a023          	sw	zero,0(s1)
830027a4:	0004a223          	sw	zero,4(s1)
830027a8:	0004a423          	sw	zero,8(s1)
830027ac:	0004a823          	sw	zero,16(s1)
830027b0:	0004aa23          	sw	zero,20(s1)
830027b4:	0004ac23          	sw	zero,24(s1)
830027b8:	05c48513          	addi	a0,s1,92
830027bc:	00000097          	auipc	ra,0x0
830027c0:	748080e7          	jalr	1864(ra) # 83002f04 <memset>
830027c4:	00c92403          	lw	s0,12(s2)
830027c8:	000207b7          	lui	a5,0x20
830027cc:	0364a023          	sw	s6,32(s1)
830027d0:	0354a223          	sw	s5,36(s1)
830027d4:	0344a423          	sw	s4,40(s1)
830027d8:	0334a623          	sw	s3,44(s1)
830027dc:	0094ae23          	sw	s1,28(s1)
830027e0:	01278793          	addi	a5,a5,18 # 20012 <main-0x82fe00a2>
830027e4:	00f42623          	sw	a5,12(s0)
830027e8:	06042223          	sw	zero,100(s0)
830027ec:	00042023          	sw	zero,0(s0)
830027f0:	00042223          	sw	zero,4(s0)
830027f4:	00042423          	sw	zero,8(s0)
830027f8:	00042823          	sw	zero,16(s0)
830027fc:	00042a23          	sw	zero,20(s0)
83002800:	00042c23          	sw	zero,24(s0)
83002804:	05c40513          	addi	a0,s0,92
83002808:	00800613          	li	a2,8
8300280c:	00000593          	li	a1,0
83002810:	00000097          	auipc	ra,0x0
83002814:	6f4080e7          	jalr	1780(ra) # 83002f04 <memset>
83002818:	01c12083          	lw	ra,28(sp)
8300281c:	03642023          	sw	s6,32(s0)
83002820:	03542223          	sw	s5,36(s0)
83002824:	03442423          	sw	s4,40(s0)
83002828:	03342623          	sw	s3,44(s0)
8300282c:	00842e23          	sw	s0,28(s0)
83002830:	01812403          	lw	s0,24(sp)
83002834:	00100793          	li	a5,1
83002838:	02f92c23          	sw	a5,56(s2)
8300283c:	01412483          	lw	s1,20(sp)
83002840:	01012903          	lw	s2,16(sp)
83002844:	00c12983          	lw	s3,12(sp)
83002848:	00812a03          	lw	s4,8(sp)
8300284c:	00412a83          	lw	s5,4(sp)
83002850:	00012b03          	lw	s6,0(sp)
83002854:	02010113          	addi	sp,sp,32
83002858:	00008067          	ret

8300285c <__sfmoreglue>:
8300285c:	ff010113          	addi	sp,sp,-16
83002860:	00912223          	sw	s1,4(sp)
83002864:	06800793          	li	a5,104
83002868:	fff58493          	addi	s1,a1,-1
8300286c:	02f484b3          	mul	s1,s1,a5
83002870:	01212023          	sw	s2,0(sp)
83002874:	00058913          	mv	s2,a1
83002878:	00812423          	sw	s0,8(sp)
8300287c:	00112623          	sw	ra,12(sp)
83002880:	07448593          	addi	a1,s1,116
83002884:	00001097          	auipc	ra,0x1
83002888:	9e4080e7          	jalr	-1564(ra) # 83003268 <_malloc_r>
8300288c:	00050413          	mv	s0,a0
83002890:	02050263          	beqz	a0,830028b4 <__sfmoreglue+0x58>
83002894:	00c50513          	addi	a0,a0,12
83002898:	00042023          	sw	zero,0(s0)
8300289c:	01242223          	sw	s2,4(s0)
830028a0:	00a42423          	sw	a0,8(s0)
830028a4:	06848613          	addi	a2,s1,104
830028a8:	00000593          	li	a1,0
830028ac:	00000097          	auipc	ra,0x0
830028b0:	658080e7          	jalr	1624(ra) # 83002f04 <memset>
830028b4:	00c12083          	lw	ra,12(sp)
830028b8:	00040513          	mv	a0,s0
830028bc:	00812403          	lw	s0,8(sp)
830028c0:	00412483          	lw	s1,4(sp)
830028c4:	00012903          	lw	s2,0(sp)
830028c8:	01010113          	addi	sp,sp,16
830028cc:	00008067          	ret

830028d0 <__sfp>:
830028d0:	fe010113          	addi	sp,sp,-32
830028d4:	830077b7          	lui	a5,0x83007
830028d8:	01212823          	sw	s2,16(sp)
830028dc:	8307a903          	lw	s2,-2000(a5) # 83006830 <__BSS_END__+0xffffff5c>
830028e0:	01312623          	sw	s3,12(sp)
830028e4:	00112e23          	sw	ra,28(sp)
830028e8:	03892783          	lw	a5,56(s2)
830028ec:	00812c23          	sw	s0,24(sp)
830028f0:	00912a23          	sw	s1,20(sp)
830028f4:	01412423          	sw	s4,8(sp)
830028f8:	00050993          	mv	s3,a0
830028fc:	0a078c63          	beqz	a5,830029b4 <__sfp+0xe4>
83002900:	2e090913          	addi	s2,s2,736
83002904:	fff00493          	li	s1,-1
83002908:	00400a13          	li	s4,4
8300290c:	00492783          	lw	a5,4(s2)
83002910:	00892403          	lw	s0,8(s2)
83002914:	fff78793          	addi	a5,a5,-1
83002918:	0007d863          	bgez	a5,83002928 <__sfp+0x58>
8300291c:	0880006f          	j	830029a4 <__sfp+0xd4>
83002920:	06840413          	addi	s0,s0,104
83002924:	08978063          	beq	a5,s1,830029a4 <__sfp+0xd4>
83002928:	00c41703          	lh	a4,12(s0)
8300292c:	fff78793          	addi	a5,a5,-1
83002930:	fe0718e3          	bnez	a4,83002920 <__sfp+0x50>
83002934:	ffff07b7          	lui	a5,0xffff0
83002938:	00178793          	addi	a5,a5,1 # ffff0001 <__BSS_END__+0x7cfe972d>
8300293c:	06042223          	sw	zero,100(s0)
83002940:	00042023          	sw	zero,0(s0)
83002944:	00042223          	sw	zero,4(s0)
83002948:	00042423          	sw	zero,8(s0)
8300294c:	00f42623          	sw	a5,12(s0)
83002950:	00042823          	sw	zero,16(s0)
83002954:	00042a23          	sw	zero,20(s0)
83002958:	00042c23          	sw	zero,24(s0)
8300295c:	00800613          	li	a2,8
83002960:	00000593          	li	a1,0
83002964:	05c40513          	addi	a0,s0,92
83002968:	00000097          	auipc	ra,0x0
8300296c:	59c080e7          	jalr	1436(ra) # 83002f04 <memset>
83002970:	02042823          	sw	zero,48(s0)
83002974:	02042a23          	sw	zero,52(s0)
83002978:	04042223          	sw	zero,68(s0)
8300297c:	04042423          	sw	zero,72(s0)
83002980:	01c12083          	lw	ra,28(sp)
83002984:	00040513          	mv	a0,s0
83002988:	01812403          	lw	s0,24(sp)
8300298c:	01412483          	lw	s1,20(sp)
83002990:	01012903          	lw	s2,16(sp)
83002994:	00c12983          	lw	s3,12(sp)
83002998:	00812a03          	lw	s4,8(sp)
8300299c:	02010113          	addi	sp,sp,32
830029a0:	00008067          	ret
830029a4:	00092403          	lw	s0,0(s2)
830029a8:	00040e63          	beqz	s0,830029c4 <__sfp+0xf4>
830029ac:	00040913          	mv	s2,s0
830029b0:	f5dff06f          	j	8300290c <__sfp+0x3c>
830029b4:	00090513          	mv	a0,s2
830029b8:	00000097          	auipc	ra,0x0
830029bc:	d14080e7          	jalr	-748(ra) # 830026cc <__sinit.part.0>
830029c0:	f41ff06f          	j	83002900 <__sfp+0x30>
830029c4:	1ac00593          	li	a1,428
830029c8:	00098513          	mv	a0,s3
830029cc:	00001097          	auipc	ra,0x1
830029d0:	89c080e7          	jalr	-1892(ra) # 83003268 <_malloc_r>
830029d4:	00050413          	mv	s0,a0
830029d8:	02050863          	beqz	a0,83002a08 <__sfp+0x138>
830029dc:	00c50513          	addi	a0,a0,12
830029e0:	00042023          	sw	zero,0(s0)
830029e4:	01442223          	sw	s4,4(s0)
830029e8:	00a42423          	sw	a0,8(s0)
830029ec:	1a000613          	li	a2,416
830029f0:	00000593          	li	a1,0
830029f4:	00000097          	auipc	ra,0x0
830029f8:	510080e7          	jalr	1296(ra) # 83002f04 <memset>
830029fc:	00892023          	sw	s0,0(s2)
83002a00:	00040913          	mv	s2,s0
83002a04:	f09ff06f          	j	8300290c <__sfp+0x3c>
83002a08:	00092023          	sw	zero,0(s2)
83002a0c:	00c00793          	li	a5,12
83002a10:	00f9a023          	sw	a5,0(s3)
83002a14:	f6dff06f          	j	83002980 <__sfp+0xb0>

83002a18 <_cleanup>:
83002a18:	830077b7          	lui	a5,0x83007
83002a1c:	8307a503          	lw	a0,-2000(a5) # 83006830 <__BSS_END__+0xffffff5c>
83002a20:	830045b7          	lui	a1,0x83004
83002a24:	60458593          	addi	a1,a1,1540 # 83004604 <__BSS_END__+0xffffdd30>
83002a28:	00002317          	auipc	t1,0x2
83002a2c:	b2830067          	jr	-1240(t1) # 83004550 <_fwalk_reent>

83002a30 <__sinit>:
83002a30:	03852783          	lw	a5,56(a0)
83002a34:	00078463          	beqz	a5,83002a3c <__sinit+0xc>
83002a38:	00008067          	ret
83002a3c:	00000317          	auipc	t1,0x0
83002a40:	c9030067          	jr	-880(t1) # 830026cc <__sinit.part.0>

83002a44 <__sfp_lock_acquire>:
83002a44:	00008067          	ret

83002a48 <__sfp_lock_release>:
83002a48:	00008067          	ret

83002a4c <__sinit_lock_acquire>:
83002a4c:	00008067          	ret

83002a50 <__sinit_lock_release>:
83002a50:	00008067          	ret

83002a54 <__fp_lock_all>:
83002a54:	830077b7          	lui	a5,0x83007
83002a58:	8887a503          	lw	a0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83002a5c:	830025b7          	lui	a1,0x83002
83002a60:	6ac58593          	addi	a1,a1,1708 # 830026ac <__BSS_END__+0xffffbdd8>
83002a64:	00002317          	auipc	t1,0x2
83002a68:	a4830067          	jr	-1464(t1) # 830044ac <_fwalk>

83002a6c <__fp_unlock_all>:
83002a6c:	830077b7          	lui	a5,0x83007
83002a70:	8887a503          	lw	a0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83002a74:	830025b7          	lui	a1,0x83002
83002a78:	6c458593          	addi	a1,a1,1732 # 830026c4 <__BSS_END__+0xffffbdf0>
83002a7c:	00002317          	auipc	t1,0x2
83002a80:	a3030067          	jr	-1488(t1) # 830044ac <_fwalk>

83002a84 <__sflush_r>:
83002a84:	00c5d783          	lhu	a5,12(a1)
83002a88:	fe010113          	addi	sp,sp,-32
83002a8c:	00812c23          	sw	s0,24(sp)
83002a90:	01312623          	sw	s3,12(sp)
83002a94:	00112e23          	sw	ra,28(sp)
83002a98:	00912a23          	sw	s1,20(sp)
83002a9c:	01212823          	sw	s2,16(sp)
83002aa0:	0087f713          	andi	a4,a5,8
83002aa4:	00058413          	mv	s0,a1
83002aa8:	00050993          	mv	s3,a0
83002aac:	0e071a63          	bnez	a4,83002ba0 <__sflush_r+0x11c>
83002ab0:	0045a703          	lw	a4,4(a1)
83002ab4:	16e05863          	blez	a4,83002c24 <__sflush_r+0x1a0>
83002ab8:	02842703          	lw	a4,40(s0)
83002abc:	0c070263          	beqz	a4,83002b80 <__sflush_r+0xfc>
83002ac0:	000016b7          	lui	a3,0x1
83002ac4:	0009a483          	lw	s1,0(s3)
83002ac8:	00d7f6b3          	and	a3,a5,a3
83002acc:	0009a023          	sw	zero,0(s3)
83002ad0:	01c42583          	lw	a1,28(s0)
83002ad4:	14069e63          	bnez	a3,83002c30 <__sflush_r+0x1ac>
83002ad8:	00100693          	li	a3,1
83002adc:	00000613          	li	a2,0
83002ae0:	00098513          	mv	a0,s3
83002ae4:	000700e7          	jalr	a4
83002ae8:	fff00793          	li	a5,-1
83002aec:	16f50863          	beq	a0,a5,83002c5c <__sflush_r+0x1d8>
83002af0:	00c45783          	lhu	a5,12(s0)
83002af4:	02842703          	lw	a4,40(s0)
83002af8:	01c42583          	lw	a1,28(s0)
83002afc:	0047f793          	andi	a5,a5,4
83002b00:	00078e63          	beqz	a5,83002b1c <__sflush_r+0x98>
83002b04:	00442683          	lw	a3,4(s0)
83002b08:	03042783          	lw	a5,48(s0)
83002b0c:	40d50533          	sub	a0,a0,a3
83002b10:	00078663          	beqz	a5,83002b1c <__sflush_r+0x98>
83002b14:	03c42783          	lw	a5,60(s0)
83002b18:	40f50533          	sub	a0,a0,a5
83002b1c:	00050613          	mv	a2,a0
83002b20:	00000693          	li	a3,0
83002b24:	00098513          	mv	a0,s3
83002b28:	000700e7          	jalr	a4
83002b2c:	fff00793          	li	a5,-1
83002b30:	10f51463          	bne	a0,a5,83002c38 <__sflush_r+0x1b4>
83002b34:	0009a783          	lw	a5,0(s3)
83002b38:	00c41703          	lh	a4,12(s0)
83002b3c:	14078463          	beqz	a5,83002c84 <__sflush_r+0x200>
83002b40:	01d00693          	li	a3,29
83002b44:	00d78663          	beq	a5,a3,83002b50 <__sflush_r+0xcc>
83002b48:	01600693          	li	a3,22
83002b4c:	16d79263          	bne	a5,a3,83002cb0 <__sflush_r+0x22c>
83002b50:	01042783          	lw	a5,16(s0)
83002b54:	00042223          	sw	zero,4(s0)
83002b58:	00f42023          	sw	a5,0(s0)
83002b5c:	03042583          	lw	a1,48(s0)
83002b60:	0099a023          	sw	s1,0(s3)
83002b64:	00058e63          	beqz	a1,83002b80 <__sflush_r+0xfc>
83002b68:	04040793          	addi	a5,s0,64
83002b6c:	00f58863          	beq	a1,a5,83002b7c <__sflush_r+0xf8>
83002b70:	00098513          	mv	a0,s3
83002b74:	fffff097          	auipc	ra,0xfffff
83002b78:	1b4080e7          	jalr	436(ra) # 83001d28 <_free_r>
83002b7c:	02042823          	sw	zero,48(s0)
83002b80:	00000513          	li	a0,0
83002b84:	01c12083          	lw	ra,28(sp)
83002b88:	01812403          	lw	s0,24(sp)
83002b8c:	01412483          	lw	s1,20(sp)
83002b90:	01012903          	lw	s2,16(sp)
83002b94:	00c12983          	lw	s3,12(sp)
83002b98:	02010113          	addi	sp,sp,32
83002b9c:	00008067          	ret
83002ba0:	0105a903          	lw	s2,16(a1)
83002ba4:	fc090ee3          	beqz	s2,83002b80 <__sflush_r+0xfc>
83002ba8:	0005a483          	lw	s1,0(a1)
83002bac:	0037f793          	andi	a5,a5,3
83002bb0:	0125a023          	sw	s2,0(a1)
83002bb4:	412484b3          	sub	s1,s1,s2
83002bb8:	00000713          	li	a4,0
83002bbc:	00079463          	bnez	a5,83002bc4 <__sflush_r+0x140>
83002bc0:	0145a703          	lw	a4,20(a1)
83002bc4:	00e42423          	sw	a4,8(s0)
83002bc8:	00904863          	bgtz	s1,83002bd8 <__sflush_r+0x154>
83002bcc:	fb5ff06f          	j	83002b80 <__sflush_r+0xfc>
83002bd0:	00a90933          	add	s2,s2,a0
83002bd4:	fa9056e3          	blez	s1,83002b80 <__sflush_r+0xfc>
83002bd8:	02442783          	lw	a5,36(s0)
83002bdc:	01c42583          	lw	a1,28(s0)
83002be0:	00048693          	mv	a3,s1
83002be4:	00090613          	mv	a2,s2
83002be8:	00098513          	mv	a0,s3
83002bec:	000780e7          	jalr	a5
83002bf0:	40a484b3          	sub	s1,s1,a0
83002bf4:	fca04ee3          	bgtz	a0,83002bd0 <__sflush_r+0x14c>
83002bf8:	00c45783          	lhu	a5,12(s0)
83002bfc:	01c12083          	lw	ra,28(sp)
83002c00:	01412483          	lw	s1,20(sp)
83002c04:	0407e793          	ori	a5,a5,64
83002c08:	00f41623          	sh	a5,12(s0)
83002c0c:	01812403          	lw	s0,24(sp)
83002c10:	01012903          	lw	s2,16(sp)
83002c14:	00c12983          	lw	s3,12(sp)
83002c18:	fff00513          	li	a0,-1
83002c1c:	02010113          	addi	sp,sp,32
83002c20:	00008067          	ret
83002c24:	03c5a703          	lw	a4,60(a1)
83002c28:	e8e048e3          	bgtz	a4,83002ab8 <__sflush_r+0x34>
83002c2c:	f55ff06f          	j	83002b80 <__sflush_r+0xfc>
83002c30:	05042503          	lw	a0,80(s0)
83002c34:	ec9ff06f          	j	83002afc <__sflush_r+0x78>
83002c38:	01042703          	lw	a4,16(s0)
83002c3c:	00c45783          	lhu	a5,12(s0)
83002c40:	00042223          	sw	zero,4(s0)
83002c44:	00e42023          	sw	a4,0(s0)
83002c48:	00001737          	lui	a4,0x1
83002c4c:	00e7f7b3          	and	a5,a5,a4
83002c50:	f00786e3          	beqz	a5,83002b5c <__sflush_r+0xd8>
83002c54:	04a42823          	sw	a0,80(s0)
83002c58:	f05ff06f          	j	83002b5c <__sflush_r+0xd8>
83002c5c:	0009a783          	lw	a5,0(s3)
83002c60:	e80788e3          	beqz	a5,83002af0 <__sflush_r+0x6c>
83002c64:	01d00713          	li	a4,29
83002c68:	02e78e63          	beq	a5,a4,83002ca4 <__sflush_r+0x220>
83002c6c:	01600713          	li	a4,22
83002c70:	02e78a63          	beq	a5,a4,83002ca4 <__sflush_r+0x220>
83002c74:	00c45783          	lhu	a5,12(s0)
83002c78:	0407e793          	ori	a5,a5,64
83002c7c:	00f41623          	sh	a5,12(s0)
83002c80:	f05ff06f          	j	83002b84 <__sflush_r+0x100>
83002c84:	01042683          	lw	a3,16(s0)
83002c88:	00c75793          	srli	a5,a4,0xc
83002c8c:	00042223          	sw	zero,4(s0)
83002c90:	00d42023          	sw	a3,0(s0)
83002c94:	0017f793          	andi	a5,a5,1
83002c98:	ec0782e3          	beqz	a5,83002b5c <__sflush_r+0xd8>
83002c9c:	04a42823          	sw	a0,80(s0)
83002ca0:	ebdff06f          	j	83002b5c <__sflush_r+0xd8>
83002ca4:	0099a023          	sw	s1,0(s3)
83002ca8:	00000513          	li	a0,0
83002cac:	ed9ff06f          	j	83002b84 <__sflush_r+0x100>
83002cb0:	04076713          	ori	a4,a4,64
83002cb4:	00e41623          	sh	a4,12(s0)
83002cb8:	ecdff06f          	j	83002b84 <__sflush_r+0x100>

83002cbc <_fflush_r>:
83002cbc:	fe010113          	addi	sp,sp,-32
83002cc0:	00812c23          	sw	s0,24(sp)
83002cc4:	00112e23          	sw	ra,28(sp)
83002cc8:	00050413          	mv	s0,a0
83002ccc:	00050663          	beqz	a0,83002cd8 <_fflush_r+0x1c>
83002cd0:	03852783          	lw	a5,56(a0)
83002cd4:	02078063          	beqz	a5,83002cf4 <_fflush_r+0x38>
83002cd8:	00c59783          	lh	a5,12(a1)
83002cdc:	02079863          	bnez	a5,83002d0c <_fflush_r+0x50>
83002ce0:	01c12083          	lw	ra,28(sp)
83002ce4:	01812403          	lw	s0,24(sp)
83002ce8:	00000513          	li	a0,0
83002cec:	02010113          	addi	sp,sp,32
83002cf0:	00008067          	ret
83002cf4:	00b12623          	sw	a1,12(sp)
83002cf8:	00000097          	auipc	ra,0x0
83002cfc:	d38080e7          	jalr	-712(ra) # 83002a30 <__sinit>
83002d00:	00c12583          	lw	a1,12(sp)
83002d04:	00c59783          	lh	a5,12(a1)
83002d08:	fc078ce3          	beqz	a5,83002ce0 <_fflush_r+0x24>
83002d0c:	00040513          	mv	a0,s0
83002d10:	01812403          	lw	s0,24(sp)
83002d14:	01c12083          	lw	ra,28(sp)
83002d18:	02010113          	addi	sp,sp,32
83002d1c:	00000317          	auipc	t1,0x0
83002d20:	d6830067          	jr	-664(t1) # 83002a84 <__sflush_r>

83002d24 <fflush>:
83002d24:	06050c63          	beqz	a0,83002d9c <fflush+0x78>
83002d28:	fe010113          	addi	sp,sp,-32
83002d2c:	830077b7          	lui	a5,0x83007
83002d30:	00812c23          	sw	s0,24(sp)
83002d34:	00050413          	mv	s0,a0
83002d38:	8887a503          	lw	a0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83002d3c:	00112e23          	sw	ra,28(sp)
83002d40:	00050663          	beqz	a0,83002d4c <fflush+0x28>
83002d44:	03852783          	lw	a5,56(a0)
83002d48:	02078c63          	beqz	a5,83002d80 <fflush+0x5c>
83002d4c:	00c41783          	lh	a5,12(s0)
83002d50:	00079c63          	bnez	a5,83002d68 <fflush+0x44>
83002d54:	01c12083          	lw	ra,28(sp)
83002d58:	01812403          	lw	s0,24(sp)
83002d5c:	00000513          	li	a0,0
83002d60:	02010113          	addi	sp,sp,32
83002d64:	00008067          	ret
83002d68:	00040593          	mv	a1,s0
83002d6c:	01812403          	lw	s0,24(sp)
83002d70:	01c12083          	lw	ra,28(sp)
83002d74:	02010113          	addi	sp,sp,32
83002d78:	00000317          	auipc	t1,0x0
83002d7c:	d0c30067          	jr	-756(t1) # 83002a84 <__sflush_r>
83002d80:	00a12623          	sw	a0,12(sp)
83002d84:	00000097          	auipc	ra,0x0
83002d88:	cac080e7          	jalr	-852(ra) # 83002a30 <__sinit>
83002d8c:	00c41783          	lh	a5,12(s0)
83002d90:	00c12503          	lw	a0,12(sp)
83002d94:	fc0780e3          	beqz	a5,83002d54 <fflush+0x30>
83002d98:	fd1ff06f          	j	83002d68 <fflush+0x44>
83002d9c:	830077b7          	lui	a5,0x83007
83002da0:	8307a503          	lw	a0,-2000(a5) # 83006830 <__BSS_END__+0xffffff5c>
83002da4:	830035b7          	lui	a1,0x83003
83002da8:	cbc58593          	addi	a1,a1,-836 # 83002cbc <__BSS_END__+0xffffc3e8>
83002dac:	00001317          	auipc	t1,0x1
83002db0:	7a430067          	jr	1956(t1) # 83004550 <_fwalk_reent>

83002db4 <_putc_r>:
83002db4:	fe010113          	addi	sp,sp,-32
83002db8:	01212c23          	sw	s2,24(sp)
83002dbc:	00112e23          	sw	ra,28(sp)
83002dc0:	00050913          	mv	s2,a0
83002dc4:	00050663          	beqz	a0,83002dd0 <_putc_r+0x1c>
83002dc8:	03852783          	lw	a5,56(a0)
83002dcc:	04078663          	beqz	a5,83002e18 <_putc_r+0x64>
83002dd0:	00862783          	lw	a5,8(a2)
83002dd4:	fff78793          	addi	a5,a5,-1
83002dd8:	00f62423          	sw	a5,8(a2)
83002ddc:	0007dc63          	bgez	a5,83002df4 <_putc_r+0x40>
83002de0:	01862703          	lw	a4,24(a2)
83002de4:	04e7c863          	blt	a5,a4,83002e34 <_putc_r+0x80>
83002de8:	0ff5f793          	zext.b	a5,a1
83002dec:	00a00713          	li	a4,10
83002df0:	04e78263          	beq	a5,a4,83002e34 <_putc_r+0x80>
83002df4:	00062783          	lw	a5,0(a2)
83002df8:	0ff5f513          	zext.b	a0,a1
83002dfc:	00178713          	addi	a4,a5,1
83002e00:	00e62023          	sw	a4,0(a2)
83002e04:	00b78023          	sb	a1,0(a5)
83002e08:	01c12083          	lw	ra,28(sp)
83002e0c:	01812903          	lw	s2,24(sp)
83002e10:	02010113          	addi	sp,sp,32
83002e14:	00008067          	ret
83002e18:	00c12623          	sw	a2,12(sp)
83002e1c:	00b12423          	sw	a1,8(sp)
83002e20:	00000097          	auipc	ra,0x0
83002e24:	c10080e7          	jalr	-1008(ra) # 83002a30 <__sinit>
83002e28:	00c12603          	lw	a2,12(sp)
83002e2c:	00812583          	lw	a1,8(sp)
83002e30:	fa1ff06f          	j	83002dd0 <_putc_r+0x1c>
83002e34:	01c12083          	lw	ra,28(sp)
83002e38:	00090513          	mv	a0,s2
83002e3c:	01812903          	lw	s2,24(sp)
83002e40:	02010113          	addi	sp,sp,32
83002e44:	00001317          	auipc	t1,0x1
83002e48:	4fc30067          	jr	1276(t1) # 83004340 <__swbuf_r>

83002e4c <putc>:
83002e4c:	ff010113          	addi	sp,sp,-16
83002e50:	830077b7          	lui	a5,0x83007
83002e54:	01212023          	sw	s2,0(sp)
83002e58:	8887a903          	lw	s2,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83002e5c:	00812423          	sw	s0,8(sp)
83002e60:	00912223          	sw	s1,4(sp)
83002e64:	00112623          	sw	ra,12(sp)
83002e68:	00050493          	mv	s1,a0
83002e6c:	00058413          	mv	s0,a1
83002e70:	00090663          	beqz	s2,83002e7c <putc+0x30>
83002e74:	03892783          	lw	a5,56(s2)
83002e78:	04078a63          	beqz	a5,83002ecc <putc+0x80>
83002e7c:	00842783          	lw	a5,8(s0)
83002e80:	fff78793          	addi	a5,a5,-1
83002e84:	00f42423          	sw	a5,8(s0)
83002e88:	0007dc63          	bgez	a5,83002ea0 <putc+0x54>
83002e8c:	01842703          	lw	a4,24(s0)
83002e90:	04e7c663          	blt	a5,a4,83002edc <putc+0x90>
83002e94:	0ff4f793          	zext.b	a5,s1
83002e98:	00a00713          	li	a4,10
83002e9c:	04e78063          	beq	a5,a4,83002edc <putc+0x90>
83002ea0:	00042783          	lw	a5,0(s0)
83002ea4:	0ff4f513          	zext.b	a0,s1
83002ea8:	00178713          	addi	a4,a5,1
83002eac:	00e42023          	sw	a4,0(s0)
83002eb0:	00978023          	sb	s1,0(a5)
83002eb4:	00c12083          	lw	ra,12(sp)
83002eb8:	00812403          	lw	s0,8(sp)
83002ebc:	00412483          	lw	s1,4(sp)
83002ec0:	00012903          	lw	s2,0(sp)
83002ec4:	01010113          	addi	sp,sp,16
83002ec8:	00008067          	ret
83002ecc:	00090513          	mv	a0,s2
83002ed0:	00000097          	auipc	ra,0x0
83002ed4:	b60080e7          	jalr	-1184(ra) # 83002a30 <__sinit>
83002ed8:	fa5ff06f          	j	83002e7c <putc+0x30>
83002edc:	00040613          	mv	a2,s0
83002ee0:	00812403          	lw	s0,8(sp)
83002ee4:	00c12083          	lw	ra,12(sp)
83002ee8:	00048593          	mv	a1,s1
83002eec:	00090513          	mv	a0,s2
83002ef0:	00412483          	lw	s1,4(sp)
83002ef4:	00012903          	lw	s2,0(sp)
83002ef8:	01010113          	addi	sp,sp,16
83002efc:	00001317          	auipc	t1,0x1
83002f00:	44430067          	jr	1092(t1) # 83004340 <__swbuf_r>

83002f04 <memset>:
83002f04:	00357793          	andi	a5,a0,3
83002f08:	0c078863          	beqz	a5,83002fd8 <memset+0xd4>
83002f0c:	fff60713          	addi	a4,a2,-1
83002f10:	0ff5f813          	zext.b	a6,a1
83002f14:	00050793          	mv	a5,a0
83002f18:	fff00893          	li	a7,-1
83002f1c:	00061863          	bnez	a2,83002f2c <memset+0x28>
83002f20:	0c40006f          	j	83002fe4 <memset+0xe0>
83002f24:	fff70713          	addi	a4,a4,-1 # fff <main-0x82fff0b5>
83002f28:	0b170463          	beq	a4,a7,83002fd0 <memset+0xcc>
83002f2c:	00178793          	addi	a5,a5,1
83002f30:	0037f693          	andi	a3,a5,3
83002f34:	ff078fa3          	sb	a6,-1(a5)
83002f38:	fe0696e3          	bnez	a3,83002f24 <memset+0x20>
83002f3c:	00300693          	li	a3,3
83002f40:	06e6fc63          	bgeu	a3,a4,83002fb8 <memset+0xb4>
83002f44:	0ff5f693          	zext.b	a3,a1
83002f48:	00869613          	slli	a2,a3,0x8
83002f4c:	00d66633          	or	a2,a2,a3
83002f50:	01061693          	slli	a3,a2,0x10
83002f54:	00f00813          	li	a6,15
83002f58:	00c6e6b3          	or	a3,a3,a2
83002f5c:	08e87663          	bgeu	a6,a4,83002fe8 <memset+0xe4>
83002f60:	ff070613          	addi	a2,a4,-16
83002f64:	ff067613          	andi	a2,a2,-16
83002f68:	01060613          	addi	a2,a2,16
83002f6c:	00c78633          	add	a2,a5,a2
83002f70:	00d7a023          	sw	a3,0(a5)
83002f74:	00d7a223          	sw	a3,4(a5)
83002f78:	00d7a423          	sw	a3,8(a5)
83002f7c:	00d7a623          	sw	a3,12(a5)
83002f80:	01078793          	addi	a5,a5,16
83002f84:	fef616e3          	bne	a2,a5,83002f70 <memset+0x6c>
83002f88:	00f77613          	andi	a2,a4,15
83002f8c:	00c77813          	andi	a6,a4,12
83002f90:	00060713          	mv	a4,a2
83002f94:	02080263          	beqz	a6,83002fb8 <memset+0xb4>
83002f98:	ffc60713          	addi	a4,a2,-4
83002f9c:	ffc77713          	andi	a4,a4,-4
83002fa0:	00470713          	addi	a4,a4,4
83002fa4:	00e78733          	add	a4,a5,a4
83002fa8:	00478793          	addi	a5,a5,4
83002fac:	fed7ae23          	sw	a3,-4(a5)
83002fb0:	fef71ce3          	bne	a4,a5,83002fa8 <memset+0xa4>
83002fb4:	00367713          	andi	a4,a2,3
83002fb8:	0ff5f693          	zext.b	a3,a1
83002fbc:	00e78633          	add	a2,a5,a4
83002fc0:	00070a63          	beqz	a4,83002fd4 <memset+0xd0>
83002fc4:	00178793          	addi	a5,a5,1
83002fc8:	fed78fa3          	sb	a3,-1(a5)
83002fcc:	fef61ce3          	bne	a2,a5,83002fc4 <memset+0xc0>
83002fd0:	00008067          	ret
83002fd4:	00008067          	ret
83002fd8:	00050793          	mv	a5,a0
83002fdc:	00060713          	mv	a4,a2
83002fe0:	f5dff06f          	j	83002f3c <memset+0x38>
83002fe4:	00008067          	ret
83002fe8:	00070613          	mv	a2,a4
83002fec:	fadff06f          	j	83002f98 <memset+0x94>

83002ff0 <memcpy>:
83002ff0:	00f00793          	li	a5,15
83002ff4:	0ac7f863          	bgeu	a5,a2,830030a4 <memcpy+0xb4>
83002ff8:	00b567b3          	or	a5,a0,a1
83002ffc:	0037f793          	andi	a5,a5,3
83003000:	0c079863          	bnez	a5,830030d0 <memcpy+0xe0>
83003004:	ff060e13          	addi	t3,a2,-16
83003008:	ff0e7e13          	andi	t3,t3,-16
8300300c:	010e0e13          	addi	t3,t3,16
83003010:	01c50333          	add	t1,a0,t3
83003014:	00058713          	mv	a4,a1
83003018:	00050793          	mv	a5,a0
8300301c:	00472683          	lw	a3,4(a4)
83003020:	00072883          	lw	a7,0(a4)
83003024:	00872803          	lw	a6,8(a4)
83003028:	00d7a223          	sw	a3,4(a5)
8300302c:	00c72683          	lw	a3,12(a4)
83003030:	0117a023          	sw	a7,0(a5)
83003034:	0107a423          	sw	a6,8(a5)
83003038:	00d7a623          	sw	a3,12(a5)
8300303c:	01078793          	addi	a5,a5,16
83003040:	01070713          	addi	a4,a4,16
83003044:	fcf31ce3          	bne	t1,a5,8300301c <memcpy+0x2c>
83003048:	00c67713          	andi	a4,a2,12
8300304c:	01c585b3          	add	a1,a1,t3
83003050:	00f67813          	andi	a6,a2,15
83003054:	08070463          	beqz	a4,830030dc <memcpy+0xec>
83003058:	00058713          	mv	a4,a1
8300305c:	00078893          	mv	a7,a5
83003060:	00300e13          	li	t3,3
83003064:	00072303          	lw	t1,0(a4)
83003068:	00470713          	addi	a4,a4,4
8300306c:	40e806b3          	sub	a3,a6,a4
83003070:	0068a023          	sw	t1,0(a7)
83003074:	00d586b3          	add	a3,a1,a3
83003078:	00488893          	addi	a7,a7,4
8300307c:	fede64e3          	bltu	t3,a3,83003064 <memcpy+0x74>
83003080:	ffc80713          	addi	a4,a6,-4
83003084:	ffc77713          	andi	a4,a4,-4
83003088:	00470713          	addi	a4,a4,4
8300308c:	00367613          	andi	a2,a2,3
83003090:	00e787b3          	add	a5,a5,a4
83003094:	00e585b3          	add	a1,a1,a4
83003098:	fff60693          	addi	a3,a2,-1
8300309c:	00061a63          	bnez	a2,830030b0 <memcpy+0xc0>
830030a0:	00008067          	ret
830030a4:	00050793          	mv	a5,a0
830030a8:	fff60693          	addi	a3,a2,-1
830030ac:	fe060ae3          	beqz	a2,830030a0 <memcpy+0xb0>
830030b0:	00168693          	addi	a3,a3,1 # 1001 <main-0x82fff0b3>
830030b4:	00d786b3          	add	a3,a5,a3
830030b8:	0005c703          	lbu	a4,0(a1)
830030bc:	00178793          	addi	a5,a5,1
830030c0:	00158593          	addi	a1,a1,1
830030c4:	fee78fa3          	sb	a4,-1(a5)
830030c8:	fef698e3          	bne	a3,a5,830030b8 <memcpy+0xc8>
830030cc:	00008067          	ret
830030d0:	fff60693          	addi	a3,a2,-1
830030d4:	00050793          	mv	a5,a0
830030d8:	fd9ff06f          	j	830030b0 <memcpy+0xc0>
830030dc:	00080613          	mv	a2,a6
830030e0:	fc9ff06f          	j	830030a8 <memcpy+0xb8>

830030e4 <memmove>:
830030e4:	02a5f663          	bgeu	a1,a0,83003110 <memmove+0x2c>
830030e8:	00c587b3          	add	a5,a1,a2
830030ec:	02f57263          	bgeu	a0,a5,83003110 <memmove+0x2c>
830030f0:	00c50733          	add	a4,a0,a2
830030f4:	0e060a63          	beqz	a2,830031e8 <memmove+0x104>
830030f8:	fff7c683          	lbu	a3,-1(a5)
830030fc:	fff78793          	addi	a5,a5,-1
83003100:	fff70713          	addi	a4,a4,-1
83003104:	00d70023          	sb	a3,0(a4)
83003108:	fef598e3          	bne	a1,a5,830030f8 <memmove+0x14>
8300310c:	00008067          	ret
83003110:	00f00793          	li	a5,15
83003114:	02c7e863          	bltu	a5,a2,83003144 <memmove+0x60>
83003118:	00050793          	mv	a5,a0
8300311c:	fff60693          	addi	a3,a2,-1
83003120:	0c060c63          	beqz	a2,830031f8 <memmove+0x114>
83003124:	00168693          	addi	a3,a3,1
83003128:	00d786b3          	add	a3,a5,a3
8300312c:	0005c703          	lbu	a4,0(a1)
83003130:	00178793          	addi	a5,a5,1
83003134:	00158593          	addi	a1,a1,1
83003138:	fee78fa3          	sb	a4,-1(a5)
8300313c:	fed798e3          	bne	a5,a3,8300312c <memmove+0x48>
83003140:	00008067          	ret
83003144:	00b567b3          	or	a5,a0,a1
83003148:	0037f793          	andi	a5,a5,3
8300314c:	0a079063          	bnez	a5,830031ec <memmove+0x108>
83003150:	ff060893          	addi	a7,a2,-16
83003154:	ff08f893          	andi	a7,a7,-16
83003158:	01088893          	addi	a7,a7,16
8300315c:	01150833          	add	a6,a0,a7
83003160:	00058713          	mv	a4,a1
83003164:	00050793          	mv	a5,a0
83003168:	00072683          	lw	a3,0(a4)
8300316c:	01070713          	addi	a4,a4,16
83003170:	01078793          	addi	a5,a5,16
83003174:	fed7a823          	sw	a3,-16(a5)
83003178:	ff472683          	lw	a3,-12(a4)
8300317c:	fed7aa23          	sw	a3,-12(a5)
83003180:	ff872683          	lw	a3,-8(a4)
83003184:	fed7ac23          	sw	a3,-8(a5)
83003188:	ffc72683          	lw	a3,-4(a4)
8300318c:	fed7ae23          	sw	a3,-4(a5)
83003190:	fcf81ce3          	bne	a6,a5,83003168 <memmove+0x84>
83003194:	00c67713          	andi	a4,a2,12
83003198:	011585b3          	add	a1,a1,a7
8300319c:	00f67813          	andi	a6,a2,15
830031a0:	04070e63          	beqz	a4,830031fc <memmove+0x118>
830031a4:	00058713          	mv	a4,a1
830031a8:	00078893          	mv	a7,a5
830031ac:	00300e13          	li	t3,3
830031b0:	00072303          	lw	t1,0(a4)
830031b4:	00470713          	addi	a4,a4,4
830031b8:	40e806b3          	sub	a3,a6,a4
830031bc:	0068a023          	sw	t1,0(a7)
830031c0:	00d586b3          	add	a3,a1,a3
830031c4:	00488893          	addi	a7,a7,4
830031c8:	fede64e3          	bltu	t3,a3,830031b0 <memmove+0xcc>
830031cc:	ffc80713          	addi	a4,a6,-4
830031d0:	ffc77713          	andi	a4,a4,-4
830031d4:	00470713          	addi	a4,a4,4
830031d8:	00367613          	andi	a2,a2,3
830031dc:	00e787b3          	add	a5,a5,a4
830031e0:	00e585b3          	add	a1,a1,a4
830031e4:	f39ff06f          	j	8300311c <memmove+0x38>
830031e8:	00008067          	ret
830031ec:	fff60693          	addi	a3,a2,-1
830031f0:	00050793          	mv	a5,a0
830031f4:	f31ff06f          	j	83003124 <memmove+0x40>
830031f8:	00008067          	ret
830031fc:	00080613          	mv	a2,a6
83003200:	f1dff06f          	j	8300311c <memmove+0x38>

83003204 <_sbrk_r>:
83003204:	ff010113          	addi	sp,sp,-16
83003208:	00812423          	sw	s0,8(sp)
8300320c:	00912223          	sw	s1,4(sp)
83003210:	00050413          	mv	s0,a0
83003214:	830074b7          	lui	s1,0x83007
83003218:	00058513          	mv	a0,a1
8300321c:	00112623          	sw	ra,12(sp)
83003220:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
83003224:	00002097          	auipc	ra,0x2
83003228:	818080e7          	jalr	-2024(ra) # 83004a3c <_sbrk>
8300322c:	fff00793          	li	a5,-1
83003230:	00f50c63          	beq	a0,a5,83003248 <_sbrk_r+0x44>
83003234:	00c12083          	lw	ra,12(sp)
83003238:	00812403          	lw	s0,8(sp)
8300323c:	00412483          	lw	s1,4(sp)
83003240:	01010113          	addi	sp,sp,16
83003244:	00008067          	ret
83003248:	8984a783          	lw	a5,-1896(s1)
8300324c:	fe0784e3          	beqz	a5,83003234 <_sbrk_r+0x30>
83003250:	00c12083          	lw	ra,12(sp)
83003254:	00f42023          	sw	a5,0(s0)
83003258:	00812403          	lw	s0,8(sp)
8300325c:	00412483          	lw	s1,4(sp)
83003260:	01010113          	addi	sp,sp,16
83003264:	00008067          	ret

83003268 <_malloc_r>:
83003268:	fd010113          	addi	sp,sp,-48
8300326c:	01312e23          	sw	s3,28(sp)
83003270:	02112623          	sw	ra,44(sp)
83003274:	02812423          	sw	s0,40(sp)
83003278:	02912223          	sw	s1,36(sp)
8300327c:	03212023          	sw	s2,32(sp)
83003280:	01412c23          	sw	s4,24(sp)
83003284:	01512a23          	sw	s5,20(sp)
83003288:	01612823          	sw	s6,16(sp)
8300328c:	01712623          	sw	s7,12(sp)
83003290:	01812423          	sw	s8,8(sp)
83003294:	01912223          	sw	s9,4(sp)
83003298:	00b58793          	addi	a5,a1,11
8300329c:	01600713          	li	a4,22
830032a0:	00050993          	mv	s3,a0
830032a4:	06f76a63          	bltu	a4,a5,83003318 <_malloc_r+0xb0>
830032a8:	01000793          	li	a5,16
830032ac:	1eb7ee63          	bltu	a5,a1,830034a8 <_malloc_r+0x240>
830032b0:	00001097          	auipc	ra,0x1
830032b4:	d30080e7          	jalr	-720(ra) # 83003fe0 <__malloc_lock>
830032b8:	01000493          	li	s1,16
830032bc:	01800793          	li	a5,24
830032c0:	00200613          	li	a2,2
830032c4:	83006937          	lui	s2,0x83006
830032c8:	42890913          	addi	s2,s2,1064 # 83006428 <__BSS_END__+0xfffffb54>
830032cc:	00f907b3          	add	a5,s2,a5
830032d0:	0047a403          	lw	s0,4(a5)
830032d4:	ff878713          	addi	a4,a5,-8
830032d8:	22e40063          	beq	s0,a4,830034f8 <_malloc_r+0x290>
830032dc:	00442783          	lw	a5,4(s0)
830032e0:	00c42683          	lw	a3,12(s0)
830032e4:	00842603          	lw	a2,8(s0)
830032e8:	ffc7f793          	andi	a5,a5,-4
830032ec:	00f407b3          	add	a5,s0,a5
830032f0:	0047a703          	lw	a4,4(a5)
830032f4:	00d62623          	sw	a3,12(a2)
830032f8:	00c6a423          	sw	a2,8(a3)
830032fc:	00176713          	ori	a4,a4,1
83003300:	00098513          	mv	a0,s3
83003304:	00e7a223          	sw	a4,4(a5)
83003308:	00001097          	auipc	ra,0x1
8300330c:	cdc080e7          	jalr	-804(ra) # 83003fe4 <__malloc_unlock>
83003310:	00840513          	addi	a0,s0,8
83003314:	1a00006f          	j	830034b4 <_malloc_r+0x24c>
83003318:	ff87f493          	andi	s1,a5,-8
8300331c:	1807c663          	bltz	a5,830034a8 <_malloc_r+0x240>
83003320:	18b4e463          	bltu	s1,a1,830034a8 <_malloc_r+0x240>
83003324:	00001097          	auipc	ra,0x1
83003328:	cbc080e7          	jalr	-836(ra) # 83003fe0 <__malloc_lock>
8300332c:	1f700793          	li	a5,503
83003330:	4897f063          	bgeu	a5,s1,830037b0 <_malloc_r+0x548>
83003334:	0094d793          	srli	a5,s1,0x9
83003338:	1a078863          	beqz	a5,830034e8 <_malloc_r+0x280>
8300333c:	00400713          	li	a4,4
83003340:	3ef76463          	bltu	a4,a5,83003728 <_malloc_r+0x4c0>
83003344:	0064d793          	srli	a5,s1,0x6
83003348:	03978613          	addi	a2,a5,57
8300334c:	03878513          	addi	a0,a5,56
83003350:	00361693          	slli	a3,a2,0x3
83003354:	83006937          	lui	s2,0x83006
83003358:	42890913          	addi	s2,s2,1064 # 83006428 <__BSS_END__+0xfffffb54>
8300335c:	00d906b3          	add	a3,s2,a3
83003360:	0046a403          	lw	s0,4(a3)
83003364:	ff868693          	addi	a3,a3,-8
83003368:	02868663          	beq	a3,s0,83003394 <_malloc_r+0x12c>
8300336c:	00f00593          	li	a1,15
83003370:	0100006f          	j	83003380 <_malloc_r+0x118>
83003374:	34075463          	bgez	a4,830036bc <_malloc_r+0x454>
83003378:	00c42403          	lw	s0,12(s0)
8300337c:	00868c63          	beq	a3,s0,83003394 <_malloc_r+0x12c>
83003380:	00442783          	lw	a5,4(s0)
83003384:	ffc7f793          	andi	a5,a5,-4
83003388:	40978733          	sub	a4,a5,s1
8300338c:	fee5d4e3          	bge	a1,a4,83003374 <_malloc_r+0x10c>
83003390:	00050613          	mv	a2,a0
83003394:	01092403          	lw	s0,16(s2)
83003398:	00890893          	addi	a7,s2,8
8300339c:	17140a63          	beq	s0,a7,83003510 <_malloc_r+0x2a8>
830033a0:	00442583          	lw	a1,4(s0)
830033a4:	00f00713          	li	a4,15
830033a8:	ffc5f593          	andi	a1,a1,-4
830033ac:	409587b3          	sub	a5,a1,s1
830033b0:	42f74863          	blt	a4,a5,830037e0 <_malloc_r+0x578>
830033b4:	01192a23          	sw	a7,20(s2)
830033b8:	01192823          	sw	a7,16(s2)
830033bc:	4007d063          	bgez	a5,830037bc <_malloc_r+0x554>
830033c0:	1ff00793          	li	a5,511
830033c4:	30b7e263          	bltu	a5,a1,830036c8 <_malloc_r+0x460>
830033c8:	ff85f793          	andi	a5,a1,-8
830033cc:	00878793          	addi	a5,a5,8
830033d0:	00492503          	lw	a0,4(s2)
830033d4:	00f907b3          	add	a5,s2,a5
830033d8:	0007a683          	lw	a3,0(a5)
830033dc:	0055d593          	srli	a1,a1,0x5
830033e0:	00100713          	li	a4,1
830033e4:	00b71733          	sll	a4,a4,a1
830033e8:	00a76733          	or	a4,a4,a0
830033ec:	ff878593          	addi	a1,a5,-8
830033f0:	00b42623          	sw	a1,12(s0)
830033f4:	00d42423          	sw	a3,8(s0)
830033f8:	00e92223          	sw	a4,4(s2)
830033fc:	0087a023          	sw	s0,0(a5)
83003400:	0086a623          	sw	s0,12(a3)
83003404:	40265793          	srai	a5,a2,0x2
83003408:	00100593          	li	a1,1
8300340c:	00f595b3          	sll	a1,a1,a5
83003410:	10b76a63          	bltu	a4,a1,83003524 <_malloc_r+0x2bc>
83003414:	00e5f7b3          	and	a5,a1,a4
83003418:	02079463          	bnez	a5,83003440 <_malloc_r+0x1d8>
8300341c:	00159593          	slli	a1,a1,0x1
83003420:	ffc67613          	andi	a2,a2,-4
83003424:	00e5f7b3          	and	a5,a1,a4
83003428:	00460613          	addi	a2,a2,4
8300342c:	00079a63          	bnez	a5,83003440 <_malloc_r+0x1d8>
83003430:	00159593          	slli	a1,a1,0x1
83003434:	00e5f7b3          	and	a5,a1,a4
83003438:	00460613          	addi	a2,a2,4
8300343c:	fe078ae3          	beqz	a5,83003430 <_malloc_r+0x1c8>
83003440:	00f00813          	li	a6,15
83003444:	00361313          	slli	t1,a2,0x3
83003448:	00690333          	add	t1,s2,t1
8300344c:	00030513          	mv	a0,t1
83003450:	00c52783          	lw	a5,12(a0)
83003454:	00060e13          	mv	t3,a2
83003458:	2ef50a63          	beq	a0,a5,8300374c <_malloc_r+0x4e4>
8300345c:	0047a703          	lw	a4,4(a5)
83003460:	00078413          	mv	s0,a5
83003464:	00c7a783          	lw	a5,12(a5)
83003468:	ffc77713          	andi	a4,a4,-4
8300346c:	409706b3          	sub	a3,a4,s1
83003470:	2ed84a63          	blt	a6,a3,83003764 <_malloc_r+0x4fc>
83003474:	fe06c2e3          	bltz	a3,83003458 <_malloc_r+0x1f0>
83003478:	00e40733          	add	a4,s0,a4
8300347c:	00472683          	lw	a3,4(a4)
83003480:	00842603          	lw	a2,8(s0)
83003484:	00098513          	mv	a0,s3
83003488:	0016e693          	ori	a3,a3,1
8300348c:	00d72223          	sw	a3,4(a4)
83003490:	00f62623          	sw	a5,12(a2)
83003494:	00c7a423          	sw	a2,8(a5)
83003498:	00001097          	auipc	ra,0x1
8300349c:	b4c080e7          	jalr	-1204(ra) # 83003fe4 <__malloc_unlock>
830034a0:	00840513          	addi	a0,s0,8
830034a4:	0100006f          	j	830034b4 <_malloc_r+0x24c>
830034a8:	00c00793          	li	a5,12
830034ac:	00f9a023          	sw	a5,0(s3)
830034b0:	00000513          	li	a0,0
830034b4:	02c12083          	lw	ra,44(sp)
830034b8:	02812403          	lw	s0,40(sp)
830034bc:	02412483          	lw	s1,36(sp)
830034c0:	02012903          	lw	s2,32(sp)
830034c4:	01c12983          	lw	s3,28(sp)
830034c8:	01812a03          	lw	s4,24(sp)
830034cc:	01412a83          	lw	s5,20(sp)
830034d0:	01012b03          	lw	s6,16(sp)
830034d4:	00c12b83          	lw	s7,12(sp)
830034d8:	00812c03          	lw	s8,8(sp)
830034dc:	00412c83          	lw	s9,4(sp)
830034e0:	03010113          	addi	sp,sp,48
830034e4:	00008067          	ret
830034e8:	20000693          	li	a3,512
830034ec:	04000613          	li	a2,64
830034f0:	03f00513          	li	a0,63
830034f4:	e61ff06f          	j	83003354 <_malloc_r+0xec>
830034f8:	00c7a403          	lw	s0,12(a5)
830034fc:	00260613          	addi	a2,a2,2
83003500:	dc879ee3          	bne	a5,s0,830032dc <_malloc_r+0x74>
83003504:	01092403          	lw	s0,16(s2)
83003508:	00890893          	addi	a7,s2,8
8300350c:	e9141ae3          	bne	s0,a7,830033a0 <_malloc_r+0x138>
83003510:	00492703          	lw	a4,4(s2)
83003514:	40265793          	srai	a5,a2,0x2
83003518:	00100593          	li	a1,1
8300351c:	00f595b3          	sll	a1,a1,a5
83003520:	eeb77ae3          	bgeu	a4,a1,83003414 <_malloc_r+0x1ac>
83003524:	00892403          	lw	s0,8(s2)
83003528:	00442b03          	lw	s6,4(s0)
8300352c:	ffcb7b13          	andi	s6,s6,-4
83003530:	009b6863          	bltu	s6,s1,83003540 <_malloc_r+0x2d8>
83003534:	409b07b3          	sub	a5,s6,s1
83003538:	00f00713          	li	a4,15
8300353c:	14f74a63          	blt	a4,a5,83003690 <_malloc_r+0x428>
83003540:	830077b7          	lui	a5,0x83007
83003544:	83007cb7          	lui	s9,0x83007
83003548:	8a47aa83          	lw	s5,-1884(a5) # 830068a4 <__BSS_END__+0xffffffd0>
8300354c:	88cca703          	lw	a4,-1908(s9) # 8300688c <__BSS_END__+0xffffffb8>
83003550:	fff00793          	li	a5,-1
83003554:	01640a33          	add	s4,s0,s6
83003558:	01548ab3          	add	s5,s1,s5
8300355c:	36f70863          	beq	a4,a5,830038cc <_malloc_r+0x664>
83003560:	000017b7          	lui	a5,0x1
83003564:	00f78793          	addi	a5,a5,15 # 100f <main-0x82fff0a5>
83003568:	00fa8ab3          	add	s5,s5,a5
8300356c:	fffff7b7          	lui	a5,0xfffff
83003570:	00fafab3          	and	s5,s5,a5
83003574:	000a8593          	mv	a1,s5
83003578:	00098513          	mv	a0,s3
8300357c:	00000097          	auipc	ra,0x0
83003580:	c88080e7          	jalr	-888(ra) # 83003204 <_sbrk_r>
83003584:	fff00793          	li	a5,-1
83003588:	00050b93          	mv	s7,a0
8300358c:	2af50663          	beq	a0,a5,83003838 <_malloc_r+0x5d0>
83003590:	2b456263          	bltu	a0,s4,83003834 <_malloc_r+0x5cc>
83003594:	83007c37          	lui	s8,0x83007
83003598:	8acc0c13          	addi	s8,s8,-1876 # 830068ac <__BSS_END__+0xffffffd8>
8300359c:	000c2583          	lw	a1,0(s8)
830035a0:	00ba85b3          	add	a1,s5,a1
830035a4:	00bc2023          	sw	a1,0(s8)
830035a8:	00058793          	mv	a5,a1
830035ac:	3caa0263          	beq	s4,a0,83003970 <_malloc_r+0x708>
830035b0:	88cca683          	lw	a3,-1908(s9)
830035b4:	fff00713          	li	a4,-1
830035b8:	3ce68a63          	beq	a3,a4,8300398c <_malloc_r+0x724>
830035bc:	414b8a33          	sub	s4,s7,s4
830035c0:	00fa07b3          	add	a5,s4,a5
830035c4:	00fc2023          	sw	a5,0(s8)
830035c8:	007bfc93          	andi	s9,s7,7
830035cc:	320c8263          	beqz	s9,830038f0 <_malloc_r+0x688>
830035d0:	000017b7          	lui	a5,0x1
830035d4:	419b8bb3          	sub	s7,s7,s9
830035d8:	00878593          	addi	a1,a5,8 # 1008 <main-0x82fff0ac>
830035dc:	008b8b93          	addi	s7,s7,8
830035e0:	419585b3          	sub	a1,a1,s9
830035e4:	015b8ab3          	add	s5,s7,s5
830035e8:	fff78793          	addi	a5,a5,-1
830035ec:	415585b3          	sub	a1,a1,s5
830035f0:	00f5fa33          	and	s4,a1,a5
830035f4:	000a0593          	mv	a1,s4
830035f8:	00098513          	mv	a0,s3
830035fc:	00000097          	auipc	ra,0x0
83003600:	c08080e7          	jalr	-1016(ra) # 83003204 <_sbrk_r>
83003604:	fff00793          	li	a5,-1
83003608:	3cf50c63          	beq	a0,a5,830039e0 <_malloc_r+0x778>
8300360c:	41750533          	sub	a0,a0,s7
83003610:	01450ab3          	add	s5,a0,s4
83003614:	000c2783          	lw	a5,0(s8)
83003618:	01792423          	sw	s7,8(s2)
8300361c:	001aea93          	ori	s5,s5,1
83003620:	00fa05b3          	add	a1,s4,a5
83003624:	00bc2023          	sw	a1,0(s8)
83003628:	015ba223          	sw	s5,4(s7)
8300362c:	37240463          	beq	s0,s2,83003994 <_malloc_r+0x72c>
83003630:	00f00693          	li	a3,15
83003634:	3766f463          	bgeu	a3,s6,8300399c <_malloc_r+0x734>
83003638:	00442703          	lw	a4,4(s0)
8300363c:	ff4b0793          	addi	a5,s6,-12
83003640:	ff87f793          	andi	a5,a5,-8
83003644:	00177713          	andi	a4,a4,1
83003648:	00f76733          	or	a4,a4,a5
8300364c:	00e42223          	sw	a4,4(s0)
83003650:	00500613          	li	a2,5
83003654:	00f40733          	add	a4,s0,a5
83003658:	00c72223          	sw	a2,4(a4)
8300365c:	00c72423          	sw	a2,8(a4)
83003660:	38f6ea63          	bltu	a3,a5,830039f4 <_malloc_r+0x78c>
83003664:	004baa83          	lw	s5,4(s7)
83003668:	000b8413          	mv	s0,s7
8300366c:	830077b7          	lui	a5,0x83007
83003670:	8a07a703          	lw	a4,-1888(a5) # 830068a0 <__BSS_END__+0xffffffcc>
83003674:	00b77463          	bgeu	a4,a1,8300367c <_malloc_r+0x414>
83003678:	8ab7a023          	sw	a1,-1888(a5)
8300367c:	830077b7          	lui	a5,0x83007
83003680:	89c7a703          	lw	a4,-1892(a5) # 8300689c <__BSS_END__+0xffffffc8>
83003684:	1ab77e63          	bgeu	a4,a1,83003840 <_malloc_r+0x5d8>
83003688:	88b7ae23          	sw	a1,-1892(a5)
8300368c:	1b40006f          	j	83003840 <_malloc_r+0x5d8>
83003690:	0014e713          	ori	a4,s1,1
83003694:	00e42223          	sw	a4,4(s0)
83003698:	009404b3          	add	s1,s0,s1
8300369c:	00992423          	sw	s1,8(s2)
830036a0:	0017e793          	ori	a5,a5,1
830036a4:	00098513          	mv	a0,s3
830036a8:	00f4a223          	sw	a5,4(s1)
830036ac:	00001097          	auipc	ra,0x1
830036b0:	938080e7          	jalr	-1736(ra) # 83003fe4 <__malloc_unlock>
830036b4:	00840513          	addi	a0,s0,8
830036b8:	dfdff06f          	j	830034b4 <_malloc_r+0x24c>
830036bc:	00c42683          	lw	a3,12(s0)
830036c0:	00842603          	lw	a2,8(s0)
830036c4:	c29ff06f          	j	830032ec <_malloc_r+0x84>
830036c8:	0095d793          	srli	a5,a1,0x9
830036cc:	00400713          	li	a4,4
830036d0:	14f77863          	bgeu	a4,a5,83003820 <_malloc_r+0x5b8>
830036d4:	01400713          	li	a4,20
830036d8:	24f76463          	bltu	a4,a5,83003920 <_malloc_r+0x6b8>
830036dc:	05c78693          	addi	a3,a5,92
830036e0:	05b78713          	addi	a4,a5,91
830036e4:	00369693          	slli	a3,a3,0x3
830036e8:	00d906b3          	add	a3,s2,a3
830036ec:	0006a783          	lw	a5,0(a3)
830036f0:	ff868693          	addi	a3,a3,-8
830036f4:	1ef68063          	beq	a3,a5,830038d4 <_malloc_r+0x66c>
830036f8:	0047a703          	lw	a4,4(a5)
830036fc:	ffc77713          	andi	a4,a4,-4
83003700:	00e5f663          	bgeu	a1,a4,8300370c <_malloc_r+0x4a4>
83003704:	0087a783          	lw	a5,8(a5)
83003708:	fef698e3          	bne	a3,a5,830036f8 <_malloc_r+0x490>
8300370c:	00c7a683          	lw	a3,12(a5)
83003710:	00492703          	lw	a4,4(s2)
83003714:	00d42623          	sw	a3,12(s0)
83003718:	00f42423          	sw	a5,8(s0)
8300371c:	0086a423          	sw	s0,8(a3)
83003720:	0087a623          	sw	s0,12(a5)
83003724:	ce1ff06f          	j	83003404 <_malloc_r+0x19c>
83003728:	01400713          	li	a4,20
8300372c:	12f77e63          	bgeu	a4,a5,83003868 <_malloc_r+0x600>
83003730:	05400713          	li	a4,84
83003734:	20f76463          	bltu	a4,a5,8300393c <_malloc_r+0x6d4>
83003738:	00c4d793          	srli	a5,s1,0xc
8300373c:	06f78613          	addi	a2,a5,111
83003740:	06e78513          	addi	a0,a5,110
83003744:	00361693          	slli	a3,a2,0x3
83003748:	c0dff06f          	j	83003354 <_malloc_r+0xec>
8300374c:	001e0e13          	addi	t3,t3,1
83003750:	003e7793          	andi	a5,t3,3
83003754:	00850513          	addi	a0,a0,8
83003758:	12078663          	beqz	a5,83003884 <_malloc_r+0x61c>
8300375c:	00c52783          	lw	a5,12(a0)
83003760:	cf9ff06f          	j	83003458 <_malloc_r+0x1f0>
83003764:	00842603          	lw	a2,8(s0)
83003768:	0014e593          	ori	a1,s1,1
8300376c:	00b42223          	sw	a1,4(s0)
83003770:	00f62623          	sw	a5,12(a2)
83003774:	00c7a423          	sw	a2,8(a5)
83003778:	009404b3          	add	s1,s0,s1
8300377c:	00992a23          	sw	s1,20(s2)
83003780:	00992823          	sw	s1,16(s2)
83003784:	0016e793          	ori	a5,a3,1
83003788:	0114a623          	sw	a7,12(s1)
8300378c:	0114a423          	sw	a7,8(s1)
83003790:	00f4a223          	sw	a5,4(s1)
83003794:	00e40733          	add	a4,s0,a4
83003798:	00098513          	mv	a0,s3
8300379c:	00d72023          	sw	a3,0(a4)
830037a0:	00001097          	auipc	ra,0x1
830037a4:	844080e7          	jalr	-1980(ra) # 83003fe4 <__malloc_unlock>
830037a8:	00840513          	addi	a0,s0,8
830037ac:	d09ff06f          	j	830034b4 <_malloc_r+0x24c>
830037b0:	0034d613          	srli	a2,s1,0x3
830037b4:	00848793          	addi	a5,s1,8
830037b8:	b0dff06f          	j	830032c4 <_malloc_r+0x5c>
830037bc:	00b405b3          	add	a1,s0,a1
830037c0:	0045a783          	lw	a5,4(a1)
830037c4:	00098513          	mv	a0,s3
830037c8:	0017e793          	ori	a5,a5,1
830037cc:	00f5a223          	sw	a5,4(a1)
830037d0:	00001097          	auipc	ra,0x1
830037d4:	814080e7          	jalr	-2028(ra) # 83003fe4 <__malloc_unlock>
830037d8:	00840513          	addi	a0,s0,8
830037dc:	cd9ff06f          	j	830034b4 <_malloc_r+0x24c>
830037e0:	0014e713          	ori	a4,s1,1
830037e4:	00e42223          	sw	a4,4(s0)
830037e8:	009404b3          	add	s1,s0,s1
830037ec:	00992a23          	sw	s1,20(s2)
830037f0:	00992823          	sw	s1,16(s2)
830037f4:	0017e713          	ori	a4,a5,1
830037f8:	0114a623          	sw	a7,12(s1)
830037fc:	0114a423          	sw	a7,8(s1)
83003800:	00e4a223          	sw	a4,4(s1)
83003804:	00b405b3          	add	a1,s0,a1
83003808:	00098513          	mv	a0,s3
8300380c:	00f5a023          	sw	a5,0(a1)
83003810:	00000097          	auipc	ra,0x0
83003814:	7d4080e7          	jalr	2004(ra) # 83003fe4 <__malloc_unlock>
83003818:	00840513          	addi	a0,s0,8
8300381c:	c99ff06f          	j	830034b4 <_malloc_r+0x24c>
83003820:	0065d793          	srli	a5,a1,0x6
83003824:	03978693          	addi	a3,a5,57
83003828:	03878713          	addi	a4,a5,56
8300382c:	00369693          	slli	a3,a3,0x3
83003830:	eb9ff06f          	j	830036e8 <_malloc_r+0x480>
83003834:	13240263          	beq	s0,s2,83003958 <_malloc_r+0x6f0>
83003838:	00892403          	lw	s0,8(s2)
8300383c:	00442a83          	lw	s5,4(s0)
83003840:	ffcafa93          	andi	s5,s5,-4
83003844:	409a87b3          	sub	a5,s5,s1
83003848:	009ae663          	bltu	s5,s1,83003854 <_malloc_r+0x5ec>
8300384c:	00f00713          	li	a4,15
83003850:	e4f740e3          	blt	a4,a5,83003690 <_malloc_r+0x428>
83003854:	00098513          	mv	a0,s3
83003858:	00000097          	auipc	ra,0x0
8300385c:	78c080e7          	jalr	1932(ra) # 83003fe4 <__malloc_unlock>
83003860:	00000513          	li	a0,0
83003864:	c51ff06f          	j	830034b4 <_malloc_r+0x24c>
83003868:	05c78613          	addi	a2,a5,92
8300386c:	05b78513          	addi	a0,a5,91
83003870:	00361693          	slli	a3,a2,0x3
83003874:	ae1ff06f          	j	83003354 <_malloc_r+0xec>
83003878:	00832783          	lw	a5,8(t1)
8300387c:	fff60613          	addi	a2,a2,-1
83003880:	1c679663          	bne	a5,t1,83003a4c <_malloc_r+0x7e4>
83003884:	00367793          	andi	a5,a2,3
83003888:	ff830313          	addi	t1,t1,-8
8300388c:	fe0796e3          	bnez	a5,83003878 <_malloc_r+0x610>
83003890:	00492703          	lw	a4,4(s2)
83003894:	fff5c793          	not	a5,a1
83003898:	00e7f7b3          	and	a5,a5,a4
8300389c:	00f92223          	sw	a5,4(s2)
830038a0:	00159593          	slli	a1,a1,0x1
830038a4:	c8b7e0e3          	bltu	a5,a1,83003524 <_malloc_r+0x2bc>
830038a8:	c6058ee3          	beqz	a1,83003524 <_malloc_r+0x2bc>
830038ac:	00f5f733          	and	a4,a1,a5
830038b0:	00071a63          	bnez	a4,830038c4 <_malloc_r+0x65c>
830038b4:	00159593          	slli	a1,a1,0x1
830038b8:	00f5f733          	and	a4,a1,a5
830038bc:	004e0e13          	addi	t3,t3,4
830038c0:	fe070ae3          	beqz	a4,830038b4 <_malloc_r+0x64c>
830038c4:	000e0613          	mv	a2,t3
830038c8:	b7dff06f          	j	83003444 <_malloc_r+0x1dc>
830038cc:	010a8a93          	addi	s5,s5,16
830038d0:	ca5ff06f          	j	83003574 <_malloc_r+0x30c>
830038d4:	00492503          	lw	a0,4(s2)
830038d8:	40275593          	srai	a1,a4,0x2
830038dc:	00100713          	li	a4,1
830038e0:	00b71733          	sll	a4,a4,a1
830038e4:	00a76733          	or	a4,a4,a0
830038e8:	00e92223          	sw	a4,4(s2)
830038ec:	e29ff06f          	j	83003714 <_malloc_r+0x4ac>
830038f0:	015b85b3          	add	a1,s7,s5
830038f4:	40b005b3          	neg	a1,a1
830038f8:	01459593          	slli	a1,a1,0x14
830038fc:	0145da13          	srli	s4,a1,0x14
83003900:	000a0593          	mv	a1,s4
83003904:	00098513          	mv	a0,s3
83003908:	00000097          	auipc	ra,0x0
8300390c:	8fc080e7          	jalr	-1796(ra) # 83003204 <_sbrk_r>
83003910:	fff00793          	li	a5,-1
83003914:	cef51ce3          	bne	a0,a5,8300360c <_malloc_r+0x3a4>
83003918:	00000a13          	li	s4,0
8300391c:	cf9ff06f          	j	83003614 <_malloc_r+0x3ac>
83003920:	05400713          	li	a4,84
83003924:	08f76263          	bltu	a4,a5,830039a8 <_malloc_r+0x740>
83003928:	00c5d793          	srli	a5,a1,0xc
8300392c:	06f78693          	addi	a3,a5,111
83003930:	06e78713          	addi	a4,a5,110
83003934:	00369693          	slli	a3,a3,0x3
83003938:	db1ff06f          	j	830036e8 <_malloc_r+0x480>
8300393c:	15400713          	li	a4,340
83003940:	08f76263          	bltu	a4,a5,830039c4 <_malloc_r+0x75c>
83003944:	00f4d793          	srli	a5,s1,0xf
83003948:	07878613          	addi	a2,a5,120
8300394c:	07778513          	addi	a0,a5,119
83003950:	00361693          	slli	a3,a2,0x3
83003954:	a01ff06f          	j	83003354 <_malloc_r+0xec>
83003958:	83007c37          	lui	s8,0x83007
8300395c:	8acc0c13          	addi	s8,s8,-1876 # 830068ac <__BSS_END__+0xffffffd8>
83003960:	000c2783          	lw	a5,0(s8)
83003964:	00fa87b3          	add	a5,s5,a5
83003968:	00fc2023          	sw	a5,0(s8)
8300396c:	c45ff06f          	j	830035b0 <_malloc_r+0x348>
83003970:	014a1713          	slli	a4,s4,0x14
83003974:	c2071ee3          	bnez	a4,830035b0 <_malloc_r+0x348>
83003978:	00892403          	lw	s0,8(s2)
8300397c:	015b0ab3          	add	s5,s6,s5
83003980:	001aea93          	ori	s5,s5,1
83003984:	01542223          	sw	s5,4(s0)
83003988:	ce5ff06f          	j	8300366c <_malloc_r+0x404>
8300398c:	897ca623          	sw	s7,-1908(s9)
83003990:	c39ff06f          	j	830035c8 <_malloc_r+0x360>
83003994:	000b8413          	mv	s0,s7
83003998:	cd5ff06f          	j	8300366c <_malloc_r+0x404>
8300399c:	00100793          	li	a5,1
830039a0:	00fba223          	sw	a5,4(s7)
830039a4:	eb1ff06f          	j	83003854 <_malloc_r+0x5ec>
830039a8:	15400713          	li	a4,340
830039ac:	06f76463          	bltu	a4,a5,83003a14 <_malloc_r+0x7ac>
830039b0:	00f5d793          	srli	a5,a1,0xf
830039b4:	07878693          	addi	a3,a5,120
830039b8:	07778713          	addi	a4,a5,119
830039bc:	00369693          	slli	a3,a3,0x3
830039c0:	d29ff06f          	j	830036e8 <_malloc_r+0x480>
830039c4:	55400713          	li	a4,1364
830039c8:	06f76463          	bltu	a4,a5,83003a30 <_malloc_r+0x7c8>
830039cc:	0124d793          	srli	a5,s1,0x12
830039d0:	07d78613          	addi	a2,a5,125
830039d4:	07c78513          	addi	a0,a5,124
830039d8:	00361693          	slli	a3,a2,0x3
830039dc:	979ff06f          	j	83003354 <_malloc_r+0xec>
830039e0:	ff8c8c93          	addi	s9,s9,-8
830039e4:	019a8ab3          	add	s5,s5,s9
830039e8:	417a8ab3          	sub	s5,s5,s7
830039ec:	00000a13          	li	s4,0
830039f0:	c25ff06f          	j	83003614 <_malloc_r+0x3ac>
830039f4:	00840593          	addi	a1,s0,8
830039f8:	00098513          	mv	a0,s3
830039fc:	ffffe097          	auipc	ra,0xffffe
83003a00:	32c080e7          	jalr	812(ra) # 83001d28 <_free_r>
83003a04:	00892403          	lw	s0,8(s2)
83003a08:	000c2583          	lw	a1,0(s8)
83003a0c:	00442a83          	lw	s5,4(s0)
83003a10:	c5dff06f          	j	8300366c <_malloc_r+0x404>
83003a14:	55400713          	li	a4,1364
83003a18:	02f76463          	bltu	a4,a5,83003a40 <_malloc_r+0x7d8>
83003a1c:	0125d793          	srli	a5,a1,0x12
83003a20:	07d78693          	addi	a3,a5,125
83003a24:	07c78713          	addi	a4,a5,124
83003a28:	00369693          	slli	a3,a3,0x3
83003a2c:	cbdff06f          	j	830036e8 <_malloc_r+0x480>
83003a30:	3f800693          	li	a3,1016
83003a34:	07f00613          	li	a2,127
83003a38:	07e00513          	li	a0,126
83003a3c:	919ff06f          	j	83003354 <_malloc_r+0xec>
83003a40:	3f800693          	li	a3,1016
83003a44:	07e00713          	li	a4,126
83003a48:	ca1ff06f          	j	830036e8 <_malloc_r+0x480>
83003a4c:	00492783          	lw	a5,4(s2)
83003a50:	e51ff06f          	j	830038a0 <_malloc_r+0x638>

83003a54 <_realloc_r>:
83003a54:	fd010113          	addi	sp,sp,-48
83003a58:	03212023          	sw	s2,32(sp)
83003a5c:	02112623          	sw	ra,44(sp)
83003a60:	02812423          	sw	s0,40(sp)
83003a64:	02912223          	sw	s1,36(sp)
83003a68:	01312e23          	sw	s3,28(sp)
83003a6c:	01412c23          	sw	s4,24(sp)
83003a70:	01512a23          	sw	s5,20(sp)
83003a74:	01612823          	sw	s6,16(sp)
83003a78:	01712623          	sw	s7,12(sp)
83003a7c:	01812423          	sw	s8,8(sp)
83003a80:	00060913          	mv	s2,a2
83003a84:	1e058063          	beqz	a1,83003c64 <_realloc_r+0x210>
83003a88:	00058413          	mv	s0,a1
83003a8c:	00050993          	mv	s3,a0
83003a90:	00000097          	auipc	ra,0x0
83003a94:	550080e7          	jalr	1360(ra) # 83003fe0 <__malloc_lock>
83003a98:	00b90493          	addi	s1,s2,11
83003a9c:	01600713          	li	a4,22
83003aa0:	ffc42783          	lw	a5,-4(s0)
83003aa4:	10977263          	bgeu	a4,s1,83003ba8 <_realloc_r+0x154>
83003aa8:	ff84f493          	andi	s1,s1,-8
83003aac:	00048713          	mv	a4,s1
83003ab0:	1004c263          	bltz	s1,83003bb4 <_realloc_r+0x160>
83003ab4:	1124e063          	bltu	s1,s2,83003bb4 <_realloc_r+0x160>
83003ab8:	ffc7fa13          	andi	s4,a5,-4
83003abc:	ff840a93          	addi	s5,s0,-8
83003ac0:	14ea5463          	bge	s4,a4,83003c08 <_realloc_r+0x1b4>
83003ac4:	830066b7          	lui	a3,0x83006
83003ac8:	42868c13          	addi	s8,a3,1064 # 83006428 <__BSS_END__+0xfffffb54>
83003acc:	008c2583          	lw	a1,8(s8)
83003ad0:	014a8633          	add	a2,s5,s4
83003ad4:	00462683          	lw	a3,4(a2)
83003ad8:	1ec58c63          	beq	a1,a2,83003cd0 <_realloc_r+0x27c>
83003adc:	ffe6f593          	andi	a1,a3,-2
83003ae0:	00b605b3          	add	a1,a2,a1
83003ae4:	0045a583          	lw	a1,4(a1)
83003ae8:	0015f593          	andi	a1,a1,1
83003aec:	14059e63          	bnez	a1,83003c48 <_realloc_r+0x1f4>
83003af0:	ffc6f693          	andi	a3,a3,-4
83003af4:	00da05b3          	add	a1,s4,a3
83003af8:	0ee5de63          	bge	a1,a4,83003bf4 <_realloc_r+0x1a0>
83003afc:	0017f793          	andi	a5,a5,1
83003b00:	02079463          	bnez	a5,83003b28 <_realloc_r+0xd4>
83003b04:	ff842b83          	lw	s7,-8(s0)
83003b08:	417a8bb3          	sub	s7,s5,s7
83003b0c:	004ba783          	lw	a5,4(s7)
83003b10:	ffc7f793          	andi	a5,a5,-4
83003b14:	00d786b3          	add	a3,a5,a3
83003b18:	01468b33          	add	s6,a3,s4
83003b1c:	38eb5263          	bge	s6,a4,83003ea0 <_realloc_r+0x44c>
83003b20:	00fa0b33          	add	s6,s4,a5
83003b24:	2eeb5263          	bge	s6,a4,83003e08 <_realloc_r+0x3b4>
83003b28:	00090593          	mv	a1,s2
83003b2c:	00098513          	mv	a0,s3
83003b30:	fffff097          	auipc	ra,0xfffff
83003b34:	738080e7          	jalr	1848(ra) # 83003268 <_malloc_r>
83003b38:	00050913          	mv	s2,a0
83003b3c:	04050e63          	beqz	a0,83003b98 <_realloc_r+0x144>
83003b40:	ffc42783          	lw	a5,-4(s0)
83003b44:	ff850713          	addi	a4,a0,-8
83003b48:	ffe7f793          	andi	a5,a5,-2
83003b4c:	00fa87b3          	add	a5,s5,a5
83003b50:	2ae78463          	beq	a5,a4,83003df8 <_realloc_r+0x3a4>
83003b54:	ffca0613          	addi	a2,s4,-4
83003b58:	02400793          	li	a5,36
83003b5c:	32c7ea63          	bltu	a5,a2,83003e90 <_realloc_r+0x43c>
83003b60:	01300713          	li	a4,19
83003b64:	22c76c63          	bltu	a4,a2,83003d9c <_realloc_r+0x348>
83003b68:	00050793          	mv	a5,a0
83003b6c:	00040713          	mv	a4,s0
83003b70:	00072683          	lw	a3,0(a4)
83003b74:	00d7a023          	sw	a3,0(a5)
83003b78:	00472683          	lw	a3,4(a4)
83003b7c:	00d7a223          	sw	a3,4(a5)
83003b80:	00872703          	lw	a4,8(a4)
83003b84:	00e7a423          	sw	a4,8(a5)
83003b88:	00040593          	mv	a1,s0
83003b8c:	00098513          	mv	a0,s3
83003b90:	ffffe097          	auipc	ra,0xffffe
83003b94:	198080e7          	jalr	408(ra) # 83001d28 <_free_r>
83003b98:	00098513          	mv	a0,s3
83003b9c:	00000097          	auipc	ra,0x0
83003ba0:	448080e7          	jalr	1096(ra) # 83003fe4 <__malloc_unlock>
83003ba4:	01c0006f          	j	83003bc0 <_realloc_r+0x16c>
83003ba8:	01000493          	li	s1,16
83003bac:	01000713          	li	a4,16
83003bb0:	f124f4e3          	bgeu	s1,s2,83003ab8 <_realloc_r+0x64>
83003bb4:	00c00793          	li	a5,12
83003bb8:	00f9a023          	sw	a5,0(s3)
83003bbc:	00000913          	li	s2,0
83003bc0:	02c12083          	lw	ra,44(sp)
83003bc4:	02812403          	lw	s0,40(sp)
83003bc8:	02412483          	lw	s1,36(sp)
83003bcc:	01c12983          	lw	s3,28(sp)
83003bd0:	01812a03          	lw	s4,24(sp)
83003bd4:	01412a83          	lw	s5,20(sp)
83003bd8:	01012b03          	lw	s6,16(sp)
83003bdc:	00c12b83          	lw	s7,12(sp)
83003be0:	00812c03          	lw	s8,8(sp)
83003be4:	00090513          	mv	a0,s2
83003be8:	02012903          	lw	s2,32(sp)
83003bec:	03010113          	addi	sp,sp,48
83003bf0:	00008067          	ret
83003bf4:	00c62783          	lw	a5,12(a2)
83003bf8:	00862703          	lw	a4,8(a2)
83003bfc:	00058a13          	mv	s4,a1
83003c00:	00f72623          	sw	a5,12(a4)
83003c04:	00e7a423          	sw	a4,8(a5)
83003c08:	004aa783          	lw	a5,4(s5)
83003c0c:	409a06b3          	sub	a3,s4,s1
83003c10:	00f00613          	li	a2,15
83003c14:	0017f793          	andi	a5,a5,1
83003c18:	014a8733          	add	a4,s5,s4
83003c1c:	08d66063          	bltu	a2,a3,83003c9c <_realloc_r+0x248>
83003c20:	00fa67b3          	or	a5,s4,a5
83003c24:	00faa223          	sw	a5,4(s5)
83003c28:	00472783          	lw	a5,4(a4)
83003c2c:	0017e793          	ori	a5,a5,1
83003c30:	00f72223          	sw	a5,4(a4)
83003c34:	00098513          	mv	a0,s3
83003c38:	00000097          	auipc	ra,0x0
83003c3c:	3ac080e7          	jalr	940(ra) # 83003fe4 <__malloc_unlock>
83003c40:	00040913          	mv	s2,s0
83003c44:	f7dff06f          	j	83003bc0 <_realloc_r+0x16c>
83003c48:	0017f793          	andi	a5,a5,1
83003c4c:	ec079ee3          	bnez	a5,83003b28 <_realloc_r+0xd4>
83003c50:	ff842b83          	lw	s7,-8(s0)
83003c54:	417a8bb3          	sub	s7,s5,s7
83003c58:	004ba783          	lw	a5,4(s7)
83003c5c:	ffc7f793          	andi	a5,a5,-4
83003c60:	ec1ff06f          	j	83003b20 <_realloc_r+0xcc>
83003c64:	02812403          	lw	s0,40(sp)
83003c68:	02c12083          	lw	ra,44(sp)
83003c6c:	02412483          	lw	s1,36(sp)
83003c70:	02012903          	lw	s2,32(sp)
83003c74:	01c12983          	lw	s3,28(sp)
83003c78:	01812a03          	lw	s4,24(sp)
83003c7c:	01412a83          	lw	s5,20(sp)
83003c80:	01012b03          	lw	s6,16(sp)
83003c84:	00c12b83          	lw	s7,12(sp)
83003c88:	00812c03          	lw	s8,8(sp)
83003c8c:	00060593          	mv	a1,a2
83003c90:	03010113          	addi	sp,sp,48
83003c94:	fffff317          	auipc	t1,0xfffff
83003c98:	5d430067          	jr	1492(t1) # 83003268 <_malloc_r>
83003c9c:	0097e7b3          	or	a5,a5,s1
83003ca0:	00faa223          	sw	a5,4(s5)
83003ca4:	009a85b3          	add	a1,s5,s1
83003ca8:	0016e693          	ori	a3,a3,1
83003cac:	00d5a223          	sw	a3,4(a1)
83003cb0:	00472783          	lw	a5,4(a4)
83003cb4:	00858593          	addi	a1,a1,8
83003cb8:	00098513          	mv	a0,s3
83003cbc:	0017e793          	ori	a5,a5,1
83003cc0:	00f72223          	sw	a5,4(a4)
83003cc4:	ffffe097          	auipc	ra,0xffffe
83003cc8:	064080e7          	jalr	100(ra) # 83001d28 <_free_r>
83003ccc:	f69ff06f          	j	83003c34 <_realloc_r+0x1e0>
83003cd0:	ffc6f693          	andi	a3,a3,-4
83003cd4:	00da0633          	add	a2,s4,a3
83003cd8:	01048593          	addi	a1,s1,16
83003cdc:	0eb65263          	bge	a2,a1,83003dc0 <_realloc_r+0x36c>
83003ce0:	0017f793          	andi	a5,a5,1
83003ce4:	e40792e3          	bnez	a5,83003b28 <_realloc_r+0xd4>
83003ce8:	ff842b83          	lw	s7,-8(s0)
83003cec:	417a8bb3          	sub	s7,s5,s7
83003cf0:	004ba783          	lw	a5,4(s7)
83003cf4:	ffc7f793          	andi	a5,a5,-4
83003cf8:	00d786b3          	add	a3,a5,a3
83003cfc:	01468b33          	add	s6,a3,s4
83003d00:	e2bb40e3          	blt	s6,a1,83003b20 <_realloc_r+0xcc>
83003d04:	00cba783          	lw	a5,12(s7)
83003d08:	008ba703          	lw	a4,8(s7)
83003d0c:	ffca0613          	addi	a2,s4,-4
83003d10:	02400693          	li	a3,36
83003d14:	00f72623          	sw	a5,12(a4)
83003d18:	00e7a423          	sw	a4,8(a5)
83003d1c:	008b8913          	addi	s2,s7,8
83003d20:	26c6e863          	bltu	a3,a2,83003f90 <_realloc_r+0x53c>
83003d24:	01300713          	li	a4,19
83003d28:	00090793          	mv	a5,s2
83003d2c:	02c77263          	bgeu	a4,a2,83003d50 <_realloc_r+0x2fc>
83003d30:	00042703          	lw	a4,0(s0)
83003d34:	01b00793          	li	a5,27
83003d38:	00eba423          	sw	a4,8(s7)
83003d3c:	00442703          	lw	a4,4(s0)
83003d40:	00eba623          	sw	a4,12(s7)
83003d44:	26c7e063          	bltu	a5,a2,83003fa4 <_realloc_r+0x550>
83003d48:	00840413          	addi	s0,s0,8
83003d4c:	010b8793          	addi	a5,s7,16
83003d50:	00042703          	lw	a4,0(s0)
83003d54:	00e7a023          	sw	a4,0(a5)
83003d58:	00442703          	lw	a4,4(s0)
83003d5c:	00e7a223          	sw	a4,4(a5)
83003d60:	00842703          	lw	a4,8(s0)
83003d64:	00e7a423          	sw	a4,8(a5)
83003d68:	009b8733          	add	a4,s7,s1
83003d6c:	409b07b3          	sub	a5,s6,s1
83003d70:	00ec2423          	sw	a4,8(s8)
83003d74:	0017e793          	ori	a5,a5,1
83003d78:	00f72223          	sw	a5,4(a4)
83003d7c:	004ba783          	lw	a5,4(s7)
83003d80:	00098513          	mv	a0,s3
83003d84:	0017f793          	andi	a5,a5,1
83003d88:	0097e7b3          	or	a5,a5,s1
83003d8c:	00fba223          	sw	a5,4(s7)
83003d90:	00000097          	auipc	ra,0x0
83003d94:	254080e7          	jalr	596(ra) # 83003fe4 <__malloc_unlock>
83003d98:	e29ff06f          	j	83003bc0 <_realloc_r+0x16c>
83003d9c:	00042683          	lw	a3,0(s0)
83003da0:	01b00713          	li	a4,27
83003da4:	00d52023          	sw	a3,0(a0)
83003da8:	00442683          	lw	a3,4(s0)
83003dac:	00d52223          	sw	a3,4(a0)
83003db0:	18c76c63          	bltu	a4,a2,83003f48 <_realloc_r+0x4f4>
83003db4:	00840713          	addi	a4,s0,8
83003db8:	00850793          	addi	a5,a0,8
83003dbc:	db5ff06f          	j	83003b70 <_realloc_r+0x11c>
83003dc0:	009a8ab3          	add	s5,s5,s1
83003dc4:	409607b3          	sub	a5,a2,s1
83003dc8:	015c2423          	sw	s5,8(s8)
83003dcc:	0017e793          	ori	a5,a5,1
83003dd0:	00faa223          	sw	a5,4(s5)
83003dd4:	ffc42783          	lw	a5,-4(s0)
83003dd8:	00098513          	mv	a0,s3
83003ddc:	00040913          	mv	s2,s0
83003de0:	0017f793          	andi	a5,a5,1
83003de4:	0097e7b3          	or	a5,a5,s1
83003de8:	fef42e23          	sw	a5,-4(s0)
83003dec:	00000097          	auipc	ra,0x0
83003df0:	1f8080e7          	jalr	504(ra) # 83003fe4 <__malloc_unlock>
83003df4:	dcdff06f          	j	83003bc0 <_realloc_r+0x16c>
83003df8:	ffc52783          	lw	a5,-4(a0)
83003dfc:	ffc7f793          	andi	a5,a5,-4
83003e00:	00fa0a33          	add	s4,s4,a5
83003e04:	e05ff06f          	j	83003c08 <_realloc_r+0x1b4>
83003e08:	00cba783          	lw	a5,12(s7)
83003e0c:	008ba703          	lw	a4,8(s7)
83003e10:	ffca0613          	addi	a2,s4,-4
83003e14:	02400693          	li	a3,36
83003e18:	00f72623          	sw	a5,12(a4)
83003e1c:	00e7a423          	sw	a4,8(a5)
83003e20:	008b8913          	addi	s2,s7,8
83003e24:	10c6e263          	bltu	a3,a2,83003f28 <_realloc_r+0x4d4>
83003e28:	01300713          	li	a4,19
83003e2c:	00090793          	mv	a5,s2
83003e30:	02c77c63          	bgeu	a4,a2,83003e68 <_realloc_r+0x414>
83003e34:	00042703          	lw	a4,0(s0)
83003e38:	01b00793          	li	a5,27
83003e3c:	00eba423          	sw	a4,8(s7)
83003e40:	00442703          	lw	a4,4(s0)
83003e44:	00eba623          	sw	a4,12(s7)
83003e48:	12c7f063          	bgeu	a5,a2,83003f68 <_realloc_r+0x514>
83003e4c:	00842783          	lw	a5,8(s0)
83003e50:	00fba823          	sw	a5,16(s7)
83003e54:	00c42783          	lw	a5,12(s0)
83003e58:	00fbaa23          	sw	a5,20(s7)
83003e5c:	0ad60863          	beq	a2,a3,83003f0c <_realloc_r+0x4b8>
83003e60:	01040413          	addi	s0,s0,16
83003e64:	018b8793          	addi	a5,s7,24
83003e68:	00042703          	lw	a4,0(s0)
83003e6c:	000b0a13          	mv	s4,s6
83003e70:	000b8a93          	mv	s5,s7
83003e74:	00e7a023          	sw	a4,0(a5)
83003e78:	00442703          	lw	a4,4(s0)
83003e7c:	00e7a223          	sw	a4,4(a5)
83003e80:	00842703          	lw	a4,8(s0)
83003e84:	00090413          	mv	s0,s2
83003e88:	00e7a423          	sw	a4,8(a5)
83003e8c:	d7dff06f          	j	83003c08 <_realloc_r+0x1b4>
83003e90:	00040593          	mv	a1,s0
83003e94:	fffff097          	auipc	ra,0xfffff
83003e98:	250080e7          	jalr	592(ra) # 830030e4 <memmove>
83003e9c:	cedff06f          	j	83003b88 <_realloc_r+0x134>
83003ea0:	00c62783          	lw	a5,12(a2)
83003ea4:	00862703          	lw	a4,8(a2)
83003ea8:	02400693          	li	a3,36
83003eac:	ffca0613          	addi	a2,s4,-4
83003eb0:	00f72623          	sw	a5,12(a4)
83003eb4:	00e7a423          	sw	a4,8(a5)
83003eb8:	008ba703          	lw	a4,8(s7)
83003ebc:	00cba783          	lw	a5,12(s7)
83003ec0:	008b8913          	addi	s2,s7,8
83003ec4:	00f72623          	sw	a5,12(a4)
83003ec8:	00e7a423          	sw	a4,8(a5)
83003ecc:	04c6ee63          	bltu	a3,a2,83003f28 <_realloc_r+0x4d4>
83003ed0:	01300713          	li	a4,19
83003ed4:	00090793          	mv	a5,s2
83003ed8:	f8c778e3          	bgeu	a4,a2,83003e68 <_realloc_r+0x414>
83003edc:	00042703          	lw	a4,0(s0)
83003ee0:	01b00793          	li	a5,27
83003ee4:	00eba423          	sw	a4,8(s7)
83003ee8:	00442703          	lw	a4,4(s0)
83003eec:	00eba623          	sw	a4,12(s7)
83003ef0:	06c7fc63          	bgeu	a5,a2,83003f68 <_realloc_r+0x514>
83003ef4:	00842703          	lw	a4,8(s0)
83003ef8:	02400793          	li	a5,36
83003efc:	00eba823          	sw	a4,16(s7)
83003f00:	00c42703          	lw	a4,12(s0)
83003f04:	00ebaa23          	sw	a4,20(s7)
83003f08:	f4f61ce3          	bne	a2,a5,83003e60 <_realloc_r+0x40c>
83003f0c:	01042703          	lw	a4,16(s0)
83003f10:	020b8793          	addi	a5,s7,32
83003f14:	01840413          	addi	s0,s0,24
83003f18:	00ebac23          	sw	a4,24(s7)
83003f1c:	ffc42703          	lw	a4,-4(s0)
83003f20:	00ebae23          	sw	a4,28(s7)
83003f24:	f45ff06f          	j	83003e68 <_realloc_r+0x414>
83003f28:	00040593          	mv	a1,s0
83003f2c:	00090513          	mv	a0,s2
83003f30:	fffff097          	auipc	ra,0xfffff
83003f34:	1b4080e7          	jalr	436(ra) # 830030e4 <memmove>
83003f38:	00090413          	mv	s0,s2
83003f3c:	000b0a13          	mv	s4,s6
83003f40:	000b8a93          	mv	s5,s7
83003f44:	cc5ff06f          	j	83003c08 <_realloc_r+0x1b4>
83003f48:	00842703          	lw	a4,8(s0)
83003f4c:	00e52423          	sw	a4,8(a0)
83003f50:	00c42703          	lw	a4,12(s0)
83003f54:	00e52623          	sw	a4,12(a0)
83003f58:	00f60e63          	beq	a2,a5,83003f74 <_realloc_r+0x520>
83003f5c:	01040713          	addi	a4,s0,16
83003f60:	01050793          	addi	a5,a0,16
83003f64:	c0dff06f          	j	83003b70 <_realloc_r+0x11c>
83003f68:	00840413          	addi	s0,s0,8
83003f6c:	010b8793          	addi	a5,s7,16
83003f70:	ef9ff06f          	j	83003e68 <_realloc_r+0x414>
83003f74:	01042683          	lw	a3,16(s0)
83003f78:	01840713          	addi	a4,s0,24
83003f7c:	01850793          	addi	a5,a0,24
83003f80:	00d52823          	sw	a3,16(a0)
83003f84:	01442683          	lw	a3,20(s0)
83003f88:	00d52a23          	sw	a3,20(a0)
83003f8c:	be5ff06f          	j	83003b70 <_realloc_r+0x11c>
83003f90:	00040593          	mv	a1,s0
83003f94:	00090513          	mv	a0,s2
83003f98:	fffff097          	auipc	ra,0xfffff
83003f9c:	14c080e7          	jalr	332(ra) # 830030e4 <memmove>
83003fa0:	dc9ff06f          	j	83003d68 <_realloc_r+0x314>
83003fa4:	00842783          	lw	a5,8(s0)
83003fa8:	00fba823          	sw	a5,16(s7)
83003fac:	00c42783          	lw	a5,12(s0)
83003fb0:	00fbaa23          	sw	a5,20(s7)
83003fb4:	00d60863          	beq	a2,a3,83003fc4 <_realloc_r+0x570>
83003fb8:	01040413          	addi	s0,s0,16
83003fbc:	018b8793          	addi	a5,s7,24
83003fc0:	d91ff06f          	j	83003d50 <_realloc_r+0x2fc>
83003fc4:	01042703          	lw	a4,16(s0)
83003fc8:	020b8793          	addi	a5,s7,32
83003fcc:	01840413          	addi	s0,s0,24
83003fd0:	00ebac23          	sw	a4,24(s7)
83003fd4:	ffc42703          	lw	a4,-4(s0)
83003fd8:	00ebae23          	sw	a4,28(s7)
83003fdc:	d75ff06f          	j	83003d50 <_realloc_r+0x2fc>

83003fe0 <__malloc_lock>:
83003fe0:	00008067          	ret

83003fe4 <__malloc_unlock>:
83003fe4:	00008067          	ret

83003fe8 <__smakebuf_r>:
83003fe8:	00c5d783          	lhu	a5,12(a1)
83003fec:	fa010113          	addi	sp,sp,-96
83003ff0:	04812c23          	sw	s0,88(sp)
83003ff4:	04112e23          	sw	ra,92(sp)
83003ff8:	04912a23          	sw	s1,84(sp)
83003ffc:	05212823          	sw	s2,80(sp)
83004000:	05312623          	sw	s3,76(sp)
83004004:	0027f713          	andi	a4,a5,2
83004008:	00058413          	mv	s0,a1
8300400c:	02070a63          	beqz	a4,83004040 <__smakebuf_r+0x58>
83004010:	04358793          	addi	a5,a1,67
83004014:	00f5a023          	sw	a5,0(a1)
83004018:	00f5a823          	sw	a5,16(a1)
8300401c:	00100793          	li	a5,1
83004020:	00f5aa23          	sw	a5,20(a1)
83004024:	05c12083          	lw	ra,92(sp)
83004028:	05812403          	lw	s0,88(sp)
8300402c:	05412483          	lw	s1,84(sp)
83004030:	05012903          	lw	s2,80(sp)
83004034:	04c12983          	lw	s3,76(sp)
83004038:	06010113          	addi	sp,sp,96
8300403c:	00008067          	ret
83004040:	00e59583          	lh	a1,14(a1)
83004044:	00050493          	mv	s1,a0
83004048:	0805cc63          	bltz	a1,830040e0 <__smakebuf_r+0xf8>
8300404c:	00410613          	addi	a2,sp,4
83004050:	00000097          	auipc	ra,0x0
83004054:	6f4080e7          	jalr	1780(ra) # 83004744 <_fstat_r>
83004058:	08054263          	bltz	a0,830040dc <__smakebuf_r+0xf4>
8300405c:	00812783          	lw	a5,8(sp)
83004060:	0000f937          	lui	s2,0xf
83004064:	00f97933          	and	s2,s2,a5
83004068:	ffffe7b7          	lui	a5,0xffffe
8300406c:	00f90933          	add	s2,s2,a5
83004070:	00193913          	seqz	s2,s2
83004074:	40000993          	li	s3,1024
83004078:	00098593          	mv	a1,s3
8300407c:	00048513          	mv	a0,s1
83004080:	fffff097          	auipc	ra,0xfffff
83004084:	1e8080e7          	jalr	488(ra) # 83003268 <_malloc_r>
83004088:	06050e63          	beqz	a0,83004104 <__smakebuf_r+0x11c>
8300408c:	00c45783          	lhu	a5,12(s0)
83004090:	83002737          	lui	a4,0x83002
83004094:	6b470713          	addi	a4,a4,1716 # 830026b4 <__BSS_END__+0xffffbde0>
83004098:	02e4ae23          	sw	a4,60(s1)
8300409c:	0807e793          	ori	a5,a5,128
830040a0:	00f41623          	sh	a5,12(s0)
830040a4:	00a42023          	sw	a0,0(s0)
830040a8:	00a42823          	sw	a0,16(s0)
830040ac:	01342a23          	sw	s3,20(s0)
830040b0:	f6090ae3          	beqz	s2,83004024 <__smakebuf_r+0x3c>
830040b4:	00e41583          	lh	a1,14(s0)
830040b8:	00048513          	mv	a0,s1
830040bc:	00001097          	auipc	ra,0x1
830040c0:	838080e7          	jalr	-1992(ra) # 830048f4 <_isatty_r>
830040c4:	f60500e3          	beqz	a0,83004024 <__smakebuf_r+0x3c>
830040c8:	00c45783          	lhu	a5,12(s0)
830040cc:	ffc7f793          	andi	a5,a5,-4
830040d0:	0017e793          	ori	a5,a5,1
830040d4:	00f41623          	sh	a5,12(s0)
830040d8:	f4dff06f          	j	83004024 <__smakebuf_r+0x3c>
830040dc:	00c45783          	lhu	a5,12(s0)
830040e0:	0807f793          	andi	a5,a5,128
830040e4:	00000913          	li	s2,0
830040e8:	04000993          	li	s3,64
830040ec:	f80784e3          	beqz	a5,83004074 <__smakebuf_r+0x8c>
830040f0:	00098593          	mv	a1,s3
830040f4:	00048513          	mv	a0,s1
830040f8:	fffff097          	auipc	ra,0xfffff
830040fc:	170080e7          	jalr	368(ra) # 83003268 <_malloc_r>
83004100:	f80516e3          	bnez	a0,8300408c <__smakebuf_r+0xa4>
83004104:	00c41783          	lh	a5,12(s0)
83004108:	2007f713          	andi	a4,a5,512
8300410c:	f0071ce3          	bnez	a4,83004024 <__smakebuf_r+0x3c>
83004110:	ffc7f793          	andi	a5,a5,-4
83004114:	0027e793          	ori	a5,a5,2
83004118:	04340713          	addi	a4,s0,67
8300411c:	00f41623          	sh	a5,12(s0)
83004120:	00100793          	li	a5,1
83004124:	00e42023          	sw	a4,0(s0)
83004128:	00e42823          	sw	a4,16(s0)
8300412c:	00f42a23          	sw	a5,20(s0)
83004130:	ef5ff06f          	j	83004024 <__smakebuf_r+0x3c>

83004134 <__swhatbuf_r>:
83004134:	fb010113          	addi	sp,sp,-80
83004138:	04812423          	sw	s0,72(sp)
8300413c:	00058413          	mv	s0,a1
83004140:	00e59583          	lh	a1,14(a1)
83004144:	04912223          	sw	s1,68(sp)
83004148:	05212023          	sw	s2,64(sp)
8300414c:	04112623          	sw	ra,76(sp)
83004150:	00060493          	mv	s1,a2
83004154:	00068913          	mv	s2,a3
83004158:	0405ca63          	bltz	a1,830041ac <__swhatbuf_r+0x78>
8300415c:	00410613          	addi	a2,sp,4
83004160:	00000097          	auipc	ra,0x0
83004164:	5e4080e7          	jalr	1508(ra) # 83004744 <_fstat_r>
83004168:	04054263          	bltz	a0,830041ac <__swhatbuf_r+0x78>
8300416c:	00812703          	lw	a4,8(sp)
83004170:	0000f7b7          	lui	a5,0xf
83004174:	00e7f7b3          	and	a5,a5,a4
83004178:	ffffe737          	lui	a4,0xffffe
8300417c:	00e787b3          	add	a5,a5,a4
83004180:	0017b793          	seqz	a5,a5
83004184:	40000713          	li	a4,1024
83004188:	04c12083          	lw	ra,76(sp)
8300418c:	04812403          	lw	s0,72(sp)
83004190:	00f92023          	sw	a5,0(s2) # f000 <main-0x82ff10b4>
83004194:	00e4a023          	sw	a4,0(s1)
83004198:	04012903          	lw	s2,64(sp)
8300419c:	04412483          	lw	s1,68(sp)
830041a0:	00000513          	li	a0,0
830041a4:	05010113          	addi	sp,sp,80
830041a8:	00008067          	ret
830041ac:	00c45783          	lhu	a5,12(s0)
830041b0:	0807f793          	andi	a5,a5,128
830041b4:	00078863          	beqz	a5,830041c4 <__swhatbuf_r+0x90>
830041b8:	00000793          	li	a5,0
830041bc:	04000713          	li	a4,64
830041c0:	fc9ff06f          	j	83004188 <__swhatbuf_r+0x54>
830041c4:	00000793          	li	a5,0
830041c8:	40000713          	li	a4,1024
830041cc:	fbdff06f          	j	83004188 <__swhatbuf_r+0x54>

830041d0 <__sread>:
830041d0:	ff010113          	addi	sp,sp,-16
830041d4:	00812423          	sw	s0,8(sp)
830041d8:	00058413          	mv	s0,a1
830041dc:	00e59583          	lh	a1,14(a1)
830041e0:	00112623          	sw	ra,12(sp)
830041e4:	00000097          	auipc	ra,0x0
830041e8:	5cc080e7          	jalr	1484(ra) # 830047b0 <_read_r>
830041ec:	02054063          	bltz	a0,8300420c <__sread+0x3c>
830041f0:	05042783          	lw	a5,80(s0)
830041f4:	00c12083          	lw	ra,12(sp)
830041f8:	00a787b3          	add	a5,a5,a0
830041fc:	04f42823          	sw	a5,80(s0)
83004200:	00812403          	lw	s0,8(sp)
83004204:	01010113          	addi	sp,sp,16
83004208:	00008067          	ret
8300420c:	00c45783          	lhu	a5,12(s0)
83004210:	fffff737          	lui	a4,0xfffff
83004214:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0x7cff872b>
83004218:	00e7f7b3          	and	a5,a5,a4
8300421c:	00c12083          	lw	ra,12(sp)
83004220:	00f41623          	sh	a5,12(s0)
83004224:	00812403          	lw	s0,8(sp)
83004228:	01010113          	addi	sp,sp,16
8300422c:	00008067          	ret

83004230 <__seofread>:
83004230:	00000513          	li	a0,0
83004234:	00008067          	ret

83004238 <__swrite>:
83004238:	00c59783          	lh	a5,12(a1)
8300423c:	fe010113          	addi	sp,sp,-32
83004240:	00812c23          	sw	s0,24(sp)
83004244:	00912a23          	sw	s1,20(sp)
83004248:	01212823          	sw	s2,16(sp)
8300424c:	01312623          	sw	s3,12(sp)
83004250:	00112e23          	sw	ra,28(sp)
83004254:	1007f713          	andi	a4,a5,256
83004258:	00058413          	mv	s0,a1
8300425c:	00050493          	mv	s1,a0
83004260:	00060913          	mv	s2,a2
83004264:	00068993          	mv	s3,a3
83004268:	04071263          	bnez	a4,830042ac <__swrite+0x74>
8300426c:	fffff737          	lui	a4,0xfffff
83004270:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0x7cff872b>
83004274:	00e7f7b3          	and	a5,a5,a4
83004278:	00e41583          	lh	a1,14(s0)
8300427c:	00f41623          	sh	a5,12(s0)
83004280:	01812403          	lw	s0,24(sp)
83004284:	01c12083          	lw	ra,28(sp)
83004288:	00098693          	mv	a3,s3
8300428c:	00090613          	mv	a2,s2
83004290:	00c12983          	lw	s3,12(sp)
83004294:	01012903          	lw	s2,16(sp)
83004298:	00048513          	mv	a0,s1
8300429c:	01412483          	lw	s1,20(sp)
830042a0:	02010113          	addi	sp,sp,32
830042a4:	ffffd317          	auipc	t1,0xffffd
830042a8:	6d830067          	jr	1752(t1) # 8300197c <_write_r>
830042ac:	00e59583          	lh	a1,14(a1)
830042b0:	00200693          	li	a3,2
830042b4:	00000613          	li	a2,0
830042b8:	00000097          	auipc	ra,0x0
830042bc:	5cc080e7          	jalr	1484(ra) # 83004884 <_lseek_r>
830042c0:	00c41783          	lh	a5,12(s0)
830042c4:	fa9ff06f          	j	8300426c <__swrite+0x34>

830042c8 <__sseek>:
830042c8:	ff010113          	addi	sp,sp,-16
830042cc:	00812423          	sw	s0,8(sp)
830042d0:	00058413          	mv	s0,a1
830042d4:	00e59583          	lh	a1,14(a1)
830042d8:	00112623          	sw	ra,12(sp)
830042dc:	00000097          	auipc	ra,0x0
830042e0:	5a8080e7          	jalr	1448(ra) # 83004884 <_lseek_r>
830042e4:	fff00793          	li	a5,-1
830042e8:	02f50463          	beq	a0,a5,83004310 <__sseek+0x48>
830042ec:	00c45783          	lhu	a5,12(s0)
830042f0:	00001737          	lui	a4,0x1
830042f4:	00c12083          	lw	ra,12(sp)
830042f8:	00e7e7b3          	or	a5,a5,a4
830042fc:	04a42823          	sw	a0,80(s0)
83004300:	00f41623          	sh	a5,12(s0)
83004304:	00812403          	lw	s0,8(sp)
83004308:	01010113          	addi	sp,sp,16
8300430c:	00008067          	ret
83004310:	00c45783          	lhu	a5,12(s0)
83004314:	fffff737          	lui	a4,0xfffff
83004318:	fff70713          	addi	a4,a4,-1 # ffffefff <__BSS_END__+0x7cff872b>
8300431c:	00e7f7b3          	and	a5,a5,a4
83004320:	00c12083          	lw	ra,12(sp)
83004324:	00f41623          	sh	a5,12(s0)
83004328:	00812403          	lw	s0,8(sp)
8300432c:	01010113          	addi	sp,sp,16
83004330:	00008067          	ret

83004334 <__sclose>:
83004334:	00e59583          	lh	a1,14(a1)
83004338:	00000317          	auipc	t1,0x0
8300433c:	4e830067          	jr	1256(t1) # 83004820 <_close_r>

83004340 <__swbuf_r>:
83004340:	fe010113          	addi	sp,sp,-32
83004344:	00812c23          	sw	s0,24(sp)
83004348:	00912a23          	sw	s1,20(sp)
8300434c:	01212823          	sw	s2,16(sp)
83004350:	00112e23          	sw	ra,28(sp)
83004354:	01312623          	sw	s3,12(sp)
83004358:	00050913          	mv	s2,a0
8300435c:	00058493          	mv	s1,a1
83004360:	00060413          	mv	s0,a2
83004364:	00050663          	beqz	a0,83004370 <__swbuf_r+0x30>
83004368:	03852783          	lw	a5,56(a0)
8300436c:	10078c63          	beqz	a5,83004484 <__swbuf_r+0x144>
83004370:	01842703          	lw	a4,24(s0)
83004374:	00c45783          	lhu	a5,12(s0)
83004378:	00e42423          	sw	a4,8(s0)
8300437c:	0087f793          	andi	a5,a5,8
83004380:	06078e63          	beqz	a5,830043fc <__swbuf_r+0xbc>
83004384:	01042783          	lw	a5,16(s0)
83004388:	06078a63          	beqz	a5,830043fc <__swbuf_r+0xbc>
8300438c:	00042703          	lw	a4,0(s0)
83004390:	01442683          	lw	a3,20(s0)
83004394:	0ff4f993          	zext.b	s3,s1
83004398:	40f707b3          	sub	a5,a4,a5
8300439c:	0ff4f493          	zext.b	s1,s1
830043a0:	08d7d663          	bge	a5,a3,8300442c <__swbuf_r+0xec>
830043a4:	00842683          	lw	a3,8(s0)
830043a8:	00170613          	addi	a2,a4,1
830043ac:	00c42023          	sw	a2,0(s0)
830043b0:	fff68693          	addi	a3,a3,-1
830043b4:	00d42423          	sw	a3,8(s0)
830043b8:	01370023          	sb	s3,0(a4)
830043bc:	01442703          	lw	a4,20(s0)
830043c0:	00178793          	addi	a5,a5,1 # f001 <main-0x82ff10b3>
830043c4:	0af70263          	beq	a4,a5,83004468 <__swbuf_r+0x128>
830043c8:	00c45783          	lhu	a5,12(s0)
830043cc:	0017f793          	andi	a5,a5,1
830043d0:	00078663          	beqz	a5,830043dc <__swbuf_r+0x9c>
830043d4:	00a00793          	li	a5,10
830043d8:	08f48863          	beq	s1,a5,83004468 <__swbuf_r+0x128>
830043dc:	01c12083          	lw	ra,28(sp)
830043e0:	01812403          	lw	s0,24(sp)
830043e4:	01012903          	lw	s2,16(sp)
830043e8:	00c12983          	lw	s3,12(sp)
830043ec:	00048513          	mv	a0,s1
830043f0:	01412483          	lw	s1,20(sp)
830043f4:	02010113          	addi	sp,sp,32
830043f8:	00008067          	ret
830043fc:	00040593          	mv	a1,s0
83004400:	00090513          	mv	a0,s2
83004404:	ffffe097          	auipc	ra,0xffffe
83004408:	c4c080e7          	jalr	-948(ra) # 83002050 <__swsetup_r>
8300440c:	06051863          	bnez	a0,8300447c <__swbuf_r+0x13c>
83004410:	01042783          	lw	a5,16(s0)
83004414:	00042703          	lw	a4,0(s0)
83004418:	01442683          	lw	a3,20(s0)
8300441c:	0ff4f993          	zext.b	s3,s1
83004420:	40f707b3          	sub	a5,a4,a5
83004424:	0ff4f493          	zext.b	s1,s1
83004428:	f6d7cee3          	blt	a5,a3,830043a4 <__swbuf_r+0x64>
8300442c:	00040593          	mv	a1,s0
83004430:	00090513          	mv	a0,s2
83004434:	fffff097          	auipc	ra,0xfffff
83004438:	888080e7          	jalr	-1912(ra) # 83002cbc <_fflush_r>
8300443c:	04051063          	bnez	a0,8300447c <__swbuf_r+0x13c>
83004440:	00042703          	lw	a4,0(s0)
83004444:	00842683          	lw	a3,8(s0)
83004448:	00100793          	li	a5,1
8300444c:	00170613          	addi	a2,a4,1
83004450:	fff68693          	addi	a3,a3,-1
83004454:	00c42023          	sw	a2,0(s0)
83004458:	00d42423          	sw	a3,8(s0)
8300445c:	01370023          	sb	s3,0(a4)
83004460:	01442703          	lw	a4,20(s0)
83004464:	f6f712e3          	bne	a4,a5,830043c8 <__swbuf_r+0x88>
83004468:	00040593          	mv	a1,s0
8300446c:	00090513          	mv	a0,s2
83004470:	fffff097          	auipc	ra,0xfffff
83004474:	84c080e7          	jalr	-1972(ra) # 83002cbc <_fflush_r>
83004478:	f60502e3          	beqz	a0,830043dc <__swbuf_r+0x9c>
8300447c:	fff00493          	li	s1,-1
83004480:	f5dff06f          	j	830043dc <__swbuf_r+0x9c>
83004484:	ffffe097          	auipc	ra,0xffffe
83004488:	5ac080e7          	jalr	1452(ra) # 83002a30 <__sinit>
8300448c:	ee5ff06f          	j	83004370 <__swbuf_r+0x30>

83004490 <__swbuf>:
83004490:	83007737          	lui	a4,0x83007
83004494:	00050793          	mv	a5,a0
83004498:	88872503          	lw	a0,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
8300449c:	00058613          	mv	a2,a1
830044a0:	00078593          	mv	a1,a5
830044a4:	00000317          	auipc	t1,0x0
830044a8:	e9c30067          	jr	-356(t1) # 83004340 <__swbuf_r>

830044ac <_fwalk>:
830044ac:	fe010113          	addi	sp,sp,-32
830044b0:	01212823          	sw	s2,16(sp)
830044b4:	01312623          	sw	s3,12(sp)
830044b8:	01412423          	sw	s4,8(sp)
830044bc:	01512223          	sw	s5,4(sp)
830044c0:	01612023          	sw	s6,0(sp)
830044c4:	00112e23          	sw	ra,28(sp)
830044c8:	00812c23          	sw	s0,24(sp)
830044cc:	00912a23          	sw	s1,20(sp)
830044d0:	00058b13          	mv	s6,a1
830044d4:	2e050a93          	addi	s5,a0,736
830044d8:	00000a13          	li	s4,0
830044dc:	00100993          	li	s3,1
830044e0:	fff00913          	li	s2,-1
830044e4:	004aa483          	lw	s1,4(s5)
830044e8:	008aa403          	lw	s0,8(s5)
830044ec:	fff48493          	addi	s1,s1,-1
830044f0:	0204c663          	bltz	s1,8300451c <_fwalk+0x70>
830044f4:	00c45783          	lhu	a5,12(s0)
830044f8:	fff48493          	addi	s1,s1,-1
830044fc:	00f9fc63          	bgeu	s3,a5,83004514 <_fwalk+0x68>
83004500:	00e41783          	lh	a5,14(s0)
83004504:	00040513          	mv	a0,s0
83004508:	01278663          	beq	a5,s2,83004514 <_fwalk+0x68>
8300450c:	000b00e7          	jalr	s6
83004510:	00aa6a33          	or	s4,s4,a0
83004514:	06840413          	addi	s0,s0,104
83004518:	fd249ee3          	bne	s1,s2,830044f4 <_fwalk+0x48>
8300451c:	000aaa83          	lw	s5,0(s5)
83004520:	fc0a92e3          	bnez	s5,830044e4 <_fwalk+0x38>
83004524:	01c12083          	lw	ra,28(sp)
83004528:	01812403          	lw	s0,24(sp)
8300452c:	01412483          	lw	s1,20(sp)
83004530:	01012903          	lw	s2,16(sp)
83004534:	00c12983          	lw	s3,12(sp)
83004538:	00412a83          	lw	s5,4(sp)
8300453c:	00012b03          	lw	s6,0(sp)
83004540:	000a0513          	mv	a0,s4
83004544:	00812a03          	lw	s4,8(sp)
83004548:	02010113          	addi	sp,sp,32
8300454c:	00008067          	ret

83004550 <_fwalk_reent>:
83004550:	fd010113          	addi	sp,sp,-48
83004554:	03212023          	sw	s2,32(sp)
83004558:	01312e23          	sw	s3,28(sp)
8300455c:	01412c23          	sw	s4,24(sp)
83004560:	01512a23          	sw	s5,20(sp)
83004564:	01612823          	sw	s6,16(sp)
83004568:	01712623          	sw	s7,12(sp)
8300456c:	02112623          	sw	ra,44(sp)
83004570:	02812423          	sw	s0,40(sp)
83004574:	02912223          	sw	s1,36(sp)
83004578:	00050a93          	mv	s5,a0
8300457c:	00058b93          	mv	s7,a1
83004580:	2e050b13          	addi	s6,a0,736
83004584:	00000a13          	li	s4,0
83004588:	00100993          	li	s3,1
8300458c:	fff00913          	li	s2,-1
83004590:	004b2483          	lw	s1,4(s6)
83004594:	008b2403          	lw	s0,8(s6)
83004598:	fff48493          	addi	s1,s1,-1
8300459c:	0204c863          	bltz	s1,830045cc <_fwalk_reent+0x7c>
830045a0:	00c45783          	lhu	a5,12(s0)
830045a4:	fff48493          	addi	s1,s1,-1
830045a8:	00f9fe63          	bgeu	s3,a5,830045c4 <_fwalk_reent+0x74>
830045ac:	00e41783          	lh	a5,14(s0)
830045b0:	00040593          	mv	a1,s0
830045b4:	000a8513          	mv	a0,s5
830045b8:	01278663          	beq	a5,s2,830045c4 <_fwalk_reent+0x74>
830045bc:	000b80e7          	jalr	s7
830045c0:	00aa6a33          	or	s4,s4,a0
830045c4:	06840413          	addi	s0,s0,104
830045c8:	fd249ce3          	bne	s1,s2,830045a0 <_fwalk_reent+0x50>
830045cc:	000b2b03          	lw	s6,0(s6)
830045d0:	fc0b10e3          	bnez	s6,83004590 <_fwalk_reent+0x40>
830045d4:	02c12083          	lw	ra,44(sp)
830045d8:	02812403          	lw	s0,40(sp)
830045dc:	02412483          	lw	s1,36(sp)
830045e0:	02012903          	lw	s2,32(sp)
830045e4:	01c12983          	lw	s3,28(sp)
830045e8:	01412a83          	lw	s5,20(sp)
830045ec:	01012b03          	lw	s6,16(sp)
830045f0:	00c12b83          	lw	s7,12(sp)
830045f4:	000a0513          	mv	a0,s4
830045f8:	01812a03          	lw	s4,24(sp)
830045fc:	03010113          	addi	sp,sp,48
83004600:	00008067          	ret

83004604 <_fclose_r>:
83004604:	ff010113          	addi	sp,sp,-16
83004608:	00112623          	sw	ra,12(sp)
8300460c:	00812423          	sw	s0,8(sp)
83004610:	00912223          	sw	s1,4(sp)
83004614:	01212023          	sw	s2,0(sp)
83004618:	02058063          	beqz	a1,83004638 <_fclose_r+0x34>
8300461c:	00058413          	mv	s0,a1
83004620:	00050493          	mv	s1,a0
83004624:	00050663          	beqz	a0,83004630 <_fclose_r+0x2c>
83004628:	03852783          	lw	a5,56(a0)
8300462c:	0c078663          	beqz	a5,830046f8 <_fclose_r+0xf4>
83004630:	00c41783          	lh	a5,12(s0)
83004634:	02079263          	bnez	a5,83004658 <_fclose_r+0x54>
83004638:	00c12083          	lw	ra,12(sp)
8300463c:	00812403          	lw	s0,8(sp)
83004640:	00000913          	li	s2,0
83004644:	00412483          	lw	s1,4(sp)
83004648:	00090513          	mv	a0,s2
8300464c:	00012903          	lw	s2,0(sp)
83004650:	01010113          	addi	sp,sp,16
83004654:	00008067          	ret
83004658:	00040593          	mv	a1,s0
8300465c:	00048513          	mv	a0,s1
83004660:	ffffe097          	auipc	ra,0xffffe
83004664:	424080e7          	jalr	1060(ra) # 83002a84 <__sflush_r>
83004668:	02c42783          	lw	a5,44(s0)
8300466c:	00050913          	mv	s2,a0
83004670:	00078a63          	beqz	a5,83004684 <_fclose_r+0x80>
83004674:	01c42583          	lw	a1,28(s0)
83004678:	00048513          	mv	a0,s1
8300467c:	000780e7          	jalr	a5
83004680:	08054663          	bltz	a0,8300470c <_fclose_r+0x108>
83004684:	00c45783          	lhu	a5,12(s0)
83004688:	0807f793          	andi	a5,a5,128
8300468c:	08079863          	bnez	a5,8300471c <_fclose_r+0x118>
83004690:	03042583          	lw	a1,48(s0)
83004694:	00058e63          	beqz	a1,830046b0 <_fclose_r+0xac>
83004698:	04040793          	addi	a5,s0,64
8300469c:	00f58863          	beq	a1,a5,830046ac <_fclose_r+0xa8>
830046a0:	00048513          	mv	a0,s1
830046a4:	ffffd097          	auipc	ra,0xffffd
830046a8:	684080e7          	jalr	1668(ra) # 83001d28 <_free_r>
830046ac:	02042823          	sw	zero,48(s0)
830046b0:	04442583          	lw	a1,68(s0)
830046b4:	00058a63          	beqz	a1,830046c8 <_fclose_r+0xc4>
830046b8:	00048513          	mv	a0,s1
830046bc:	ffffd097          	auipc	ra,0xffffd
830046c0:	66c080e7          	jalr	1644(ra) # 83001d28 <_free_r>
830046c4:	04042223          	sw	zero,68(s0)
830046c8:	ffffe097          	auipc	ra,0xffffe
830046cc:	37c080e7          	jalr	892(ra) # 83002a44 <__sfp_lock_acquire>
830046d0:	00041623          	sh	zero,12(s0)
830046d4:	ffffe097          	auipc	ra,0xffffe
830046d8:	374080e7          	jalr	884(ra) # 83002a48 <__sfp_lock_release>
830046dc:	00c12083          	lw	ra,12(sp)
830046e0:	00812403          	lw	s0,8(sp)
830046e4:	00412483          	lw	s1,4(sp)
830046e8:	00090513          	mv	a0,s2
830046ec:	00012903          	lw	s2,0(sp)
830046f0:	01010113          	addi	sp,sp,16
830046f4:	00008067          	ret
830046f8:	ffffe097          	auipc	ra,0xffffe
830046fc:	338080e7          	jalr	824(ra) # 83002a30 <__sinit>
83004700:	00c41783          	lh	a5,12(s0)
83004704:	f2078ae3          	beqz	a5,83004638 <_fclose_r+0x34>
83004708:	f51ff06f          	j	83004658 <_fclose_r+0x54>
8300470c:	00c45783          	lhu	a5,12(s0)
83004710:	fff00913          	li	s2,-1
83004714:	0807f793          	andi	a5,a5,128
83004718:	f6078ce3          	beqz	a5,83004690 <_fclose_r+0x8c>
8300471c:	01042583          	lw	a1,16(s0)
83004720:	00048513          	mv	a0,s1
83004724:	ffffd097          	auipc	ra,0xffffd
83004728:	604080e7          	jalr	1540(ra) # 83001d28 <_free_r>
8300472c:	f65ff06f          	j	83004690 <_fclose_r+0x8c>

83004730 <fclose>:
83004730:	830077b7          	lui	a5,0x83007
83004734:	00050593          	mv	a1,a0
83004738:	8887a503          	lw	a0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
8300473c:	00000317          	auipc	t1,0x0
83004740:	ec830067          	jr	-312(t1) # 83004604 <_fclose_r>

83004744 <_fstat_r>:
83004744:	ff010113          	addi	sp,sp,-16
83004748:	00058713          	mv	a4,a1
8300474c:	00812423          	sw	s0,8(sp)
83004750:	00912223          	sw	s1,4(sp)
83004754:	00050413          	mv	s0,a0
83004758:	830074b7          	lui	s1,0x83007
8300475c:	00060593          	mv	a1,a2
83004760:	00070513          	mv	a0,a4
83004764:	00112623          	sw	ra,12(sp)
83004768:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
8300476c:	00000097          	auipc	ra,0x0
83004770:	33c080e7          	jalr	828(ra) # 83004aa8 <_fstat>
83004774:	fff00793          	li	a5,-1
83004778:	00f50c63          	beq	a0,a5,83004790 <_fstat_r+0x4c>
8300477c:	00c12083          	lw	ra,12(sp)
83004780:	00812403          	lw	s0,8(sp)
83004784:	00412483          	lw	s1,4(sp)
83004788:	01010113          	addi	sp,sp,16
8300478c:	00008067          	ret
83004790:	8984a783          	lw	a5,-1896(s1)
83004794:	fe0784e3          	beqz	a5,8300477c <_fstat_r+0x38>
83004798:	00c12083          	lw	ra,12(sp)
8300479c:	00f42023          	sw	a5,0(s0)
830047a0:	00812403          	lw	s0,8(sp)
830047a4:	00412483          	lw	s1,4(sp)
830047a8:	01010113          	addi	sp,sp,16
830047ac:	00008067          	ret

830047b0 <_read_r>:
830047b0:	ff010113          	addi	sp,sp,-16
830047b4:	00058713          	mv	a4,a1
830047b8:	00812423          	sw	s0,8(sp)
830047bc:	00912223          	sw	s1,4(sp)
830047c0:	00060593          	mv	a1,a2
830047c4:	00050413          	mv	s0,a0
830047c8:	830074b7          	lui	s1,0x83007
830047cc:	00068613          	mv	a2,a3
830047d0:	00070513          	mv	a0,a4
830047d4:	00112623          	sw	ra,12(sp)
830047d8:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
830047dc:	00000097          	auipc	ra,0x0
830047e0:	268080e7          	jalr	616(ra) # 83004a44 <_read>
830047e4:	fff00793          	li	a5,-1
830047e8:	00f50c63          	beq	a0,a5,83004800 <_read_r+0x50>
830047ec:	00c12083          	lw	ra,12(sp)
830047f0:	00812403          	lw	s0,8(sp)
830047f4:	00412483          	lw	s1,4(sp)
830047f8:	01010113          	addi	sp,sp,16
830047fc:	00008067          	ret
83004800:	8984a783          	lw	a5,-1896(s1)
83004804:	fe0784e3          	beqz	a5,830047ec <_read_r+0x3c>
83004808:	00c12083          	lw	ra,12(sp)
8300480c:	00f42023          	sw	a5,0(s0)
83004810:	00812403          	lw	s0,8(sp)
83004814:	00412483          	lw	s1,4(sp)
83004818:	01010113          	addi	sp,sp,16
8300481c:	00008067          	ret

83004820 <_close_r>:
83004820:	ff010113          	addi	sp,sp,-16
83004824:	00812423          	sw	s0,8(sp)
83004828:	00912223          	sw	s1,4(sp)
8300482c:	00050413          	mv	s0,a0
83004830:	830074b7          	lui	s1,0x83007
83004834:	00058513          	mv	a0,a1
83004838:	00112623          	sw	ra,12(sp)
8300483c:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
83004840:	00000097          	auipc	ra,0x0
83004844:	218080e7          	jalr	536(ra) # 83004a58 <_close>
83004848:	fff00793          	li	a5,-1
8300484c:	00f50c63          	beq	a0,a5,83004864 <_close_r+0x44>
83004850:	00c12083          	lw	ra,12(sp)
83004854:	00812403          	lw	s0,8(sp)
83004858:	00412483          	lw	s1,4(sp)
8300485c:	01010113          	addi	sp,sp,16
83004860:	00008067          	ret
83004864:	8984a783          	lw	a5,-1896(s1)
83004868:	fe0784e3          	beqz	a5,83004850 <_close_r+0x30>
8300486c:	00c12083          	lw	ra,12(sp)
83004870:	00f42023          	sw	a5,0(s0)
83004874:	00812403          	lw	s0,8(sp)
83004878:	00412483          	lw	s1,4(sp)
8300487c:	01010113          	addi	sp,sp,16
83004880:	00008067          	ret

83004884 <_lseek_r>:
83004884:	ff010113          	addi	sp,sp,-16
83004888:	00058713          	mv	a4,a1
8300488c:	00812423          	sw	s0,8(sp)
83004890:	00912223          	sw	s1,4(sp)
83004894:	00060593          	mv	a1,a2
83004898:	00050413          	mv	s0,a0
8300489c:	830074b7          	lui	s1,0x83007
830048a0:	00068613          	mv	a2,a3
830048a4:	00070513          	mv	a0,a4
830048a8:	00112623          	sw	ra,12(sp)
830048ac:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
830048b0:	00000097          	auipc	ra,0x0
830048b4:	1bc080e7          	jalr	444(ra) # 83004a6c <_lseek>
830048b8:	fff00793          	li	a5,-1
830048bc:	00f50c63          	beq	a0,a5,830048d4 <_lseek_r+0x50>
830048c0:	00c12083          	lw	ra,12(sp)
830048c4:	00812403          	lw	s0,8(sp)
830048c8:	00412483          	lw	s1,4(sp)
830048cc:	01010113          	addi	sp,sp,16
830048d0:	00008067          	ret
830048d4:	8984a783          	lw	a5,-1896(s1)
830048d8:	fe0784e3          	beqz	a5,830048c0 <_lseek_r+0x3c>
830048dc:	00c12083          	lw	ra,12(sp)
830048e0:	00f42023          	sw	a5,0(s0)
830048e4:	00812403          	lw	s0,8(sp)
830048e8:	00412483          	lw	s1,4(sp)
830048ec:	01010113          	addi	sp,sp,16
830048f0:	00008067          	ret

830048f4 <_isatty_r>:
830048f4:	ff010113          	addi	sp,sp,-16
830048f8:	00812423          	sw	s0,8(sp)
830048fc:	00912223          	sw	s1,4(sp)
83004900:	00050413          	mv	s0,a0
83004904:	830074b7          	lui	s1,0x83007
83004908:	00058513          	mv	a0,a1
8300490c:	00112623          	sw	ra,12(sp)
83004910:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
83004914:	00000097          	auipc	ra,0x0
83004918:	044080e7          	jalr	68(ra) # 83004958 <_isatty>
8300491c:	fff00793          	li	a5,-1
83004920:	00f50c63          	beq	a0,a5,83004938 <_isatty_r+0x44>
83004924:	00c12083          	lw	ra,12(sp)
83004928:	00812403          	lw	s0,8(sp)
8300492c:	00412483          	lw	s1,4(sp)
83004930:	01010113          	addi	sp,sp,16
83004934:	00008067          	ret
83004938:	8984a783          	lw	a5,-1896(s1)
8300493c:	fe0784e3          	beqz	a5,83004924 <_isatty_r+0x30>
83004940:	00c12083          	lw	ra,12(sp)
83004944:	00f42023          	sw	a5,0(s0)
83004948:	00812403          	lw	s0,8(sp)
8300494c:	00412483          	lw	s1,4(sp)
83004950:	01010113          	addi	sp,sp,16
83004954:	00008067          	ret

83004958 <_isatty>:
83004958:	fb010113          	addi	sp,sp,-80
8300495c:	00410593          	addi	a1,sp,4
83004960:	04112623          	sw	ra,76(sp)
83004964:	00000097          	auipc	ra,0x0
83004968:	064080e7          	jalr	100(ra) # 830049c8 <fstat>
8300496c:	02054e63          	bltz	a0,830049a8 <_isatty+0x50>
83004970:	00812683          	lw	a3,8(sp)
83004974:	0000f7b7          	lui	a5,0xf
83004978:	00002737          	lui	a4,0x2
8300497c:	00d7f7b3          	and	a5,a5,a3
83004980:	00100513          	li	a0,1
83004984:	00e78c63          	beq	a5,a4,8300499c <_isatty+0x44>
83004988:	00000097          	auipc	ra,0x0
8300498c:	05c080e7          	jalr	92(ra) # 830049e4 <__errno>
83004990:	01900793          	li	a5,25
83004994:	00f52023          	sw	a5,0(a0)
83004998:	00000513          	li	a0,0
8300499c:	04c12083          	lw	ra,76(sp)
830049a0:	05010113          	addi	sp,sp,80
830049a4:	00008067          	ret
830049a8:	00000097          	auipc	ra,0x0
830049ac:	03c080e7          	jalr	60(ra) # 830049e4 <__errno>
830049b0:	04c12083          	lw	ra,76(sp)
830049b4:	00900793          	li	a5,9
830049b8:	00f52023          	sw	a5,0(a0)
830049bc:	00000513          	li	a0,0
830049c0:	05010113          	addi	sp,sp,80
830049c4:	00008067          	ret

830049c8 <fstat>:
830049c8:	83007737          	lui	a4,0x83007
830049cc:	00050793          	mv	a5,a0
830049d0:	88872503          	lw	a0,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
830049d4:	00058613          	mv	a2,a1
830049d8:	00078593          	mv	a1,a5
830049dc:	00000317          	auipc	t1,0x0
830049e0:	d6830067          	jr	-664(t1) # 83004744 <_fstat_r>

830049e4 <__errno>:
830049e4:	830077b7          	lui	a5,0x83007
830049e8:	8887a503          	lw	a0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
830049ec:	00008067          	ret

830049f0 <_syscall_>:
830049f0:	00050893          	mv	a7,a0
830049f4:	00058513          	mv	a0,a1
830049f8:	00060593          	mv	a1,a2
830049fc:	00068613          	mv	a2,a3
83004a00:	00000073          	ecall
83004a04:	00008067          	ret

83004a08 <_exit>:
83004a08:	00000893          	li	a7,0
83004a0c:	00000593          	li	a1,0
83004a10:	00000613          	li	a2,0
83004a14:	00000073          	ecall
83004a18:	0000006f          	j	83004a18 <_exit+0x10>

83004a1c <_open>:
83004a1c:	ff010113          	addi	sp,sp,-16
83004a20:	00200513          	li	a0,2
83004a24:	00112623          	sw	ra,12(sp)
83004a28:	00000097          	auipc	ra,0x0
83004a2c:	fe0080e7          	jalr	-32(ra) # 83004a08 <_exit>

83004a30 <_write>:
83004a30:	00400893          	li	a7,4
83004a34:	00000073          	ecall
83004a38:	00008067          	ret

83004a3c <_sbrk>:
83004a3c:	fff00513          	li	a0,-1
83004a40:	00008067          	ret

83004a44 <_read>:
83004a44:	ff010113          	addi	sp,sp,-16
83004a48:	00300513          	li	a0,3
83004a4c:	00112623          	sw	ra,12(sp)
83004a50:	00000097          	auipc	ra,0x0
83004a54:	fb8080e7          	jalr	-72(ra) # 83004a08 <_exit>

83004a58 <_close>:
83004a58:	ff010113          	addi	sp,sp,-16
83004a5c:	00700513          	li	a0,7
83004a60:	00112623          	sw	ra,12(sp)
83004a64:	00000097          	auipc	ra,0x0
83004a68:	fa4080e7          	jalr	-92(ra) # 83004a08 <_exit>

83004a6c <_lseek>:
83004a6c:	ff010113          	addi	sp,sp,-16
83004a70:	00800513          	li	a0,8
83004a74:	00112623          	sw	ra,12(sp)
83004a78:	00000097          	auipc	ra,0x0
83004a7c:	f90080e7          	jalr	-112(ra) # 83004a08 <_exit>

83004a80 <_gettimeofday>:
83004a80:	ff010113          	addi	sp,sp,-16
83004a84:	01300513          	li	a0,19
83004a88:	00112623          	sw	ra,12(sp)
83004a8c:	00000097          	auipc	ra,0x0
83004a90:	f7c080e7          	jalr	-132(ra) # 83004a08 <_exit>

83004a94 <_execve>:
83004a94:	ff010113          	addi	sp,sp,-16
83004a98:	00d00513          	li	a0,13
83004a9c:	00112623          	sw	ra,12(sp)
83004aa0:	00000097          	auipc	ra,0x0
83004aa4:	f68080e7          	jalr	-152(ra) # 83004a08 <_exit>

83004aa8 <_fstat>:
83004aa8:	fff00513          	li	a0,-1
83004aac:	00008067          	ret

83004ab0 <_stat>:
83004ab0:	830066b7          	lui	a3,0x83006
83004ab4:	83007637          	lui	a2,0x83007
83004ab8:	83006537          	lui	a0,0x83006
83004abc:	ff010113          	addi	sp,sp,-16
83004ac0:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004ac4:	88060613          	addi	a2,a2,-1920 # 83006880 <__BSS_END__+0xffffffac>
83004ac8:	06900593          	li	a1,105
83004acc:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004ad0:	00112623          	sw	ra,12(sp)
83004ad4:	00000097          	auipc	ra,0x0
83004ad8:	2b8080e7          	jalr	696(ra) # 83004d8c <__assert_func>

83004adc <_kill>:
83004adc:	ff010113          	addi	sp,sp,-16
83004ae0:	ffb00513          	li	a0,-5
83004ae4:	00112623          	sw	ra,12(sp)
83004ae8:	00000097          	auipc	ra,0x0
83004aec:	f20080e7          	jalr	-224(ra) # 83004a08 <_exit>

83004af0 <_getpid>:
83004af0:	ff010113          	addi	sp,sp,-16
83004af4:	ffa00513          	li	a0,-6
83004af8:	00112623          	sw	ra,12(sp)
83004afc:	00000097          	auipc	ra,0x0
83004b00:	f0c080e7          	jalr	-244(ra) # 83004a08 <_exit>

83004b04 <_fork>:
83004b04:	830066b7          	lui	a3,0x83006
83004b08:	83007637          	lui	a2,0x83007
83004b0c:	83006537          	lui	a0,0x83006
83004b10:	ff010113          	addi	sp,sp,-16
83004b14:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004b18:	87860613          	addi	a2,a2,-1928 # 83006878 <__BSS_END__+0xffffffa4>
83004b1c:	07800593          	li	a1,120
83004b20:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004b24:	00112623          	sw	ra,12(sp)
83004b28:	00000097          	auipc	ra,0x0
83004b2c:	264080e7          	jalr	612(ra) # 83004d8c <__assert_func>

83004b30 <vfork>:
83004b30:	830066b7          	lui	a3,0x83006
83004b34:	83007637          	lui	a2,0x83007
83004b38:	83006537          	lui	a0,0x83006
83004b3c:	ff010113          	addi	sp,sp,-16
83004b40:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004b44:	87060613          	addi	a2,a2,-1936 # 83006870 <__BSS_END__+0xffffff9c>
83004b48:	07d00593          	li	a1,125
83004b4c:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004b50:	00112623          	sw	ra,12(sp)
83004b54:	00000097          	auipc	ra,0x0
83004b58:	238080e7          	jalr	568(ra) # 83004d8c <__assert_func>

83004b5c <_link>:
83004b5c:	830066b7          	lui	a3,0x83006
83004b60:	83007637          	lui	a2,0x83007
83004b64:	83006537          	lui	a0,0x83006
83004b68:	ff010113          	addi	sp,sp,-16
83004b6c:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004b70:	86860613          	addi	a2,a2,-1944 # 83006868 <__BSS_END__+0xffffff94>
83004b74:	08200593          	li	a1,130
83004b78:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004b7c:	00112623          	sw	ra,12(sp)
83004b80:	00000097          	auipc	ra,0x0
83004b84:	20c080e7          	jalr	524(ra) # 83004d8c <__assert_func>

83004b88 <_unlink>:
83004b88:	830066b7          	lui	a3,0x83006
83004b8c:	83007637          	lui	a2,0x83007
83004b90:	83006537          	lui	a0,0x83006
83004b94:	ff010113          	addi	sp,sp,-16
83004b98:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004b9c:	86060613          	addi	a2,a2,-1952 # 83006860 <__BSS_END__+0xffffff8c>
83004ba0:	08700593          	li	a1,135
83004ba4:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004ba8:	00112623          	sw	ra,12(sp)
83004bac:	00000097          	auipc	ra,0x0
83004bb0:	1e0080e7          	jalr	480(ra) # 83004d8c <__assert_func>

83004bb4 <_wait>:
83004bb4:	830066b7          	lui	a3,0x83006
83004bb8:	83007637          	lui	a2,0x83007
83004bbc:	83006537          	lui	a0,0x83006
83004bc0:	ff010113          	addi	sp,sp,-16
83004bc4:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004bc8:	85860613          	addi	a2,a2,-1960 # 83006858 <__BSS_END__+0xffffff84>
83004bcc:	08c00593          	li	a1,140
83004bd0:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004bd4:	00112623          	sw	ra,12(sp)
83004bd8:	00000097          	auipc	ra,0x0
83004bdc:	1b4080e7          	jalr	436(ra) # 83004d8c <__assert_func>

83004be0 <_times>:
83004be0:	830066b7          	lui	a3,0x83006
83004be4:	83007637          	lui	a2,0x83007
83004be8:	83006537          	lui	a0,0x83006
83004bec:	ff010113          	addi	sp,sp,-16
83004bf0:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004bf4:	85060613          	addi	a2,a2,-1968 # 83006850 <__BSS_END__+0xffffff7c>
83004bf8:	09100593          	li	a1,145
83004bfc:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004c00:	00112623          	sw	ra,12(sp)
83004c04:	00000097          	auipc	ra,0x0
83004c08:	188080e7          	jalr	392(ra) # 83004d8c <__assert_func>

83004c0c <pipe>:
83004c0c:	830066b7          	lui	a3,0x83006
83004c10:	83007637          	lui	a2,0x83007
83004c14:	83006537          	lui	a0,0x83006
83004c18:	ff010113          	addi	sp,sp,-16
83004c1c:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004c20:	84860613          	addi	a2,a2,-1976 # 83006848 <__BSS_END__+0xffffff74>
83004c24:	09600593          	li	a1,150
83004c28:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004c2c:	00112623          	sw	ra,12(sp)
83004c30:	00000097          	auipc	ra,0x0
83004c34:	15c080e7          	jalr	348(ra) # 83004d8c <__assert_func>

83004c38 <dup>:
83004c38:	830066b7          	lui	a3,0x83006
83004c3c:	83007637          	lui	a2,0x83007
83004c40:	83006537          	lui	a0,0x83006
83004c44:	ff010113          	addi	sp,sp,-16
83004c48:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004c4c:	84460613          	addi	a2,a2,-1980 # 83006844 <__BSS_END__+0xffffff70>
83004c50:	09b00593          	li	a1,155
83004c54:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004c58:	00112623          	sw	ra,12(sp)
83004c5c:	00000097          	auipc	ra,0x0
83004c60:	130080e7          	jalr	304(ra) # 83004d8c <__assert_func>

83004c64 <dup2>:
83004c64:	fff00513          	li	a0,-1
83004c68:	00008067          	ret

83004c6c <sleep>:
83004c6c:	830066b7          	lui	a3,0x83006
83004c70:	83007637          	lui	a2,0x83007
83004c74:	83006537          	lui	a0,0x83006
83004c78:	ff010113          	addi	sp,sp,-16
83004c7c:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004c80:	83c60613          	addi	a2,a2,-1988 # 8300683c <__BSS_END__+0xffffff68>
83004c84:	0a400593          	li	a1,164
83004c88:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004c8c:	00112623          	sw	ra,12(sp)
83004c90:	00000097          	auipc	ra,0x0
83004c94:	0fc080e7          	jalr	252(ra) # 83004d8c <__assert_func>

83004c98 <readlink>:
83004c98:	830066b7          	lui	a3,0x83006
83004c9c:	83006637          	lui	a2,0x83006
83004ca0:	83006537          	lui	a0,0x83006
83004ca4:	ff010113          	addi	sp,sp,-16
83004ca8:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004cac:	9bc60613          	addi	a2,a2,-1604 # 830059bc <__BSS_END__+0xfffff0e8>
83004cb0:	0a900593          	li	a1,169
83004cb4:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004cb8:	00112623          	sw	ra,12(sp)
83004cbc:	00000097          	auipc	ra,0x0
83004cc0:	0d0080e7          	jalr	208(ra) # 83004d8c <__assert_func>

83004cc4 <symlink>:
83004cc4:	830066b7          	lui	a3,0x83006
83004cc8:	83007637          	lui	a2,0x83007
83004ccc:	83006537          	lui	a0,0x83006
83004cd0:	ff010113          	addi	sp,sp,-16
83004cd4:	97c68693          	addi	a3,a3,-1668 # 8300597c <__BSS_END__+0xfffff0a8>
83004cd8:	83460613          	addi	a2,a2,-1996 # 83006834 <__BSS_END__+0xffffff60>
83004cdc:	0ae00593          	li	a1,174
83004ce0:	98050513          	addi	a0,a0,-1664 # 83005980 <__BSS_END__+0xfffff0ac>
83004ce4:	00112623          	sw	ra,12(sp)
83004ce8:	00000097          	auipc	ra,0x0
83004cec:	0a4080e7          	jalr	164(ra) # 83004d8c <__assert_func>

83004cf0 <ioctl>:
83004cf0:	fe010113          	addi	sp,sp,-32
83004cf4:	00c12423          	sw	a2,8(sp)
83004cf8:	00d12623          	sw	a3,12(sp)
83004cfc:	00e12823          	sw	a4,16(sp)
83004d00:	00f12a23          	sw	a5,20(sp)
83004d04:	01012c23          	sw	a6,24(sp)
83004d08:	01112e23          	sw	a7,28(sp)
83004d0c:	fff00513          	li	a0,-1
83004d10:	02010113          	addi	sp,sp,32
83004d14:	00008067          	ret

83004d18 <_start>:
83004d18:	00000413          	li	s0,0
83004d1c:	004000ef          	jal	ra,83004d20 <call_main>

83004d20 <call_main>:
83004d20:	fe010113          	addi	sp,sp,-32
83004d24:	00c10613          	addi	a2,sp,12
83004d28:	830077b7          	lui	a5,0x83007
83004d2c:	00060593          	mv	a1,a2
83004d30:	00000513          	li	a0,0
83004d34:	00112e23          	sw	ra,28(sp)
83004d38:	88c7aa23          	sw	a2,-1900(a5) # 83006894 <__BSS_END__+0xffffffc0>
83004d3c:	00012623          	sw	zero,12(sp)
83004d40:	ffffb097          	auipc	ra,0xffffb
83004d44:	374080e7          	jalr	884(ra) # 830000b4 <main>
83004d48:	00000097          	auipc	ra,0x0
83004d4c:	008080e7          	jalr	8(ra) # 83004d50 <exit>

83004d50 <exit>:
83004d50:	ff010113          	addi	sp,sp,-16
83004d54:	00000593          	li	a1,0
83004d58:	00812423          	sw	s0,8(sp)
83004d5c:	00112623          	sw	ra,12(sp)
83004d60:	00050413          	mv	s0,a0
83004d64:	00000097          	auipc	ra,0x0
83004d68:	77c080e7          	jalr	1916(ra) # 830054e0 <__call_exitprocs>
83004d6c:	830077b7          	lui	a5,0x83007
83004d70:	8307a503          	lw	a0,-2000(a5) # 83006830 <__BSS_END__+0xffffff5c>
83004d74:	03c52783          	lw	a5,60(a0)
83004d78:	00078463          	beqz	a5,83004d80 <exit+0x30>
83004d7c:	000780e7          	jalr	a5
83004d80:	00040513          	mv	a0,s0
83004d84:	00000097          	auipc	ra,0x0
83004d88:	c84080e7          	jalr	-892(ra) # 83004a08 <_exit>

83004d8c <__assert_func>:
83004d8c:	830077b7          	lui	a5,0x83007
83004d90:	8887a703          	lw	a4,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
83004d94:	ff010113          	addi	sp,sp,-16
83004d98:	00068793          	mv	a5,a3
83004d9c:	00060813          	mv	a6,a2
83004da0:	00112623          	sw	ra,12(sp)
83004da4:	00c72883          	lw	a7,12(a4)
83004da8:	00050693          	mv	a3,a0
83004dac:	00058713          	mv	a4,a1
83004db0:	00078613          	mv	a2,a5
83004db4:	02080463          	beqz	a6,83004ddc <__assert_func+0x50>
83004db8:	830067b7          	lui	a5,0x83006
83004dbc:	9c878793          	addi	a5,a5,-1592 # 830059c8 <__BSS_END__+0xfffff0f4>
83004dc0:	830065b7          	lui	a1,0x83006
83004dc4:	9d858593          	addi	a1,a1,-1576 # 830059d8 <__BSS_END__+0xfffff104>
83004dc8:	00088513          	mv	a0,a7
83004dcc:	00000097          	auipc	ra,0x0
83004dd0:	64c080e7          	jalr	1612(ra) # 83005418 <fiprintf>
83004dd4:	00000097          	auipc	ra,0x0
83004dd8:	030080e7          	jalr	48(ra) # 83004e04 <abort>
83004ddc:	83006837          	lui	a6,0x83006
83004de0:	9d480793          	addi	a5,a6,-1580 # 830059d4 <__BSS_END__+0xfffff100>
83004de4:	9d480813          	addi	a6,a6,-1580
83004de8:	fd9ff06f          	j	83004dc0 <__assert_func+0x34>

83004dec <__assert>:
83004dec:	ff010113          	addi	sp,sp,-16
83004df0:	00060693          	mv	a3,a2
83004df4:	00000613          	li	a2,0
83004df8:	00112623          	sw	ra,12(sp)
83004dfc:	00000097          	auipc	ra,0x0
83004e00:	f90080e7          	jalr	-112(ra) # 83004d8c <__assert_func>

83004e04 <abort>:
83004e04:	ff010113          	addi	sp,sp,-16
83004e08:	00600513          	li	a0,6
83004e0c:	00112623          	sw	ra,12(sp)
83004e10:	00000097          	auipc	ra,0x0
83004e14:	2e8080e7          	jalr	744(ra) # 830050f8 <raise>
83004e18:	00100513          	li	a0,1
83004e1c:	00000097          	auipc	ra,0x0
83004e20:	bec080e7          	jalr	-1044(ra) # 83004a08 <_exit>

83004e24 <_init_signal_r>:
83004e24:	2dc52783          	lw	a5,732(a0)
83004e28:	00078663          	beqz	a5,83004e34 <_init_signal_r+0x10>
83004e2c:	00000513          	li	a0,0
83004e30:	00008067          	ret
83004e34:	ff010113          	addi	sp,sp,-16
83004e38:	08000593          	li	a1,128
83004e3c:	00812423          	sw	s0,8(sp)
83004e40:	00112623          	sw	ra,12(sp)
83004e44:	00050413          	mv	s0,a0
83004e48:	ffffe097          	auipc	ra,0xffffe
83004e4c:	420080e7          	jalr	1056(ra) # 83003268 <_malloc_r>
83004e50:	2ca42e23          	sw	a0,732(s0)
83004e54:	02050463          	beqz	a0,83004e7c <_init_signal_r+0x58>
83004e58:	08050793          	addi	a5,a0,128
83004e5c:	00052023          	sw	zero,0(a0)
83004e60:	00450513          	addi	a0,a0,4
83004e64:	fef51ce3          	bne	a0,a5,83004e5c <_init_signal_r+0x38>
83004e68:	00000513          	li	a0,0
83004e6c:	00c12083          	lw	ra,12(sp)
83004e70:	00812403          	lw	s0,8(sp)
83004e74:	01010113          	addi	sp,sp,16
83004e78:	00008067          	ret
83004e7c:	fff00513          	li	a0,-1
83004e80:	fedff06f          	j	83004e6c <_init_signal_r+0x48>

83004e84 <_signal_r>:
83004e84:	fe010113          	addi	sp,sp,-32
83004e88:	00912a23          	sw	s1,20(sp)
83004e8c:	00112e23          	sw	ra,28(sp)
83004e90:	00812c23          	sw	s0,24(sp)
83004e94:	01f00793          	li	a5,31
83004e98:	00050493          	mv	s1,a0
83004e9c:	02b7ea63          	bltu	a5,a1,83004ed0 <_signal_r+0x4c>
83004ea0:	2dc52703          	lw	a4,732(a0)
83004ea4:	00058413          	mv	s0,a1
83004ea8:	04070463          	beqz	a4,83004ef0 <_signal_r+0x6c>
83004eac:	00241413          	slli	s0,s0,0x2
83004eb0:	00870733          	add	a4,a4,s0
83004eb4:	00072503          	lw	a0,0(a4)
83004eb8:	00c72023          	sw	a2,0(a4)
83004ebc:	01c12083          	lw	ra,28(sp)
83004ec0:	01812403          	lw	s0,24(sp)
83004ec4:	01412483          	lw	s1,20(sp)
83004ec8:	02010113          	addi	sp,sp,32
83004ecc:	00008067          	ret
83004ed0:	01c12083          	lw	ra,28(sp)
83004ed4:	01812403          	lw	s0,24(sp)
83004ed8:	01600793          	li	a5,22
83004edc:	00f52023          	sw	a5,0(a0)
83004ee0:	01412483          	lw	s1,20(sp)
83004ee4:	fff00513          	li	a0,-1
83004ee8:	02010113          	addi	sp,sp,32
83004eec:	00008067          	ret
83004ef0:	08000593          	li	a1,128
83004ef4:	00c12623          	sw	a2,12(sp)
83004ef8:	ffffe097          	auipc	ra,0xffffe
83004efc:	370080e7          	jalr	880(ra) # 83003268 <_malloc_r>
83004f00:	2ca4ae23          	sw	a0,732(s1)
83004f04:	00050713          	mv	a4,a0
83004f08:	02050063          	beqz	a0,83004f28 <_signal_r+0xa4>
83004f0c:	00c12603          	lw	a2,12(sp)
83004f10:	00050793          	mv	a5,a0
83004f14:	08050693          	addi	a3,a0,128
83004f18:	0007a023          	sw	zero,0(a5)
83004f1c:	00478793          	addi	a5,a5,4
83004f20:	fed79ce3          	bne	a5,a3,83004f18 <_signal_r+0x94>
83004f24:	f89ff06f          	j	83004eac <_signal_r+0x28>
83004f28:	fff00513          	li	a0,-1
83004f2c:	f91ff06f          	j	83004ebc <_signal_r+0x38>

83004f30 <_raise_r>:
83004f30:	ff010113          	addi	sp,sp,-16
83004f34:	00912223          	sw	s1,4(sp)
83004f38:	00112623          	sw	ra,12(sp)
83004f3c:	00812423          	sw	s0,8(sp)
83004f40:	01f00793          	li	a5,31
83004f44:	00050493          	mv	s1,a0
83004f48:	0ab7ee63          	bltu	a5,a1,83005004 <_raise_r+0xd4>
83004f4c:	2dc52783          	lw	a5,732(a0)
83004f50:	00058413          	mv	s0,a1
83004f54:	04078463          	beqz	a5,83004f9c <_raise_r+0x6c>
83004f58:	00259713          	slli	a4,a1,0x2
83004f5c:	00e787b3          	add	a5,a5,a4
83004f60:	0007a703          	lw	a4,0(a5)
83004f64:	02070c63          	beqz	a4,83004f9c <_raise_r+0x6c>
83004f68:	00100693          	li	a3,1
83004f6c:	08d70063          	beq	a4,a3,83004fec <_raise_r+0xbc>
83004f70:	fff00693          	li	a3,-1
83004f74:	04d70c63          	beq	a4,a3,83004fcc <_raise_r+0x9c>
83004f78:	00058513          	mv	a0,a1
83004f7c:	0007a023          	sw	zero,0(a5)
83004f80:	000700e7          	jalr	a4
83004f84:	00000513          	li	a0,0
83004f88:	00c12083          	lw	ra,12(sp)
83004f8c:	00812403          	lw	s0,8(sp)
83004f90:	00412483          	lw	s1,4(sp)
83004f94:	01010113          	addi	sp,sp,16
83004f98:	00008067          	ret
83004f9c:	00048513          	mv	a0,s1
83004fa0:	00000097          	auipc	ra,0x0
83004fa4:	538080e7          	jalr	1336(ra) # 830054d8 <_getpid_r>
83004fa8:	00040613          	mv	a2,s0
83004fac:	00812403          	lw	s0,8(sp)
83004fb0:	00c12083          	lw	ra,12(sp)
83004fb4:	00050593          	mv	a1,a0
83004fb8:	00048513          	mv	a0,s1
83004fbc:	00412483          	lw	s1,4(sp)
83004fc0:	01010113          	addi	sp,sp,16
83004fc4:	00000317          	auipc	t1,0x0
83004fc8:	4a830067          	jr	1192(t1) # 8300546c <_kill_r>
83004fcc:	00c12083          	lw	ra,12(sp)
83004fd0:	00812403          	lw	s0,8(sp)
83004fd4:	01600793          	li	a5,22
83004fd8:	00f52023          	sw	a5,0(a0)
83004fdc:	00412483          	lw	s1,4(sp)
83004fe0:	00100513          	li	a0,1
83004fe4:	01010113          	addi	sp,sp,16
83004fe8:	00008067          	ret
83004fec:	00c12083          	lw	ra,12(sp)
83004ff0:	00812403          	lw	s0,8(sp)
83004ff4:	00412483          	lw	s1,4(sp)
83004ff8:	00000513          	li	a0,0
83004ffc:	01010113          	addi	sp,sp,16
83005000:	00008067          	ret
83005004:	01600793          	li	a5,22
83005008:	00f52023          	sw	a5,0(a0)
8300500c:	fff00513          	li	a0,-1
83005010:	f79ff06f          	j	83004f88 <_raise_r+0x58>

83005014 <__sigtramp_r>:
83005014:	01f00793          	li	a5,31
83005018:	0cb7ec63          	bltu	a5,a1,830050f0 <__sigtramp_r+0xdc>
8300501c:	2dc52703          	lw	a4,732(a0)
83005020:	ff010113          	addi	sp,sp,-16
83005024:	00812423          	sw	s0,8(sp)
83005028:	00912223          	sw	s1,4(sp)
8300502c:	00112623          	sw	ra,12(sp)
83005030:	00058413          	mv	s0,a1
83005034:	00050493          	mv	s1,a0
83005038:	06070063          	beqz	a4,83005098 <__sigtramp_r+0x84>
8300503c:	00241793          	slli	a5,s0,0x2
83005040:	00f70733          	add	a4,a4,a5
83005044:	00072783          	lw	a5,0(a4)
83005048:	02078c63          	beqz	a5,83005080 <__sigtramp_r+0x6c>
8300504c:	fff00693          	li	a3,-1
83005050:	08d78863          	beq	a5,a3,830050e0 <__sigtramp_r+0xcc>
83005054:	00100693          	li	a3,1
83005058:	06d78863          	beq	a5,a3,830050c8 <__sigtramp_r+0xb4>
8300505c:	00040513          	mv	a0,s0
83005060:	00072023          	sw	zero,0(a4)
83005064:	000780e7          	jalr	a5
83005068:	00000513          	li	a0,0
8300506c:	00c12083          	lw	ra,12(sp)
83005070:	00812403          	lw	s0,8(sp)
83005074:	00412483          	lw	s1,4(sp)
83005078:	01010113          	addi	sp,sp,16
8300507c:	00008067          	ret
83005080:	00c12083          	lw	ra,12(sp)
83005084:	00812403          	lw	s0,8(sp)
83005088:	00412483          	lw	s1,4(sp)
8300508c:	00100513          	li	a0,1
83005090:	01010113          	addi	sp,sp,16
83005094:	00008067          	ret
83005098:	08000593          	li	a1,128
8300509c:	ffffe097          	auipc	ra,0xffffe
830050a0:	1cc080e7          	jalr	460(ra) # 83003268 <_malloc_r>
830050a4:	2ca4ae23          	sw	a0,732(s1)
830050a8:	00050713          	mv	a4,a0
830050ac:	02050e63          	beqz	a0,830050e8 <__sigtramp_r+0xd4>
830050b0:	00050793          	mv	a5,a0
830050b4:	08050693          	addi	a3,a0,128
830050b8:	0007a023          	sw	zero,0(a5)
830050bc:	00478793          	addi	a5,a5,4
830050c0:	fed79ce3          	bne	a5,a3,830050b8 <__sigtramp_r+0xa4>
830050c4:	f79ff06f          	j	8300503c <__sigtramp_r+0x28>
830050c8:	00c12083          	lw	ra,12(sp)
830050cc:	00812403          	lw	s0,8(sp)
830050d0:	00412483          	lw	s1,4(sp)
830050d4:	00300513          	li	a0,3
830050d8:	01010113          	addi	sp,sp,16
830050dc:	00008067          	ret
830050e0:	00200513          	li	a0,2
830050e4:	f89ff06f          	j	8300506c <__sigtramp_r+0x58>
830050e8:	fff00513          	li	a0,-1
830050ec:	f81ff06f          	j	8300506c <__sigtramp_r+0x58>
830050f0:	fff00513          	li	a0,-1
830050f4:	00008067          	ret

830050f8 <raise>:
830050f8:	ff010113          	addi	sp,sp,-16
830050fc:	00912223          	sw	s1,4(sp)
83005100:	83007737          	lui	a4,0x83007
83005104:	00112623          	sw	ra,12(sp)
83005108:	00812423          	sw	s0,8(sp)
8300510c:	01f00793          	li	a5,31
83005110:	88872483          	lw	s1,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
83005114:	0aa7ec63          	bltu	a5,a0,830051cc <raise+0xd4>
83005118:	2dc4a783          	lw	a5,732(s1)
8300511c:	00050413          	mv	s0,a0
83005120:	04078263          	beqz	a5,83005164 <raise+0x6c>
83005124:	00251713          	slli	a4,a0,0x2
83005128:	00e787b3          	add	a5,a5,a4
8300512c:	0007a703          	lw	a4,0(a5)
83005130:	02070a63          	beqz	a4,83005164 <raise+0x6c>
83005134:	00100693          	li	a3,1
83005138:	06d70e63          	beq	a4,a3,830051b4 <raise+0xbc>
8300513c:	fff00693          	li	a3,-1
83005140:	04d70a63          	beq	a4,a3,83005194 <raise+0x9c>
83005144:	0007a023          	sw	zero,0(a5)
83005148:	000700e7          	jalr	a4
8300514c:	00000513          	li	a0,0
83005150:	00c12083          	lw	ra,12(sp)
83005154:	00812403          	lw	s0,8(sp)
83005158:	00412483          	lw	s1,4(sp)
8300515c:	01010113          	addi	sp,sp,16
83005160:	00008067          	ret
83005164:	00048513          	mv	a0,s1
83005168:	00000097          	auipc	ra,0x0
8300516c:	370080e7          	jalr	880(ra) # 830054d8 <_getpid_r>
83005170:	00040613          	mv	a2,s0
83005174:	00812403          	lw	s0,8(sp)
83005178:	00c12083          	lw	ra,12(sp)
8300517c:	00050593          	mv	a1,a0
83005180:	00048513          	mv	a0,s1
83005184:	00412483          	lw	s1,4(sp)
83005188:	01010113          	addi	sp,sp,16
8300518c:	00000317          	auipc	t1,0x0
83005190:	2e030067          	jr	736(t1) # 8300546c <_kill_r>
83005194:	00c12083          	lw	ra,12(sp)
83005198:	00812403          	lw	s0,8(sp)
8300519c:	01600793          	li	a5,22
830051a0:	00f4a023          	sw	a5,0(s1)
830051a4:	00100513          	li	a0,1
830051a8:	00412483          	lw	s1,4(sp)
830051ac:	01010113          	addi	sp,sp,16
830051b0:	00008067          	ret
830051b4:	00c12083          	lw	ra,12(sp)
830051b8:	00812403          	lw	s0,8(sp)
830051bc:	00412483          	lw	s1,4(sp)
830051c0:	00000513          	li	a0,0
830051c4:	01010113          	addi	sp,sp,16
830051c8:	00008067          	ret
830051cc:	01600793          	li	a5,22
830051d0:	00f4a023          	sw	a5,0(s1)
830051d4:	fff00513          	li	a0,-1
830051d8:	f79ff06f          	j	83005150 <raise+0x58>

830051dc <signal>:
830051dc:	ff010113          	addi	sp,sp,-16
830051e0:	01212023          	sw	s2,0(sp)
830051e4:	83007737          	lui	a4,0x83007
830051e8:	00112623          	sw	ra,12(sp)
830051ec:	00812423          	sw	s0,8(sp)
830051f0:	00912223          	sw	s1,4(sp)
830051f4:	01f00793          	li	a5,31
830051f8:	88872903          	lw	s2,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
830051fc:	02a7ee63          	bltu	a5,a0,83005238 <signal+0x5c>
83005200:	00050413          	mv	s0,a0
83005204:	2dc92503          	lw	a0,732(s2)
83005208:	00058493          	mv	s1,a1
8300520c:	04050863          	beqz	a0,8300525c <signal+0x80>
83005210:	00241413          	slli	s0,s0,0x2
83005214:	008507b3          	add	a5,a0,s0
83005218:	0007a503          	lw	a0,0(a5)
8300521c:	0097a023          	sw	s1,0(a5)
83005220:	00c12083          	lw	ra,12(sp)
83005224:	00812403          	lw	s0,8(sp)
83005228:	00412483          	lw	s1,4(sp)
8300522c:	00012903          	lw	s2,0(sp)
83005230:	01010113          	addi	sp,sp,16
83005234:	00008067          	ret
83005238:	00c12083          	lw	ra,12(sp)
8300523c:	00812403          	lw	s0,8(sp)
83005240:	01600793          	li	a5,22
83005244:	00f92023          	sw	a5,0(s2)
83005248:	00412483          	lw	s1,4(sp)
8300524c:	00012903          	lw	s2,0(sp)
83005250:	fff00513          	li	a0,-1
83005254:	01010113          	addi	sp,sp,16
83005258:	00008067          	ret
8300525c:	08000593          	li	a1,128
83005260:	00090513          	mv	a0,s2
83005264:	ffffe097          	auipc	ra,0xffffe
83005268:	004080e7          	jalr	4(ra) # 83003268 <_malloc_r>
8300526c:	2ca92e23          	sw	a0,732(s2)
83005270:	00050e63          	beqz	a0,8300528c <signal+0xb0>
83005274:	00050793          	mv	a5,a0
83005278:	08050713          	addi	a4,a0,128
8300527c:	0007a023          	sw	zero,0(a5)
83005280:	00478793          	addi	a5,a5,4
83005284:	fee79ce3          	bne	a5,a4,8300527c <signal+0xa0>
83005288:	f89ff06f          	j	83005210 <signal+0x34>
8300528c:	fff00513          	li	a0,-1
83005290:	f91ff06f          	j	83005220 <signal+0x44>

83005294 <_init_signal>:
83005294:	ff010113          	addi	sp,sp,-16
83005298:	830077b7          	lui	a5,0x83007
8300529c:	00812423          	sw	s0,8(sp)
830052a0:	8887a403          	lw	s0,-1912(a5) # 83006888 <__BSS_END__+0xffffffb4>
830052a4:	00112623          	sw	ra,12(sp)
830052a8:	2dc42783          	lw	a5,732(s0)
830052ac:	00078c63          	beqz	a5,830052c4 <_init_signal+0x30>
830052b0:	00000513          	li	a0,0
830052b4:	00c12083          	lw	ra,12(sp)
830052b8:	00812403          	lw	s0,8(sp)
830052bc:	01010113          	addi	sp,sp,16
830052c0:	00008067          	ret
830052c4:	08000593          	li	a1,128
830052c8:	00040513          	mv	a0,s0
830052cc:	ffffe097          	auipc	ra,0xffffe
830052d0:	f9c080e7          	jalr	-100(ra) # 83003268 <_malloc_r>
830052d4:	2ca42e23          	sw	a0,732(s0)
830052d8:	00050c63          	beqz	a0,830052f0 <_init_signal+0x5c>
830052dc:	08050793          	addi	a5,a0,128
830052e0:	00052023          	sw	zero,0(a0)
830052e4:	00450513          	addi	a0,a0,4
830052e8:	fef51ce3          	bne	a0,a5,830052e0 <_init_signal+0x4c>
830052ec:	fc5ff06f          	j	830052b0 <_init_signal+0x1c>
830052f0:	fff00513          	li	a0,-1
830052f4:	fc1ff06f          	j	830052b4 <_init_signal+0x20>

830052f8 <__sigtramp>:
830052f8:	ff010113          	addi	sp,sp,-16
830052fc:	00912223          	sw	s1,4(sp)
83005300:	83007737          	lui	a4,0x83007
83005304:	00112623          	sw	ra,12(sp)
83005308:	00812423          	sw	s0,8(sp)
8300530c:	01f00793          	li	a5,31
83005310:	88872483          	lw	s1,-1912(a4) # 83006888 <__BSS_END__+0xffffffb4>
83005314:	0ca7e063          	bltu	a5,a0,830053d4 <__sigtramp+0xdc>
83005318:	2dc4a703          	lw	a4,732(s1)
8300531c:	00050413          	mv	s0,a0
83005320:	06070063          	beqz	a4,83005380 <__sigtramp+0x88>
83005324:	00241793          	slli	a5,s0,0x2
83005328:	00f70733          	add	a4,a4,a5
8300532c:	00072783          	lw	a5,0(a4)
83005330:	02078c63          	beqz	a5,83005368 <__sigtramp+0x70>
83005334:	fff00693          	li	a3,-1
83005338:	08d78a63          	beq	a5,a3,830053cc <__sigtramp+0xd4>
8300533c:	00100693          	li	a3,1
83005340:	06d78a63          	beq	a5,a3,830053b4 <__sigtramp+0xbc>
83005344:	00040513          	mv	a0,s0
83005348:	00072023          	sw	zero,0(a4)
8300534c:	000780e7          	jalr	a5
83005350:	00000513          	li	a0,0
83005354:	00c12083          	lw	ra,12(sp)
83005358:	00812403          	lw	s0,8(sp)
8300535c:	00412483          	lw	s1,4(sp)
83005360:	01010113          	addi	sp,sp,16
83005364:	00008067          	ret
83005368:	00c12083          	lw	ra,12(sp)
8300536c:	00812403          	lw	s0,8(sp)
83005370:	00412483          	lw	s1,4(sp)
83005374:	00100513          	li	a0,1
83005378:	01010113          	addi	sp,sp,16
8300537c:	00008067          	ret
83005380:	08000593          	li	a1,128
83005384:	00048513          	mv	a0,s1
83005388:	ffffe097          	auipc	ra,0xffffe
8300538c:	ee0080e7          	jalr	-288(ra) # 83003268 <_malloc_r>
83005390:	2ca4ae23          	sw	a0,732(s1)
83005394:	00050713          	mv	a4,a0
83005398:	02050e63          	beqz	a0,830053d4 <__sigtramp+0xdc>
8300539c:	00050793          	mv	a5,a0
830053a0:	08050693          	addi	a3,a0,128
830053a4:	0007a023          	sw	zero,0(a5)
830053a8:	00478793          	addi	a5,a5,4
830053ac:	fed79ce3          	bne	a5,a3,830053a4 <__sigtramp+0xac>
830053b0:	f75ff06f          	j	83005324 <__sigtramp+0x2c>
830053b4:	00c12083          	lw	ra,12(sp)
830053b8:	00812403          	lw	s0,8(sp)
830053bc:	00412483          	lw	s1,4(sp)
830053c0:	00300513          	li	a0,3
830053c4:	01010113          	addi	sp,sp,16
830053c8:	00008067          	ret
830053cc:	00200513          	li	a0,2
830053d0:	f85ff06f          	j	83005354 <__sigtramp+0x5c>
830053d4:	fff00513          	li	a0,-1
830053d8:	f7dff06f          	j	83005354 <__sigtramp+0x5c>

830053dc <_fiprintf_r>:
830053dc:	fc010113          	addi	sp,sp,-64
830053e0:	02c10313          	addi	t1,sp,44
830053e4:	02d12623          	sw	a3,44(sp)
830053e8:	00030693          	mv	a3,t1
830053ec:	00112e23          	sw	ra,28(sp)
830053f0:	02e12823          	sw	a4,48(sp)
830053f4:	02f12a23          	sw	a5,52(sp)
830053f8:	03012c23          	sw	a6,56(sp)
830053fc:	03112e23          	sw	a7,60(sp)
83005400:	00612623          	sw	t1,12(sp)
83005404:	ffffc097          	auipc	ra,0xffffc
83005408:	850080e7          	jalr	-1968(ra) # 83000c54 <_vfiprintf_r>
8300540c:	01c12083          	lw	ra,28(sp)
83005410:	04010113          	addi	sp,sp,64
83005414:	00008067          	ret

83005418 <fiprintf>:
83005418:	00050e13          	mv	t3,a0
8300541c:	83007537          	lui	a0,0x83007
83005420:	fc010113          	addi	sp,sp,-64
83005424:	88852503          	lw	a0,-1912(a0) # 83006888 <__BSS_END__+0xffffffb4>
83005428:	02810313          	addi	t1,sp,40
8300542c:	02c12423          	sw	a2,40(sp)
83005430:	02d12623          	sw	a3,44(sp)
83005434:	00058613          	mv	a2,a1
83005438:	00030693          	mv	a3,t1
8300543c:	000e0593          	mv	a1,t3
83005440:	00112e23          	sw	ra,28(sp)
83005444:	02e12823          	sw	a4,48(sp)
83005448:	02f12a23          	sw	a5,52(sp)
8300544c:	03012c23          	sw	a6,56(sp)
83005450:	03112e23          	sw	a7,60(sp)
83005454:	00612623          	sw	t1,12(sp)
83005458:	ffffb097          	auipc	ra,0xffffb
8300545c:	7fc080e7          	jalr	2044(ra) # 83000c54 <_vfiprintf_r>
83005460:	01c12083          	lw	ra,28(sp)
83005464:	04010113          	addi	sp,sp,64
83005468:	00008067          	ret

8300546c <_kill_r>:
8300546c:	ff010113          	addi	sp,sp,-16
83005470:	00058713          	mv	a4,a1
83005474:	00812423          	sw	s0,8(sp)
83005478:	00912223          	sw	s1,4(sp)
8300547c:	00050413          	mv	s0,a0
83005480:	830074b7          	lui	s1,0x83007
83005484:	00060593          	mv	a1,a2
83005488:	00070513          	mv	a0,a4
8300548c:	00112623          	sw	ra,12(sp)
83005490:	8804ac23          	sw	zero,-1896(s1) # 83006898 <__BSS_END__+0xffffffc4>
83005494:	fffff097          	auipc	ra,0xfffff
83005498:	648080e7          	jalr	1608(ra) # 83004adc <_kill>
8300549c:	fff00793          	li	a5,-1
830054a0:	00f50c63          	beq	a0,a5,830054b8 <_kill_r+0x4c>
830054a4:	00c12083          	lw	ra,12(sp)
830054a8:	00812403          	lw	s0,8(sp)
830054ac:	00412483          	lw	s1,4(sp)
830054b0:	01010113          	addi	sp,sp,16
830054b4:	00008067          	ret
830054b8:	8984a783          	lw	a5,-1896(s1)
830054bc:	fe0784e3          	beqz	a5,830054a4 <_kill_r+0x38>
830054c0:	00c12083          	lw	ra,12(sp)
830054c4:	00f42023          	sw	a5,0(s0)
830054c8:	00812403          	lw	s0,8(sp)
830054cc:	00412483          	lw	s1,4(sp)
830054d0:	01010113          	addi	sp,sp,16
830054d4:	00008067          	ret

830054d8 <_getpid_r>:
830054d8:	fffff317          	auipc	t1,0xfffff
830054dc:	61830067          	jr	1560(t1) # 83004af0 <_getpid>

830054e0 <__call_exitprocs>:
830054e0:	fd010113          	addi	sp,sp,-48
830054e4:	830077b7          	lui	a5,0x83007
830054e8:	01412c23          	sw	s4,24(sp)
830054ec:	8307aa03          	lw	s4,-2000(a5) # 83006830 <__BSS_END__+0xffffff5c>
830054f0:	03212023          	sw	s2,32(sp)
830054f4:	02112623          	sw	ra,44(sp)
830054f8:	148a2903          	lw	s2,328(s4)
830054fc:	02812423          	sw	s0,40(sp)
83005500:	02912223          	sw	s1,36(sp)
83005504:	01312e23          	sw	s3,28(sp)
83005508:	01512a23          	sw	s5,20(sp)
8300550c:	01612823          	sw	s6,16(sp)
83005510:	01712623          	sw	s7,12(sp)
83005514:	01812423          	sw	s8,8(sp)
83005518:	04090063          	beqz	s2,83005558 <__call_exitprocs+0x78>
8300551c:	00050b13          	mv	s6,a0
83005520:	00058b93          	mv	s7,a1
83005524:	00100a93          	li	s5,1
83005528:	fff00993          	li	s3,-1
8300552c:	00492483          	lw	s1,4(s2)
83005530:	fff48413          	addi	s0,s1,-1
83005534:	02044263          	bltz	s0,83005558 <__call_exitprocs+0x78>
83005538:	00249493          	slli	s1,s1,0x2
8300553c:	009904b3          	add	s1,s2,s1
83005540:	040b8463          	beqz	s7,83005588 <__call_exitprocs+0xa8>
83005544:	1044a783          	lw	a5,260(s1)
83005548:	05778063          	beq	a5,s7,83005588 <__call_exitprocs+0xa8>
8300554c:	fff40413          	addi	s0,s0,-1
83005550:	ffc48493          	addi	s1,s1,-4
83005554:	ff3416e3          	bne	s0,s3,83005540 <__call_exitprocs+0x60>
83005558:	02c12083          	lw	ra,44(sp)
8300555c:	02812403          	lw	s0,40(sp)
83005560:	02412483          	lw	s1,36(sp)
83005564:	02012903          	lw	s2,32(sp)
83005568:	01c12983          	lw	s3,28(sp)
8300556c:	01812a03          	lw	s4,24(sp)
83005570:	01412a83          	lw	s5,20(sp)
83005574:	01012b03          	lw	s6,16(sp)
83005578:	00c12b83          	lw	s7,12(sp)
8300557c:	00812c03          	lw	s8,8(sp)
83005580:	03010113          	addi	sp,sp,48
83005584:	00008067          	ret
83005588:	00492783          	lw	a5,4(s2)
8300558c:	0044a683          	lw	a3,4(s1)
83005590:	fff78793          	addi	a5,a5,-1
83005594:	04878e63          	beq	a5,s0,830055f0 <__call_exitprocs+0x110>
83005598:	0004a223          	sw	zero,4(s1)
8300559c:	fa0688e3          	beqz	a3,8300554c <__call_exitprocs+0x6c>
830055a0:	18892783          	lw	a5,392(s2)
830055a4:	008a9733          	sll	a4,s5,s0
830055a8:	00492c03          	lw	s8,4(s2)
830055ac:	00f777b3          	and	a5,a4,a5
830055b0:	02079263          	bnez	a5,830055d4 <__call_exitprocs+0xf4>
830055b4:	000680e7          	jalr	a3
830055b8:	00492703          	lw	a4,4(s2)
830055bc:	148a2783          	lw	a5,328(s4)
830055c0:	01871463          	bne	a4,s8,830055c8 <__call_exitprocs+0xe8>
830055c4:	f92784e3          	beq	a5,s2,8300554c <__call_exitprocs+0x6c>
830055c8:	f80788e3          	beqz	a5,83005558 <__call_exitprocs+0x78>
830055cc:	00078913          	mv	s2,a5
830055d0:	f5dff06f          	j	8300552c <__call_exitprocs+0x4c>
830055d4:	18c92783          	lw	a5,396(s2)
830055d8:	0844a583          	lw	a1,132(s1)
830055dc:	00f77733          	and	a4,a4,a5
830055e0:	00071c63          	bnez	a4,830055f8 <__call_exitprocs+0x118>
830055e4:	000b0513          	mv	a0,s6
830055e8:	000680e7          	jalr	a3
830055ec:	fcdff06f          	j	830055b8 <__call_exitprocs+0xd8>
830055f0:	00892223          	sw	s0,4(s2)
830055f4:	fa9ff06f          	j	8300559c <__call_exitprocs+0xbc>
830055f8:	00058513          	mv	a0,a1
830055fc:	000680e7          	jalr	a3
83005600:	fb9ff06f          	j	830055b8 <__call_exitprocs+0xd8>
