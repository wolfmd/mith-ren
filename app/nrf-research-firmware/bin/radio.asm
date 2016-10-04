;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Jul  5 2014) (Linux)
; This file was generated Mon Sep 19 15:43:07 2016
;--------------------------------------------------------
	.module radio
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _spi_transfer
	.globl _memcpy
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
	.globl _handle_radio_request_PARM_2
	.globl _crc_update_PARM_3
	.globl _crc_update_PARM_2
	.globl _write_register_byte_PARM_2
	.globl _spi_read_PARM_3
	.globl _spi_read_PARM_2
	.globl _spi_write_PARM_3
	.globl _spi_write_PARM_2
	.globl _configure_phy_PARM_3
	.globl _configure_phy_PARM_2
	.globl _configure_mac_PARM_3
	.globl _configure_mac_PARM_2
	.globl _configure_address_PARM_2
	.globl _enter_promiscuous_mode_generic_PARM_4
	.globl _enter_promiscuous_mode_generic_PARM_3
	.globl _enter_promiscuous_mode_generic_PARM_2
	.globl _enter_promiscuous_mode_PARM_2
	.globl _setupbuf
	.globl _out1buf
	.globl _in1buf
	.globl _in0buf
	.globl _enter_promiscuous_mode
	.globl _enter_promiscuous_mode_generic
	.globl _configure_address
	.globl _configure_mac
	.globl _configure_phy
	.globl _spi_write
	.globl _spi_read
	.globl _write_register_byte
	.globl _read_register_byte
	.globl _crc_update
	.globl _handle_radio_request
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
_enter_promiscuous_mode_sloc0_1_0:
	.ds 2
_enter_promiscuous_mode_generic_sloc0_1_0:
	.ds 2
_spi_read_sloc0_1_0:
	.ds 3
_handle_radio_request_sloc0_1_0:
	.ds 1
_handle_radio_request_sloc1_1_0:
	.ds 3
_handle_radio_request_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_enter_promiscuous_mode_PARM_2:
	.ds 1
_enter_promiscuous_mode_prefix_1_34:
	.ds 3
_enter_promiscuous_mode_address_2_36:
	.ds 2
_enter_promiscuous_mode_generic_PARM_2:
	.ds 1
_enter_promiscuous_mode_generic_PARM_3:
	.ds 1
_enter_promiscuous_mode_generic_PARM_4:
	.ds 1
_enter_promiscuous_mode_generic_prefix_1_37:
	.ds 3
_enter_promiscuous_mode_generic_address_2_39:
	.ds 2
_configure_address_PARM_2:
	.ds 1
_configure_address_address_1_41:
	.ds 3
_configure_mac_PARM_2:
	.ds 1
_configure_mac_PARM_3:
	.ds 1
_configure_mac_feature_1_43:
	.ds 1
_configure_phy_PARM_2:
	.ds 1
_configure_phy_PARM_3:
	.ds 1
_configure_phy_config_1_45:
	.ds 1
_spi_transfer_byte_1_47:
	.ds 1
_spi_write_PARM_2:
	.ds 3
_spi_write_PARM_3:
	.ds 1
_spi_write_command_1_49:
	.ds 1
_spi_read_PARM_2:
	.ds 3
_spi_read_PARM_3:
	.ds 1
_spi_read_command_1_51:
	.ds 1
_write_register_byte_PARM_2:
	.ds 1
_write_register_byte_reg_1_53:
	.ds 1
_read_register_byte_reg_1_55:
	.ds 1
_read_register_byte_value_1_56:
	.ds 1
_crc_update_PARM_2:
	.ds 1
_crc_update_PARM_3:
	.ds 1
_crc_update_crc_1_57:
	.ds 2
_handle_radio_request_PARM_2:
	.ds 3
_handle_radio_request_request_1_59:
	.ds 1
_handle_radio_request_command_2_62:
	.ds 9
_handle_radio_request_value_2_70:
	.ds 1
_handle_radio_request_crc_4_75:
	.ds 2
_handle_radio_request_crc_given_4_75:
	.ds 2
_handle_radio_request_payload_4_75:
	.ds 37
