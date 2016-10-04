;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Jul  5 2014) (Linux)
; This file was generated Mon Sep 19 15:43:07 2016
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _spi_write
	.globl _init_usb
	.globl _RFRDY
	.globl _rfcsn
	.globl _rfce
	.globl _ien1
	.globl _ien0
	.globl _REGXC
	.globl _REGXL
	.globl _REGXH
	.globl _TICKDV
	.globl _RFDAT
	.globl _P0DIR
	.globl _P0
	.globl _AESIA1
	.globl _AESIV
	.globl _usbcon
	.globl _rfcon
	.globl _rfctl
	.globl _setupbuf
	.globl _out1buf
	.globl _in1buf
	.globl _in0buf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_rfctl	=	0x00e6
_rfcon	=	0x0090
_usbcon	=	0x00a0
_AESIV	=	0x00f2
_AESIA1	=	0x00f5
_P0	=	0x0080
_P0DIR	=	0x0094
_RFDAT	=	0x00e5
_TICKDV	=	0x00ab
_REGXH	=	0x00ab
_REGXL	=	0x00ac
_REGXC	=	0x00ad
_ien0	=	0x00a8
_ien1	=	0x00b8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_rfce	=	0x0090
_rfcsn	=	0x0091
_RFRDY	=	0x00c0
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_configured:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_in0buf	=	0xc700
_in1buf	=	0xc680
_out1buf	=	0xc640
_setupbuf	=	0xc7e8
_radio_mode:
	.ds 1
_pm_prefix_length:
	.ds 2
_pm_prefix:
	.ds 5
_pm_payload_length:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_nordic_bootloader:
	.ds 2
_logitech_bootloader:
	.ds 2
_promiscuous_address:
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_usb_irq
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__00030005                Allocated with name '_main___00030005_4_17'
;us                        Allocated with name '_main_us_4_17'
;------------------------------------------------------------
;	src/main.c:23: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:25: rfcon = 0x06; // enable RF clock
	mov	_rfcon,#0x06
;	src/main.c:26: rfctl = 0x10; // enable SPI
	mov	_rfctl,#0x10
;	src/main.c:27: ien0 = 0x80;  // enable interrupts
	mov	_ien0,#0x80
;	src/main.c:28: TICKDV = 0xFF; // set the tick divider
	mov	_TICKDV,#0xFF
;	src/main.c:31: init_usb();
	lcall	_init_usb
;	src/main.c:34: flush_rx();
	mov	dptr,#_spi_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	movx	@dptr,a
	mov	dpl,#0xE2
	lcall	_spi_write
;	src/main.c:35: flush_tx();
	mov	dptr,#_spi_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	movx	@dptr,a
	mov	dpl,#0xE1
	lcall	_spi_write
;	src/main.c:38: while(1)
00102$:
;	src/main.c:40: REGXH = 0xFF;
	mov	_REGXH,#0xFF
;	src/main.c:41: REGXL = 0xFF;
	mov	_REGXL,#0xFF
;	src/main.c:42: REGXC = 0x08;
	mov	_REGXC,#0x08
;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
	mov	r6,#0xE8
	mov	r7,#0x03
00104$:
	nop 
	nop 
	nop 
	nop 
	dec	r6
	cjne	r6,#0xFF,00120$
	dec	r7
00120$:
	mov	a,r6
	orl	a,r7
	jnz	00104$
;	src/main.c:43: delay_us(1000);
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__nordic_bootloader:
	.byte #0x00,#0x78
__xinit__logitech_bootloader:
	.byte #0x00,#0x74
__xinit__promiscuous_address:
	.db #0xAA	; 170
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