_handle_radio_request_payload_4_81:
	.ds 37
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_promiscuous_mode'
;------------------------------------------------------------
;sloc0                     Allocated with name '_enter_promiscuous_mode_sloc0_1_0'
;prefix_length             Allocated with name '_enter_promiscuous_mode_PARM_2'
;prefix                    Allocated with name '_enter_promiscuous_mode_prefix_1_34'
;x                         Allocated with name '_enter_promiscuous_mode_x_1_35'
;address                   Allocated with name '_enter_promiscuous_mode_address_2_36'
;------------------------------------------------------------
;	src/radio.c:9: void enter_promiscuous_mode(uint8_t * prefix, uint8_t prefix_length)
;	-----------------------------------------
;	 function enter_promiscuous_mode
;	-----------------------------------------
_enter_promiscuous_mode:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_enter_promiscuous_mode_prefix_1_34
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:13: for(x = 0; x < prefix_length; x++) pm_prefix[prefix_length - 1 - x] = prefix[x];
	mov	dptr,#_enter_promiscuous_mode_prefix_1_34
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_enter_promiscuous_mode_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	mov	r3,#0x00
00109$:
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	mov	a,r4
	dec	a
	mov	ar0,r2
	clr	c
	subb	a,r0
	add	a,#_pm_prefix
	mov	_enter_promiscuous_mode_sloc0_1_0,a
	clr	a
	addc	a,#(_pm_prefix >> 8)
	mov	(_enter_promiscuous_mode_sloc0_1_0 + 1),a
	push	ar4
	mov	a,r2
	add	a,r5
	mov	r0,a
	mov	a,r3
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dpl,_enter_promiscuous_mode_sloc0_1_0
	mov	dph,(_enter_promiscuous_mode_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	r2
	cjne	r2,#0x00,00137$
	inc	r3
00137$:
	pop	ar4
	sjmp	00109$
00101$:
;	src/radio.c:14: pm_prefix_length = prefix_length > 5 ? 5 : prefix_length;
	mov	a,r4
	add	a,#0xff - 0x05
	jnc	00113$
	mov	r7,#0x05
	sjmp	00114$
00113$:
	mov	ar7,r4
00114$:
	mov	dptr,#_pm_prefix_length
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/radio.c:15: radio_mode = promiscuous;
	mov	dptr,#_radio_mode
	inc	a
	movx	@dptr,a
;	src/radio.c:16: pm_payload_length = 32;
	mov	dptr,#_pm_payload_length
	mov	a,#0x20
	movx	@dptr,a
;	src/radio.c:19: rfce = 0;
	clr	_rfce
;	src/radio.c:22: write_register_byte(EN_RXADDR, ENRX_P0);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_write_register_byte
;	src/radio.c:25: if(pm_prefix_length == 0) configure_address(promiscuous_address, 2);
	mov	dptr,#_pm_prefix_length
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00106$
	mov	dptr,#_configure_address_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_promiscuous_address
	mov	b,#0x00
	lcall	_configure_address
	sjmp	00107$
00106$:
;	src/radio.c:28: else if(pm_prefix_length == 1)
	cjne	r6,#0x01,00103$
	cjne	r7,#0x00,00103$
;	src/radio.c:30: uint8_t address[2] = { pm_prefix[0], (pm_prefix[0] & 0x80) == 0x80 ? 0xAA : 0x55 };
	mov	dptr,#_pm_prefix
	movx	a,@dptr
	mov	dptr,#_enter_promiscuous_mode_address_2_36
	movx	@dptr,a
	mov	dptr,#_pm_prefix
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x80
	cjne	r5,#0x80,00115$
	mov	r5,#0xAA
	sjmp	00116$
00115$:
	mov	r5,#0x55
00116$:
	mov	dptr,#(_enter_promiscuous_mode_address_2_36 + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	src/radio.c:31: configure_address(address, 2);
	mov	dptr,#_configure_address_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_enter_promiscuous_mode_address_2_36
	mov	b,#0x00
	lcall	_configure_address
	sjmp	00107$
00103$:
;	src/radio.c:35: else configure_address(pm_prefix, pm_prefix_length);
	mov	dptr,#_configure_address_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_pm_prefix
	mov	b,#0x00
	lcall	_configure_address
00107$:
;	src/radio.c:38: configure_mac(0, 0, ENAA_NONE);
	mov	dptr,#_configure_mac_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_configure_mac_PARM_3
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_configure_mac
;	src/radio.c:41: configure_phy(PRIM_RX | PWR_UP, RATE_2M, pm_payload_length);
	mov	dptr,#_pm_payload_length
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_configure_phy_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_configure_phy_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_configure_phy
;	src/radio.c:44: rfce = 1;
	setb	_rfce
;	src/radio.c:45: in1bc = 0;
	mov	dptr,#0xC7B7
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_promiscuous_mode_generic'
;------------------------------------------------------------
;sloc0                     Allocated with name '_enter_promiscuous_mode_generic_sloc0_1_0'
;prefix_length             Allocated with name '_enter_promiscuous_mode_generic_PARM_2'
;rate                      Allocated with name '_enter_promiscuous_mode_generic_PARM_3'
;payload_length            Allocated with name '_enter_promiscuous_mode_generic_PARM_4'
;prefix                    Allocated with name '_enter_promiscuous_mode_generic_prefix_1_37'
;x                         Allocated with name '_enter_promiscuous_mode_generic_x_1_38'
;address                   Allocated with name '_enter_promiscuous_mode_generic_address_2_39'
;------------------------------------------------------------
;	src/radio.c:49: void enter_promiscuous_mode_generic(uint8_t * prefix, uint8_t prefix_length, uint8_t rate, uint8_t payload_length)
;	-----------------------------------------
;	 function enter_promiscuous_mode_generic
;	-----------------------------------------
_enter_promiscuous_mode_generic:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_enter_promiscuous_mode_generic_prefix_1_37
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:53: for(x = 0; x < prefix_length; x++) pm_prefix[prefix_length - 1 - x] = prefix[x];
	mov	dptr,#_enter_promiscuous_mode_generic_prefix_1_37
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_enter_promiscuous_mode_generic_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	mov	r3,#0x00
00113$:
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	mov	a,r4
	dec	a
	mov	ar0,r2
	clr	c
	subb	a,r0
	add	a,#_pm_prefix
	mov	_enter_promiscuous_mode_generic_sloc0_1_0,a
	clr	a
	addc	a,#(_pm_prefix >> 8)
	mov	(_enter_promiscuous_mode_generic_sloc0_1_0 + 1),a
	push	ar4
	mov	a,r2
	add	a,r5
	mov	r0,a
	mov	a,r3
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dpl,_enter_promiscuous_mode_generic_sloc0_1_0
	mov	dph,(_enter_promiscuous_mode_generic_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	r2
	cjne	r2,#0x00,00147$
	inc	r3
00147$:
	pop	ar4
	sjmp	00113$
00101$:
;	src/radio.c:54: pm_prefix_length = prefix_length > 5 ? 5 : prefix_length;
	mov	a,r4
	add	a,#0xff - 0x05
	jnc	00117$
	mov	r7,#0x05
	sjmp	00118$
00117$:
	mov	ar7,r4
00118$:
	mov	dptr,#_pm_prefix_length
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/radio.c:55: radio_mode = promiscuous_generic;
	mov	dptr,#_radio_mode
	mov	a,#0x02
	movx	@dptr,a
;	src/radio.c:56: pm_payload_length = payload_length;
	mov	dptr,#_enter_promiscuous_mode_generic_PARM_4
	movx	a,@dptr
	mov	dptr,#_pm_payload_length
	movx	@dptr,a
;	src/radio.c:59: rfce = 0;
	clr	_rfce
;	src/radio.c:62: write_register_byte(EN_RXADDR, ENRX_P0);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_write_register_byte
;	src/radio.c:65: if(pm_prefix_length == 0) configure_address(promiscuous_address, 2);
	mov	dptr,#_pm_prefix_length
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00106$
	mov	dptr,#_configure_address_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_promiscuous_address
	mov	b,#0x00
	lcall	_configure_address
	sjmp	00107$
00106$:
;	src/radio.c:68: else if(pm_prefix_length == 1)
	cjne	r6,#0x01,00103$
	cjne	r7,#0x00,00103$
;	src/radio.c:70: uint8_t address[2] = { pm_prefix[0], (pm_prefix[0] & 0x80) == 0x80 ? 0xAA : 0x55 };
	mov	dptr,#_pm_prefix
	movx	a,@dptr
	mov	dptr,#_enter_promiscuous_mode_generic_address_2_39
	movx	@dptr,a
	mov	dptr,#_pm_prefix
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x80
	cjne	r5,#0x80,00119$
	mov	r5,#0xAA
	sjmp	00120$
00119$:
	mov	r5,#0x55
00120$:
	mov	dptr,#(_enter_promiscuous_mode_generic_address_2_39 + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	src/radio.c:71: configure_address(address, 2);
	mov	dptr,#_configure_address_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_enter_promiscuous_mode_generic_address_2_39
	mov	b,#0x00
	lcall	_configure_address
	sjmp	00107$
00103$:
;	src/radio.c:75: else configure_address(pm_prefix, pm_prefix_length);
	mov	dptr,#_configure_address_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_pm_prefix
	mov	b,#0x00
	lcall	_configure_address
00107$:
;	src/radio.c:78: configure_mac(0, 0, ENAA_NONE);
	mov	dptr,#_configure_mac_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_configure_mac_PARM_3
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_configure_mac
;	src/radio.c:81: switch(rate)
	mov	dptr,#_enter_promiscuous_mode_generic_PARM_3
	movx	a,@dptr
	mov	r7,a
	jz	00108$
;	src/radio.c:83: case 0:  configure_phy(PRIM_RX | PWR_UP, RF_PWR_4 | RATE_250K, pm_payload_length); break;
	cjne	r7,#0x01,00110$
	sjmp	00109$
00108$:
	mov	dptr,#_pm_payload_length
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_configure_phy_PARM_2
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#_configure_phy_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_configure_phy
;	src/radio.c:84: case 1:  configure_phy(PRIM_RX | PWR_UP, RF_PWR_4 | RATE_1M, pm_payload_length); break;
	sjmp	00111$
00109$:
	mov	dptr,#_pm_payload_length
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_configure_phy_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_configure_phy_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_configure_phy
;	src/radio.c:85: default: configure_phy(PRIM_RX | PWR_UP, RF_PWR_4 | RATE_2M, pm_payload_length); break;
	sjmp	00111$
00110$:
	mov	dptr,#_pm_payload_length
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_configure_phy_PARM_2
	mov	a,#0x0E
	movx	@dptr,a
	mov	dptr,#_configure_phy_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_configure_phy
;	src/radio.c:86: }
00111$:
;	src/radio.c:89: rfce = 1;
	setb	_rfce
;	src/radio.c:90: in1bc = 0;
	mov	dptr,#0xC7B7
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configure_address'
;------------------------------------------------------------
;length                    Allocated with name '_configure_address_PARM_2'
;address                   Allocated with name '_configure_address_address_1_41'
;------------------------------------------------------------
;	src/radio.c:94: void configure_address(uint8_t * address, uint8_t length)
;	-----------------------------------------
;	 function configure_address
;	-----------------------------------------
_configure_address:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_configure_address_address_1_41
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:96: write_register_byte(EN_RXADDR, ENRX_P0);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_write_register_byte
;	src/radio.c:97: write_register_byte(SETUP_AW, length - 2);
	mov	dptr,#_configure_address_PARM_2
	movx	a,@dptr
	mov	r7,a
	add	a,#0xFE
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x03
	push	ar7
	lcall	_write_register_byte
	pop	ar7
;	src/radio.c:98: write_register(TX_ADDR, address, length);
	mov	dptr,#_configure_address_address_1_41
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_spi_write_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x30
	push	ar7
	lcall	_spi_write
	pop	ar7
;	src/radio.c:99: write_register(RX_ADDR_P0, address, length);
	mov	dptr,#_configure_address_address_1_41
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_spi_write_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x2A
	ljmp	_spi_write
;------------------------------------------------------------
;Allocation info for local variables in function 'configure_mac'
;------------------------------------------------------------
;dynpd                     Allocated with name '_configure_mac_PARM_2'
;en_aa                     Allocated with name '_configure_mac_PARM_3'
;feature                   Allocated with name '_configure_mac_feature_1_43'
;------------------------------------------------------------
;	src/radio.c:103: void configure_mac(uint8_t feature, uint8_t dynpd, uint8_t en_aa)
;	-----------------------------------------
;	 function configure_mac
;	-----------------------------------------
_configure_mac:
	mov	a,dpl
	mov	dptr,#_configure_mac_feature_1_43
	movx	@dptr,a
;	src/radio.c:105: write_register_byte(FEATURE, feature);
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x1D
	lcall	_write_register_byte
;	src/radio.c:106: write_register_byte(DYNPD, dynpd);
	mov	dptr,#_configure_mac_PARM_2
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x1C
	lcall	_write_register_byte
;	src/radio.c:107: write_register_byte(EN_AA, en_aa);
	mov	dptr,#_configure_mac_PARM_3
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x01
	ljmp	_write_register_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'configure_phy'
;------------------------------------------------------------
;rf_setup                  Allocated with name '_configure_phy_PARM_2'
;rx_pw                     Allocated with name '_configure_phy_PARM_3'
;config                    Allocated with name '_configure_phy_config_1_45'
;------------------------------------------------------------
;	src/radio.c:111: void configure_phy(uint8_t config, uint8_t rf_setup, uint8_t rx_pw)
;	-----------------------------------------
;	 function configure_phy
;	-----------------------------------------
_configure_phy:
	mov	a,dpl
	mov	dptr,#_configure_phy_config_1_45
	movx	@dptr,a
;	src/radio.c:113: write_register_byte(CONFIG, config);
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_write_register_byte
;	src/radio.c:114: write_register_byte(RF_SETUP, rf_setup);
	mov	dptr,#_configure_phy_PARM_2
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_write_register_byte
;	src/radio.c:115: write_register_byte(RX_PW_P0, rx_pw);
	mov	dptr,#_configure_phy_PARM_3
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x11
	ljmp	_write_register_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_transfer'
;------------------------------------------------------------
;byte                      Allocated with name '_spi_transfer_byte_1_47'
;------------------------------------------------------------
;	src/radio.c:119: uint8_t spi_transfer(uint8_t byte)
;	-----------------------------------------
;	 function spi_transfer
;	-----------------------------------------
_spi_transfer:
	mov	a,dpl
	mov	dptr,#_spi_transfer_byte_1_47
	movx	@dptr,a
;	src/radio.c:121: RFDAT = byte;
	movx	a,@dptr
	mov	_RFDAT,a
;	src/radio.c:122: RFRDY = 0;
	clr	_RFRDY
;	src/radio.c:123: while(!RFRDY);
00101$:
	jnb	_RFRDY,00101$
;	src/radio.c:124: return RFDAT;
	mov	dpl,_RFDAT
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_write'
;------------------------------------------------------------
;buffer                    Allocated with name '_spi_write_PARM_2'
;length                    Allocated with name '_spi_write_PARM_3'
;command                   Allocated with name '_spi_write_command_1_49'
;x                         Allocated with name '_spi_write_x_1_50'
;------------------------------------------------------------
;	src/radio.c:128: void spi_write(uint8_t command, uint8_t * buffer, uint8_t length)
;	-----------------------------------------
;	 function spi_write
;	-----------------------------------------
_spi_write:
	mov	a,dpl
	mov	dptr,#_spi_write_command_1_49
	movx	@dptr,a
;	src/radio.c:131: rfcsn = 0;
	clr	_rfcsn
;	src/radio.c:132: spi_transfer(command);
	mov	dptr,#_spi_write_command_1_49
	movx	a,@dptr
	mov	dpl,a
	lcall	_spi_transfer
;	src/radio.c:133: for(x = 0; x < length; x++) spi_transfer(buffer[x]);
	mov	dptr,#_spi_write_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_spi_write_PARM_3
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	push	ar4
	mov	a,r2
	add	a,r5
	mov	r0,a
	mov	a,r3
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_transfer
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r2
	cjne	r2,#0x00,00115$
	inc	r3
00115$:
	pop	ar4
	sjmp	00103$
00101$:
;	src/radio.c:134: rfcsn = 1;
	setb	_rfcsn
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_read'
;------------------------------------------------------------
;sloc0                     Allocated with name '_spi_read_sloc0_1_0'
;buffer                    Allocated with name '_spi_read_PARM_2'
;length                    Allocated with name '_spi_read_PARM_3'
;command                   Allocated with name '_spi_read_command_1_51'
;x                         Allocated with name '_spi_read_x_1_52'
;------------------------------------------------------------
;	src/radio.c:138: void spi_read(uint8_t command, uint8_t * buffer, uint8_t length)
;	-----------------------------------------
;	 function spi_read
;	-----------------------------------------
_spi_read:
	mov	a,dpl
	mov	dptr,#_spi_read_command_1_51
	movx	@dptr,a
;	src/radio.c:141: rfcsn = 0;
	clr	_rfcsn
;	src/radio.c:142: spi_transfer(command);
	mov	dptr,#_spi_read_command_1_51
	movx	a,@dptr
	mov	dpl,a
	lcall	_spi_transfer
;	src/radio.c:143: for(x = 0; x < length; x++) buffer[x] = spi_transfer(0xFF);
	mov	dptr,#_spi_read_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_spi_read_PARM_3
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	push	ar4
	mov	a,r2
	add	a,r5
	mov	_spi_read_sloc0_1_0,a
	mov	a,r3
	addc	a,r6
	mov	(_spi_read_sloc0_1_0 + 1),a
	mov	(_spi_read_sloc0_1_0 + 2),r7
	mov	dpl,#0xFF
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_spi_transfer
	mov	r4,dpl
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_spi_read_sloc0_1_0
	mov	dph,(_spi_read_sloc0_1_0 + 1)
	mov	b,(_spi_read_sloc0_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	r2
	cjne	r2,#0x00,00115$
	inc	r3
00115$:
	pop	ar4
	sjmp	00103$
00101$:
;	src/radio.c:144: rfcsn = 1;
	setb	_rfcsn
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_register_byte'
;------------------------------------------------------------
;byte                      Allocated with name '_write_register_byte_PARM_2'
;reg                       Allocated with name '_write_register_byte_reg_1_53'
;------------------------------------------------------------
;	src/radio.c:148: void write_register_byte(uint8_t reg, uint8_t byte)
;	-----------------------------------------
;	 function write_register_byte
;	-----------------------------------------
_write_register_byte:
	mov	a,dpl
	mov	dptr,#_write_register_byte_reg_1_53
	movx	@dptr,a
;	src/radio.c:150: write_register(reg, &byte, 1);
	movx	a,@dptr
	mov	r7,a
	orl	ar7,#0x20
	mov	dptr,#_spi_write_PARM_2
	mov	a,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	a,#(_write_register_byte_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,r7
	ljmp	_spi_write
;------------------------------------------------------------
;Allocation info for local variables in function 'read_register_byte'
;------------------------------------------------------------
;reg                       Allocated with name '_read_register_byte_reg_1_55'
;value                     Allocated with name '_read_register_byte_value_1_56'
;------------------------------------------------------------
;	src/radio.c:154: uint8_t read_register_byte(uint8_t reg)
;	-----------------------------------------
;	 function read_register_byte
;	-----------------------------------------
_read_register_byte:
	mov	a,dpl
	mov	dptr,#_read_register_byte_reg_1_55
	movx	@dptr,a
;	src/radio.c:157: read_register(reg, &value, 1);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_spi_read_PARM_2
	mov	a,#_read_register_byte_value_1_56
	movx	@dptr,a
	mov	a,#(_read_register_byte_value_1_56 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,r7
	lcall	_spi_read
;	src/radio.c:158: return value;
	mov	dptr,#_read_register_byte_value_1_56
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'crc_update'
;------------------------------------------------------------
;byte                      Allocated with name '_crc_update_PARM_2'
;bits                      Allocated with name '_crc_update_PARM_3'
;crc                       Allocated with name '_crc_update_crc_1_57'
;------------------------------------------------------------
;	src/radio.c:162: uint16_t crc_update(uint16_t crc, uint8_t byte, uint8_t bits)
;	-----------------------------------------
;	 function crc_update
;	-----------------------------------------
_crc_update:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_crc_update_crc_1_57
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:164: crc = crc ^ (byte << 8);
	mov	dptr,#_crc_update_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_crc_update_crc_1_57
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_crc_update_crc_1_57
	mov	a,r7
	xrl	a,r4
	movx	@dptr,a
	mov	a,r6
	xrl	a,r5
	inc	dptr
	movx	@dptr,a
;	src/radio.c:165: while(bits--)
	mov	dptr,#_crc_update_PARM_3
	movx	a,@dptr
	mov	r7,a
00104$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00106$
;	src/radio.c:166: if((crc & 0x8000) == 0x8000) crc = (crc << 1) ^ 0x1021;
	mov	dptr,#_crc_update_crc_1_57
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r3,#0x00
	mov	a,#0x80
	anl	a,r6
	mov	r4,a
	cjne	r3,#0x00,00102$
	cjne	r4,#0x80,00102$
	mov	ar3,r5
	mov	a,r6
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	mov	r4,a
	mov	dptr,#_crc_update_crc_1_57
	mov	a,#0x21
	xrl	a,r3
	movx	@dptr,a
	mov	a,#0x10
	xrl	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00102$:
;	src/radio.c:167: else crc = crc << 1;
	mov	a,r6
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	mov	r6,a
	mov	dptr,#_crc_update_crc_1_57
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00106$:
;	src/radio.c:168: crc = crc & 0xFFFF;
;	src/radio.c:169: return crc;
	mov	dptr,#_crc_update_crc_1_57
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_radio_request'
;------------------------------------------------------------
;sloc0                     Allocated with name '_handle_radio_request_sloc0_1_0'
;sloc1                     Allocated with name '_handle_radio_request_sloc1_1_0'
;sloc2                     Allocated with name '_handle_radio_request_sloc2_1_0'
;data                      Allocated with name '_handle_radio_request_PARM_2'
;request                   Allocated with name '_handle_radio_request_request_1_59'
;command                   Allocated with name '_handle_radio_request_command_2_62'
;command_length            Allocated with name '_handle_radio_request_command_length_2_62'
;x                         Allocated with name '_handle_radio_request_x_2_62'
;value                     Allocated with name '_handle_radio_request_value_2_70'
;x                         Allocated with name '_handle_radio_request_x_4_75'
;offset                    Allocated with name '_handle_radio_request_offset_4_75'
;payload_length            Allocated with name '_handle_radio_request_payload_length_4_75'
;crc                       Allocated with name '_handle_radio_request_crc_4_75'
;crc_given                 Allocated with name '_handle_radio_request_crc_given_4_75'
;payload                   Allocated with name '_handle_radio_request_payload_4_75'
;x                         Allocated with name '_handle_radio_request_x_4_81'
;payload                   Allocated with name '_handle_radio_request_payload_4_81'
;elapsed                   Allocated with name '_handle_radio_request_elapsed_2_83'
;status                    Allocated with name '_handle_radio_request_status_2_83'
;__00040005                Allocated with name '_handle_radio_request___00040005_5_94'
;us                        Allocated with name '_handle_radio_request_us_5_94'
;__00030007                Allocated with name '_handle_radio_request___00030007_4_97'
;us                        Allocated with name '_handle_radio_request_us_4_97'
;address_start             Allocated with name '_handle_radio_request_address_start_2_90'
;__00030009                Allocated with name '_handle_radio_request___00030009_4_100'
;us                        Allocated with name '_handle_radio_request_us_4_100'
;------------------------------------------------------------
;	src/radio.c:173: void handle_radio_request(uint8_t request, uint8_t * data)
;	-----------------------------------------
;	 function handle_radio_request
;	-----------------------------------------
_handle_radio_request:
	mov	a,dpl
	mov	dptr,#_handle_radio_request_request_1_59
	movx	@dptr,a
;	src/radio.c:176: if(request == LAUNCH_NORDIC_BOOTLOADER)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFF,00102$
;	src/radio.c:178: nordic_bootloader();
	mov	dptr,#_nordic_bootloader
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dpl,r0
;	src/radio.c:179: return;
	ljmp	__sdcc_call_dptr
00102$:
;	src/radio.c:183: if(request == LAUNCH_LOGITECH_BOOTLOADER)
	cjne	r7,#0xFE,00210$
;	src/radio.c:185: const uint8_t command[9] = {'E', 'n', 't', 'e', 'r', ' ', 'I', 'C', 'P'};
	mov	dptr,#_handle_radio_request_command_2_62
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0001)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0002)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0003)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0005)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0006)
	mov	a,#0x49
	movx	@dptr,a
	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0007)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0008)
	mov	a,#0x50
	movx	@dptr,a
;	src/radio.c:188: for(x = 0; x < command_length; x++)
	mov	r5,#0x00
	mov	r6,#0x00
00225$:
	clr	c
	mov	a,r5
	subb	a,#0x09
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	src/radio.c:190: AESIA1 = x;
;	src/radio.c:191: AESIV = command[x];
	mov	a,r5
	mov	_AESIA1,a
	add	a,#_handle_radio_request_command_2_62
	mov	dpl,a
	mov	a,r6
	addc	a,#(_handle_radio_request_command_2_62 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_AESIV,a
;	src/radio.c:188: for(x = 0; x < command_length; x++)
	inc	r5
	cjne	r5,#0x00,00225$
	inc	r6
	sjmp	00225$
00103$:
;	src/radio.c:193: logitech_bootloader();
	mov	dptr,#_logitech_bootloader
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dpl,r0
;	src/radio.c:194: return;
	ljmp	__sdcc_call_dptr
00210$:
;	src/radio.c:198: else if(request == ENABLE_LNA)
	cjne	r7,#0x0B,00207$
;	src/radio.c:200: P0DIR &= ~0x10;
	mov	r6,_P0DIR
	mov	a,#0xEF
	anl	a,r6
	mov	_P0DIR,a
;	src/radio.c:201: P0 |= 0x10;
	orl	_P0,#0x10
;	src/radio.c:202: in1bc = 0;
	mov	dptr,#0xC7B7
	clr	a
	movx	@dptr,a
;	src/radio.c:203: return;
	ret
00207$:
;	src/radio.c:207: else if(request == SET_CHANNEL)
	cjne	r7,#0x09,00204$
;	src/radio.c:209: rfce = 0;
	clr	_rfce
;	src/radio.c:210: write_register_byte(RF_CH, data[0]);
	mov	dptr,#_handle_radio_request_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x05
	push	ar6
	push	ar5
	push	ar4
	lcall	_write_register_byte
	pop	ar4
	pop	ar5
	pop	ar6
;	src/radio.c:211: in1bc = 1;
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:212: in1buf[0] = data[0];
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_in1buf
	movx	@dptr,a
;	src/radio.c:213: flush_rx();
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
;	src/radio.c:214: flush_tx();
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
;	src/radio.c:215: rfce = 1;
	setb	_rfce
;	src/radio.c:216: return;
	ret
00204$:
;	src/radio.c:220: else if(request == GET_CHANNEL)
	cjne	r7,#0x0A,00201$
;	src/radio.c:222: spi_read(RF_CH, in1buf, 1);
	mov	dptr,#_spi_read_PARM_2
	mov	a,#_in1buf
	movx	@dptr,a
	mov	a,#(_in1buf >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,#0x05
	lcall	_spi_read
;	src/radio.c:223: in1bc = 1;
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:224: return;
	ret
00201$:
;	src/radio.c:228: else if(request == ENTER_PROMISCUOUS_MODE)
	cjne	r7,#0x06,00198$
;	src/radio.c:230: enter_promiscuous_mode(&data[1] /* address prefix */, data[0] /* prefix length */);
	mov	dptr,#_handle_radio_request_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x01
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_enter_promiscuous_mode_PARM_2
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	ljmp	_enter_promiscuous_mode
00198$:
;	src/radio.c:234: else if(request == ENTER_PROMISCUOUS_MODE_GENERIC)
	cjne	r7,#0x0D,00195$
;	src/radio.c:236: enter_promiscuous_mode_generic(&data[3] /* address prefix */, data[0] /* prefix length */, data[1] /* rate */, data[2] /* payload length */);
	mov	dptr,#_handle_radio_request_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x03
	add	a,r4
	mov	_handle_radio_request_sloc1_1_0,a
	clr	a
	addc	a,r5
	mov	(_handle_radio_request_sloc1_1_0 + 1),a
	mov	(_handle_radio_request_sloc1_1_0 + 2),r6
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_handle_radio_request_sloc0_1_0,a
	mov	a,#0x01
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_enter_promiscuous_mode_generic_PARM_2
	mov	a,_handle_radio_request_sloc0_1_0
	movx	@dptr,a
	mov	dptr,#_enter_promiscuous_mode_generic_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	dptr,#_enter_promiscuous_mode_generic_PARM_4
	mov	a,r4
	movx	@dptr,a
	mov	dpl,_handle_radio_request_sloc1_1_0
	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
	ljmp	_enter_promiscuous_mode_generic
00195$:
;	src/radio.c:240: else if(request == ENTER_TONE_TEST_MODE)
	cjne	r7,#0x07,00192$
;	src/radio.c:242: configure_phy(PWR_UP, CONT_WAVE | PLL_LOCK, 0);
	mov	dptr,#_configure_phy_PARM_2
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#_configure_phy_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_configure_phy
;	src/radio.c:243: in1bc = 0;
	mov	dptr,#0xC7B7
	clr	a
	movx	@dptr,a
;	src/radio.c:244: return;
	ret
00192$:
;	src/radio.c:248: else if(request == RECEIVE_PACKET)
	cjne	r7,#0x12,00464$
	sjmp	00465$
00464$:
	ljmp	00189$
00465$:
;	src/radio.c:253: read_register(FIFO_STATUS, &value, 1);
	mov	dptr,#_spi_read_PARM_2
	mov	a,#_handle_radio_request_value_2_70
	movx	@dptr,a
	mov	a,#(_handle_radio_request_value_2_70 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,#0x17
	lcall	_spi_read
;	src/radio.c:254: if((value & 1) == 0)
	mov	dptr,#_handle_radio_request_value_2_70
	movx	a,@dptr
	mov	r6,a
	jnb	acc.0,00466$
	ljmp	00133$
00466$:
;	src/radio.c:257: if(radio_mode == sniffer)
	mov	dptr,#_radio_mode
	movx	a,@dptr
	mov	r6,a
	jnz	00130$
;	src/radio.c:260: read_register(R_RX_PL_WID, &value, 1);
	mov	dptr,#_spi_read_PARM_2
	mov	a,#_handle_radio_request_value_2_70
	movx	@dptr,a
	mov	a,#(_handle_radio_request_value_2_70 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,#0x60
	lcall	_spi_read
;	src/radio.c:261: if(value <= 32)
	mov	dptr,#_handle_radio_request_value_2_70
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x20
	jc	00105$
;	src/radio.c:264: read_register(R_RX_PAYLOAD, &in1buf[1], value);
	mov	dptr,#_spi_read_PARM_2
	mov	a,#(_in1buf + 0x0001)
	movx	@dptr,a
	mov	a,#((_in1buf + 0x0001) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl,#0x61
	lcall	_spi_read
;	src/radio.c:265: in1buf[0] = 0;
	mov	dptr,#_in1buf
	clr	a
	movx	@dptr,a
;	src/radio.c:266: in1bc = value + 1;
	mov	dptr,#_handle_radio_request_value_2_70
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dptr,#0xC7B7
	mov	a,r5
	movx	@dptr,a
;	src/radio.c:267: flush_rx();
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
;	src/radio.c:268: return;
	ljmp	_spi_write
00105$:
;	src/radio.c:273: in1bc = 1;
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:274: in1buf[0] = 0xFF;
	mov	dptr,#_in1buf
	mov	a,#0xFF
	movx	@dptr,a
;	src/radio.c:275: flush_rx();
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
;	src/radio.c:276: return;
	ljmp	_spi_write
00130$:
;	src/radio.c:281: else if(radio_mode == promiscuous)
	cjne	r6,#0x01,00469$
	sjmp	00470$
00469$:
	ljmp	00127$
00470$:
;	src/radio.c:289: for(x = 0; x < pm_prefix_length; x++) payload[pm_prefix_length - x - 1] = pm_prefix[x];
	mov	r4,#0x00
	mov	r5,#0x00
00228$:
	mov	dptr,#_pm_prefix_length
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	mov	ar1,r2
	mov	ar0,r4
	mov	a,r1
	clr	c
	subb	a,r0
	dec	a
	add	a,#_handle_radio_request_payload_4_75
	mov	_handle_radio_request_sloc1_1_0,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	(_handle_radio_request_sloc1_1_0 + 1),a
	mov	a,r4
	add	a,#_pm_prefix
	mov	dpl,a
	mov	a,r5
	addc	a,#(_pm_prefix >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	mov	dpl,_handle_radio_request_sloc1_1_0
	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	r4
	cjne	r4,#0x00,00228$
	inc	r5
	sjmp	00228$
00107$:
;	src/radio.c:290: read_register(R_RX_PAYLOAD, &payload[pm_prefix_length], pm_payload_length);
	mov	a,r2
	add	a,#_handle_radio_request_payload_4_75
	mov	r2,a
	mov	a,r3
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	r3,a
	mov	r5,#0x00
	mov	dptr,#_pm_payload_length
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_spi_read_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl,#0x61
	lcall	_spi_read
;	src/radio.c:297: for(offset = 0; offset < 2; offset++)
	mov	r4,#0x00
	mov	r5,#0x00
00238$:
;	src/radio.c:300: if(offset == 1)
	cjne	r4,#0x01,00113$
	cjne	r5,#0x00,00113$
;	src/radio.c:302: for(x = 31; x >= 0; x--)
	mov	r2,#0x1F
	mov	r3,#0x00
00230$:
;	src/radio.c:304: if(x > 0) payload[x] = payload[x - 1] << 7 | payload[x] >> 1;
	clr	c
	clr	a
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
	push	ar4
	push	ar5
	mov	a,r2
	add	a,#_handle_radio_request_payload_4_75
	mov	r0,a
	mov	a,r3
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	r1,a
	mov	ar5,r2
	mov	a,r5
	dec	a
	add	a,#_handle_radio_request_payload_4_75
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	dph,a
	movx	a,@dptr
	rr	a
	anl	a,#0x80
	mov	r5,a
	mov	dpl,r0
	mov	dph,r1
	movx	a,@dptr
	clr	c
	rrc	a
	orl	ar5,a
	mov	dpl,r0
	mov	dph,r1
	mov	a,r5
	movx	@dptr,a
	pop	ar5
	pop	ar4
	sjmp	00231$
00109$:
;	src/radio.c:305: else payload[x] = payload[x] >> 1;
	push	ar4
	push	ar5
	mov	a,r2
	add	a,#_handle_radio_request_payload_4_75
	mov	r0,a
	mov	a,r3
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	movx	a,@dptr
	clr	c
	rrc	a
	mov	dpl,r0
	mov	dph,r1
	movx	@dptr,a
;	src/radio.c:583: in1bc = 1;
	pop	ar5
	pop	ar4
;	src/radio.c:305: else payload[x] = payload[x] >> 1;
00231$:
;	src/radio.c:302: for(x = 31; x >= 0; x--)
	dec	r2
	cjne	r2,#0xFF,00476$
	dec	r3
00476$:
	mov	a,r3
	jnb	acc.7,00230$
00113$:
;	src/radio.c:310: payload_length = payload[5] >> 2;
	push	ar4
	push	ar5
	mov	dptr,#(_handle_radio_request_payload_4_75 + 0x0005)
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r3,a
;	src/radio.c:315: if(payload_length <= (pm_payload_length-9) + pm_prefix_length)
	mov	dptr,#_pm_payload_length
	movx	a,@dptr
	mov	r2,#0x00
	add	a,#0xF7
	mov	r1,a
	mov	a,r2
	addc	a,#0xFF
	mov	r2,a
	mov	dptr,#_pm_prefix_length
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	_handle_radio_request_sloc1_1_0,r3
	mov	(_handle_radio_request_sloc1_1_0 + 1),#0x00
	clr	c
	mov	a,r1
	subb	a,_handle_radio_request_sloc1_1_0
	mov	a,r2
	xrl	a,#0x80
	mov	b,(_handle_radio_request_sloc1_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	pop	ar5
	pop	ar4
	jnc	00478$
	ljmp	00239$
00478$:
;	src/radio.c:318: crc_given = (payload[6 + payload_length] << 9) | ((payload[7 + payload_length]) << 1);
	push	ar4
	push	ar5
	mov	a,#0x06
	add	a,r3
	add	a,#_handle_radio_request_payload_4_75
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	add	a,r1
	mov	r2,a
	mov	r1,#0x00
	mov	a,#0x07
	add	a,r3
	add	a,#_handle_radio_request_payload_4_75
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	clr	a
	xch	a,r0
	add	a,acc
	xch	a,r0
	rlc	a
	mov	r5,a
	mov	a,r0
	orl	ar1,a
	mov	a,r5
	orl	ar2,a
;	src/radio.c:319: crc_given = (crc_given << 8) | (crc_given >> 8);
	mov	_handle_radio_request_sloc2_1_0,r2
	mov	(_handle_radio_request_sloc2_1_0 + 1),r1
	mov	dptr,#_handle_radio_request_crc_given_4_75
	mov	a,_handle_radio_request_sloc2_1_0
	movx	@dptr,a
	mov	a,(_handle_radio_request_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	src/radio.c:320: if(payload[8 + payload_length] & 0x80) crc_given |= 0x100;
	mov	a,#0x08
	add	a,r3
	add	a,#_handle_radio_request_payload_4_75
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	dph,a
	movx	a,@dptr
	pop	ar5
	pop	ar4
	jnb	acc.7,00115$
	mov	dptr,#_handle_radio_request_crc_given_4_75
	mov	a,_handle_radio_request_sloc2_1_0
	movx	@dptr,a
	mov	a,#0x01
	orl	a,(_handle_radio_request_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
00115$:
;	src/radio.c:323: crc = 0xFFFF;
	mov	dptr,#_handle_radio_request_crc_4_75
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/radio.c:324: for(x = 0; x < 6 + payload_length; x++) crc = crc_update(crc, payload[x], 8);
	mov	a,#0x06
	add	a,_handle_radio_request_sloc1_1_0
	mov	r1,a
	clr	a
	addc	a,(_handle_radio_request_sloc1_1_0 + 1)
	mov	r2,a
	clr	a
	mov	_handle_radio_request_sloc2_1_0,a
	mov	(_handle_radio_request_sloc2_1_0 + 1),a
00233$:
	clr	c
	mov	a,_handle_radio_request_sloc2_1_0
	subb	a,r1
	mov	a,(_handle_radio_request_sloc2_1_0 + 1)
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00116$
	push	ar4
	push	ar5
	mov	dptr,#_handle_radio_request_crc_4_75
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,_handle_radio_request_sloc2_1_0
	add	a,#_handle_radio_request_payload_4_75
	mov	dpl,a
	mov	a,(_handle_radio_request_sloc2_1_0 + 1)
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_crc_update_PARM_2
	movx	@dptr,a
	mov	dptr,#_crc_update_PARM_3
	mov	a,#0x08
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_crc_update
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dptr,#_handle_radio_request_crc_4_75
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	inc	_handle_radio_request_sloc2_1_0
	clr	a
	cjne	a,_handle_radio_request_sloc2_1_0,00481$
	inc	(_handle_radio_request_sloc2_1_0 + 1)
00481$:
	pop	ar5
	pop	ar4
	sjmp	00233$
00116$:
;	src/radio.c:325: crc = crc_update(crc, payload[6 + payload_length] & 0x80, 1);
	push	ar4
	push	ar5
	mov	dptr,#_handle_radio_request_crc_4_75
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x06
	add	a,r3
	add	a,#_handle_radio_request_payload_4_75
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#_crc_update_PARM_2
	mov	a,#0x80
	anl	a,r0
	movx	@dptr,a
	mov	dptr,#_crc_update_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	push	ar5
	push	ar4
	push	ar3
	lcall	_crc_update
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
;	src/radio.c:326: crc = (crc << 8) | (crc >> 8);
	mov	a,r1
	mov	ar1,r2
	mov	r2,a
;	src/radio.c:329: if(crc == crc_given)
	mov	dptr,#_handle_radio_request_crc_given_4_75
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r1
	cjne	a,ar0,00482$
	mov	a,r2
	cjne	a,ar5,00482$
	sjmp	00483$
00482$:
	pop	ar5
	pop	ar4
	ljmp	00239$
00483$:
	pop	ar5
	pop	ar4
;	src/radio.c:332: memcpy(in1buf, payload, 5);
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_handle_radio_request_payload_4_75
	movx	@dptr,a
	mov	a,#(_handle_radio_request_payload_4_75 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_in1buf
	mov	b,#0x00
	push	ar3
	lcall	_memcpy
	pop	ar3
;	src/radio.c:335: for(x = 0; x < payload_length + 3; x++)
	mov	a,#0x03
	add	a,_handle_radio_request_sloc1_1_0
	mov	r1,a
	clr	a
	addc	a,(_handle_radio_request_sloc1_1_0 + 1)
	mov	r2,a
	clr	a
	mov	_handle_radio_request_sloc2_1_0,a
	mov	(_handle_radio_request_sloc2_1_0 + 1),a
00236$:
	clr	c
	mov	a,_handle_radio_request_sloc2_1_0
	subb	a,r1
	mov	a,(_handle_radio_request_sloc2_1_0 + 1)
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00117$
;	src/radio.c:336: in1buf[5+x] = ((payload[6 + x] << 1) & 0xFF) | (payload[7 + x] >> 7);
	push	ar1
	push	ar2
	mov	r0,_handle_radio_request_sloc2_1_0
	mov	a,#0x05
	add	a,r0
	add	a,#_in1buf
	mov	_handle_radio_request_sloc1_1_0,a
	clr	a
	addc	a,#(_in1buf >> 8)
	mov	(_handle_radio_request_sloc1_1_0 + 1),a
	mov	a,#0x06
	add	a,r0
	add	a,#_handle_radio_request_payload_4_75
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,acc
	mov	r2,a
	mov	a,#0x07
	add	a,r0
	add	a,#_handle_radio_request_payload_4_75
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
	mov	dph,a
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov	r1,a
	orl	ar2,a
	mov	dpl,_handle_radio_request_sloc1_1_0
	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
	mov	a,r2
	movx	@dptr,a
;	src/radio.c:335: for(x = 0; x < payload_length + 3; x++)
	inc	_handle_radio_request_sloc2_1_0
	clr	a
	cjne	a,_handle_radio_request_sloc2_1_0,00485$
	inc	(_handle_radio_request_sloc2_1_0 + 1)
00485$:
	pop	ar2
	pop	ar1
	sjmp	00236$
00117$:
;	src/radio.c:337: in1bc = 5 + payload_length;
	mov	a,#0x05
	add	a,r3
	mov	dptr,#0xC7B7
	movx	@dptr,a
;	src/radio.c:338: flush_rx();
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
;	src/radio.c:339: return;
	ljmp	_spi_write
00239$:
;	src/radio.c:297: for(offset = 0; offset < 2; offset++)
	inc	r4
	cjne	r4,#0x00,00486$
	inc	r5
00486$:
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00487$
	ljmp	00238$
00487$:
	ljmp	00133$
00127$:
;	src/radio.c:346: else if(radio_mode == promiscuous_generic)
	cjne	r6,#0x02,00488$
	sjmp	00489$
00488$:
	ljmp	00133$
00489$:
;	src/radio.c:352: for(x = 0; x < pm_prefix_length; x++) payload[pm_prefix_length - x - 1] = pm_prefix[x];
	mov	r5,#0x00
	mov	r6,#0x00
00241$:
	mov	dptr,#_pm_prefix_length
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00123$
	mov	ar2,r3
	mov	ar1,r5
	mov	a,r2
	clr	c
	subb	a,r1
	dec	a
	add	a,#_handle_radio_request_payload_4_81
	mov	r1,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_81 >> 8)
	mov	r2,a
	mov	a,r5
	add	a,#_pm_prefix
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pm_prefix >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	dpl,r1
	mov	dph,r2
	movx	@dptr,a
	inc	r5
	cjne	r5,#0x00,00241$
	inc	r6
	sjmp	00241$
00123$:
;	src/radio.c:353: read_register(R_RX_PAYLOAD, &payload[pm_prefix_length], pm_payload_length);
	mov	a,r3
	add	a,#_handle_radio_request_payload_4_81
	mov	r3,a
	mov	a,r4
	addc	a,#(_handle_radio_request_payload_4_81 >> 8)
	mov	r4,a
	mov	r6,#0x00
	mov	dptr,#_pm_payload_length
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_spi_read_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl,#0x61
	lcall	_spi_read
;	src/radio.c:356: memcpy(in1buf, payload, pm_prefix_length + pm_payload_length);
	mov	dptr,#_pm_payload_length
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dptr,#_pm_prefix_length
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r6
	add	a,r3
	mov	r6,a
	mov	a,r5
	addc	a,r4
	mov	r5,a
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_handle_radio_request_payload_4_81
	movx	@dptr,a
	mov	a,#(_handle_radio_request_payload_4_81 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_in1buf
	mov	b,#0x00
	lcall	_memcpy
;	src/radio.c:357: in1bc = pm_prefix_length + pm_payload_length;
	mov	dptr,#_pm_prefix_length
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_pm_payload_length
	movx	a,@dptr
	add	a,r5
	mov	dptr,#0xC7B7
	movx	@dptr,a
;	src/radio.c:359: return;
	ret
00133$:
;	src/radio.c:364: in1bc = 1;
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:365: in1buf[0] = 0xFF;
	mov	dptr,#_in1buf
	mov	a,#0xFF
	movx	@dptr,a
;	src/radio.c:366: return;
	ret
00189$:
;	src/radio.c:370: else if(request == ENTER_SNIFFER_MODE)
	cjne	r7,#0x05,00492$
	sjmp	00493$
00492$:
	ljmp	00186$
00493$:
;	src/radio.c:372: radio_mode = sniffer;
	mov	dptr,#_radio_mode
	clr	a
	movx	@dptr,a
;	src/radio.c:375: if(data[0] > 5) data[0] = 5;
	mov	dptr,#_handle_radio_request_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov  r3,a
	add	a,#0xff - 0x05
	jnc	00135$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x05
	lcall	__gptrput
00135$:
;	src/radio.c:376: if(data[0] < 2) data[0] = 2;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x02,00495$
00495$:
	jnc	00137$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x02
	lcall	__gptrput
00137$:
;	src/radio.c:379: rfce = 0;
	clr	_rfce
;	src/radio.c:382: configure_address(&data[1], data[0]);
	mov	a,#0x01
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_configure_address_PARM_2
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	_configure_address
;	src/radio.c:385: configure_mac(EN_DPL | EN_ACK_PAY, DPL_P0, ENAA_NONE);
	mov	dptr,#_configure_mac_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_configure_mac_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_configure_mac
;	src/radio.c:388: configure_phy(EN_CRC | CRC0 | PRIM_RX | PWR_UP, RATE_2M, 0);
	mov	dptr,#_configure_phy_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_configure_phy_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,#0x0F
	lcall	_configure_phy
;	src/radio.c:391: rfce = 1;
	setb	_rfce
;	src/radio.c:394: flush_rx();
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
;	src/radio.c:395: flush_tx();
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
;	src/radio.c:396: in1bc = 0;
	mov	dptr,#0xC7B7
	clr	a
	movx	@dptr,a
	ret
00186$:
;	src/radio.c:400: else if(request == TRANSMIT_ACK_PAYLOAD)
	cjne	r7,#0x08,00497$
	sjmp	00498$
00497$:
	ljmp	00183$
00498$:
;	src/radio.c:406: if(data[0] > 32) data[0] = 32;
	mov	dptr,#_handle_radio_request_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov  r3,a
	add	a,#0xff - 0x20
	jnc	00139$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x20
	lcall	__gptrput
00139$:
;	src/radio.c:407: if(data[0] < 1) data[0] = 1;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x01,00500$
00500$:
	jnc	00141$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x01
	lcall	__gptrput
00141$:
;	src/radio.c:410: rfce = 0;
	clr	_rfce
;	src/radio.c:413: flush_tx();
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
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_write
	pop	ar4
	pop	ar5
	pop	ar6
;	src/radio.c:414: flush_rx();
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
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_write
;	src/radio.c:417: write_register_byte(STATUS, MAX_RT | TX_DS | RX_DR);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x70
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_write_register_byte
;	src/radio.c:420: write_register_byte(EN_AA, ENAA_P0);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_write_register_byte
;	src/radio.c:421: write_register_byte(FEATURE, EN_DPL | EN_ACK_PAY);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,#0x1D
	lcall	_write_register_byte
	pop	ar4
	pop	ar5
	pop	ar6
;	src/radio.c:424: spi_write(W_ACK_PAYLOAD, &data[1], data[0]);
	mov	a,#0x01
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_spi_write_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl,#0xA8
	lcall	_spi_write
;	src/radio.c:427: rfce = 1;
	setb	_rfce
;	src/radio.c:431: in1buf[0] = 0;
	mov	dptr,#_in1buf
	clr	a
	movx	@dptr,a
;	src/radio.c:432: while(elapsed < 500)
	mov	r5,#0x00
	mov	r6,#0x00
00144$:
	clr	c
	mov	a,r5
	subb	a,#0xF4
	mov	a,r6
	subb	a,#0x01
	jnc	00146$
;	src/radio.c:434: status = read_register_byte(STATUS);
	mov	dpl,#0x07
	push	ar6
	push	ar5
	lcall	_read_register_byte
	mov	a,dpl
	pop	ar5
	pop	ar6
;	src/radio.c:435: if((status & RX_DR) == RX_DR)
	anl	a,#0x40
	mov	r4,a
	cjne	r4,#0x40,00285$
;	src/radio.c:437: in1buf[0] = 1;
	mov	dptr,#_in1buf
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:438: break;
;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
	sjmp	00146$
00285$:
	mov	r3,#0xE8
	mov	r4,#0x03
00212$:
	nop 
	nop 
	nop 
	nop 
	dec	r3
	cjne	r3,#0xFF,00505$
	dec	r4
00505$:
	mov	a,r3
	orl	a,r4
	jnz	00212$
;	src/radio.c:442: elapsed++;
	inc	r5
	cjne	r5,#0x00,00144$
	inc	r6
	sjmp	00144$
00146$:
;	src/radio.c:446: write_register_byte(EN_AA, ENAA_NONE);
	mov	dptr,#_write_register_byte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_write_register_byte
;	src/radio.c:448: in1bc = 1;
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
	ret
00183$:
;	src/radio.c:452: else if(request == TRANSMIT_PAYLOAD)
	cjne	r7,#0x04,00508$
	sjmp	00509$
00508$:
	ljmp	00180$
00509$:
;	src/radio.c:455: if(data[0] > 32) data[0] = 32;
	mov	dptr,#_handle_radio_request_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov  r3,a
	add	a,#0xff - 0x20
	jnc	00148$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x20
	lcall	__gptrput
00148$:
;	src/radio.c:456: if(data[0] < 1) data[0] = 1;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x01,00511$
00511$:
	jnc	00150$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x01
	lcall	__gptrput
00150$:
;	src/radio.c:459: rfce = 0;
	clr	_rfce
;	src/radio.c:463: write_register_byte(SETUP_RETR, (1 << data[1]) | data[2]);
	mov	a,#0x01
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	b,r1
	inc	b
	mov	a,#0x01
	sjmp	00515$
00513$:
	add	a,acc
00515$:
	djnz	b,00513$
	mov	r1,a
	mov	a,#0x02
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dptr,#_write_register_byte_PARM_2
	orl	a,r1
	movx	@dptr,a
	mov	dpl,#0x04
	push	ar6
	push	ar5
	push	ar4
	lcall	_write_register_byte
	pop	ar4
	pop	ar5
	pop	ar6
;	src/radio.c:466: flush_tx();
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
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_write
	pop	ar4
	pop	ar5
	pop	ar6
;	src/radio.c:467: flush_rx();
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
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_write
;	src/radio.c:470: write_register_byte(STATUS, MAX_RT | TX_DS | RX_DR);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x70
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_write_register_byte
;	src/radio.c:473: write_register_byte(CONFIG, read_register_byte(CONFIG) & ~PRIM_RX);
	mov	dpl,#0x00
	lcall	_read_register_byte
	mov	r3,dpl
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0xFE
	anl	a,r3
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_write_register_byte
;	src/radio.c:476: write_register_byte(EN_AA, ENAA_P0);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_write_register_byte
	pop	ar4
	pop	ar5
	pop	ar6
;	src/radio.c:479: spi_write(W_TX_PAYLOAD, &data[3], data[0]);
	mov	a,#0x03
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_spi_write_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl,#0xA0
	lcall	_spi_write
;	src/radio.c:482: rfce = 1;
	setb	_rfce
;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
	mov	r5,#0x0A
	mov	r6,#0x00
00216$:
	nop 
	nop 
	nop 
	nop 
	dec	r5
	cjne	r5,#0xFF,00516$
	dec	r6
00516$:
	mov	a,r5
	orl	a,r6
	jnz	00216$
;	src/radio.c:484: rfce = 0;
	clr	_rfce
;	src/radio.c:487: while(true)
00159$:
;	src/radio.c:490: rfcsn = 0;
	clr	_rfcsn
;	src/radio.c:491: RFDAT = _NOP;
	mov	_RFDAT,#0xFF
;	src/radio.c:492: RFRDY = 0;
	clr	_RFRDY
;	src/radio.c:493: while(!RFRDY);
00151$:
	jnb	_RFRDY,00151$
;	src/radio.c:494: rfcsn = 1;
	setb	_rfcsn
;	src/radio.c:497: if((RFDAT & 0x10) == 0x10)
	mov	a,#0x10
	anl	a,_RFDAT
	mov	r6,a
	cjne	r6,#0x10,00155$
;	src/radio.c:499: in1buf[0] = 0;
	mov	dptr,#_in1buf
	clr	a
	movx	@dptr,a
;	src/radio.c:500: break;
	sjmp	00160$
00155$:
;	src/radio.c:504: if((RFDAT & 0x20) == 0x20)
	mov	a,#0x20
	anl	a,_RFDAT
	mov	r6,a
	cjne	r6,#0x20,00159$
;	src/radio.c:506: in1buf[0] = 1;
	mov	dptr,#_in1buf
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:507: break;
00160$:
;	src/radio.c:512: write_register_byte(EN_AA, ENAA_NONE);
	mov	dptr,#_write_register_byte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_write_register_byte
;	src/radio.c:515: write_register_byte(CONFIG, read_register_byte(CONFIG) | PRIM_RX);
	mov	dpl,#0x00
	lcall	_read_register_byte
	mov	a,dpl
	mov	dptr,#_write_register_byte_PARM_2
	orl	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_write_register_byte
;	src/radio.c:518: rfce = 1;
	setb	_rfce
;	src/radio.c:519: in1bc = 1;
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
	ret
00180$:
;	src/radio.c:523: else if(request == TRANSMIT_PAYLOAD_GENERIC)
	cjne	r7,#0x0C,00523$
	sjmp	00524$
00523$:
	ret
00524$:
;	src/radio.c:525: uint8_t address_start = data[0] + data[1] + 2;
	mov	dptr,#_handle_radio_request_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x01
	add	a,r5
	mov	_handle_radio_request_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_handle_radio_request_sloc1_1_0 + 1),a
	mov	(_handle_radio_request_sloc1_1_0 + 2),r7
	mov	dpl,_handle_radio_request_sloc1_1_0
	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
	lcall	__gptrget
	add	a,r4
	add	a,#0x02
	mov	r0,a
;	src/radio.c:528: if(data[0] > 32) data[0] = 32;
	mov	a,r4
	add	a,#0xff - 0x20
	jnc	00162$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x20
	lcall	__gptrput
00162$:
;	src/radio.c:529: if(data[0] < 1) data[0] = 1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x01,00526$
00526$:
	jnc	00164$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
00164$:
;	src/radio.c:532: if(data[1] > 5) data[1] = 5;
	mov	dpl,_handle_radio_request_sloc1_1_0
	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
	lcall	__gptrget
	mov  r4,a
	add	a,#0xff - 0x05
	jnc	00166$
	mov	dpl,_handle_radio_request_sloc1_1_0
	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
	mov	a,#0x05
	lcall	__gptrput
00166$:
;	src/radio.c:533: if(data[1] < 1) data[1] = 1;
	mov	dpl,_handle_radio_request_sloc1_1_0
	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x01,00529$
00529$:
	jnc	00168$
	mov	dpl,_handle_radio_request_sloc1_1_0
	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
00168$:
;	src/radio.c:536: rfce = 0;
	clr	_rfce
;	src/radio.c:539: flush_tx();
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
	push	ar7
	push	ar6
	push	ar5
	push	ar0
	lcall	_spi_write
	pop	ar0
	pop	ar5
	pop	ar6
	pop	ar7
;	src/radio.c:540: flush_rx();
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
	push	ar7
	push	ar6
	push	ar5
	push	ar0
	lcall	_spi_write
;	src/radio.c:543: write_register_byte(STATUS, MAX_RT | TX_DS | RX_DR);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x70
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_write_register_byte
;	src/radio.c:546: write_register_byte(CONFIG, read_register_byte(CONFIG) & ~PRIM_RX);
	mov	dpl,#0x00
	lcall	_read_register_byte
	mov	r4,dpl
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0xFE
	anl	a,r4
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_write_register_byte
	pop	ar0
	pop	ar5
	pop	ar6
	pop	ar7
;	src/radio.c:549: configure_address(&data[address_start], data[1]);
	mov	a,r0
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,_handle_radio_request_sloc1_1_0
	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	dptr,#_configure_address_PARM_2
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_configure_address
	pop	ar5
	pop	ar6
	pop	ar7
;	src/radio.c:552: spi_write(W_TX_PAYLOAD, &data[2], data[0]);
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_spi_write_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl,#0xA0
	lcall	_spi_write
;	src/radio.c:555: rfce = 1;
	setb	_rfce
;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
	mov	r6,#0x0A
	mov	r7,#0x00
00220$:
	nop 
	nop 
	nop 
	nop 
	dec	r6
	cjne	r6,#0xFF,00531$
	dec	r7
00531$:
	mov	a,r6
	orl	a,r7
	jnz	00220$
;	src/radio.c:557: rfce = 0;
	clr	_rfce
;	src/radio.c:560: while(true)
00175$:
;	src/radio.c:563: rfcsn = 0;
	clr	_rfcsn
;	src/radio.c:564: RFDAT = _NOP;
	mov	_RFDAT,#0xFF
;	src/radio.c:565: RFRDY = 0;
	clr	_RFRDY
;	src/radio.c:566: while(!RFRDY);
00169$:
	jnb	_RFRDY,00169$
;	src/radio.c:567: rfcsn = 1;
	setb	_rfcsn
;	src/radio.c:570: if((RFDAT & TX_DS) == TX_DS)
	mov	a,#0x20
	anl	a,_RFDAT
	mov	r7,a
	cjne	r7,#0x20,00175$
;	src/radio.c:572: in1buf[0] = 1;
	mov	dptr,#_in1buf
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:578: write_register_byte(CONFIG, read_register_byte(CONFIG) | PRIM_RX);
	mov	dpl,#0x00
	lcall	_read_register_byte
	mov	a,dpl
	mov	dptr,#_write_register_byte_PARM_2
	orl	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_write_register_byte
;	src/radio.c:579: configure_address(pm_prefix, pm_prefix_length);
	mov	dptr,#_pm_prefix_length
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_configure_address_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_pm_prefix
	mov	b,#0x00
	lcall	_configure_address
;	src/radio.c:582: rfce = 1;
	setb	_rfce
;	src/radio.c:583: in1bc = 1;
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
	ret
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
