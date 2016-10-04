                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Jul  5 2014) (Linux)
                                      4 ; This file was generated Mon Sep 19 15:43:07 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module radio
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _spi_transfer
                                     13 	.globl _memcpy
                                     14 	.globl _RFRDY
                                     15 	.globl _rfcsn
                                     16 	.globl _rfce
                                     17 	.globl _ien1
                                     18 	.globl _ien0
                                     19 	.globl _REGXC
                                     20 	.globl _REGXL
                                     21 	.globl _REGXH
                                     22 	.globl _TICKDV
                                     23 	.globl _RFDAT
                                     24 	.globl _P0DIR
                                     25 	.globl _P0
                                     26 	.globl _AESIA1
                                     27 	.globl _AESIV
                                     28 	.globl _usbcon
                                     29 	.globl _rfcon
                                     30 	.globl _rfctl
                                     31 	.globl _handle_radio_request_PARM_2
                                     32 	.globl _crc_update_PARM_3
                                     33 	.globl _crc_update_PARM_2
                                     34 	.globl _write_register_byte_PARM_2
                                     35 	.globl _spi_read_PARM_3
                                     36 	.globl _spi_read_PARM_2
                                     37 	.globl _spi_write_PARM_3
                                     38 	.globl _spi_write_PARM_2
                                     39 	.globl _configure_phy_PARM_3
                                     40 	.globl _configure_phy_PARM_2
                                     41 	.globl _configure_mac_PARM_3
                                     42 	.globl _configure_mac_PARM_2
                                     43 	.globl _configure_address_PARM_2
                                     44 	.globl _enter_promiscuous_mode_generic_PARM_4
                                     45 	.globl _enter_promiscuous_mode_generic_PARM_3
                                     46 	.globl _enter_promiscuous_mode_generic_PARM_2
                                     47 	.globl _enter_promiscuous_mode_PARM_2
                                     48 	.globl _setupbuf
                                     49 	.globl _out1buf
                                     50 	.globl _in1buf
                                     51 	.globl _in0buf
                                     52 	.globl _enter_promiscuous_mode
                                     53 	.globl _enter_promiscuous_mode_generic
                                     54 	.globl _configure_address
                                     55 	.globl _configure_mac
                                     56 	.globl _configure_phy
                                     57 	.globl _spi_write
                                     58 	.globl _spi_read
                                     59 	.globl _write_register_byte
                                     60 	.globl _read_register_byte
                                     61 	.globl _crc_update
                                     62 	.globl _handle_radio_request
                                     63 ;--------------------------------------------------------
                                     64 ; special function registers
                                     65 ;--------------------------------------------------------
                                     66 	.area RSEG    (ABS,DATA)
      000000                         67 	.org 0x0000
                           0000E6    68 _rfctl	=	0x00e6
                           000090    69 _rfcon	=	0x0090
                           0000A0    70 _usbcon	=	0x00a0
                           0000F2    71 _AESIV	=	0x00f2
                           0000F5    72 _AESIA1	=	0x00f5
                           000080    73 _P0	=	0x0080
                           000094    74 _P0DIR	=	0x0094
                           0000E5    75 _RFDAT	=	0x00e5
                           0000AB    76 _TICKDV	=	0x00ab
                           0000AB    77 _REGXH	=	0x00ab
                           0000AC    78 _REGXL	=	0x00ac
                           0000AD    79 _REGXC	=	0x00ad
                           0000A8    80 _ien0	=	0x00a8
                           0000B8    81 _ien1	=	0x00b8
                                     82 ;--------------------------------------------------------
                                     83 ; special function bits
                                     84 ;--------------------------------------------------------
                                     85 	.area RSEG    (ABS,DATA)
      000000                         86 	.org 0x0000
                           000090    87 _rfce	=	0x0090
                           000091    88 _rfcsn	=	0x0091
                           0000C0    89 _RFRDY	=	0x00c0
                                     90 ;--------------------------------------------------------
                                     91 ; overlayable register banks
                                     92 ;--------------------------------------------------------
                                     93 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         94 	.ds 8
                                     95 ;--------------------------------------------------------
                                     96 ; internal ram data
                                     97 ;--------------------------------------------------------
                                     98 	.area DSEG    (DATA)
      000012                         99 _enter_promiscuous_mode_sloc0_1_0:
      000012                        100 	.ds 2
      000014                        101 _enter_promiscuous_mode_generic_sloc0_1_0:
      000014                        102 	.ds 2
      000016                        103 _spi_read_sloc0_1_0:
      000016                        104 	.ds 3
      000019                        105 _handle_radio_request_sloc0_1_0:
      000019                        106 	.ds 1
      00001A                        107 _handle_radio_request_sloc1_1_0:
      00001A                        108 	.ds 3
      00001D                        109 _handle_radio_request_sloc2_1_0:
      00001D                        110 	.ds 2
                                    111 ;--------------------------------------------------------
                                    112 ; overlayable items in internal ram 
                                    113 ;--------------------------------------------------------
                                    114 ;--------------------------------------------------------
                                    115 ; indirectly addressable internal ram data
                                    116 ;--------------------------------------------------------
                                    117 	.area ISEG    (DATA)
                                    118 ;--------------------------------------------------------
                                    119 ; absolute internal ram data
                                    120 ;--------------------------------------------------------
                                    121 	.area IABS    (ABS,DATA)
                                    122 	.area IABS    (ABS,DATA)
                                    123 ;--------------------------------------------------------
                                    124 ; bit data
                                    125 ;--------------------------------------------------------
                                    126 	.area BSEG    (BIT)
      000003                        127 _configured:
      000003                        128 	.ds 1
                                    129 ;--------------------------------------------------------
                                    130 ; paged external ram data
                                    131 ;--------------------------------------------------------
                                    132 	.area PSEG    (PAG,XDATA)
                                    133 ;--------------------------------------------------------
                                    134 ; external ram data
                                    135 ;--------------------------------------------------------
                                    136 	.area XSEG    (XDATA)
                           00C700   137 _in0buf	=	0xc700
                           00C680   138 _in1buf	=	0xc680
                           00C640   139 _out1buf	=	0xc640
                           00C7E8   140 _setupbuf	=	0xc7e8
      00800D                        141 _radio_mode:
      00800D                        142 	.ds 1
      00800E                        143 _pm_prefix_length:
      00800E                        144 	.ds 2
      008010                        145 _pm_prefix:
      008010                        146 	.ds 5
      008015                        147 _pm_payload_length:
      008015                        148 	.ds 1
      008016                        149 _enter_promiscuous_mode_PARM_2:
      008016                        150 	.ds 1
      008017                        151 _enter_promiscuous_mode_prefix_1_34:
      008017                        152 	.ds 3
      00801A                        153 _enter_promiscuous_mode_address_2_36:
      00801A                        154 	.ds 2
      00801C                        155 _enter_promiscuous_mode_generic_PARM_2:
      00801C                        156 	.ds 1
      00801D                        157 _enter_promiscuous_mode_generic_PARM_3:
      00801D                        158 	.ds 1
      00801E                        159 _enter_promiscuous_mode_generic_PARM_4:
      00801E                        160 	.ds 1
      00801F                        161 _enter_promiscuous_mode_generic_prefix_1_37:
      00801F                        162 	.ds 3
      008022                        163 _enter_promiscuous_mode_generic_address_2_39:
      008022                        164 	.ds 2
      008024                        165 _configure_address_PARM_2:
      008024                        166 	.ds 1
      008025                        167 _configure_address_address_1_41:
      008025                        168 	.ds 3
      008028                        169 _configure_mac_PARM_2:
      008028                        170 	.ds 1
      008029                        171 _configure_mac_PARM_3:
      008029                        172 	.ds 1
      00802A                        173 _configure_mac_feature_1_43:
      00802A                        174 	.ds 1
      00802B                        175 _configure_phy_PARM_2:
      00802B                        176 	.ds 1
      00802C                        177 _configure_phy_PARM_3:
      00802C                        178 	.ds 1
      00802D                        179 _configure_phy_config_1_45:
      00802D                        180 	.ds 1
      00802E                        181 _spi_transfer_byte_1_47:
      00802E                        182 	.ds 1
      00802F                        183 _spi_write_PARM_2:
      00802F                        184 	.ds 3
      008032                        185 _spi_write_PARM_3:
      008032                        186 	.ds 1
      008033                        187 _spi_write_command_1_49:
      008033                        188 	.ds 1
      008034                        189 _spi_read_PARM_2:
      008034                        190 	.ds 3
      008037                        191 _spi_read_PARM_3:
      008037                        192 	.ds 1
      008038                        193 _spi_read_command_1_51:
      008038                        194 	.ds 1
      008039                        195 _write_register_byte_PARM_2:
      008039                        196 	.ds 1
      00803A                        197 _write_register_byte_reg_1_53:
      00803A                        198 	.ds 1
      00803B                        199 _read_register_byte_reg_1_55:
      00803B                        200 	.ds 1
      00803C                        201 _read_register_byte_value_1_56:
      00803C                        202 	.ds 1
      00803D                        203 _crc_update_PARM_2:
      00803D                        204 	.ds 1
      00803E                        205 _crc_update_PARM_3:
      00803E                        206 	.ds 1
      00803F                        207 _crc_update_crc_1_57:
      00803F                        208 	.ds 2
      008041                        209 _handle_radio_request_PARM_2:
      008041                        210 	.ds 3
      008044                        211 _handle_radio_request_request_1_59:
      008044                        212 	.ds 1
      008045                        213 _handle_radio_request_command_2_62:
      008045                        214 	.ds 9
      00804E                        215 _handle_radio_request_value_2_70:
      00804E                        216 	.ds 1
      00804F                        217 _handle_radio_request_crc_4_75:
      00804F                        218 	.ds 2
      008051                        219 _handle_radio_request_crc_given_4_75:
      008051                        220 	.ds 2
      008053                        221 _handle_radio_request_payload_4_75:
      008053                        222 	.ds 37
      008078                        223 _handle_radio_request_payload_4_81:
      008078                        224 	.ds 37
                                    225 ;--------------------------------------------------------
                                    226 ; absolute external ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area XABS    (ABS,XDATA)
                                    229 ;--------------------------------------------------------
                                    230 ; external initialized ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area XISEG   (XDATA)
      0080BB                        233 _nordic_bootloader:
      0080BB                        234 	.ds 2
      0080BD                        235 _logitech_bootloader:
      0080BD                        236 	.ds 2
      0080BF                        237 _promiscuous_address:
      0080BF                        238 	.ds 2
                                    239 	.area HOME    (CODE)
                                    240 	.area GSINIT0 (CODE)
                                    241 	.area GSINIT1 (CODE)
                                    242 	.area GSINIT2 (CODE)
                                    243 	.area GSINIT3 (CODE)
                                    244 	.area GSINIT4 (CODE)
                                    245 	.area GSINIT5 (CODE)
                                    246 	.area GSINIT  (CODE)
                                    247 	.area GSFINAL (CODE)
                                    248 	.area CSEG    (CODE)
                                    249 ;--------------------------------------------------------
                                    250 ; global & static initialisations
                                    251 ;--------------------------------------------------------
                                    252 	.area HOME    (CODE)
                                    253 	.area GSINIT  (CODE)
                                    254 	.area GSFINAL (CODE)
                                    255 	.area GSINIT  (CODE)
                                    256 ;--------------------------------------------------------
                                    257 ; Home
                                    258 ;--------------------------------------------------------
                                    259 	.area HOME    (CODE)
                                    260 	.area HOME    (CODE)
                                    261 ;--------------------------------------------------------
                                    262 ; code
                                    263 ;--------------------------------------------------------
                                    264 	.area CSEG    (CODE)
                                    265 ;------------------------------------------------------------
                                    266 ;Allocation info for local variables in function 'enter_promiscuous_mode'
                                    267 ;------------------------------------------------------------
                                    268 ;sloc0                     Allocated with name '_enter_promiscuous_mode_sloc0_1_0'
                                    269 ;prefix_length             Allocated with name '_enter_promiscuous_mode_PARM_2'
                                    270 ;prefix                    Allocated with name '_enter_promiscuous_mode_prefix_1_34'
                                    271 ;x                         Allocated with name '_enter_promiscuous_mode_x_1_35'
                                    272 ;address                   Allocated with name '_enter_promiscuous_mode_address_2_36'
                                    273 ;------------------------------------------------------------
                                    274 ;	src/radio.c:9: void enter_promiscuous_mode(uint8_t * prefix, uint8_t prefix_length)
                                    275 ;	-----------------------------------------
                                    276 ;	 function enter_promiscuous_mode
                                    277 ;	-----------------------------------------
      00048D                        278 _enter_promiscuous_mode:
                           000007   279 	ar7 = 0x07
                           000006   280 	ar6 = 0x06
                           000005   281 	ar5 = 0x05
                           000004   282 	ar4 = 0x04
                           000003   283 	ar3 = 0x03
                           000002   284 	ar2 = 0x02
                           000001   285 	ar1 = 0x01
                           000000   286 	ar0 = 0x00
      00048D AF F0            [24]  287 	mov	r7,b
      00048F AE 83            [24]  288 	mov	r6,dph
      000491 E5 82            [12]  289 	mov	a,dpl
      000493 90 80 17         [24]  290 	mov	dptr,#_enter_promiscuous_mode_prefix_1_34
      000496 F0               [24]  291 	movx	@dptr,a
      000497 EE               [12]  292 	mov	a,r6
      000498 A3               [24]  293 	inc	dptr
      000499 F0               [24]  294 	movx	@dptr,a
      00049A EF               [12]  295 	mov	a,r7
      00049B A3               [24]  296 	inc	dptr
      00049C F0               [24]  297 	movx	@dptr,a
                                    298 ;	src/radio.c:13: for(x = 0; x < prefix_length; x++) pm_prefix[prefix_length - 1 - x] = prefix[x];
      00049D 90 80 17         [24]  299 	mov	dptr,#_enter_promiscuous_mode_prefix_1_34
      0004A0 E0               [24]  300 	movx	a,@dptr
      0004A1 FD               [12]  301 	mov	r5,a
      0004A2 A3               [24]  302 	inc	dptr
      0004A3 E0               [24]  303 	movx	a,@dptr
      0004A4 FE               [12]  304 	mov	r6,a
      0004A5 A3               [24]  305 	inc	dptr
      0004A6 E0               [24]  306 	movx	a,@dptr
      0004A7 FF               [12]  307 	mov	r7,a
      0004A8 90 80 16         [24]  308 	mov	dptr,#_enter_promiscuous_mode_PARM_2
      0004AB E0               [24]  309 	movx	a,@dptr
      0004AC FC               [12]  310 	mov	r4,a
      0004AD 7A 00            [12]  311 	mov	r2,#0x00
      0004AF 7B 00            [12]  312 	mov	r3,#0x00
      0004B1                        313 00109$:
      0004B1 8C 00            [24]  314 	mov	ar0,r4
      0004B3 79 00            [12]  315 	mov	r1,#0x00
      0004B5 C3               [12]  316 	clr	c
      0004B6 EA               [12]  317 	mov	a,r2
      0004B7 98               [12]  318 	subb	a,r0
      0004B8 EB               [12]  319 	mov	a,r3
      0004B9 64 80            [12]  320 	xrl	a,#0x80
      0004BB 89 F0            [24]  321 	mov	b,r1
      0004BD 63 F0 80         [24]  322 	xrl	b,#0x80
      0004C0 95 F0            [12]  323 	subb	a,b
      0004C2 50 33            [24]  324 	jnc	00101$
      0004C4 EC               [12]  325 	mov	a,r4
      0004C5 14               [12]  326 	dec	a
      0004C6 8A 00            [24]  327 	mov	ar0,r2
      0004C8 C3               [12]  328 	clr	c
      0004C9 98               [12]  329 	subb	a,r0
      0004CA 24 10            [12]  330 	add	a,#_pm_prefix
      0004CC F5 12            [12]  331 	mov	_enter_promiscuous_mode_sloc0_1_0,a
      0004CE E4               [12]  332 	clr	a
      0004CF 34 80            [12]  333 	addc	a,#(_pm_prefix >> 8)
      0004D1 F5 13            [12]  334 	mov	(_enter_promiscuous_mode_sloc0_1_0 + 1),a
      0004D3 C0 04            [24]  335 	push	ar4
      0004D5 EA               [12]  336 	mov	a,r2
      0004D6 2D               [12]  337 	add	a,r5
      0004D7 F8               [12]  338 	mov	r0,a
      0004D8 EB               [12]  339 	mov	a,r3
      0004D9 3E               [12]  340 	addc	a,r6
      0004DA F9               [12]  341 	mov	r1,a
      0004DB 8F 04            [24]  342 	mov	ar4,r7
      0004DD 88 82            [24]  343 	mov	dpl,r0
      0004DF 89 83            [24]  344 	mov	dph,r1
      0004E1 8C F0            [24]  345 	mov	b,r4
      0004E3 12 16 09         [24]  346 	lcall	__gptrget
      0004E6 F8               [12]  347 	mov	r0,a
      0004E7 85 12 82         [24]  348 	mov	dpl,_enter_promiscuous_mode_sloc0_1_0
      0004EA 85 13 83         [24]  349 	mov	dph,(_enter_promiscuous_mode_sloc0_1_0 + 1)
      0004ED F0               [24]  350 	movx	@dptr,a
      0004EE 0A               [12]  351 	inc	r2
      0004EF BA 00 01         [24]  352 	cjne	r2,#0x00,00137$
      0004F2 0B               [12]  353 	inc	r3
      0004F3                        354 00137$:
      0004F3 D0 04            [24]  355 	pop	ar4
      0004F5 80 BA            [24]  356 	sjmp	00109$
      0004F7                        357 00101$:
                                    358 ;	src/radio.c:14: pm_prefix_length = prefix_length > 5 ? 5 : prefix_length;
      0004F7 EC               [12]  359 	mov	a,r4
      0004F8 24 FA            [12]  360 	add	a,#0xff - 0x05
      0004FA 50 04            [24]  361 	jnc	00113$
      0004FC 7F 05            [12]  362 	mov	r7,#0x05
      0004FE 80 02            [24]  363 	sjmp	00114$
      000500                        364 00113$:
      000500 8C 07            [24]  365 	mov	ar7,r4
      000502                        366 00114$:
      000502 90 80 0E         [24]  367 	mov	dptr,#_pm_prefix_length
      000505 EF               [12]  368 	mov	a,r7
      000506 F0               [24]  369 	movx	@dptr,a
      000507 E4               [12]  370 	clr	a
      000508 A3               [24]  371 	inc	dptr
      000509 F0               [24]  372 	movx	@dptr,a
                                    373 ;	src/radio.c:15: radio_mode = promiscuous;
      00050A 90 80 0D         [24]  374 	mov	dptr,#_radio_mode
      00050D 04               [12]  375 	inc	a
      00050E F0               [24]  376 	movx	@dptr,a
                                    377 ;	src/radio.c:16: pm_payload_length = 32;
      00050F 90 80 15         [24]  378 	mov	dptr,#_pm_payload_length
      000512 74 20            [12]  379 	mov	a,#0x20
      000514 F0               [24]  380 	movx	@dptr,a
                                    381 ;	src/radio.c:19: rfce = 0;
      000515 C2 90            [12]  382 	clr	_rfce
                                    383 ;	src/radio.c:22: write_register_byte(EN_RXADDR, ENRX_P0);
      000517 90 80 39         [24]  384 	mov	dptr,#_write_register_byte_PARM_2
      00051A 74 01            [12]  385 	mov	a,#0x01
      00051C F0               [24]  386 	movx	@dptr,a
      00051D 75 82 02         [24]  387 	mov	dpl,#0x02
      000520 12 08 E0         [24]  388 	lcall	_write_register_byte
                                    389 ;	src/radio.c:25: if(pm_prefix_length == 0) configure_address(promiscuous_address, 2);
      000523 90 80 0E         [24]  390 	mov	dptr,#_pm_prefix_length
      000526 E0               [24]  391 	movx	a,@dptr
      000527 FE               [12]  392 	mov	r6,a
      000528 A3               [24]  393 	inc	dptr
      000529 E0               [24]  394 	movx	a,@dptr
      00052A FF               [12]  395 	mov	r7,a
      00052B 4E               [12]  396 	orl	a,r6
      00052C 70 11            [24]  397 	jnz	00106$
      00052E 90 80 24         [24]  398 	mov	dptr,#_configure_address_PARM_2
      000531 74 02            [12]  399 	mov	a,#0x02
      000533 F0               [24]  400 	movx	@dptr,a
      000534 90 80 BF         [24]  401 	mov	dptr,#_promiscuous_address
      000537 75 F0 00         [24]  402 	mov	b,#0x00
      00053A 12 07 10         [24]  403 	lcall	_configure_address
      00053D 80 43            [24]  404 	sjmp	00107$
      00053F                        405 00106$:
                                    406 ;	src/radio.c:28: else if(pm_prefix_length == 1)
      00053F BE 01 32         [24]  407 	cjne	r6,#0x01,00103$
      000542 BF 00 2F         [24]  408 	cjne	r7,#0x00,00103$
                                    409 ;	src/radio.c:30: uint8_t address[2] = { pm_prefix[0], (pm_prefix[0] & 0x80) == 0x80 ? 0xAA : 0x55 };
      000545 90 80 10         [24]  410 	mov	dptr,#_pm_prefix
      000548 E0               [24]  411 	movx	a,@dptr
      000549 90 80 1A         [24]  412 	mov	dptr,#_enter_promiscuous_mode_address_2_36
      00054C F0               [24]  413 	movx	@dptr,a
      00054D 90 80 10         [24]  414 	mov	dptr,#_pm_prefix
      000550 E0               [24]  415 	movx	a,@dptr
      000551 FD               [12]  416 	mov	r5,a
      000552 53 05 80         [24]  417 	anl	ar5,#0x80
      000555 BD 80 04         [24]  418 	cjne	r5,#0x80,00115$
      000558 7D AA            [12]  419 	mov	r5,#0xAA
      00055A 80 02            [24]  420 	sjmp	00116$
      00055C                        421 00115$:
      00055C 7D 55            [12]  422 	mov	r5,#0x55
      00055E                        423 00116$:
      00055E 90 80 1B         [24]  424 	mov	dptr,#(_enter_promiscuous_mode_address_2_36 + 0x0001)
      000561 ED               [12]  425 	mov	a,r5
      000562 F0               [24]  426 	movx	@dptr,a
                                    427 ;	src/radio.c:31: configure_address(address, 2);
      000563 90 80 24         [24]  428 	mov	dptr,#_configure_address_PARM_2
      000566 74 02            [12]  429 	mov	a,#0x02
      000568 F0               [24]  430 	movx	@dptr,a
      000569 90 80 1A         [24]  431 	mov	dptr,#_enter_promiscuous_mode_address_2_36
      00056C 75 F0 00         [24]  432 	mov	b,#0x00
      00056F 12 07 10         [24]  433 	lcall	_configure_address
      000572 80 0E            [24]  434 	sjmp	00107$
      000574                        435 00103$:
                                    436 ;	src/radio.c:35: else configure_address(pm_prefix, pm_prefix_length);
      000574 90 80 24         [24]  437 	mov	dptr,#_configure_address_PARM_2
      000577 EE               [12]  438 	mov	a,r6
      000578 F0               [24]  439 	movx	@dptr,a
      000579 90 80 10         [24]  440 	mov	dptr,#_pm_prefix
      00057C 75 F0 00         [24]  441 	mov	b,#0x00
      00057F 12 07 10         [24]  442 	lcall	_configure_address
      000582                        443 00107$:
                                    444 ;	src/radio.c:38: configure_mac(0, 0, ENAA_NONE);
      000582 90 80 28         [24]  445 	mov	dptr,#_configure_mac_PARM_2
      000585 E4               [12]  446 	clr	a
      000586 F0               [24]  447 	movx	@dptr,a
      000587 90 80 29         [24]  448 	mov	dptr,#_configure_mac_PARM_3
      00058A F0               [24]  449 	movx	@dptr,a
      00058B 75 82 00         [24]  450 	mov	dpl,#0x00
      00058E 12 07 87         [24]  451 	lcall	_configure_mac
                                    452 ;	src/radio.c:41: configure_phy(PRIM_RX | PWR_UP, RATE_2M, pm_payload_length);
      000591 90 80 15         [24]  453 	mov	dptr,#_pm_payload_length
      000594 E0               [24]  454 	movx	a,@dptr
      000595 FF               [12]  455 	mov	r7,a
      000596 90 80 2B         [24]  456 	mov	dptr,#_configure_phy_PARM_2
      000599 74 08            [12]  457 	mov	a,#0x08
      00059B F0               [24]  458 	movx	@dptr,a
      00059C 90 80 2C         [24]  459 	mov	dptr,#_configure_phy_PARM_3
      00059F EF               [12]  460 	mov	a,r7
      0005A0 F0               [24]  461 	movx	@dptr,a
      0005A1 75 82 03         [24]  462 	mov	dpl,#0x03
      0005A4 12 07 B4         [24]  463 	lcall	_configure_phy
                                    464 ;	src/radio.c:44: rfce = 1;
      0005A7 D2 90            [12]  465 	setb	_rfce
                                    466 ;	src/radio.c:45: in1bc = 0;
      0005A9 90 C7 B7         [24]  467 	mov	dptr,#0xC7B7
      0005AC E4               [12]  468 	clr	a
      0005AD F0               [24]  469 	movx	@dptr,a
      0005AE 22               [24]  470 	ret
                                    471 ;------------------------------------------------------------
                                    472 ;Allocation info for local variables in function 'enter_promiscuous_mode_generic'
                                    473 ;------------------------------------------------------------
                                    474 ;sloc0                     Allocated with name '_enter_promiscuous_mode_generic_sloc0_1_0'
                                    475 ;prefix_length             Allocated with name '_enter_promiscuous_mode_generic_PARM_2'
                                    476 ;rate                      Allocated with name '_enter_promiscuous_mode_generic_PARM_3'
                                    477 ;payload_length            Allocated with name '_enter_promiscuous_mode_generic_PARM_4'
                                    478 ;prefix                    Allocated with name '_enter_promiscuous_mode_generic_prefix_1_37'
                                    479 ;x                         Allocated with name '_enter_promiscuous_mode_generic_x_1_38'
                                    480 ;address                   Allocated with name '_enter_promiscuous_mode_generic_address_2_39'
                                    481 ;------------------------------------------------------------
                                    482 ;	src/radio.c:49: void enter_promiscuous_mode_generic(uint8_t * prefix, uint8_t prefix_length, uint8_t rate, uint8_t payload_length)
                                    483 ;	-----------------------------------------
                                    484 ;	 function enter_promiscuous_mode_generic
                                    485 ;	-----------------------------------------
      0005AF                        486 _enter_promiscuous_mode_generic:
      0005AF AF F0            [24]  487 	mov	r7,b
      0005B1 AE 83            [24]  488 	mov	r6,dph
      0005B3 E5 82            [12]  489 	mov	a,dpl
      0005B5 90 80 1F         [24]  490 	mov	dptr,#_enter_promiscuous_mode_generic_prefix_1_37
      0005B8 F0               [24]  491 	movx	@dptr,a
      0005B9 EE               [12]  492 	mov	a,r6
      0005BA A3               [24]  493 	inc	dptr
      0005BB F0               [24]  494 	movx	@dptr,a
      0005BC EF               [12]  495 	mov	a,r7
      0005BD A3               [24]  496 	inc	dptr
      0005BE F0               [24]  497 	movx	@dptr,a
                                    498 ;	src/radio.c:53: for(x = 0; x < prefix_length; x++) pm_prefix[prefix_length - 1 - x] = prefix[x];
      0005BF 90 80 1F         [24]  499 	mov	dptr,#_enter_promiscuous_mode_generic_prefix_1_37
      0005C2 E0               [24]  500 	movx	a,@dptr
      0005C3 FD               [12]  501 	mov	r5,a
      0005C4 A3               [24]  502 	inc	dptr
      0005C5 E0               [24]  503 	movx	a,@dptr
      0005C6 FE               [12]  504 	mov	r6,a
      0005C7 A3               [24]  505 	inc	dptr
      0005C8 E0               [24]  506 	movx	a,@dptr
      0005C9 FF               [12]  507 	mov	r7,a
      0005CA 90 80 1C         [24]  508 	mov	dptr,#_enter_promiscuous_mode_generic_PARM_2
      0005CD E0               [24]  509 	movx	a,@dptr
      0005CE FC               [12]  510 	mov	r4,a
      0005CF 7A 00            [12]  511 	mov	r2,#0x00
      0005D1 7B 00            [12]  512 	mov	r3,#0x00
      0005D3                        513 00113$:
      0005D3 8C 00            [24]  514 	mov	ar0,r4
      0005D5 79 00            [12]  515 	mov	r1,#0x00
      0005D7 C3               [12]  516 	clr	c
      0005D8 EA               [12]  517 	mov	a,r2
      0005D9 98               [12]  518 	subb	a,r0
      0005DA EB               [12]  519 	mov	a,r3
      0005DB 64 80            [12]  520 	xrl	a,#0x80
      0005DD 89 F0            [24]  521 	mov	b,r1
      0005DF 63 F0 80         [24]  522 	xrl	b,#0x80
      0005E2 95 F0            [12]  523 	subb	a,b
      0005E4 50 33            [24]  524 	jnc	00101$
      0005E6 EC               [12]  525 	mov	a,r4
      0005E7 14               [12]  526 	dec	a
      0005E8 8A 00            [24]  527 	mov	ar0,r2
      0005EA C3               [12]  528 	clr	c
      0005EB 98               [12]  529 	subb	a,r0
      0005EC 24 10            [12]  530 	add	a,#_pm_prefix
      0005EE F5 14            [12]  531 	mov	_enter_promiscuous_mode_generic_sloc0_1_0,a
      0005F0 E4               [12]  532 	clr	a
      0005F1 34 80            [12]  533 	addc	a,#(_pm_prefix >> 8)
      0005F3 F5 15            [12]  534 	mov	(_enter_promiscuous_mode_generic_sloc0_1_0 + 1),a
      0005F5 C0 04            [24]  535 	push	ar4
      0005F7 EA               [12]  536 	mov	a,r2
      0005F8 2D               [12]  537 	add	a,r5
      0005F9 F8               [12]  538 	mov	r0,a
      0005FA EB               [12]  539 	mov	a,r3
      0005FB 3E               [12]  540 	addc	a,r6
      0005FC F9               [12]  541 	mov	r1,a
      0005FD 8F 04            [24]  542 	mov	ar4,r7
      0005FF 88 82            [24]  543 	mov	dpl,r0
      000601 89 83            [24]  544 	mov	dph,r1
      000603 8C F0            [24]  545 	mov	b,r4
      000605 12 16 09         [24]  546 	lcall	__gptrget
      000608 F8               [12]  547 	mov	r0,a
      000609 85 14 82         [24]  548 	mov	dpl,_enter_promiscuous_mode_generic_sloc0_1_0
      00060C 85 15 83         [24]  549 	mov	dph,(_enter_promiscuous_mode_generic_sloc0_1_0 + 1)
      00060F F0               [24]  550 	movx	@dptr,a
      000610 0A               [12]  551 	inc	r2
      000611 BA 00 01         [24]  552 	cjne	r2,#0x00,00147$
      000614 0B               [12]  553 	inc	r3
      000615                        554 00147$:
      000615 D0 04            [24]  555 	pop	ar4
      000617 80 BA            [24]  556 	sjmp	00113$
      000619                        557 00101$:
                                    558 ;	src/radio.c:54: pm_prefix_length = prefix_length > 5 ? 5 : prefix_length;
      000619 EC               [12]  559 	mov	a,r4
      00061A 24 FA            [12]  560 	add	a,#0xff - 0x05
      00061C 50 04            [24]  561 	jnc	00117$
      00061E 7F 05            [12]  562 	mov	r7,#0x05
      000620 80 02            [24]  563 	sjmp	00118$
      000622                        564 00117$:
      000622 8C 07            [24]  565 	mov	ar7,r4
      000624                        566 00118$:
      000624 90 80 0E         [24]  567 	mov	dptr,#_pm_prefix_length
      000627 EF               [12]  568 	mov	a,r7
      000628 F0               [24]  569 	movx	@dptr,a
      000629 E4               [12]  570 	clr	a
      00062A A3               [24]  571 	inc	dptr
      00062B F0               [24]  572 	movx	@dptr,a
                                    573 ;	src/radio.c:55: radio_mode = promiscuous_generic;
      00062C 90 80 0D         [24]  574 	mov	dptr,#_radio_mode
      00062F 74 02            [12]  575 	mov	a,#0x02
      000631 F0               [24]  576 	movx	@dptr,a
                                    577 ;	src/radio.c:56: pm_payload_length = payload_length;
      000632 90 80 1E         [24]  578 	mov	dptr,#_enter_promiscuous_mode_generic_PARM_4
      000635 E0               [24]  579 	movx	a,@dptr
      000636 90 80 15         [24]  580 	mov	dptr,#_pm_payload_length
      000639 F0               [24]  581 	movx	@dptr,a
                                    582 ;	src/radio.c:59: rfce = 0;
      00063A C2 90            [12]  583 	clr	_rfce
                                    584 ;	src/radio.c:62: write_register_byte(EN_RXADDR, ENRX_P0);
      00063C 90 80 39         [24]  585 	mov	dptr,#_write_register_byte_PARM_2
      00063F 74 01            [12]  586 	mov	a,#0x01
      000641 F0               [24]  587 	movx	@dptr,a
      000642 75 82 02         [24]  588 	mov	dpl,#0x02
      000645 12 08 E0         [24]  589 	lcall	_write_register_byte
                                    590 ;	src/radio.c:65: if(pm_prefix_length == 0) configure_address(promiscuous_address, 2);
      000648 90 80 0E         [24]  591 	mov	dptr,#_pm_prefix_length
      00064B E0               [24]  592 	movx	a,@dptr
      00064C FE               [12]  593 	mov	r6,a
      00064D A3               [24]  594 	inc	dptr
      00064E E0               [24]  595 	movx	a,@dptr
      00064F FF               [12]  596 	mov	r7,a
      000650 4E               [12]  597 	orl	a,r6
      000651 70 11            [24]  598 	jnz	00106$
      000653 90 80 24         [24]  599 	mov	dptr,#_configure_address_PARM_2
      000656 74 02            [12]  600 	mov	a,#0x02
      000658 F0               [24]  601 	movx	@dptr,a
      000659 90 80 BF         [24]  602 	mov	dptr,#_promiscuous_address
      00065C 75 F0 00         [24]  603 	mov	b,#0x00
      00065F 12 07 10         [24]  604 	lcall	_configure_address
      000662 80 43            [24]  605 	sjmp	00107$
      000664                        606 00106$:
                                    607 ;	src/radio.c:68: else if(pm_prefix_length == 1)
      000664 BE 01 32         [24]  608 	cjne	r6,#0x01,00103$
      000667 BF 00 2F         [24]  609 	cjne	r7,#0x00,00103$
                                    610 ;	src/radio.c:70: uint8_t address[2] = { pm_prefix[0], (pm_prefix[0] & 0x80) == 0x80 ? 0xAA : 0x55 };
      00066A 90 80 10         [24]  611 	mov	dptr,#_pm_prefix
      00066D E0               [24]  612 	movx	a,@dptr
      00066E 90 80 22         [24]  613 	mov	dptr,#_enter_promiscuous_mode_generic_address_2_39
      000671 F0               [24]  614 	movx	@dptr,a
      000672 90 80 10         [24]  615 	mov	dptr,#_pm_prefix
      000675 E0               [24]  616 	movx	a,@dptr
      000676 FD               [12]  617 	mov	r5,a
      000677 53 05 80         [24]  618 	anl	ar5,#0x80
      00067A BD 80 04         [24]  619 	cjne	r5,#0x80,00119$
      00067D 7D AA            [12]  620 	mov	r5,#0xAA
      00067F 80 02            [24]  621 	sjmp	00120$
      000681                        622 00119$:
      000681 7D 55            [12]  623 	mov	r5,#0x55
      000683                        624 00120$:
      000683 90 80 23         [24]  625 	mov	dptr,#(_enter_promiscuous_mode_generic_address_2_39 + 0x0001)
      000686 ED               [12]  626 	mov	a,r5
      000687 F0               [24]  627 	movx	@dptr,a
                                    628 ;	src/radio.c:71: configure_address(address, 2);
      000688 90 80 24         [24]  629 	mov	dptr,#_configure_address_PARM_2
      00068B 74 02            [12]  630 	mov	a,#0x02
      00068D F0               [24]  631 	movx	@dptr,a
      00068E 90 80 22         [24]  632 	mov	dptr,#_enter_promiscuous_mode_generic_address_2_39
      000691 75 F0 00         [24]  633 	mov	b,#0x00
      000694 12 07 10         [24]  634 	lcall	_configure_address
      000697 80 0E            [24]  635 	sjmp	00107$
      000699                        636 00103$:
                                    637 ;	src/radio.c:75: else configure_address(pm_prefix, pm_prefix_length);
      000699 90 80 24         [24]  638 	mov	dptr,#_configure_address_PARM_2
      00069C EE               [12]  639 	mov	a,r6
      00069D F0               [24]  640 	movx	@dptr,a
      00069E 90 80 10         [24]  641 	mov	dptr,#_pm_prefix
      0006A1 75 F0 00         [24]  642 	mov	b,#0x00
      0006A4 12 07 10         [24]  643 	lcall	_configure_address
      0006A7                        644 00107$:
                                    645 ;	src/radio.c:78: configure_mac(0, 0, ENAA_NONE);
      0006A7 90 80 28         [24]  646 	mov	dptr,#_configure_mac_PARM_2
      0006AA E4               [12]  647 	clr	a
      0006AB F0               [24]  648 	movx	@dptr,a
      0006AC 90 80 29         [24]  649 	mov	dptr,#_configure_mac_PARM_3
      0006AF F0               [24]  650 	movx	@dptr,a
      0006B0 75 82 00         [24]  651 	mov	dpl,#0x00
      0006B3 12 07 87         [24]  652 	lcall	_configure_mac
                                    653 ;	src/radio.c:81: switch(rate)
      0006B6 90 80 1D         [24]  654 	mov	dptr,#_enter_promiscuous_mode_generic_PARM_3
      0006B9 E0               [24]  655 	movx	a,@dptr
      0006BA FF               [12]  656 	mov	r7,a
      0006BB 60 05            [24]  657 	jz	00108$
                                    658 ;	src/radio.c:83: case 0:  configure_phy(PRIM_RX | PWR_UP, RF_PWR_4 | RATE_250K, pm_payload_length); break;
      0006BD BF 01 32         [24]  659 	cjne	r7,#0x01,00110$
      0006C0 80 18            [24]  660 	sjmp	00109$
      0006C2                        661 00108$:
      0006C2 90 80 15         [24]  662 	mov	dptr,#_pm_payload_length
      0006C5 E0               [24]  663 	movx	a,@dptr
      0006C6 FF               [12]  664 	mov	r7,a
      0006C7 90 80 2B         [24]  665 	mov	dptr,#_configure_phy_PARM_2
      0006CA 74 26            [12]  666 	mov	a,#0x26
      0006CC F0               [24]  667 	movx	@dptr,a
      0006CD 90 80 2C         [24]  668 	mov	dptr,#_configure_phy_PARM_3
      0006D0 EF               [12]  669 	mov	a,r7
      0006D1 F0               [24]  670 	movx	@dptr,a
      0006D2 75 82 03         [24]  671 	mov	dpl,#0x03
      0006D5 12 07 B4         [24]  672 	lcall	_configure_phy
                                    673 ;	src/radio.c:84: case 1:  configure_phy(PRIM_RX | PWR_UP, RF_PWR_4 | RATE_1M, pm_payload_length); break;
      0006D8 80 2E            [24]  674 	sjmp	00111$
      0006DA                        675 00109$:
      0006DA 90 80 15         [24]  676 	mov	dptr,#_pm_payload_length
      0006DD E0               [24]  677 	movx	a,@dptr
      0006DE FF               [12]  678 	mov	r7,a
      0006DF 90 80 2B         [24]  679 	mov	dptr,#_configure_phy_PARM_2
      0006E2 74 06            [12]  680 	mov	a,#0x06
      0006E4 F0               [24]  681 	movx	@dptr,a
      0006E5 90 80 2C         [24]  682 	mov	dptr,#_configure_phy_PARM_3
      0006E8 EF               [12]  683 	mov	a,r7
      0006E9 F0               [24]  684 	movx	@dptr,a
      0006EA 75 82 03         [24]  685 	mov	dpl,#0x03
      0006ED 12 07 B4         [24]  686 	lcall	_configure_phy
                                    687 ;	src/radio.c:85: default: configure_phy(PRIM_RX | PWR_UP, RF_PWR_4 | RATE_2M, pm_payload_length); break;
      0006F0 80 16            [24]  688 	sjmp	00111$
      0006F2                        689 00110$:
      0006F2 90 80 15         [24]  690 	mov	dptr,#_pm_payload_length
      0006F5 E0               [24]  691 	movx	a,@dptr
      0006F6 FF               [12]  692 	mov	r7,a
      0006F7 90 80 2B         [24]  693 	mov	dptr,#_configure_phy_PARM_2
      0006FA 74 0E            [12]  694 	mov	a,#0x0E
      0006FC F0               [24]  695 	movx	@dptr,a
      0006FD 90 80 2C         [24]  696 	mov	dptr,#_configure_phy_PARM_3
      000700 EF               [12]  697 	mov	a,r7
      000701 F0               [24]  698 	movx	@dptr,a
      000702 75 82 03         [24]  699 	mov	dpl,#0x03
      000705 12 07 B4         [24]  700 	lcall	_configure_phy
                                    701 ;	src/radio.c:86: }
      000708                        702 00111$:
                                    703 ;	src/radio.c:89: rfce = 1;
      000708 D2 90            [12]  704 	setb	_rfce
                                    705 ;	src/radio.c:90: in1bc = 0;
      00070A 90 C7 B7         [24]  706 	mov	dptr,#0xC7B7
      00070D E4               [12]  707 	clr	a
      00070E F0               [24]  708 	movx	@dptr,a
      00070F 22               [24]  709 	ret
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'configure_address'
                                    712 ;------------------------------------------------------------
                                    713 ;length                    Allocated with name '_configure_address_PARM_2'
                                    714 ;address                   Allocated with name '_configure_address_address_1_41'
                                    715 ;------------------------------------------------------------
                                    716 ;	src/radio.c:94: void configure_address(uint8_t * address, uint8_t length)
                                    717 ;	-----------------------------------------
                                    718 ;	 function configure_address
                                    719 ;	-----------------------------------------
      000710                        720 _configure_address:
      000710 AF F0            [24]  721 	mov	r7,b
      000712 AE 83            [24]  722 	mov	r6,dph
      000714 E5 82            [12]  723 	mov	a,dpl
      000716 90 80 25         [24]  724 	mov	dptr,#_configure_address_address_1_41
      000719 F0               [24]  725 	movx	@dptr,a
      00071A EE               [12]  726 	mov	a,r6
      00071B A3               [24]  727 	inc	dptr
      00071C F0               [24]  728 	movx	@dptr,a
      00071D EF               [12]  729 	mov	a,r7
      00071E A3               [24]  730 	inc	dptr
      00071F F0               [24]  731 	movx	@dptr,a
                                    732 ;	src/radio.c:96: write_register_byte(EN_RXADDR, ENRX_P0);
      000720 90 80 39         [24]  733 	mov	dptr,#_write_register_byte_PARM_2
      000723 74 01            [12]  734 	mov	a,#0x01
      000725 F0               [24]  735 	movx	@dptr,a
      000726 75 82 02         [24]  736 	mov	dpl,#0x02
      000729 12 08 E0         [24]  737 	lcall	_write_register_byte
                                    738 ;	src/radio.c:97: write_register_byte(SETUP_AW, length - 2);
      00072C 90 80 24         [24]  739 	mov	dptr,#_configure_address_PARM_2
      00072F E0               [24]  740 	movx	a,@dptr
      000730 FF               [12]  741 	mov	r7,a
      000731 24 FE            [12]  742 	add	a,#0xFE
      000733 90 80 39         [24]  743 	mov	dptr,#_write_register_byte_PARM_2
      000736 F0               [24]  744 	movx	@dptr,a
      000737 75 82 03         [24]  745 	mov	dpl,#0x03
      00073A C0 07            [24]  746 	push	ar7
      00073C 12 08 E0         [24]  747 	lcall	_write_register_byte
      00073F D0 07            [24]  748 	pop	ar7
                                    749 ;	src/radio.c:98: write_register(TX_ADDR, address, length);
      000741 90 80 25         [24]  750 	mov	dptr,#_configure_address_address_1_41
      000744 E0               [24]  751 	movx	a,@dptr
      000745 FC               [12]  752 	mov	r4,a
      000746 A3               [24]  753 	inc	dptr
      000747 E0               [24]  754 	movx	a,@dptr
      000748 FD               [12]  755 	mov	r5,a
      000749 A3               [24]  756 	inc	dptr
      00074A E0               [24]  757 	movx	a,@dptr
      00074B FE               [12]  758 	mov	r6,a
      00074C 90 80 2F         [24]  759 	mov	dptr,#_spi_write_PARM_2
      00074F EC               [12]  760 	mov	a,r4
      000750 F0               [24]  761 	movx	@dptr,a
      000751 ED               [12]  762 	mov	a,r5
      000752 A3               [24]  763 	inc	dptr
      000753 F0               [24]  764 	movx	@dptr,a
      000754 EE               [12]  765 	mov	a,r6
      000755 A3               [24]  766 	inc	dptr
      000756 F0               [24]  767 	movx	@dptr,a
      000757 90 80 32         [24]  768 	mov	dptr,#_spi_write_PARM_3
      00075A EF               [12]  769 	mov	a,r7
      00075B F0               [24]  770 	movx	@dptr,a
      00075C 75 82 30         [24]  771 	mov	dpl,#0x30
      00075F C0 07            [24]  772 	push	ar7
      000761 12 07 F3         [24]  773 	lcall	_spi_write
      000764 D0 07            [24]  774 	pop	ar7
                                    775 ;	src/radio.c:99: write_register(RX_ADDR_P0, address, length);
      000766 90 80 25         [24]  776 	mov	dptr,#_configure_address_address_1_41
      000769 E0               [24]  777 	movx	a,@dptr
      00076A FC               [12]  778 	mov	r4,a
      00076B A3               [24]  779 	inc	dptr
      00076C E0               [24]  780 	movx	a,@dptr
      00076D FD               [12]  781 	mov	r5,a
      00076E A3               [24]  782 	inc	dptr
      00076F E0               [24]  783 	movx	a,@dptr
      000770 FE               [12]  784 	mov	r6,a
      000771 90 80 2F         [24]  785 	mov	dptr,#_spi_write_PARM_2
      000774 EC               [12]  786 	mov	a,r4
      000775 F0               [24]  787 	movx	@dptr,a
      000776 ED               [12]  788 	mov	a,r5
      000777 A3               [24]  789 	inc	dptr
      000778 F0               [24]  790 	movx	@dptr,a
      000779 EE               [12]  791 	mov	a,r6
      00077A A3               [24]  792 	inc	dptr
      00077B F0               [24]  793 	movx	@dptr,a
      00077C 90 80 32         [24]  794 	mov	dptr,#_spi_write_PARM_3
      00077F EF               [12]  795 	mov	a,r7
      000780 F0               [24]  796 	movx	@dptr,a
      000781 75 82 2A         [24]  797 	mov	dpl,#0x2A
      000784 02 07 F3         [24]  798 	ljmp	_spi_write
                                    799 ;------------------------------------------------------------
                                    800 ;Allocation info for local variables in function 'configure_mac'
                                    801 ;------------------------------------------------------------
                                    802 ;dynpd                     Allocated with name '_configure_mac_PARM_2'
                                    803 ;en_aa                     Allocated with name '_configure_mac_PARM_3'
                                    804 ;feature                   Allocated with name '_configure_mac_feature_1_43'
                                    805 ;------------------------------------------------------------
                                    806 ;	src/radio.c:103: void configure_mac(uint8_t feature, uint8_t dynpd, uint8_t en_aa)
                                    807 ;	-----------------------------------------
                                    808 ;	 function configure_mac
                                    809 ;	-----------------------------------------
      000787                        810 _configure_mac:
      000787 E5 82            [12]  811 	mov	a,dpl
      000789 90 80 2A         [24]  812 	mov	dptr,#_configure_mac_feature_1_43
      00078C F0               [24]  813 	movx	@dptr,a
                                    814 ;	src/radio.c:105: write_register_byte(FEATURE, feature);
      00078D E0               [24]  815 	movx	a,@dptr
      00078E 90 80 39         [24]  816 	mov	dptr,#_write_register_byte_PARM_2
      000791 F0               [24]  817 	movx	@dptr,a
      000792 75 82 1D         [24]  818 	mov	dpl,#0x1D
      000795 12 08 E0         [24]  819 	lcall	_write_register_byte
                                    820 ;	src/radio.c:106: write_register_byte(DYNPD, dynpd);
      000798 90 80 28         [24]  821 	mov	dptr,#_configure_mac_PARM_2
      00079B E0               [24]  822 	movx	a,@dptr
      00079C 90 80 39         [24]  823 	mov	dptr,#_write_register_byte_PARM_2
      00079F F0               [24]  824 	movx	@dptr,a
      0007A0 75 82 1C         [24]  825 	mov	dpl,#0x1C
      0007A3 12 08 E0         [24]  826 	lcall	_write_register_byte
                                    827 ;	src/radio.c:107: write_register_byte(EN_AA, en_aa);
      0007A6 90 80 29         [24]  828 	mov	dptr,#_configure_mac_PARM_3
      0007A9 E0               [24]  829 	movx	a,@dptr
      0007AA 90 80 39         [24]  830 	mov	dptr,#_write_register_byte_PARM_2
      0007AD F0               [24]  831 	movx	@dptr,a
      0007AE 75 82 01         [24]  832 	mov	dpl,#0x01
      0007B1 02 08 E0         [24]  833 	ljmp	_write_register_byte
                                    834 ;------------------------------------------------------------
                                    835 ;Allocation info for local variables in function 'configure_phy'
                                    836 ;------------------------------------------------------------
                                    837 ;rf_setup                  Allocated with name '_configure_phy_PARM_2'
                                    838 ;rx_pw                     Allocated with name '_configure_phy_PARM_3'
                                    839 ;config                    Allocated with name '_configure_phy_config_1_45'
                                    840 ;------------------------------------------------------------
                                    841 ;	src/radio.c:111: void configure_phy(uint8_t config, uint8_t rf_setup, uint8_t rx_pw)
                                    842 ;	-----------------------------------------
                                    843 ;	 function configure_phy
                                    844 ;	-----------------------------------------
      0007B4                        845 _configure_phy:
      0007B4 E5 82            [12]  846 	mov	a,dpl
      0007B6 90 80 2D         [24]  847 	mov	dptr,#_configure_phy_config_1_45
      0007B9 F0               [24]  848 	movx	@dptr,a
                                    849 ;	src/radio.c:113: write_register_byte(CONFIG, config);
      0007BA E0               [24]  850 	movx	a,@dptr
      0007BB 90 80 39         [24]  851 	mov	dptr,#_write_register_byte_PARM_2
      0007BE F0               [24]  852 	movx	@dptr,a
      0007BF 75 82 00         [24]  853 	mov	dpl,#0x00
      0007C2 12 08 E0         [24]  854 	lcall	_write_register_byte
                                    855 ;	src/radio.c:114: write_register_byte(RF_SETUP, rf_setup);
      0007C5 90 80 2B         [24]  856 	mov	dptr,#_configure_phy_PARM_2
      0007C8 E0               [24]  857 	movx	a,@dptr
      0007C9 90 80 39         [24]  858 	mov	dptr,#_write_register_byte_PARM_2
      0007CC F0               [24]  859 	movx	@dptr,a
      0007CD 75 82 06         [24]  860 	mov	dpl,#0x06
      0007D0 12 08 E0         [24]  861 	lcall	_write_register_byte
                                    862 ;	src/radio.c:115: write_register_byte(RX_PW_P0, rx_pw);
      0007D3 90 80 2C         [24]  863 	mov	dptr,#_configure_phy_PARM_3
      0007D6 E0               [24]  864 	movx	a,@dptr
      0007D7 90 80 39         [24]  865 	mov	dptr,#_write_register_byte_PARM_2
      0007DA F0               [24]  866 	movx	@dptr,a
      0007DB 75 82 11         [24]  867 	mov	dpl,#0x11
      0007DE 02 08 E0         [24]  868 	ljmp	_write_register_byte
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'spi_transfer'
                                    871 ;------------------------------------------------------------
                                    872 ;byte                      Allocated with name '_spi_transfer_byte_1_47'
                                    873 ;------------------------------------------------------------
                                    874 ;	src/radio.c:119: uint8_t spi_transfer(uint8_t byte)
                                    875 ;	-----------------------------------------
                                    876 ;	 function spi_transfer
                                    877 ;	-----------------------------------------
      0007E1                        878 _spi_transfer:
      0007E1 E5 82            [12]  879 	mov	a,dpl
      0007E3 90 80 2E         [24]  880 	mov	dptr,#_spi_transfer_byte_1_47
      0007E6 F0               [24]  881 	movx	@dptr,a
                                    882 ;	src/radio.c:121: RFDAT = byte;
      0007E7 E0               [24]  883 	movx	a,@dptr
      0007E8 F5 E5            [12]  884 	mov	_RFDAT,a
                                    885 ;	src/radio.c:122: RFRDY = 0;
      0007EA C2 C0            [12]  886 	clr	_RFRDY
                                    887 ;	src/radio.c:123: while(!RFRDY);
      0007EC                        888 00101$:
      0007EC 30 C0 FD         [24]  889 	jnb	_RFRDY,00101$
                                    890 ;	src/radio.c:124: return RFDAT;
      0007EF 85 E5 82         [24]  891 	mov	dpl,_RFDAT
      0007F2 22               [24]  892 	ret
                                    893 ;------------------------------------------------------------
                                    894 ;Allocation info for local variables in function 'spi_write'
                                    895 ;------------------------------------------------------------
                                    896 ;buffer                    Allocated with name '_spi_write_PARM_2'
                                    897 ;length                    Allocated with name '_spi_write_PARM_3'
                                    898 ;command                   Allocated with name '_spi_write_command_1_49'
                                    899 ;x                         Allocated with name '_spi_write_x_1_50'
                                    900 ;------------------------------------------------------------
                                    901 ;	src/radio.c:128: void spi_write(uint8_t command, uint8_t * buffer, uint8_t length)
                                    902 ;	-----------------------------------------
                                    903 ;	 function spi_write
                                    904 ;	-----------------------------------------
      0007F3                        905 _spi_write:
      0007F3 E5 82            [12]  906 	mov	a,dpl
      0007F5 90 80 33         [24]  907 	mov	dptr,#_spi_write_command_1_49
      0007F8 F0               [24]  908 	movx	@dptr,a
                                    909 ;	src/radio.c:131: rfcsn = 0;
      0007F9 C2 91            [12]  910 	clr	_rfcsn
                                    911 ;	src/radio.c:132: spi_transfer(command);
      0007FB 90 80 33         [24]  912 	mov	dptr,#_spi_write_command_1_49
      0007FE E0               [24]  913 	movx	a,@dptr
      0007FF F5 82            [12]  914 	mov	dpl,a
      000801 12 07 E1         [24]  915 	lcall	_spi_transfer
                                    916 ;	src/radio.c:133: for(x = 0; x < length; x++) spi_transfer(buffer[x]);
      000804 90 80 2F         [24]  917 	mov	dptr,#_spi_write_PARM_2
      000807 E0               [24]  918 	movx	a,@dptr
      000808 FD               [12]  919 	mov	r5,a
      000809 A3               [24]  920 	inc	dptr
      00080A E0               [24]  921 	movx	a,@dptr
      00080B FE               [12]  922 	mov	r6,a
      00080C A3               [24]  923 	inc	dptr
      00080D E0               [24]  924 	movx	a,@dptr
      00080E FF               [12]  925 	mov	r7,a
      00080F 90 80 32         [24]  926 	mov	dptr,#_spi_write_PARM_3
      000812 E0               [24]  927 	movx	a,@dptr
      000813 FC               [12]  928 	mov	r4,a
      000814 7A 00            [12]  929 	mov	r2,#0x00
      000816 7B 00            [12]  930 	mov	r3,#0x00
      000818                        931 00103$:
      000818 8C 00            [24]  932 	mov	ar0,r4
      00081A 79 00            [12]  933 	mov	r1,#0x00
      00081C C3               [12]  934 	clr	c
      00081D EA               [12]  935 	mov	a,r2
      00081E 98               [12]  936 	subb	a,r0
      00081F EB               [12]  937 	mov	a,r3
      000820 64 80            [12]  938 	xrl	a,#0x80
      000822 89 F0            [24]  939 	mov	b,r1
      000824 63 F0 80         [24]  940 	xrl	b,#0x80
      000827 95 F0            [12]  941 	subb	a,b
      000829 50 39            [24]  942 	jnc	00101$
      00082B C0 04            [24]  943 	push	ar4
      00082D EA               [12]  944 	mov	a,r2
      00082E 2D               [12]  945 	add	a,r5
      00082F F8               [12]  946 	mov	r0,a
      000830 EB               [12]  947 	mov	a,r3
      000831 3E               [12]  948 	addc	a,r6
      000832 F9               [12]  949 	mov	r1,a
      000833 8F 04            [24]  950 	mov	ar4,r7
      000835 88 82            [24]  951 	mov	dpl,r0
      000837 89 83            [24]  952 	mov	dph,r1
      000839 8C F0            [24]  953 	mov	b,r4
      00083B 12 16 09         [24]  954 	lcall	__gptrget
      00083E F5 82            [12]  955 	mov	dpl,a
      000840 C0 07            [24]  956 	push	ar7
      000842 C0 06            [24]  957 	push	ar6
      000844 C0 05            [24]  958 	push	ar5
      000846 C0 04            [24]  959 	push	ar4
      000848 C0 03            [24]  960 	push	ar3
      00084A C0 02            [24]  961 	push	ar2
      00084C 12 07 E1         [24]  962 	lcall	_spi_transfer
      00084F D0 02            [24]  963 	pop	ar2
      000851 D0 03            [24]  964 	pop	ar3
      000853 D0 04            [24]  965 	pop	ar4
      000855 D0 05            [24]  966 	pop	ar5
      000857 D0 06            [24]  967 	pop	ar6
      000859 D0 07            [24]  968 	pop	ar7
      00085B 0A               [12]  969 	inc	r2
      00085C BA 00 01         [24]  970 	cjne	r2,#0x00,00115$
      00085F 0B               [12]  971 	inc	r3
      000860                        972 00115$:
      000860 D0 04            [24]  973 	pop	ar4
      000862 80 B4            [24]  974 	sjmp	00103$
      000864                        975 00101$:
                                    976 ;	src/radio.c:134: rfcsn = 1;
      000864 D2 91            [12]  977 	setb	_rfcsn
      000866 22               [24]  978 	ret
                                    979 ;------------------------------------------------------------
                                    980 ;Allocation info for local variables in function 'spi_read'
                                    981 ;------------------------------------------------------------
                                    982 ;sloc0                     Allocated with name '_spi_read_sloc0_1_0'
                                    983 ;buffer                    Allocated with name '_spi_read_PARM_2'
                                    984 ;length                    Allocated with name '_spi_read_PARM_3'
                                    985 ;command                   Allocated with name '_spi_read_command_1_51'
                                    986 ;x                         Allocated with name '_spi_read_x_1_52'
                                    987 ;------------------------------------------------------------
                                    988 ;	src/radio.c:138: void spi_read(uint8_t command, uint8_t * buffer, uint8_t length)
                                    989 ;	-----------------------------------------
                                    990 ;	 function spi_read
                                    991 ;	-----------------------------------------
      000867                        992 _spi_read:
      000867 E5 82            [12]  993 	mov	a,dpl
      000869 90 80 38         [24]  994 	mov	dptr,#_spi_read_command_1_51
      00086C F0               [24]  995 	movx	@dptr,a
                                    996 ;	src/radio.c:141: rfcsn = 0;
      00086D C2 91            [12]  997 	clr	_rfcsn
                                    998 ;	src/radio.c:142: spi_transfer(command);
      00086F 90 80 38         [24]  999 	mov	dptr,#_spi_read_command_1_51
      000872 E0               [24] 1000 	movx	a,@dptr
      000873 F5 82            [12] 1001 	mov	dpl,a
      000875 12 07 E1         [24] 1002 	lcall	_spi_transfer
                                   1003 ;	src/radio.c:143: for(x = 0; x < length; x++) buffer[x] = spi_transfer(0xFF);
      000878 90 80 34         [24] 1004 	mov	dptr,#_spi_read_PARM_2
      00087B E0               [24] 1005 	movx	a,@dptr
      00087C FD               [12] 1006 	mov	r5,a
      00087D A3               [24] 1007 	inc	dptr
      00087E E0               [24] 1008 	movx	a,@dptr
      00087F FE               [12] 1009 	mov	r6,a
      000880 A3               [24] 1010 	inc	dptr
      000881 E0               [24] 1011 	movx	a,@dptr
      000882 FF               [12] 1012 	mov	r7,a
      000883 90 80 37         [24] 1013 	mov	dptr,#_spi_read_PARM_3
      000886 E0               [24] 1014 	movx	a,@dptr
      000887 FC               [12] 1015 	mov	r4,a
      000888 7A 00            [12] 1016 	mov	r2,#0x00
      00088A 7B 00            [12] 1017 	mov	r3,#0x00
      00088C                       1018 00103$:
      00088C 8C 00            [24] 1019 	mov	ar0,r4
      00088E 79 00            [12] 1020 	mov	r1,#0x00
      000890 C3               [12] 1021 	clr	c
      000891 EA               [12] 1022 	mov	a,r2
      000892 98               [12] 1023 	subb	a,r0
      000893 EB               [12] 1024 	mov	a,r3
      000894 64 80            [12] 1025 	xrl	a,#0x80
      000896 89 F0            [24] 1026 	mov	b,r1
      000898 63 F0 80         [24] 1027 	xrl	b,#0x80
      00089B 95 F0            [12] 1028 	subb	a,b
      00089D 50 3E            [24] 1029 	jnc	00101$
      00089F C0 04            [24] 1030 	push	ar4
      0008A1 EA               [12] 1031 	mov	a,r2
      0008A2 2D               [12] 1032 	add	a,r5
      0008A3 F5 16            [12] 1033 	mov	_spi_read_sloc0_1_0,a
      0008A5 EB               [12] 1034 	mov	a,r3
      0008A6 3E               [12] 1035 	addc	a,r6
      0008A7 F5 17            [12] 1036 	mov	(_spi_read_sloc0_1_0 + 1),a
      0008A9 8F 18            [24] 1037 	mov	(_spi_read_sloc0_1_0 + 2),r7
      0008AB 75 82 FF         [24] 1038 	mov	dpl,#0xFF
      0008AE C0 07            [24] 1039 	push	ar7
      0008B0 C0 06            [24] 1040 	push	ar6
      0008B2 C0 05            [24] 1041 	push	ar5
      0008B4 C0 03            [24] 1042 	push	ar3
      0008B6 C0 02            [24] 1043 	push	ar2
      0008B8 12 07 E1         [24] 1044 	lcall	_spi_transfer
      0008BB AC 82            [24] 1045 	mov	r4,dpl
      0008BD D0 02            [24] 1046 	pop	ar2
      0008BF D0 03            [24] 1047 	pop	ar3
      0008C1 D0 05            [24] 1048 	pop	ar5
      0008C3 D0 06            [24] 1049 	pop	ar6
      0008C5 D0 07            [24] 1050 	pop	ar7
      0008C7 85 16 82         [24] 1051 	mov	dpl,_spi_read_sloc0_1_0
      0008CA 85 17 83         [24] 1052 	mov	dph,(_spi_read_sloc0_1_0 + 1)
      0008CD 85 18 F0         [24] 1053 	mov	b,(_spi_read_sloc0_1_0 + 2)
      0008D0 EC               [12] 1054 	mov	a,r4
      0008D1 12 15 D6         [24] 1055 	lcall	__gptrput
      0008D4 0A               [12] 1056 	inc	r2
      0008D5 BA 00 01         [24] 1057 	cjne	r2,#0x00,00115$
      0008D8 0B               [12] 1058 	inc	r3
      0008D9                       1059 00115$:
      0008D9 D0 04            [24] 1060 	pop	ar4
      0008DB 80 AF            [24] 1061 	sjmp	00103$
      0008DD                       1062 00101$:
                                   1063 ;	src/radio.c:144: rfcsn = 1;
      0008DD D2 91            [12] 1064 	setb	_rfcsn
      0008DF 22               [24] 1065 	ret
                                   1066 ;------------------------------------------------------------
                                   1067 ;Allocation info for local variables in function 'write_register_byte'
                                   1068 ;------------------------------------------------------------
                                   1069 ;byte                      Allocated with name '_write_register_byte_PARM_2'
                                   1070 ;reg                       Allocated with name '_write_register_byte_reg_1_53'
                                   1071 ;------------------------------------------------------------
                                   1072 ;	src/radio.c:148: void write_register_byte(uint8_t reg, uint8_t byte)
                                   1073 ;	-----------------------------------------
                                   1074 ;	 function write_register_byte
                                   1075 ;	-----------------------------------------
      0008E0                       1076 _write_register_byte:
      0008E0 E5 82            [12] 1077 	mov	a,dpl
      0008E2 90 80 3A         [24] 1078 	mov	dptr,#_write_register_byte_reg_1_53
      0008E5 F0               [24] 1079 	movx	@dptr,a
                                   1080 ;	src/radio.c:150: write_register(reg, &byte, 1);
      0008E6 E0               [24] 1081 	movx	a,@dptr
      0008E7 FF               [12] 1082 	mov	r7,a
      0008E8 43 07 20         [24] 1083 	orl	ar7,#0x20
      0008EB 90 80 2F         [24] 1084 	mov	dptr,#_spi_write_PARM_2
      0008EE 74 39            [12] 1085 	mov	a,#_write_register_byte_PARM_2
      0008F0 F0               [24] 1086 	movx	@dptr,a
      0008F1 74 80            [12] 1087 	mov	a,#(_write_register_byte_PARM_2 >> 8)
      0008F3 A3               [24] 1088 	inc	dptr
      0008F4 F0               [24] 1089 	movx	@dptr,a
      0008F5 E4               [12] 1090 	clr	a
      0008F6 A3               [24] 1091 	inc	dptr
      0008F7 F0               [24] 1092 	movx	@dptr,a
      0008F8 90 80 32         [24] 1093 	mov	dptr,#_spi_write_PARM_3
      0008FB 04               [12] 1094 	inc	a
      0008FC F0               [24] 1095 	movx	@dptr,a
      0008FD 8F 82            [24] 1096 	mov	dpl,r7
      0008FF 02 07 F3         [24] 1097 	ljmp	_spi_write
                                   1098 ;------------------------------------------------------------
                                   1099 ;Allocation info for local variables in function 'read_register_byte'
                                   1100 ;------------------------------------------------------------
                                   1101 ;reg                       Allocated with name '_read_register_byte_reg_1_55'
                                   1102 ;value                     Allocated with name '_read_register_byte_value_1_56'
                                   1103 ;------------------------------------------------------------
                                   1104 ;	src/radio.c:154: uint8_t read_register_byte(uint8_t reg)
                                   1105 ;	-----------------------------------------
                                   1106 ;	 function read_register_byte
                                   1107 ;	-----------------------------------------
      000902                       1108 _read_register_byte:
      000902 E5 82            [12] 1109 	mov	a,dpl
      000904 90 80 3B         [24] 1110 	mov	dptr,#_read_register_byte_reg_1_55
      000907 F0               [24] 1111 	movx	@dptr,a
                                   1112 ;	src/radio.c:157: read_register(reg, &value, 1);
      000908 E0               [24] 1113 	movx	a,@dptr
      000909 FF               [12] 1114 	mov	r7,a
      00090A 90 80 34         [24] 1115 	mov	dptr,#_spi_read_PARM_2
      00090D 74 3C            [12] 1116 	mov	a,#_read_register_byte_value_1_56
      00090F F0               [24] 1117 	movx	@dptr,a
      000910 74 80            [12] 1118 	mov	a,#(_read_register_byte_value_1_56 >> 8)
      000912 A3               [24] 1119 	inc	dptr
      000913 F0               [24] 1120 	movx	@dptr,a
      000914 E4               [12] 1121 	clr	a
      000915 A3               [24] 1122 	inc	dptr
      000916 F0               [24] 1123 	movx	@dptr,a
      000917 90 80 37         [24] 1124 	mov	dptr,#_spi_read_PARM_3
      00091A 04               [12] 1125 	inc	a
      00091B F0               [24] 1126 	movx	@dptr,a
      00091C 8F 82            [24] 1127 	mov	dpl,r7
      00091E 12 08 67         [24] 1128 	lcall	_spi_read
                                   1129 ;	src/radio.c:158: return value;
      000921 90 80 3C         [24] 1130 	mov	dptr,#_read_register_byte_value_1_56
      000924 E0               [24] 1131 	movx	a,@dptr
      000925 F5 82            [12] 1132 	mov	dpl,a
      000927 22               [24] 1133 	ret
                                   1134 ;------------------------------------------------------------
                                   1135 ;Allocation info for local variables in function 'crc_update'
                                   1136 ;------------------------------------------------------------
                                   1137 ;byte                      Allocated with name '_crc_update_PARM_2'
                                   1138 ;bits                      Allocated with name '_crc_update_PARM_3'
                                   1139 ;crc                       Allocated with name '_crc_update_crc_1_57'
                                   1140 ;------------------------------------------------------------
                                   1141 ;	src/radio.c:162: uint16_t crc_update(uint16_t crc, uint8_t byte, uint8_t bits)
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function crc_update
                                   1144 ;	-----------------------------------------
      000928                       1145 _crc_update:
      000928 AF 83            [24] 1146 	mov	r7,dph
      00092A E5 82            [12] 1147 	mov	a,dpl
      00092C 90 80 3F         [24] 1148 	mov	dptr,#_crc_update_crc_1_57
      00092F F0               [24] 1149 	movx	@dptr,a
      000930 EF               [12] 1150 	mov	a,r7
      000931 A3               [24] 1151 	inc	dptr
      000932 F0               [24] 1152 	movx	@dptr,a
                                   1153 ;	src/radio.c:164: crc = crc ^ (byte << 8);
      000933 90 80 3D         [24] 1154 	mov	dptr,#_crc_update_PARM_2
      000936 E0               [24] 1155 	movx	a,@dptr
      000937 FE               [12] 1156 	mov	r6,a
      000938 7F 00            [12] 1157 	mov	r7,#0x00
      00093A 90 80 3F         [24] 1158 	mov	dptr,#_crc_update_crc_1_57
      00093D E0               [24] 1159 	movx	a,@dptr
      00093E FC               [12] 1160 	mov	r4,a
      00093F A3               [24] 1161 	inc	dptr
      000940 E0               [24] 1162 	movx	a,@dptr
      000941 FD               [12] 1163 	mov	r5,a
      000942 90 80 3F         [24] 1164 	mov	dptr,#_crc_update_crc_1_57
      000945 EF               [12] 1165 	mov	a,r7
      000946 6C               [12] 1166 	xrl	a,r4
      000947 F0               [24] 1167 	movx	@dptr,a
      000948 EE               [12] 1168 	mov	a,r6
      000949 6D               [12] 1169 	xrl	a,r5
      00094A A3               [24] 1170 	inc	dptr
      00094B F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	src/radio.c:165: while(bits--)
      00094C 90 80 3E         [24] 1173 	mov	dptr,#_crc_update_PARM_3
      00094F E0               [24] 1174 	movx	a,@dptr
      000950 FF               [12] 1175 	mov	r7,a
      000951                       1176 00104$:
      000951 8F 06            [24] 1177 	mov	ar6,r7
      000953 1F               [12] 1178 	dec	r7
      000954 EE               [12] 1179 	mov	a,r6
      000955 60 3C            [24] 1180 	jz	00106$
                                   1181 ;	src/radio.c:166: if((crc & 0x8000) == 0x8000) crc = (crc << 1) ^ 0x1021;
      000957 90 80 3F         [24] 1182 	mov	dptr,#_crc_update_crc_1_57
      00095A E0               [24] 1183 	movx	a,@dptr
      00095B FD               [12] 1184 	mov	r5,a
      00095C A3               [24] 1185 	inc	dptr
      00095D E0               [24] 1186 	movx	a,@dptr
      00095E FE               [12] 1187 	mov	r6,a
      00095F 7B 00            [12] 1188 	mov	r3,#0x00
      000961 74 80            [12] 1189 	mov	a,#0x80
      000963 5E               [12] 1190 	anl	a,r6
      000964 FC               [12] 1191 	mov	r4,a
      000965 BB 00 1A         [24] 1192 	cjne	r3,#0x00,00102$
      000968 BC 80 17         [24] 1193 	cjne	r4,#0x80,00102$
      00096B 8D 03            [24] 1194 	mov	ar3,r5
      00096D EE               [12] 1195 	mov	a,r6
      00096E CB               [12] 1196 	xch	a,r3
      00096F 25 E0            [12] 1197 	add	a,acc
      000971 CB               [12] 1198 	xch	a,r3
      000972 33               [12] 1199 	rlc	a
      000973 FC               [12] 1200 	mov	r4,a
      000974 90 80 3F         [24] 1201 	mov	dptr,#_crc_update_crc_1_57
      000977 74 21            [12] 1202 	mov	a,#0x21
      000979 6B               [12] 1203 	xrl	a,r3
      00097A F0               [24] 1204 	movx	@dptr,a
      00097B 74 10            [12] 1205 	mov	a,#0x10
      00097D 6C               [12] 1206 	xrl	a,r4
      00097E A3               [24] 1207 	inc	dptr
      00097F F0               [24] 1208 	movx	@dptr,a
      000980 80 CF            [24] 1209 	sjmp	00104$
      000982                       1210 00102$:
                                   1211 ;	src/radio.c:167: else crc = crc << 1;
      000982 EE               [12] 1212 	mov	a,r6
      000983 CD               [12] 1213 	xch	a,r5
      000984 25 E0            [12] 1214 	add	a,acc
      000986 CD               [12] 1215 	xch	a,r5
      000987 33               [12] 1216 	rlc	a
      000988 FE               [12] 1217 	mov	r6,a
      000989 90 80 3F         [24] 1218 	mov	dptr,#_crc_update_crc_1_57
      00098C ED               [12] 1219 	mov	a,r5
      00098D F0               [24] 1220 	movx	@dptr,a
      00098E EE               [12] 1221 	mov	a,r6
      00098F A3               [24] 1222 	inc	dptr
      000990 F0               [24] 1223 	movx	@dptr,a
      000991 80 BE            [24] 1224 	sjmp	00104$
      000993                       1225 00106$:
                                   1226 ;	src/radio.c:168: crc = crc & 0xFFFF;
                                   1227 ;	src/radio.c:169: return crc;
      000993 90 80 3F         [24] 1228 	mov	dptr,#_crc_update_crc_1_57
      000996 E0               [24] 1229 	movx	a,@dptr
      000997 FE               [12] 1230 	mov	r6,a
      000998 A3               [24] 1231 	inc	dptr
      000999 E0               [24] 1232 	movx	a,@dptr
      00099A 8E 82            [24] 1233 	mov	dpl,r6
      00099C F5 83            [12] 1234 	mov	dph,a
      00099E 22               [24] 1235 	ret
                                   1236 ;------------------------------------------------------------
                                   1237 ;Allocation info for local variables in function 'handle_radio_request'
                                   1238 ;------------------------------------------------------------
                                   1239 ;sloc0                     Allocated with name '_handle_radio_request_sloc0_1_0'
                                   1240 ;sloc1                     Allocated with name '_handle_radio_request_sloc1_1_0'
                                   1241 ;sloc2                     Allocated with name '_handle_radio_request_sloc2_1_0'
                                   1242 ;data                      Allocated with name '_handle_radio_request_PARM_2'
                                   1243 ;request                   Allocated with name '_handle_radio_request_request_1_59'
                                   1244 ;command                   Allocated with name '_handle_radio_request_command_2_62'
                                   1245 ;command_length            Allocated with name '_handle_radio_request_command_length_2_62'
                                   1246 ;x                         Allocated with name '_handle_radio_request_x_2_62'
                                   1247 ;value                     Allocated with name '_handle_radio_request_value_2_70'
                                   1248 ;x                         Allocated with name '_handle_radio_request_x_4_75'
                                   1249 ;offset                    Allocated with name '_handle_radio_request_offset_4_75'
                                   1250 ;payload_length            Allocated with name '_handle_radio_request_payload_length_4_75'
                                   1251 ;crc                       Allocated with name '_handle_radio_request_crc_4_75'
                                   1252 ;crc_given                 Allocated with name '_handle_radio_request_crc_given_4_75'
                                   1253 ;payload                   Allocated with name '_handle_radio_request_payload_4_75'
                                   1254 ;x                         Allocated with name '_handle_radio_request_x_4_81'
                                   1255 ;payload                   Allocated with name '_handle_radio_request_payload_4_81'
                                   1256 ;elapsed                   Allocated with name '_handle_radio_request_elapsed_2_83'
                                   1257 ;status                    Allocated with name '_handle_radio_request_status_2_83'
                                   1258 ;__00040005                Allocated with name '_handle_radio_request___00040005_5_94'
                                   1259 ;us                        Allocated with name '_handle_radio_request_us_5_94'
                                   1260 ;__00030007                Allocated with name '_handle_radio_request___00030007_4_97'
                                   1261 ;us                        Allocated with name '_handle_radio_request_us_4_97'
                                   1262 ;address_start             Allocated with name '_handle_radio_request_address_start_2_90'
                                   1263 ;__00030009                Allocated with name '_handle_radio_request___00030009_4_100'
                                   1264 ;us                        Allocated with name '_handle_radio_request_us_4_100'
                                   1265 ;------------------------------------------------------------
                                   1266 ;	src/radio.c:173: void handle_radio_request(uint8_t request, uint8_t * data)
                                   1267 ;	-----------------------------------------
                                   1268 ;	 function handle_radio_request
                                   1269 ;	-----------------------------------------
      00099F                       1270 _handle_radio_request:
      00099F E5 82            [12] 1271 	mov	a,dpl
      0009A1 90 80 44         [24] 1272 	mov	dptr,#_handle_radio_request_request_1_59
      0009A4 F0               [24] 1273 	movx	@dptr,a
                                   1274 ;	src/radio.c:176: if(request == LAUNCH_NORDIC_BOOTLOADER)
      0009A5 E0               [24] 1275 	movx	a,@dptr
      0009A6 FF               [12] 1276 	mov	r7,a
      0009A7 BF FF 0E         [24] 1277 	cjne	r7,#0xFF,00102$
                                   1278 ;	src/radio.c:178: nordic_bootloader();
      0009AA 90 80 BB         [24] 1279 	mov	dptr,#_nordic_bootloader
      0009AD E0               [24] 1280 	movx	a,@dptr
      0009AE F8               [12] 1281 	mov	r0,a
      0009AF A3               [24] 1282 	inc	dptr
      0009B0 E0               [24] 1283 	movx	a,@dptr
      0009B1 F5 83            [12] 1284 	mov	dph,a
      0009B3 88 82            [24] 1285 	mov	dpl,r0
                                   1286 ;	src/radio.c:179: return;
      0009B5 02 00 69         [24] 1287 	ljmp	__sdcc_call_dptr
      0009B8                       1288 00102$:
                                   1289 ;	src/radio.c:183: if(request == LAUNCH_LOGITECH_BOOTLOADER)
      0009B8 BF FE 69         [24] 1290 	cjne	r7,#0xFE,00210$
                                   1291 ;	src/radio.c:185: const uint8_t command[9] = {'E', 'n', 't', 'e', 'r', ' ', 'I', 'C', 'P'};
      0009BB 90 80 45         [24] 1292 	mov	dptr,#_handle_radio_request_command_2_62
      0009BE 74 45            [12] 1293 	mov	a,#0x45
      0009C0 F0               [24] 1294 	movx	@dptr,a
      0009C1 90 80 46         [24] 1295 	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0001)
      0009C4 74 6E            [12] 1296 	mov	a,#0x6E
      0009C6 F0               [24] 1297 	movx	@dptr,a
      0009C7 90 80 47         [24] 1298 	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0002)
      0009CA 74 74            [12] 1299 	mov	a,#0x74
      0009CC F0               [24] 1300 	movx	@dptr,a
      0009CD 90 80 48         [24] 1301 	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0003)
      0009D0 74 65            [12] 1302 	mov	a,#0x65
      0009D2 F0               [24] 1303 	movx	@dptr,a
      0009D3 90 80 49         [24] 1304 	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0004)
      0009D6 74 72            [12] 1305 	mov	a,#0x72
      0009D8 F0               [24] 1306 	movx	@dptr,a
      0009D9 90 80 4A         [24] 1307 	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0005)
      0009DC 74 20            [12] 1308 	mov	a,#0x20
      0009DE F0               [24] 1309 	movx	@dptr,a
      0009DF 90 80 4B         [24] 1310 	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0006)
      0009E2 74 49            [12] 1311 	mov	a,#0x49
      0009E4 F0               [24] 1312 	movx	@dptr,a
      0009E5 90 80 4C         [24] 1313 	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0007)
      0009E8 74 43            [12] 1314 	mov	a,#0x43
      0009EA F0               [24] 1315 	movx	@dptr,a
      0009EB 90 80 4D         [24] 1316 	mov	dptr,#(_handle_radio_request_command_2_62 + 0x0008)
      0009EE 74 50            [12] 1317 	mov	a,#0x50
      0009F0 F0               [24] 1318 	movx	@dptr,a
                                   1319 ;	src/radio.c:188: for(x = 0; x < command_length; x++)
      0009F1 7D 00            [12] 1320 	mov	r5,#0x00
      0009F3 7E 00            [12] 1321 	mov	r6,#0x00
      0009F5                       1322 00225$:
      0009F5 C3               [12] 1323 	clr	c
      0009F6 ED               [12] 1324 	mov	a,r5
      0009F7 94 09            [12] 1325 	subb	a,#0x09
      0009F9 EE               [12] 1326 	mov	a,r6
      0009FA 64 80            [12] 1327 	xrl	a,#0x80
      0009FC 94 80            [12] 1328 	subb	a,#0x80
      0009FE 50 16            [24] 1329 	jnc	00103$
                                   1330 ;	src/radio.c:190: AESIA1 = x;
                                   1331 ;	src/radio.c:191: AESIV = command[x];
      000A00 ED               [12] 1332 	mov	a,r5
      000A01 F5 F5            [12] 1333 	mov	_AESIA1,a
      000A03 24 45            [12] 1334 	add	a,#_handle_radio_request_command_2_62
      000A05 F5 82            [12] 1335 	mov	dpl,a
      000A07 EE               [12] 1336 	mov	a,r6
      000A08 34 80            [12] 1337 	addc	a,#(_handle_radio_request_command_2_62 >> 8)
      000A0A F5 83            [12] 1338 	mov	dph,a
      000A0C E0               [24] 1339 	movx	a,@dptr
      000A0D F5 F2            [12] 1340 	mov	_AESIV,a
                                   1341 ;	src/radio.c:188: for(x = 0; x < command_length; x++)
      000A0F 0D               [12] 1342 	inc	r5
      000A10 BD 00 E2         [24] 1343 	cjne	r5,#0x00,00225$
      000A13 0E               [12] 1344 	inc	r6
      000A14 80 DF            [24] 1345 	sjmp	00225$
      000A16                       1346 00103$:
                                   1347 ;	src/radio.c:193: logitech_bootloader();
      000A16 90 80 BD         [24] 1348 	mov	dptr,#_logitech_bootloader
      000A19 E0               [24] 1349 	movx	a,@dptr
      000A1A F8               [12] 1350 	mov	r0,a
      000A1B A3               [24] 1351 	inc	dptr
      000A1C E0               [24] 1352 	movx	a,@dptr
      000A1D F5 83            [12] 1353 	mov	dph,a
      000A1F 88 82            [24] 1354 	mov	dpl,r0
                                   1355 ;	src/radio.c:194: return;
      000A21 02 00 69         [24] 1356 	ljmp	__sdcc_call_dptr
      000A24                       1357 00210$:
                                   1358 ;	src/radio.c:198: else if(request == ENABLE_LNA)
      000A24 BF 0B 10         [24] 1359 	cjne	r7,#0x0B,00207$
                                   1360 ;	src/radio.c:200: P0DIR &= ~0x10;
      000A27 AE 94            [24] 1361 	mov	r6,_P0DIR
      000A29 74 EF            [12] 1362 	mov	a,#0xEF
      000A2B 5E               [12] 1363 	anl	a,r6
      000A2C F5 94            [12] 1364 	mov	_P0DIR,a
                                   1365 ;	src/radio.c:201: P0 |= 0x10;
      000A2E 43 80 10         [24] 1366 	orl	_P0,#0x10
                                   1367 ;	src/radio.c:202: in1bc = 0;
      000A31 90 C7 B7         [24] 1368 	mov	dptr,#0xC7B7
      000A34 E4               [12] 1369 	clr	a
      000A35 F0               [24] 1370 	movx	@dptr,a
                                   1371 ;	src/radio.c:203: return;
      000A36 22               [24] 1372 	ret
      000A37                       1373 00207$:
                                   1374 ;	src/radio.c:207: else if(request == SET_CHANNEL)
      000A37 BF 09 68         [24] 1375 	cjne	r7,#0x09,00204$
                                   1376 ;	src/radio.c:209: rfce = 0;
      000A3A C2 90            [12] 1377 	clr	_rfce
                                   1378 ;	src/radio.c:210: write_register_byte(RF_CH, data[0]);
      000A3C 90 80 41         [24] 1379 	mov	dptr,#_handle_radio_request_PARM_2
      000A3F E0               [24] 1380 	movx	a,@dptr
      000A40 FC               [12] 1381 	mov	r4,a
      000A41 A3               [24] 1382 	inc	dptr
      000A42 E0               [24] 1383 	movx	a,@dptr
      000A43 FD               [12] 1384 	mov	r5,a
      000A44 A3               [24] 1385 	inc	dptr
      000A45 E0               [24] 1386 	movx	a,@dptr
      000A46 FE               [12] 1387 	mov	r6,a
      000A47 8C 82            [24] 1388 	mov	dpl,r4
      000A49 8D 83            [24] 1389 	mov	dph,r5
      000A4B 8E F0            [24] 1390 	mov	b,r6
      000A4D 12 16 09         [24] 1391 	lcall	__gptrget
      000A50 90 80 39         [24] 1392 	mov	dptr,#_write_register_byte_PARM_2
      000A53 F0               [24] 1393 	movx	@dptr,a
      000A54 75 82 05         [24] 1394 	mov	dpl,#0x05
      000A57 C0 06            [24] 1395 	push	ar6
      000A59 C0 05            [24] 1396 	push	ar5
      000A5B C0 04            [24] 1397 	push	ar4
      000A5D 12 08 E0         [24] 1398 	lcall	_write_register_byte
      000A60 D0 04            [24] 1399 	pop	ar4
      000A62 D0 05            [24] 1400 	pop	ar5
      000A64 D0 06            [24] 1401 	pop	ar6
                                   1402 ;	src/radio.c:211: in1bc = 1;
      000A66 90 C7 B7         [24] 1403 	mov	dptr,#0xC7B7
      000A69 74 01            [12] 1404 	mov	a,#0x01
      000A6B F0               [24] 1405 	movx	@dptr,a
                                   1406 ;	src/radio.c:212: in1buf[0] = data[0];
      000A6C 8C 82            [24] 1407 	mov	dpl,r4
      000A6E 8D 83            [24] 1408 	mov	dph,r5
      000A70 8E F0            [24] 1409 	mov	b,r6
      000A72 12 16 09         [24] 1410 	lcall	__gptrget
      000A75 90 C6 80         [24] 1411 	mov	dptr,#_in1buf
      000A78 F0               [24] 1412 	movx	@dptr,a
                                   1413 ;	src/radio.c:213: flush_rx();
      000A79 90 80 2F         [24] 1414 	mov	dptr,#_spi_write_PARM_2
      000A7C E4               [12] 1415 	clr	a
      000A7D F0               [24] 1416 	movx	@dptr,a
      000A7E A3               [24] 1417 	inc	dptr
      000A7F F0               [24] 1418 	movx	@dptr,a
      000A80 A3               [24] 1419 	inc	dptr
      000A81 F0               [24] 1420 	movx	@dptr,a
      000A82 90 80 32         [24] 1421 	mov	dptr,#_spi_write_PARM_3
      000A85 F0               [24] 1422 	movx	@dptr,a
      000A86 75 82 E2         [24] 1423 	mov	dpl,#0xE2
      000A89 12 07 F3         [24] 1424 	lcall	_spi_write
                                   1425 ;	src/radio.c:214: flush_tx();
      000A8C 90 80 2F         [24] 1426 	mov	dptr,#_spi_write_PARM_2
      000A8F E4               [12] 1427 	clr	a
      000A90 F0               [24] 1428 	movx	@dptr,a
      000A91 A3               [24] 1429 	inc	dptr
      000A92 F0               [24] 1430 	movx	@dptr,a
      000A93 A3               [24] 1431 	inc	dptr
      000A94 F0               [24] 1432 	movx	@dptr,a
      000A95 90 80 32         [24] 1433 	mov	dptr,#_spi_write_PARM_3
      000A98 F0               [24] 1434 	movx	@dptr,a
      000A99 75 82 E1         [24] 1435 	mov	dpl,#0xE1
      000A9C 12 07 F3         [24] 1436 	lcall	_spi_write
                                   1437 ;	src/radio.c:215: rfce = 1;
      000A9F D2 90            [12] 1438 	setb	_rfce
                                   1439 ;	src/radio.c:216: return;
      000AA1 22               [24] 1440 	ret
      000AA2                       1441 00204$:
                                   1442 ;	src/radio.c:220: else if(request == GET_CHANNEL)
      000AA2 BF 0A 1F         [24] 1443 	cjne	r7,#0x0A,00201$
                                   1444 ;	src/radio.c:222: spi_read(RF_CH, in1buf, 1);
      000AA5 90 80 34         [24] 1445 	mov	dptr,#_spi_read_PARM_2
      000AA8 74 80            [12] 1446 	mov	a,#_in1buf
      000AAA F0               [24] 1447 	movx	@dptr,a
      000AAB 74 C6            [12] 1448 	mov	a,#(_in1buf >> 8)
      000AAD A3               [24] 1449 	inc	dptr
      000AAE F0               [24] 1450 	movx	@dptr,a
      000AAF E4               [12] 1451 	clr	a
      000AB0 A3               [24] 1452 	inc	dptr
      000AB1 F0               [24] 1453 	movx	@dptr,a
      000AB2 90 80 37         [24] 1454 	mov	dptr,#_spi_read_PARM_3
      000AB5 04               [12] 1455 	inc	a
      000AB6 F0               [24] 1456 	movx	@dptr,a
      000AB7 75 82 05         [24] 1457 	mov	dpl,#0x05
      000ABA 12 08 67         [24] 1458 	lcall	_spi_read
                                   1459 ;	src/radio.c:223: in1bc = 1;
      000ABD 90 C7 B7         [24] 1460 	mov	dptr,#0xC7B7
      000AC0 74 01            [12] 1461 	mov	a,#0x01
      000AC2 F0               [24] 1462 	movx	@dptr,a
                                   1463 ;	src/radio.c:224: return;
      000AC3 22               [24] 1464 	ret
      000AC4                       1465 00201$:
                                   1466 ;	src/radio.c:228: else if(request == ENTER_PROMISCUOUS_MODE)
      000AC4 BF 06 2A         [24] 1467 	cjne	r7,#0x06,00198$
                                   1468 ;	src/radio.c:230: enter_promiscuous_mode(&data[1] /* address prefix */, data[0] /* prefix length */);
      000AC7 90 80 41         [24] 1469 	mov	dptr,#_handle_radio_request_PARM_2
      000ACA E0               [24] 1470 	movx	a,@dptr
      000ACB FC               [12] 1471 	mov	r4,a
      000ACC A3               [24] 1472 	inc	dptr
      000ACD E0               [24] 1473 	movx	a,@dptr
      000ACE FD               [12] 1474 	mov	r5,a
      000ACF A3               [24] 1475 	inc	dptr
      000AD0 E0               [24] 1476 	movx	a,@dptr
      000AD1 FE               [12] 1477 	mov	r6,a
      000AD2 74 01            [12] 1478 	mov	a,#0x01
      000AD4 2C               [12] 1479 	add	a,r4
      000AD5 F9               [12] 1480 	mov	r1,a
      000AD6 E4               [12] 1481 	clr	a
      000AD7 3D               [12] 1482 	addc	a,r5
      000AD8 FA               [12] 1483 	mov	r2,a
      000AD9 8E 03            [24] 1484 	mov	ar3,r6
      000ADB 8C 82            [24] 1485 	mov	dpl,r4
      000ADD 8D 83            [24] 1486 	mov	dph,r5
      000ADF 8E F0            [24] 1487 	mov	b,r6
      000AE1 12 16 09         [24] 1488 	lcall	__gptrget
      000AE4 90 80 16         [24] 1489 	mov	dptr,#_enter_promiscuous_mode_PARM_2
      000AE7 F0               [24] 1490 	movx	@dptr,a
      000AE8 89 82            [24] 1491 	mov	dpl,r1
      000AEA 8A 83            [24] 1492 	mov	dph,r2
      000AEC 8B F0            [24] 1493 	mov	b,r3
      000AEE 02 04 8D         [24] 1494 	ljmp	_enter_promiscuous_mode
      000AF1                       1495 00198$:
                                   1496 ;	src/radio.c:234: else if(request == ENTER_PROMISCUOUS_MODE_GENERIC)
      000AF1 BF 0D 61         [24] 1497 	cjne	r7,#0x0D,00195$
                                   1498 ;	src/radio.c:236: enter_promiscuous_mode_generic(&data[3] /* address prefix */, data[0] /* prefix length */, data[1] /* rate */, data[2] /* payload length */);
      000AF4 90 80 41         [24] 1499 	mov	dptr,#_handle_radio_request_PARM_2
      000AF7 E0               [24] 1500 	movx	a,@dptr
      000AF8 FC               [12] 1501 	mov	r4,a
      000AF9 A3               [24] 1502 	inc	dptr
      000AFA E0               [24] 1503 	movx	a,@dptr
      000AFB FD               [12] 1504 	mov	r5,a
      000AFC A3               [24] 1505 	inc	dptr
      000AFD E0               [24] 1506 	movx	a,@dptr
      000AFE FE               [12] 1507 	mov	r6,a
      000AFF 74 03            [12] 1508 	mov	a,#0x03
      000B01 2C               [12] 1509 	add	a,r4
      000B02 F5 1A            [12] 1510 	mov	_handle_radio_request_sloc1_1_0,a
      000B04 E4               [12] 1511 	clr	a
      000B05 3D               [12] 1512 	addc	a,r5
      000B06 F5 1B            [12] 1513 	mov	(_handle_radio_request_sloc1_1_0 + 1),a
      000B08 8E 1C            [24] 1514 	mov	(_handle_radio_request_sloc1_1_0 + 2),r6
      000B0A 8C 82            [24] 1515 	mov	dpl,r4
      000B0C 8D 83            [24] 1516 	mov	dph,r5
      000B0E 8E F0            [24] 1517 	mov	b,r6
      000B10 12 16 09         [24] 1518 	lcall	__gptrget
      000B13 F5 19            [12] 1519 	mov	_handle_radio_request_sloc0_1_0,a
      000B15 74 01            [12] 1520 	mov	a,#0x01
      000B17 2C               [12] 1521 	add	a,r4
      000B18 F8               [12] 1522 	mov	r0,a
      000B19 E4               [12] 1523 	clr	a
      000B1A 3D               [12] 1524 	addc	a,r5
      000B1B FA               [12] 1525 	mov	r2,a
      000B1C 8E 03            [24] 1526 	mov	ar3,r6
      000B1E 88 82            [24] 1527 	mov	dpl,r0
      000B20 8A 83            [24] 1528 	mov	dph,r2
      000B22 8B F0            [24] 1529 	mov	b,r3
      000B24 12 16 09         [24] 1530 	lcall	__gptrget
      000B27 F8               [12] 1531 	mov	r0,a
      000B28 74 02            [12] 1532 	mov	a,#0x02
      000B2A 2C               [12] 1533 	add	a,r4
      000B2B FC               [12] 1534 	mov	r4,a
      000B2C E4               [12] 1535 	clr	a
      000B2D 3D               [12] 1536 	addc	a,r5
      000B2E FD               [12] 1537 	mov	r5,a
      000B2F 8C 82            [24] 1538 	mov	dpl,r4
      000B31 8D 83            [24] 1539 	mov	dph,r5
      000B33 8E F0            [24] 1540 	mov	b,r6
      000B35 12 16 09         [24] 1541 	lcall	__gptrget
      000B38 FC               [12] 1542 	mov	r4,a
      000B39 90 80 1C         [24] 1543 	mov	dptr,#_enter_promiscuous_mode_generic_PARM_2
      000B3C E5 19            [12] 1544 	mov	a,_handle_radio_request_sloc0_1_0
      000B3E F0               [24] 1545 	movx	@dptr,a
      000B3F 90 80 1D         [24] 1546 	mov	dptr,#_enter_promiscuous_mode_generic_PARM_3
      000B42 E8               [12] 1547 	mov	a,r0
      000B43 F0               [24] 1548 	movx	@dptr,a
      000B44 90 80 1E         [24] 1549 	mov	dptr,#_enter_promiscuous_mode_generic_PARM_4
      000B47 EC               [12] 1550 	mov	a,r4
      000B48 F0               [24] 1551 	movx	@dptr,a
      000B49 85 1A 82         [24] 1552 	mov	dpl,_handle_radio_request_sloc1_1_0
      000B4C 85 1B 83         [24] 1553 	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
      000B4F 85 1C F0         [24] 1554 	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
      000B52 02 05 AF         [24] 1555 	ljmp	_enter_promiscuous_mode_generic
      000B55                       1556 00195$:
                                   1557 ;	src/radio.c:240: else if(request == ENTER_TONE_TEST_MODE)
      000B55 BF 07 17         [24] 1558 	cjne	r7,#0x07,00192$
                                   1559 ;	src/radio.c:242: configure_phy(PWR_UP, CONT_WAVE | PLL_LOCK, 0);
      000B58 90 80 2B         [24] 1560 	mov	dptr,#_configure_phy_PARM_2
      000B5B 74 90            [12] 1561 	mov	a,#0x90
      000B5D F0               [24] 1562 	movx	@dptr,a
      000B5E 90 80 2C         [24] 1563 	mov	dptr,#_configure_phy_PARM_3
      000B61 E4               [12] 1564 	clr	a
      000B62 F0               [24] 1565 	movx	@dptr,a
      000B63 75 82 02         [24] 1566 	mov	dpl,#0x02
      000B66 12 07 B4         [24] 1567 	lcall	_configure_phy
                                   1568 ;	src/radio.c:243: in1bc = 0;
      000B69 90 C7 B7         [24] 1569 	mov	dptr,#0xC7B7
      000B6C E4               [12] 1570 	clr	a
      000B6D F0               [24] 1571 	movx	@dptr,a
                                   1572 ;	src/radio.c:244: return;
      000B6E 22               [24] 1573 	ret
      000B6F                       1574 00192$:
                                   1575 ;	src/radio.c:248: else if(request == RECEIVE_PACKET)
      000B6F BF 12 02         [24] 1576 	cjne	r7,#0x12,00464$
      000B72 80 03            [24] 1577 	sjmp	00465$
      000B74                       1578 00464$:
      000B74 02 10 04         [24] 1579 	ljmp	00189$
      000B77                       1580 00465$:
                                   1581 ;	src/radio.c:253: read_register(FIFO_STATUS, &value, 1);
      000B77 90 80 34         [24] 1582 	mov	dptr,#_spi_read_PARM_2
      000B7A 74 4E            [12] 1583 	mov	a,#_handle_radio_request_value_2_70
      000B7C F0               [24] 1584 	movx	@dptr,a
      000B7D 74 80            [12] 1585 	mov	a,#(_handle_radio_request_value_2_70 >> 8)
      000B7F A3               [24] 1586 	inc	dptr
      000B80 F0               [24] 1587 	movx	@dptr,a
      000B81 E4               [12] 1588 	clr	a
      000B82 A3               [24] 1589 	inc	dptr
      000B83 F0               [24] 1590 	movx	@dptr,a
      000B84 90 80 37         [24] 1591 	mov	dptr,#_spi_read_PARM_3
      000B87 04               [12] 1592 	inc	a
      000B88 F0               [24] 1593 	movx	@dptr,a
      000B89 75 82 17         [24] 1594 	mov	dpl,#0x17
      000B8C 12 08 67         [24] 1595 	lcall	_spi_read
                                   1596 ;	src/radio.c:254: if((value & 1) == 0)
      000B8F 90 80 4E         [24] 1597 	mov	dptr,#_handle_radio_request_value_2_70
      000B92 E0               [24] 1598 	movx	a,@dptr
      000B93 FE               [12] 1599 	mov	r6,a
      000B94 30 E0 03         [24] 1600 	jnb	acc.0,00466$
      000B97 02 0F F7         [24] 1601 	ljmp	00133$
      000B9A                       1602 00466$:
                                   1603 ;	src/radio.c:257: if(radio_mode == sniffer)
      000B9A 90 80 0D         [24] 1604 	mov	dptr,#_radio_mode
      000B9D E0               [24] 1605 	movx	a,@dptr
      000B9E FE               [12] 1606 	mov	r6,a
      000B9F 70 7B            [24] 1607 	jnz	00130$
                                   1608 ;	src/radio.c:260: read_register(R_RX_PL_WID, &value, 1);
      000BA1 90 80 34         [24] 1609 	mov	dptr,#_spi_read_PARM_2
      000BA4 74 4E            [12] 1610 	mov	a,#_handle_radio_request_value_2_70
      000BA6 F0               [24] 1611 	movx	@dptr,a
      000BA7 74 80            [12] 1612 	mov	a,#(_handle_radio_request_value_2_70 >> 8)
      000BA9 A3               [24] 1613 	inc	dptr
      000BAA F0               [24] 1614 	movx	@dptr,a
      000BAB E4               [12] 1615 	clr	a
      000BAC A3               [24] 1616 	inc	dptr
      000BAD F0               [24] 1617 	movx	@dptr,a
      000BAE 90 80 37         [24] 1618 	mov	dptr,#_spi_read_PARM_3
      000BB1 04               [12] 1619 	inc	a
      000BB2 F0               [24] 1620 	movx	@dptr,a
      000BB3 75 82 60         [24] 1621 	mov	dpl,#0x60
      000BB6 12 08 67         [24] 1622 	lcall	_spi_read
                                   1623 ;	src/radio.c:261: if(value <= 32)
      000BB9 90 80 4E         [24] 1624 	mov	dptr,#_handle_radio_request_value_2_70
      000BBC E0               [24] 1625 	movx	a,@dptr
      000BBD FD               [12] 1626 	mov  r5,a
      000BBE 24 DF            [12] 1627 	add	a,#0xff - 0x20
      000BC0 40 3B            [24] 1628 	jc	00105$
                                   1629 ;	src/radio.c:264: read_register(R_RX_PAYLOAD, &in1buf[1], value);
      000BC2 90 80 34         [24] 1630 	mov	dptr,#_spi_read_PARM_2
      000BC5 74 81            [12] 1631 	mov	a,#(_in1buf + 0x0001)
      000BC7 F0               [24] 1632 	movx	@dptr,a
      000BC8 74 C6            [12] 1633 	mov	a,#((_in1buf + 0x0001) >> 8)
      000BCA A3               [24] 1634 	inc	dptr
      000BCB F0               [24] 1635 	movx	@dptr,a
      000BCC E4               [12] 1636 	clr	a
      000BCD A3               [24] 1637 	inc	dptr
      000BCE F0               [24] 1638 	movx	@dptr,a
      000BCF 90 80 37         [24] 1639 	mov	dptr,#_spi_read_PARM_3
      000BD2 ED               [12] 1640 	mov	a,r5
      000BD3 F0               [24] 1641 	movx	@dptr,a
      000BD4 75 82 61         [24] 1642 	mov	dpl,#0x61
      000BD7 12 08 67         [24] 1643 	lcall	_spi_read
                                   1644 ;	src/radio.c:265: in1buf[0] = 0;
      000BDA 90 C6 80         [24] 1645 	mov	dptr,#_in1buf
      000BDD E4               [12] 1646 	clr	a
      000BDE F0               [24] 1647 	movx	@dptr,a
                                   1648 ;	src/radio.c:266: in1bc = value + 1;
      000BDF 90 80 4E         [24] 1649 	mov	dptr,#_handle_radio_request_value_2_70
      000BE2 E0               [24] 1650 	movx	a,@dptr
      000BE3 FD               [12] 1651 	mov	r5,a
      000BE4 0D               [12] 1652 	inc	r5
      000BE5 90 C7 B7         [24] 1653 	mov	dptr,#0xC7B7
      000BE8 ED               [12] 1654 	mov	a,r5
      000BE9 F0               [24] 1655 	movx	@dptr,a
                                   1656 ;	src/radio.c:267: flush_rx();
      000BEA 90 80 2F         [24] 1657 	mov	dptr,#_spi_write_PARM_2
      000BED E4               [12] 1658 	clr	a
      000BEE F0               [24] 1659 	movx	@dptr,a
      000BEF A3               [24] 1660 	inc	dptr
      000BF0 F0               [24] 1661 	movx	@dptr,a
      000BF1 A3               [24] 1662 	inc	dptr
      000BF2 F0               [24] 1663 	movx	@dptr,a
      000BF3 90 80 32         [24] 1664 	mov	dptr,#_spi_write_PARM_3
      000BF6 F0               [24] 1665 	movx	@dptr,a
      000BF7 75 82 E2         [24] 1666 	mov	dpl,#0xE2
                                   1667 ;	src/radio.c:268: return;
      000BFA 02 07 F3         [24] 1668 	ljmp	_spi_write
      000BFD                       1669 00105$:
                                   1670 ;	src/radio.c:273: in1bc = 1;
      000BFD 90 C7 B7         [24] 1671 	mov	dptr,#0xC7B7
      000C00 74 01            [12] 1672 	mov	a,#0x01
      000C02 F0               [24] 1673 	movx	@dptr,a
                                   1674 ;	src/radio.c:274: in1buf[0] = 0xFF;
      000C03 90 C6 80         [24] 1675 	mov	dptr,#_in1buf
      000C06 74 FF            [12] 1676 	mov	a,#0xFF
      000C08 F0               [24] 1677 	movx	@dptr,a
                                   1678 ;	src/radio.c:275: flush_rx();
      000C09 90 80 2F         [24] 1679 	mov	dptr,#_spi_write_PARM_2
      000C0C E4               [12] 1680 	clr	a
      000C0D F0               [24] 1681 	movx	@dptr,a
      000C0E A3               [24] 1682 	inc	dptr
      000C0F F0               [24] 1683 	movx	@dptr,a
      000C10 A3               [24] 1684 	inc	dptr
      000C11 F0               [24] 1685 	movx	@dptr,a
      000C12 90 80 32         [24] 1686 	mov	dptr,#_spi_write_PARM_3
      000C15 F0               [24] 1687 	movx	@dptr,a
      000C16 75 82 E2         [24] 1688 	mov	dpl,#0xE2
                                   1689 ;	src/radio.c:276: return;
      000C19 02 07 F3         [24] 1690 	ljmp	_spi_write
      000C1C                       1691 00130$:
                                   1692 ;	src/radio.c:281: else if(radio_mode == promiscuous)
      000C1C BE 01 02         [24] 1693 	cjne	r6,#0x01,00469$
      000C1F 80 03            [24] 1694 	sjmp	00470$
      000C21                       1695 00469$:
      000C21 02 0F 44         [24] 1696 	ljmp	00127$
      000C24                       1697 00470$:
                                   1698 ;	src/radio.c:289: for(x = 0; x < pm_prefix_length; x++) payload[pm_prefix_length - x - 1] = pm_prefix[x];
      000C24 7C 00            [12] 1699 	mov	r4,#0x00
      000C26 7D 00            [12] 1700 	mov	r5,#0x00
      000C28                       1701 00228$:
      000C28 90 80 0E         [24] 1702 	mov	dptr,#_pm_prefix_length
      000C2B E0               [24] 1703 	movx	a,@dptr
      000C2C FA               [12] 1704 	mov	r2,a
      000C2D A3               [24] 1705 	inc	dptr
      000C2E E0               [24] 1706 	movx	a,@dptr
      000C2F FB               [12] 1707 	mov	r3,a
      000C30 C3               [12] 1708 	clr	c
      000C31 EC               [12] 1709 	mov	a,r4
      000C32 9A               [12] 1710 	subb	a,r2
      000C33 ED               [12] 1711 	mov	a,r5
      000C34 64 80            [12] 1712 	xrl	a,#0x80
      000C36 8B F0            [24] 1713 	mov	b,r3
      000C38 63 F0 80         [24] 1714 	xrl	b,#0x80
      000C3B 95 F0            [12] 1715 	subb	a,b
      000C3D 50 2B            [24] 1716 	jnc	00107$
      000C3F 8A 01            [24] 1717 	mov	ar1,r2
      000C41 8C 00            [24] 1718 	mov	ar0,r4
      000C43 E9               [12] 1719 	mov	a,r1
      000C44 C3               [12] 1720 	clr	c
      000C45 98               [12] 1721 	subb	a,r0
      000C46 14               [12] 1722 	dec	a
      000C47 24 53            [12] 1723 	add	a,#_handle_radio_request_payload_4_75
      000C49 F5 1A            [12] 1724 	mov	_handle_radio_request_sloc1_1_0,a
      000C4B E4               [12] 1725 	clr	a
      000C4C 34 80            [12] 1726 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000C4E F5 1B            [12] 1727 	mov	(_handle_radio_request_sloc1_1_0 + 1),a
      000C50 EC               [12] 1728 	mov	a,r4
      000C51 24 10            [12] 1729 	add	a,#_pm_prefix
      000C53 F5 82            [12] 1730 	mov	dpl,a
      000C55 ED               [12] 1731 	mov	a,r5
      000C56 34 80            [12] 1732 	addc	a,#(_pm_prefix >> 8)
      000C58 F5 83            [12] 1733 	mov	dph,a
      000C5A E0               [24] 1734 	movx	a,@dptr
      000C5B F9               [12] 1735 	mov	r1,a
      000C5C 85 1A 82         [24] 1736 	mov	dpl,_handle_radio_request_sloc1_1_0
      000C5F 85 1B 83         [24] 1737 	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
      000C62 F0               [24] 1738 	movx	@dptr,a
      000C63 0C               [12] 1739 	inc	r4
      000C64 BC 00 C1         [24] 1740 	cjne	r4,#0x00,00228$
      000C67 0D               [12] 1741 	inc	r5
      000C68 80 BE            [24] 1742 	sjmp	00228$
      000C6A                       1743 00107$:
                                   1744 ;	src/radio.c:290: read_register(R_RX_PAYLOAD, &payload[pm_prefix_length], pm_payload_length);
      000C6A EA               [12] 1745 	mov	a,r2
      000C6B 24 53            [12] 1746 	add	a,#_handle_radio_request_payload_4_75
      000C6D FA               [12] 1747 	mov	r2,a
      000C6E EB               [12] 1748 	mov	a,r3
      000C6F 34 80            [12] 1749 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000C71 FB               [12] 1750 	mov	r3,a
      000C72 7D 00            [12] 1751 	mov	r5,#0x00
      000C74 90 80 15         [24] 1752 	mov	dptr,#_pm_payload_length
      000C77 E0               [24] 1753 	movx	a,@dptr
      000C78 FC               [12] 1754 	mov	r4,a
      000C79 90 80 34         [24] 1755 	mov	dptr,#_spi_read_PARM_2
      000C7C EA               [12] 1756 	mov	a,r2
      000C7D F0               [24] 1757 	movx	@dptr,a
      000C7E EB               [12] 1758 	mov	a,r3
      000C7F A3               [24] 1759 	inc	dptr
      000C80 F0               [24] 1760 	movx	@dptr,a
      000C81 ED               [12] 1761 	mov	a,r5
      000C82 A3               [24] 1762 	inc	dptr
      000C83 F0               [24] 1763 	movx	@dptr,a
      000C84 90 80 37         [24] 1764 	mov	dptr,#_spi_read_PARM_3
      000C87 EC               [12] 1765 	mov	a,r4
      000C88 F0               [24] 1766 	movx	@dptr,a
      000C89 75 82 61         [24] 1767 	mov	dpl,#0x61
      000C8C 12 08 67         [24] 1768 	lcall	_spi_read
                                   1769 ;	src/radio.c:297: for(offset = 0; offset < 2; offset++)
      000C8F 7C 00            [12] 1770 	mov	r4,#0x00
      000C91 7D 00            [12] 1771 	mov	r5,#0x00
      000C93                       1772 00238$:
                                   1773 ;	src/radio.c:300: if(offset == 1)
      000C93 BC 01 6D         [24] 1774 	cjne	r4,#0x01,00113$
      000C96 BD 00 6A         [24] 1775 	cjne	r5,#0x00,00113$
                                   1776 ;	src/radio.c:302: for(x = 31; x >= 0; x--)
      000C99 7A 1F            [12] 1777 	mov	r2,#0x1F
      000C9B 7B 00            [12] 1778 	mov	r3,#0x00
      000C9D                       1779 00230$:
                                   1780 ;	src/radio.c:304: if(x > 0) payload[x] = payload[x - 1] << 7 | payload[x] >> 1;
      000C9D C3               [12] 1781 	clr	c
      000C9E E4               [12] 1782 	clr	a
      000C9F 9A               [12] 1783 	subb	a,r2
      000CA0 74 80            [12] 1784 	mov	a,#(0x00 ^ 0x80)
      000CA2 8B F0            [24] 1785 	mov	b,r3
      000CA4 63 F0 80         [24] 1786 	xrl	b,#0x80
      000CA7 95 F0            [12] 1787 	subb	a,b
      000CA9 50 33            [24] 1788 	jnc	00109$
      000CAB C0 04            [24] 1789 	push	ar4
      000CAD C0 05            [24] 1790 	push	ar5
      000CAF EA               [12] 1791 	mov	a,r2
      000CB0 24 53            [12] 1792 	add	a,#_handle_radio_request_payload_4_75
      000CB2 F8               [12] 1793 	mov	r0,a
      000CB3 EB               [12] 1794 	mov	a,r3
      000CB4 34 80            [12] 1795 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000CB6 F9               [12] 1796 	mov	r1,a
      000CB7 8A 05            [24] 1797 	mov	ar5,r2
      000CB9 ED               [12] 1798 	mov	a,r5
      000CBA 14               [12] 1799 	dec	a
      000CBB 24 53            [12] 1800 	add	a,#_handle_radio_request_payload_4_75
      000CBD F5 82            [12] 1801 	mov	dpl,a
      000CBF E4               [12] 1802 	clr	a
      000CC0 34 80            [12] 1803 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000CC2 F5 83            [12] 1804 	mov	dph,a
      000CC4 E0               [24] 1805 	movx	a,@dptr
      000CC5 03               [12] 1806 	rr	a
      000CC6 54 80            [12] 1807 	anl	a,#0x80
      000CC8 FD               [12] 1808 	mov	r5,a
      000CC9 88 82            [24] 1809 	mov	dpl,r0
      000CCB 89 83            [24] 1810 	mov	dph,r1
      000CCD E0               [24] 1811 	movx	a,@dptr
      000CCE C3               [12] 1812 	clr	c
      000CCF 13               [12] 1813 	rrc	a
      000CD0 42 05            [12] 1814 	orl	ar5,a
      000CD2 88 82            [24] 1815 	mov	dpl,r0
      000CD4 89 83            [24] 1816 	mov	dph,r1
      000CD6 ED               [12] 1817 	mov	a,r5
      000CD7 F0               [24] 1818 	movx	@dptr,a
      000CD8 D0 05            [24] 1819 	pop	ar5
      000CDA D0 04            [24] 1820 	pop	ar4
      000CDC 80 1C            [24] 1821 	sjmp	00231$
      000CDE                       1822 00109$:
                                   1823 ;	src/radio.c:305: else payload[x] = payload[x] >> 1;
      000CDE C0 04            [24] 1824 	push	ar4
      000CE0 C0 05            [24] 1825 	push	ar5
      000CE2 EA               [12] 1826 	mov	a,r2
      000CE3 24 53            [12] 1827 	add	a,#_handle_radio_request_payload_4_75
      000CE5 F8               [12] 1828 	mov	r0,a
      000CE6 EB               [12] 1829 	mov	a,r3
      000CE7 34 80            [12] 1830 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000CE9 F9               [12] 1831 	mov	r1,a
      000CEA 88 82            [24] 1832 	mov	dpl,r0
      000CEC 89 83            [24] 1833 	mov	dph,r1
      000CEE E0               [24] 1834 	movx	a,@dptr
      000CEF C3               [12] 1835 	clr	c
      000CF0 13               [12] 1836 	rrc	a
      000CF1 88 82            [24] 1837 	mov	dpl,r0
      000CF3 89 83            [24] 1838 	mov	dph,r1
      000CF5 F0               [24] 1839 	movx	@dptr,a
                                   1840 ;	src/radio.c:583: in1bc = 1;
      000CF6 D0 05            [24] 1841 	pop	ar5
      000CF8 D0 04            [24] 1842 	pop	ar4
                                   1843 ;	src/radio.c:305: else payload[x] = payload[x] >> 1;
      000CFA                       1844 00231$:
                                   1845 ;	src/radio.c:302: for(x = 31; x >= 0; x--)
      000CFA 1A               [12] 1846 	dec	r2
      000CFB BA FF 01         [24] 1847 	cjne	r2,#0xFF,00476$
      000CFE 1B               [12] 1848 	dec	r3
      000CFF                       1849 00476$:
      000CFF EB               [12] 1850 	mov	a,r3
      000D00 30 E7 9A         [24] 1851 	jnb	acc.7,00230$
      000D03                       1852 00113$:
                                   1853 ;	src/radio.c:310: payload_length = payload[5] >> 2;
      000D03 C0 04            [24] 1854 	push	ar4
      000D05 C0 05            [24] 1855 	push	ar5
      000D07 90 80 58         [24] 1856 	mov	dptr,#(_handle_radio_request_payload_4_75 + 0x0005)
      000D0A E0               [24] 1857 	movx	a,@dptr
      000D0B 03               [12] 1858 	rr	a
      000D0C 03               [12] 1859 	rr	a
      000D0D 54 3F            [12] 1860 	anl	a,#0x3F
      000D0F FB               [12] 1861 	mov	r3,a
                                   1862 ;	src/radio.c:315: if(payload_length <= (pm_payload_length-9) + pm_prefix_length)
      000D10 90 80 15         [24] 1863 	mov	dptr,#_pm_payload_length
      000D13 E0               [24] 1864 	movx	a,@dptr
      000D14 7A 00            [12] 1865 	mov	r2,#0x00
      000D16 24 F7            [12] 1866 	add	a,#0xF7
      000D18 F9               [12] 1867 	mov	r1,a
      000D19 EA               [12] 1868 	mov	a,r2
      000D1A 34 FF            [12] 1869 	addc	a,#0xFF
      000D1C FA               [12] 1870 	mov	r2,a
      000D1D 90 80 0E         [24] 1871 	mov	dptr,#_pm_prefix_length
      000D20 E0               [24] 1872 	movx	a,@dptr
      000D21 F8               [12] 1873 	mov	r0,a
      000D22 A3               [24] 1874 	inc	dptr
      000D23 E0               [24] 1875 	movx	a,@dptr
      000D24 FD               [12] 1876 	mov	r5,a
      000D25 E8               [12] 1877 	mov	a,r0
      000D26 29               [12] 1878 	add	a,r1
      000D27 F9               [12] 1879 	mov	r1,a
      000D28 ED               [12] 1880 	mov	a,r5
      000D29 3A               [12] 1881 	addc	a,r2
      000D2A FA               [12] 1882 	mov	r2,a
      000D2B 8B 1A            [24] 1883 	mov	_handle_radio_request_sloc1_1_0,r3
      000D2D 75 1B 00         [24] 1884 	mov	(_handle_radio_request_sloc1_1_0 + 1),#0x00
      000D30 C3               [12] 1885 	clr	c
      000D31 E9               [12] 1886 	mov	a,r1
      000D32 95 1A            [12] 1887 	subb	a,_handle_radio_request_sloc1_1_0
      000D34 EA               [12] 1888 	mov	a,r2
      000D35 64 80            [12] 1889 	xrl	a,#0x80
      000D37 85 1B F0         [24] 1890 	mov	b,(_handle_radio_request_sloc1_1_0 + 1)
      000D3A 63 F0 80         [24] 1891 	xrl	b,#0x80
      000D3D 95 F0            [12] 1892 	subb	a,b
      000D3F D0 05            [24] 1893 	pop	ar5
      000D41 D0 04            [24] 1894 	pop	ar4
      000D43 50 03            [24] 1895 	jnc	00478$
      000D45 02 0F 2E         [24] 1896 	ljmp	00239$
      000D48                       1897 00478$:
                                   1898 ;	src/radio.c:318: crc_given = (payload[6 + payload_length] << 9) | ((payload[7 + payload_length]) << 1);
      000D48 C0 04            [24] 1899 	push	ar4
      000D4A C0 05            [24] 1900 	push	ar5
      000D4C 74 06            [12] 1901 	mov	a,#0x06
      000D4E 2B               [12] 1902 	add	a,r3
      000D4F 24 53            [12] 1903 	add	a,#_handle_radio_request_payload_4_75
      000D51 F5 82            [12] 1904 	mov	dpl,a
      000D53 E4               [12] 1905 	clr	a
      000D54 34 80            [12] 1906 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000D56 F5 83            [12] 1907 	mov	dph,a
      000D58 E0               [24] 1908 	movx	a,@dptr
      000D59 F9               [12] 1909 	mov	r1,a
      000D5A 29               [12] 1910 	add	a,r1
      000D5B FA               [12] 1911 	mov	r2,a
      000D5C 79 00            [12] 1912 	mov	r1,#0x00
      000D5E 74 07            [12] 1913 	mov	a,#0x07
      000D60 2B               [12] 1914 	add	a,r3
      000D61 24 53            [12] 1915 	add	a,#_handle_radio_request_payload_4_75
      000D63 F5 82            [12] 1916 	mov	dpl,a
      000D65 E4               [12] 1917 	clr	a
      000D66 34 80            [12] 1918 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000D68 F5 83            [12] 1919 	mov	dph,a
      000D6A E0               [24] 1920 	movx	a,@dptr
      000D6B F8               [12] 1921 	mov	r0,a
      000D6C E4               [12] 1922 	clr	a
      000D6D C8               [12] 1923 	xch	a,r0
      000D6E 25 E0            [12] 1924 	add	a,acc
      000D70 C8               [12] 1925 	xch	a,r0
      000D71 33               [12] 1926 	rlc	a
      000D72 FD               [12] 1927 	mov	r5,a
      000D73 E8               [12] 1928 	mov	a,r0
      000D74 42 01            [12] 1929 	orl	ar1,a
      000D76 ED               [12] 1930 	mov	a,r5
      000D77 42 02            [12] 1931 	orl	ar2,a
                                   1932 ;	src/radio.c:319: crc_given = (crc_given << 8) | (crc_given >> 8);
      000D79 8A 1D            [24] 1933 	mov	_handle_radio_request_sloc2_1_0,r2
      000D7B 89 1E            [24] 1934 	mov	(_handle_radio_request_sloc2_1_0 + 1),r1
      000D7D 90 80 51         [24] 1935 	mov	dptr,#_handle_radio_request_crc_given_4_75
      000D80 E5 1D            [12] 1936 	mov	a,_handle_radio_request_sloc2_1_0
      000D82 F0               [24] 1937 	movx	@dptr,a
      000D83 E5 1E            [12] 1938 	mov	a,(_handle_radio_request_sloc2_1_0 + 1)
      000D85 A3               [24] 1939 	inc	dptr
      000D86 F0               [24] 1940 	movx	@dptr,a
                                   1941 ;	src/radio.c:320: if(payload[8 + payload_length] & 0x80) crc_given |= 0x100;
      000D87 74 08            [12] 1942 	mov	a,#0x08
      000D89 2B               [12] 1943 	add	a,r3
      000D8A 24 53            [12] 1944 	add	a,#_handle_radio_request_payload_4_75
      000D8C F5 82            [12] 1945 	mov	dpl,a
      000D8E E4               [12] 1946 	clr	a
      000D8F 34 80            [12] 1947 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000D91 F5 83            [12] 1948 	mov	dph,a
      000D93 E0               [24] 1949 	movx	a,@dptr
      000D94 D0 05            [24] 1950 	pop	ar5
      000D96 D0 04            [24] 1951 	pop	ar4
      000D98 30 E7 0C         [24] 1952 	jnb	acc.7,00115$
      000D9B 90 80 51         [24] 1953 	mov	dptr,#_handle_radio_request_crc_given_4_75
      000D9E E5 1D            [12] 1954 	mov	a,_handle_radio_request_sloc2_1_0
      000DA0 F0               [24] 1955 	movx	@dptr,a
      000DA1 74 01            [12] 1956 	mov	a,#0x01
      000DA3 45 1E            [12] 1957 	orl	a,(_handle_radio_request_sloc2_1_0 + 1)
      000DA5 A3               [24] 1958 	inc	dptr
      000DA6 F0               [24] 1959 	movx	@dptr,a
      000DA7                       1960 00115$:
                                   1961 ;	src/radio.c:323: crc = 0xFFFF;
      000DA7 90 80 4F         [24] 1962 	mov	dptr,#_handle_radio_request_crc_4_75
      000DAA 74 FF            [12] 1963 	mov	a,#0xFF
      000DAC F0               [24] 1964 	movx	@dptr,a
      000DAD A3               [24] 1965 	inc	dptr
      000DAE F0               [24] 1966 	movx	@dptr,a
                                   1967 ;	src/radio.c:324: for(x = 0; x < 6 + payload_length; x++) crc = crc_update(crc, payload[x], 8);
      000DAF 74 06            [12] 1968 	mov	a,#0x06
      000DB1 25 1A            [12] 1969 	add	a,_handle_radio_request_sloc1_1_0
      000DB3 F9               [12] 1970 	mov	r1,a
      000DB4 E4               [12] 1971 	clr	a
      000DB5 35 1B            [12] 1972 	addc	a,(_handle_radio_request_sloc1_1_0 + 1)
      000DB7 FA               [12] 1973 	mov	r2,a
      000DB8 E4               [12] 1974 	clr	a
      000DB9 F5 1D            [12] 1975 	mov	_handle_radio_request_sloc2_1_0,a
      000DBB F5 1E            [12] 1976 	mov	(_handle_radio_request_sloc2_1_0 + 1),a
      000DBD                       1977 00233$:
      000DBD C3               [12] 1978 	clr	c
      000DBE E5 1D            [12] 1979 	mov	a,_handle_radio_request_sloc2_1_0
      000DC0 99               [12] 1980 	subb	a,r1
      000DC1 E5 1E            [12] 1981 	mov	a,(_handle_radio_request_sloc2_1_0 + 1)
      000DC3 64 80            [12] 1982 	xrl	a,#0x80
      000DC5 8A F0            [24] 1983 	mov	b,r2
      000DC7 63 F0 80         [24] 1984 	xrl	b,#0x80
      000DCA 95 F0            [12] 1985 	subb	a,b
      000DCC 50 5A            [24] 1986 	jnc	00116$
      000DCE C0 04            [24] 1987 	push	ar4
      000DD0 C0 05            [24] 1988 	push	ar5
      000DD2 90 80 4F         [24] 1989 	mov	dptr,#_handle_radio_request_crc_4_75
      000DD5 E0               [24] 1990 	movx	a,@dptr
      000DD6 F8               [12] 1991 	mov	r0,a
      000DD7 A3               [24] 1992 	inc	dptr
      000DD8 E0               [24] 1993 	movx	a,@dptr
      000DD9 FD               [12] 1994 	mov	r5,a
      000DDA E5 1D            [12] 1995 	mov	a,_handle_radio_request_sloc2_1_0
      000DDC 24 53            [12] 1996 	add	a,#_handle_radio_request_payload_4_75
      000DDE F5 82            [12] 1997 	mov	dpl,a
      000DE0 E5 1E            [12] 1998 	mov	a,(_handle_radio_request_sloc2_1_0 + 1)
      000DE2 34 80            [12] 1999 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000DE4 F5 83            [12] 2000 	mov	dph,a
      000DE6 E0               [24] 2001 	movx	a,@dptr
      000DE7 FC               [12] 2002 	mov	r4,a
      000DE8 90 80 3D         [24] 2003 	mov	dptr,#_crc_update_PARM_2
      000DEB F0               [24] 2004 	movx	@dptr,a
      000DEC 90 80 3E         [24] 2005 	mov	dptr,#_crc_update_PARM_3
      000DEF 74 08            [12] 2006 	mov	a,#0x08
      000DF1 F0               [24] 2007 	movx	@dptr,a
      000DF2 88 82            [24] 2008 	mov	dpl,r0
      000DF4 8D 83            [24] 2009 	mov	dph,r5
      000DF6 C0 05            [24] 2010 	push	ar5
      000DF8 C0 04            [24] 2011 	push	ar4
      000DFA C0 03            [24] 2012 	push	ar3
      000DFC C0 02            [24] 2013 	push	ar2
      000DFE C0 01            [24] 2014 	push	ar1
      000E00 12 09 28         [24] 2015 	lcall	_crc_update
      000E03 E5 82            [12] 2016 	mov	a,dpl
      000E05 85 83 F0         [24] 2017 	mov	b,dph
      000E08 D0 01            [24] 2018 	pop	ar1
      000E0A D0 02            [24] 2019 	pop	ar2
      000E0C D0 03            [24] 2020 	pop	ar3
      000E0E D0 04            [24] 2021 	pop	ar4
      000E10 D0 05            [24] 2022 	pop	ar5
      000E12 90 80 4F         [24] 2023 	mov	dptr,#_handle_radio_request_crc_4_75
      000E15 F0               [24] 2024 	movx	@dptr,a
      000E16 E5 F0            [12] 2025 	mov	a,b
      000E18 A3               [24] 2026 	inc	dptr
      000E19 F0               [24] 2027 	movx	@dptr,a
      000E1A 05 1D            [12] 2028 	inc	_handle_radio_request_sloc2_1_0
      000E1C E4               [12] 2029 	clr	a
      000E1D B5 1D 02         [24] 2030 	cjne	a,_handle_radio_request_sloc2_1_0,00481$
      000E20 05 1E            [12] 2031 	inc	(_handle_radio_request_sloc2_1_0 + 1)
      000E22                       2032 00481$:
      000E22 D0 05            [24] 2033 	pop	ar5
      000E24 D0 04            [24] 2034 	pop	ar4
      000E26 80 95            [24] 2035 	sjmp	00233$
      000E28                       2036 00116$:
                                   2037 ;	src/radio.c:325: crc = crc_update(crc, payload[6 + payload_length] & 0x80, 1);
      000E28 C0 04            [24] 2038 	push	ar4
      000E2A C0 05            [24] 2039 	push	ar5
      000E2C 90 80 4F         [24] 2040 	mov	dptr,#_handle_radio_request_crc_4_75
      000E2F E0               [24] 2041 	movx	a,@dptr
      000E30 F9               [12] 2042 	mov	r1,a
      000E31 A3               [24] 2043 	inc	dptr
      000E32 E0               [24] 2044 	movx	a,@dptr
      000E33 FA               [12] 2045 	mov	r2,a
      000E34 74 06            [12] 2046 	mov	a,#0x06
      000E36 2B               [12] 2047 	add	a,r3
      000E37 24 53            [12] 2048 	add	a,#_handle_radio_request_payload_4_75
      000E39 F5 82            [12] 2049 	mov	dpl,a
      000E3B E4               [12] 2050 	clr	a
      000E3C 34 80            [12] 2051 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000E3E F5 83            [12] 2052 	mov	dph,a
      000E40 E0               [24] 2053 	movx	a,@dptr
      000E41 F8               [12] 2054 	mov	r0,a
      000E42 90 80 3D         [24] 2055 	mov	dptr,#_crc_update_PARM_2
      000E45 74 80            [12] 2056 	mov	a,#0x80
      000E47 58               [12] 2057 	anl	a,r0
      000E48 F0               [24] 2058 	movx	@dptr,a
      000E49 90 80 3E         [24] 2059 	mov	dptr,#_crc_update_PARM_3
      000E4C 74 01            [12] 2060 	mov	a,#0x01
      000E4E F0               [24] 2061 	movx	@dptr,a
      000E4F 89 82            [24] 2062 	mov	dpl,r1
      000E51 8A 83            [24] 2063 	mov	dph,r2
      000E53 C0 05            [24] 2064 	push	ar5
      000E55 C0 04            [24] 2065 	push	ar4
      000E57 C0 03            [24] 2066 	push	ar3
      000E59 12 09 28         [24] 2067 	lcall	_crc_update
      000E5C A9 82            [24] 2068 	mov	r1,dpl
      000E5E AA 83            [24] 2069 	mov	r2,dph
      000E60 D0 03            [24] 2070 	pop	ar3
      000E62 D0 04            [24] 2071 	pop	ar4
      000E64 D0 05            [24] 2072 	pop	ar5
                                   2073 ;	src/radio.c:326: crc = (crc << 8) | (crc >> 8);
      000E66 E9               [12] 2074 	mov	a,r1
      000E67 8A 01            [24] 2075 	mov	ar1,r2
      000E69 FA               [12] 2076 	mov	r2,a
                                   2077 ;	src/radio.c:329: if(crc == crc_given)
      000E6A 90 80 51         [24] 2078 	mov	dptr,#_handle_radio_request_crc_given_4_75
      000E6D E0               [24] 2079 	movx	a,@dptr
      000E6E F8               [12] 2080 	mov	r0,a
      000E6F A3               [24] 2081 	inc	dptr
      000E70 E0               [24] 2082 	movx	a,@dptr
      000E71 FD               [12] 2083 	mov	r5,a
      000E72 E9               [12] 2084 	mov	a,r1
      000E73 B5 00 06         [24] 2085 	cjne	a,ar0,00482$
      000E76 EA               [12] 2086 	mov	a,r2
      000E77 B5 05 02         [24] 2087 	cjne	a,ar5,00482$
      000E7A 80 07            [24] 2088 	sjmp	00483$
      000E7C                       2089 00482$:
      000E7C D0 05            [24] 2090 	pop	ar5
      000E7E D0 04            [24] 2091 	pop	ar4
      000E80 02 0F 2E         [24] 2092 	ljmp	00239$
      000E83                       2093 00483$:
      000E83 D0 05            [24] 2094 	pop	ar5
      000E85 D0 04            [24] 2095 	pop	ar4
                                   2096 ;	src/radio.c:332: memcpy(in1buf, payload, 5);
      000E87 90 80 A0         [24] 2097 	mov	dptr,#_memcpy_PARM_2
      000E8A 74 53            [12] 2098 	mov	a,#_handle_radio_request_payload_4_75
      000E8C F0               [24] 2099 	movx	@dptr,a
      000E8D 74 80            [12] 2100 	mov	a,#(_handle_radio_request_payload_4_75 >> 8)
      000E8F A3               [24] 2101 	inc	dptr
      000E90 F0               [24] 2102 	movx	@dptr,a
      000E91 E4               [12] 2103 	clr	a
      000E92 A3               [24] 2104 	inc	dptr
      000E93 F0               [24] 2105 	movx	@dptr,a
      000E94 90 80 A3         [24] 2106 	mov	dptr,#_memcpy_PARM_3
      000E97 74 05            [12] 2107 	mov	a,#0x05
      000E99 F0               [24] 2108 	movx	@dptr,a
      000E9A E4               [12] 2109 	clr	a
      000E9B A3               [24] 2110 	inc	dptr
      000E9C F0               [24] 2111 	movx	@dptr,a
      000E9D 90 C6 80         [24] 2112 	mov	dptr,#_in1buf
      000EA0 75 F0 00         [24] 2113 	mov	b,#0x00
      000EA3 C0 03            [24] 2114 	push	ar3
      000EA5 12 15 62         [24] 2115 	lcall	_memcpy
      000EA8 D0 03            [24] 2116 	pop	ar3
                                   2117 ;	src/radio.c:335: for(x = 0; x < payload_length + 3; x++)
      000EAA 74 03            [12] 2118 	mov	a,#0x03
      000EAC 25 1A            [12] 2119 	add	a,_handle_radio_request_sloc1_1_0
      000EAE F9               [12] 2120 	mov	r1,a
      000EAF E4               [12] 2121 	clr	a
      000EB0 35 1B            [12] 2122 	addc	a,(_handle_radio_request_sloc1_1_0 + 1)
      000EB2 FA               [12] 2123 	mov	r2,a
      000EB3 E4               [12] 2124 	clr	a
      000EB4 F5 1D            [12] 2125 	mov	_handle_radio_request_sloc2_1_0,a
      000EB6 F5 1E            [12] 2126 	mov	(_handle_radio_request_sloc2_1_0 + 1),a
      000EB8                       2127 00236$:
      000EB8 C3               [12] 2128 	clr	c
      000EB9 E5 1D            [12] 2129 	mov	a,_handle_radio_request_sloc2_1_0
      000EBB 99               [12] 2130 	subb	a,r1
      000EBC E5 1E            [12] 2131 	mov	a,(_handle_radio_request_sloc2_1_0 + 1)
      000EBE 64 80            [12] 2132 	xrl	a,#0x80
      000EC0 8A F0            [24] 2133 	mov	b,r2
      000EC2 63 F0 80         [24] 2134 	xrl	b,#0x80
      000EC5 95 F0            [12] 2135 	subb	a,b
      000EC7 50 4B            [24] 2136 	jnc	00117$
                                   2137 ;	src/radio.c:336: in1buf[5+x] = ((payload[6 + x] << 1) & 0xFF) | (payload[7 + x] >> 7);
      000EC9 C0 01            [24] 2138 	push	ar1
      000ECB C0 02            [24] 2139 	push	ar2
      000ECD A8 1D            [24] 2140 	mov	r0,_handle_radio_request_sloc2_1_0
      000ECF 74 05            [12] 2141 	mov	a,#0x05
      000ED1 28               [12] 2142 	add	a,r0
      000ED2 24 80            [12] 2143 	add	a,#_in1buf
      000ED4 F5 1A            [12] 2144 	mov	_handle_radio_request_sloc1_1_0,a
      000ED6 E4               [12] 2145 	clr	a
      000ED7 34 C6            [12] 2146 	addc	a,#(_in1buf >> 8)
      000ED9 F5 1B            [12] 2147 	mov	(_handle_radio_request_sloc1_1_0 + 1),a
      000EDB 74 06            [12] 2148 	mov	a,#0x06
      000EDD 28               [12] 2149 	add	a,r0
      000EDE 24 53            [12] 2150 	add	a,#_handle_radio_request_payload_4_75
      000EE0 F5 82            [12] 2151 	mov	dpl,a
      000EE2 E4               [12] 2152 	clr	a
      000EE3 34 80            [12] 2153 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000EE5 F5 83            [12] 2154 	mov	dph,a
      000EE7 E0               [24] 2155 	movx	a,@dptr
      000EE8 25 E0            [12] 2156 	add	a,acc
      000EEA FA               [12] 2157 	mov	r2,a
      000EEB 74 07            [12] 2158 	mov	a,#0x07
      000EED 28               [12] 2159 	add	a,r0
      000EEE 24 53            [12] 2160 	add	a,#_handle_radio_request_payload_4_75
      000EF0 F5 82            [12] 2161 	mov	dpl,a
      000EF2 E4               [12] 2162 	clr	a
      000EF3 34 80            [12] 2163 	addc	a,#(_handle_radio_request_payload_4_75 >> 8)
      000EF5 F5 83            [12] 2164 	mov	dph,a
      000EF7 E0               [24] 2165 	movx	a,@dptr
      000EF8 23               [12] 2166 	rl	a
      000EF9 54 01            [12] 2167 	anl	a,#0x01
      000EFB F9               [12] 2168 	mov	r1,a
      000EFC 42 02            [12] 2169 	orl	ar2,a
      000EFE 85 1A 82         [24] 2170 	mov	dpl,_handle_radio_request_sloc1_1_0
      000F01 85 1B 83         [24] 2171 	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
      000F04 EA               [12] 2172 	mov	a,r2
      000F05 F0               [24] 2173 	movx	@dptr,a
                                   2174 ;	src/radio.c:335: for(x = 0; x < payload_length + 3; x++)
      000F06 05 1D            [12] 2175 	inc	_handle_radio_request_sloc2_1_0
      000F08 E4               [12] 2176 	clr	a
      000F09 B5 1D 02         [24] 2177 	cjne	a,_handle_radio_request_sloc2_1_0,00485$
      000F0C 05 1E            [12] 2178 	inc	(_handle_radio_request_sloc2_1_0 + 1)
      000F0E                       2179 00485$:
      000F0E D0 02            [24] 2180 	pop	ar2
      000F10 D0 01            [24] 2181 	pop	ar1
      000F12 80 A4            [24] 2182 	sjmp	00236$
      000F14                       2183 00117$:
                                   2184 ;	src/radio.c:337: in1bc = 5 + payload_length;
      000F14 74 05            [12] 2185 	mov	a,#0x05
      000F16 2B               [12] 2186 	add	a,r3
      000F17 90 C7 B7         [24] 2187 	mov	dptr,#0xC7B7
      000F1A F0               [24] 2188 	movx	@dptr,a
                                   2189 ;	src/radio.c:338: flush_rx();
      000F1B 90 80 2F         [24] 2190 	mov	dptr,#_spi_write_PARM_2
      000F1E E4               [12] 2191 	clr	a
      000F1F F0               [24] 2192 	movx	@dptr,a
      000F20 A3               [24] 2193 	inc	dptr
      000F21 F0               [24] 2194 	movx	@dptr,a
      000F22 A3               [24] 2195 	inc	dptr
      000F23 F0               [24] 2196 	movx	@dptr,a
      000F24 90 80 32         [24] 2197 	mov	dptr,#_spi_write_PARM_3
      000F27 F0               [24] 2198 	movx	@dptr,a
      000F28 75 82 E2         [24] 2199 	mov	dpl,#0xE2
                                   2200 ;	src/radio.c:339: return;
      000F2B 02 07 F3         [24] 2201 	ljmp	_spi_write
      000F2E                       2202 00239$:
                                   2203 ;	src/radio.c:297: for(offset = 0; offset < 2; offset++)
      000F2E 0C               [12] 2204 	inc	r4
      000F2F BC 00 01         [24] 2205 	cjne	r4,#0x00,00486$
      000F32 0D               [12] 2206 	inc	r5
      000F33                       2207 00486$:
      000F33 C3               [12] 2208 	clr	c
      000F34 EC               [12] 2209 	mov	a,r4
      000F35 94 02            [12] 2210 	subb	a,#0x02
      000F37 ED               [12] 2211 	mov	a,r5
      000F38 64 80            [12] 2212 	xrl	a,#0x80
      000F3A 94 80            [12] 2213 	subb	a,#0x80
      000F3C 50 03            [24] 2214 	jnc	00487$
      000F3E 02 0C 93         [24] 2215 	ljmp	00238$
      000F41                       2216 00487$:
      000F41 02 0F F7         [24] 2217 	ljmp	00133$
      000F44                       2218 00127$:
                                   2219 ;	src/radio.c:346: else if(radio_mode == promiscuous_generic)
      000F44 BE 02 02         [24] 2220 	cjne	r6,#0x02,00488$
      000F47 80 03            [24] 2221 	sjmp	00489$
      000F49                       2222 00488$:
      000F49 02 0F F7         [24] 2223 	ljmp	00133$
      000F4C                       2224 00489$:
                                   2225 ;	src/radio.c:352: for(x = 0; x < pm_prefix_length; x++) payload[pm_prefix_length - x - 1] = pm_prefix[x];
      000F4C 7D 00            [12] 2226 	mov	r5,#0x00
      000F4E 7E 00            [12] 2227 	mov	r6,#0x00
      000F50                       2228 00241$:
      000F50 90 80 0E         [24] 2229 	mov	dptr,#_pm_prefix_length
      000F53 E0               [24] 2230 	movx	a,@dptr
      000F54 FB               [12] 2231 	mov	r3,a
      000F55 A3               [24] 2232 	inc	dptr
      000F56 E0               [24] 2233 	movx	a,@dptr
      000F57 FC               [12] 2234 	mov	r4,a
      000F58 C3               [12] 2235 	clr	c
      000F59 ED               [12] 2236 	mov	a,r5
      000F5A 9B               [12] 2237 	subb	a,r3
      000F5B EE               [12] 2238 	mov	a,r6
      000F5C 64 80            [12] 2239 	xrl	a,#0x80
      000F5E 8C F0            [24] 2240 	mov	b,r4
      000F60 63 F0 80         [24] 2241 	xrl	b,#0x80
      000F63 95 F0            [12] 2242 	subb	a,b
      000F65 50 27            [24] 2243 	jnc	00123$
      000F67 8B 02            [24] 2244 	mov	ar2,r3
      000F69 8D 01            [24] 2245 	mov	ar1,r5
      000F6B EA               [12] 2246 	mov	a,r2
      000F6C C3               [12] 2247 	clr	c
      000F6D 99               [12] 2248 	subb	a,r1
      000F6E 14               [12] 2249 	dec	a
      000F6F 24 78            [12] 2250 	add	a,#_handle_radio_request_payload_4_81
      000F71 F9               [12] 2251 	mov	r1,a
      000F72 E4               [12] 2252 	clr	a
      000F73 34 80            [12] 2253 	addc	a,#(_handle_radio_request_payload_4_81 >> 8)
      000F75 FA               [12] 2254 	mov	r2,a
      000F76 ED               [12] 2255 	mov	a,r5
      000F77 24 10            [12] 2256 	add	a,#_pm_prefix
      000F79 F5 82            [12] 2257 	mov	dpl,a
      000F7B EE               [12] 2258 	mov	a,r6
      000F7C 34 80            [12] 2259 	addc	a,#(_pm_prefix >> 8)
      000F7E F5 83            [12] 2260 	mov	dph,a
      000F80 E0               [24] 2261 	movx	a,@dptr
      000F81 F8               [12] 2262 	mov	r0,a
      000F82 89 82            [24] 2263 	mov	dpl,r1
      000F84 8A 83            [24] 2264 	mov	dph,r2
      000F86 F0               [24] 2265 	movx	@dptr,a
      000F87 0D               [12] 2266 	inc	r5
      000F88 BD 00 C5         [24] 2267 	cjne	r5,#0x00,00241$
      000F8B 0E               [12] 2268 	inc	r6
      000F8C 80 C2            [24] 2269 	sjmp	00241$
      000F8E                       2270 00123$:
                                   2271 ;	src/radio.c:353: read_register(R_RX_PAYLOAD, &payload[pm_prefix_length], pm_payload_length);
      000F8E EB               [12] 2272 	mov	a,r3
      000F8F 24 78            [12] 2273 	add	a,#_handle_radio_request_payload_4_81
      000F91 FB               [12] 2274 	mov	r3,a
      000F92 EC               [12] 2275 	mov	a,r4
      000F93 34 80            [12] 2276 	addc	a,#(_handle_radio_request_payload_4_81 >> 8)
      000F95 FC               [12] 2277 	mov	r4,a
      000F96 7E 00            [12] 2278 	mov	r6,#0x00
      000F98 90 80 15         [24] 2279 	mov	dptr,#_pm_payload_length
      000F9B E0               [24] 2280 	movx	a,@dptr
      000F9C FD               [12] 2281 	mov	r5,a
      000F9D 90 80 34         [24] 2282 	mov	dptr,#_spi_read_PARM_2
      000FA0 EB               [12] 2283 	mov	a,r3
      000FA1 F0               [24] 2284 	movx	@dptr,a
      000FA2 EC               [12] 2285 	mov	a,r4
      000FA3 A3               [24] 2286 	inc	dptr
      000FA4 F0               [24] 2287 	movx	@dptr,a
      000FA5 EE               [12] 2288 	mov	a,r6
      000FA6 A3               [24] 2289 	inc	dptr
      000FA7 F0               [24] 2290 	movx	@dptr,a
      000FA8 90 80 37         [24] 2291 	mov	dptr,#_spi_read_PARM_3
      000FAB ED               [12] 2292 	mov	a,r5
      000FAC F0               [24] 2293 	movx	@dptr,a
      000FAD 75 82 61         [24] 2294 	mov	dpl,#0x61
      000FB0 12 08 67         [24] 2295 	lcall	_spi_read
                                   2296 ;	src/radio.c:356: memcpy(in1buf, payload, pm_prefix_length + pm_payload_length);
      000FB3 90 80 15         [24] 2297 	mov	dptr,#_pm_payload_length
      000FB6 E0               [24] 2298 	movx	a,@dptr
      000FB7 FE               [12] 2299 	mov	r6,a
      000FB8 7D 00            [12] 2300 	mov	r5,#0x00
      000FBA 90 80 0E         [24] 2301 	mov	dptr,#_pm_prefix_length
      000FBD E0               [24] 2302 	movx	a,@dptr
      000FBE FB               [12] 2303 	mov	r3,a
      000FBF A3               [24] 2304 	inc	dptr
      000FC0 E0               [24] 2305 	movx	a,@dptr
      000FC1 FC               [12] 2306 	mov	r4,a
      000FC2 EE               [12] 2307 	mov	a,r6
      000FC3 2B               [12] 2308 	add	a,r3
      000FC4 FE               [12] 2309 	mov	r6,a
      000FC5 ED               [12] 2310 	mov	a,r5
      000FC6 3C               [12] 2311 	addc	a,r4
      000FC7 FD               [12] 2312 	mov	r5,a
      000FC8 90 80 A0         [24] 2313 	mov	dptr,#_memcpy_PARM_2
      000FCB 74 78            [12] 2314 	mov	a,#_handle_radio_request_payload_4_81
      000FCD F0               [24] 2315 	movx	@dptr,a
      000FCE 74 80            [12] 2316 	mov	a,#(_handle_radio_request_payload_4_81 >> 8)
      000FD0 A3               [24] 2317 	inc	dptr
      000FD1 F0               [24] 2318 	movx	@dptr,a
      000FD2 E4               [12] 2319 	clr	a
      000FD3 A3               [24] 2320 	inc	dptr
      000FD4 F0               [24] 2321 	movx	@dptr,a
      000FD5 90 80 A3         [24] 2322 	mov	dptr,#_memcpy_PARM_3
      000FD8 EE               [12] 2323 	mov	a,r6
      000FD9 F0               [24] 2324 	movx	@dptr,a
      000FDA ED               [12] 2325 	mov	a,r5
      000FDB A3               [24] 2326 	inc	dptr
      000FDC F0               [24] 2327 	movx	@dptr,a
      000FDD 90 C6 80         [24] 2328 	mov	dptr,#_in1buf
      000FE0 75 F0 00         [24] 2329 	mov	b,#0x00
      000FE3 12 15 62         [24] 2330 	lcall	_memcpy
                                   2331 ;	src/radio.c:357: in1bc = pm_prefix_length + pm_payload_length;
      000FE6 90 80 0E         [24] 2332 	mov	dptr,#_pm_prefix_length
      000FE9 E0               [24] 2333 	movx	a,@dptr
      000FEA FD               [12] 2334 	mov	r5,a
      000FEB A3               [24] 2335 	inc	dptr
      000FEC E0               [24] 2336 	movx	a,@dptr
      000FED 90 80 15         [24] 2337 	mov	dptr,#_pm_payload_length
      000FF0 E0               [24] 2338 	movx	a,@dptr
      000FF1 2D               [12] 2339 	add	a,r5
      000FF2 90 C7 B7         [24] 2340 	mov	dptr,#0xC7B7
      000FF5 F0               [24] 2341 	movx	@dptr,a
                                   2342 ;	src/radio.c:359: return;
      000FF6 22               [24] 2343 	ret
      000FF7                       2344 00133$:
                                   2345 ;	src/radio.c:364: in1bc = 1;
      000FF7 90 C7 B7         [24] 2346 	mov	dptr,#0xC7B7
      000FFA 74 01            [12] 2347 	mov	a,#0x01
      000FFC F0               [24] 2348 	movx	@dptr,a
                                   2349 ;	src/radio.c:365: in1buf[0] = 0xFF;
      000FFD 90 C6 80         [24] 2350 	mov	dptr,#_in1buf
      001000 74 FF            [12] 2351 	mov	a,#0xFF
      001002 F0               [24] 2352 	movx	@dptr,a
                                   2353 ;	src/radio.c:366: return;
      001003 22               [24] 2354 	ret
      001004                       2355 00189$:
                                   2356 ;	src/radio.c:370: else if(request == ENTER_SNIFFER_MODE)
      001004 BF 05 02         [24] 2357 	cjne	r7,#0x05,00492$
      001007 80 03            [24] 2358 	sjmp	00493$
      001009                       2359 00492$:
      001009 02 10 C0         [24] 2360 	ljmp	00186$
      00100C                       2361 00493$:
                                   2362 ;	src/radio.c:372: radio_mode = sniffer;
      00100C 90 80 0D         [24] 2363 	mov	dptr,#_radio_mode
      00100F E4               [12] 2364 	clr	a
      001010 F0               [24] 2365 	movx	@dptr,a
                                   2366 ;	src/radio.c:375: if(data[0] > 5) data[0] = 5;
      001011 90 80 41         [24] 2367 	mov	dptr,#_handle_radio_request_PARM_2
      001014 E0               [24] 2368 	movx	a,@dptr
      001015 FC               [12] 2369 	mov	r4,a
      001016 A3               [24] 2370 	inc	dptr
      001017 E0               [24] 2371 	movx	a,@dptr
      001018 FD               [12] 2372 	mov	r5,a
      001019 A3               [24] 2373 	inc	dptr
      00101A E0               [24] 2374 	movx	a,@dptr
      00101B FE               [12] 2375 	mov	r6,a
      00101C 8C 82            [24] 2376 	mov	dpl,r4
      00101E 8D 83            [24] 2377 	mov	dph,r5
      001020 8E F0            [24] 2378 	mov	b,r6
      001022 12 16 09         [24] 2379 	lcall	__gptrget
      001025 FB               [12] 2380 	mov  r3,a
      001026 24 FA            [12] 2381 	add	a,#0xff - 0x05
      001028 50 0B            [24] 2382 	jnc	00135$
      00102A 8C 82            [24] 2383 	mov	dpl,r4
      00102C 8D 83            [24] 2384 	mov	dph,r5
      00102E 8E F0            [24] 2385 	mov	b,r6
      001030 74 05            [12] 2386 	mov	a,#0x05
      001032 12 15 D6         [24] 2387 	lcall	__gptrput
      001035                       2388 00135$:
                                   2389 ;	src/radio.c:376: if(data[0] < 2) data[0] = 2;
      001035 8C 82            [24] 2390 	mov	dpl,r4
      001037 8D 83            [24] 2391 	mov	dph,r5
      001039 8E F0            [24] 2392 	mov	b,r6
      00103B 12 16 09         [24] 2393 	lcall	__gptrget
      00103E FB               [12] 2394 	mov	r3,a
      00103F BB 02 00         [24] 2395 	cjne	r3,#0x02,00495$
      001042                       2396 00495$:
      001042 50 0B            [24] 2397 	jnc	00137$
      001044 8C 82            [24] 2398 	mov	dpl,r4
      001046 8D 83            [24] 2399 	mov	dph,r5
      001048 8E F0            [24] 2400 	mov	b,r6
      00104A 74 02            [12] 2401 	mov	a,#0x02
      00104C 12 15 D6         [24] 2402 	lcall	__gptrput
      00104F                       2403 00137$:
                                   2404 ;	src/radio.c:379: rfce = 0;
      00104F C2 90            [12] 2405 	clr	_rfce
                                   2406 ;	src/radio.c:382: configure_address(&data[1], data[0]);
      001051 74 01            [12] 2407 	mov	a,#0x01
      001053 2C               [12] 2408 	add	a,r4
      001054 F9               [12] 2409 	mov	r1,a
      001055 E4               [12] 2410 	clr	a
      001056 3D               [12] 2411 	addc	a,r5
      001057 FA               [12] 2412 	mov	r2,a
      001058 8E 03            [24] 2413 	mov	ar3,r6
      00105A 8C 82            [24] 2414 	mov	dpl,r4
      00105C 8D 83            [24] 2415 	mov	dph,r5
      00105E 8E F0            [24] 2416 	mov	b,r6
      001060 12 16 09         [24] 2417 	lcall	__gptrget
      001063 90 80 24         [24] 2418 	mov	dptr,#_configure_address_PARM_2
      001066 F0               [24] 2419 	movx	@dptr,a
      001067 89 82            [24] 2420 	mov	dpl,r1
      001069 8A 83            [24] 2421 	mov	dph,r2
      00106B 8B F0            [24] 2422 	mov	b,r3
      00106D 12 07 10         [24] 2423 	lcall	_configure_address
                                   2424 ;	src/radio.c:385: configure_mac(EN_DPL | EN_ACK_PAY, DPL_P0, ENAA_NONE);
      001070 90 80 28         [24] 2425 	mov	dptr,#_configure_mac_PARM_2
      001073 74 01            [12] 2426 	mov	a,#0x01
      001075 F0               [24] 2427 	movx	@dptr,a
      001076 90 80 29         [24] 2428 	mov	dptr,#_configure_mac_PARM_3
      001079 E4               [12] 2429 	clr	a
      00107A F0               [24] 2430 	movx	@dptr,a
      00107B 75 82 06         [24] 2431 	mov	dpl,#0x06
      00107E 12 07 87         [24] 2432 	lcall	_configure_mac
                                   2433 ;	src/radio.c:388: configure_phy(EN_CRC | CRC0 | PRIM_RX | PWR_UP, RATE_2M, 0);
      001081 90 80 2B         [24] 2434 	mov	dptr,#_configure_phy_PARM_2
      001084 74 08            [12] 2435 	mov	a,#0x08
      001086 F0               [24] 2436 	movx	@dptr,a
      001087 90 80 2C         [24] 2437 	mov	dptr,#_configure_phy_PARM_3
      00108A E4               [12] 2438 	clr	a
      00108B F0               [24] 2439 	movx	@dptr,a
      00108C 75 82 0F         [24] 2440 	mov	dpl,#0x0F
      00108F 12 07 B4         [24] 2441 	lcall	_configure_phy
                                   2442 ;	src/radio.c:391: rfce = 1;
      001092 D2 90            [12] 2443 	setb	_rfce
                                   2444 ;	src/radio.c:394: flush_rx();
      001094 90 80 2F         [24] 2445 	mov	dptr,#_spi_write_PARM_2
      001097 E4               [12] 2446 	clr	a
      001098 F0               [24] 2447 	movx	@dptr,a
      001099 A3               [24] 2448 	inc	dptr
      00109A F0               [24] 2449 	movx	@dptr,a
      00109B A3               [24] 2450 	inc	dptr
      00109C F0               [24] 2451 	movx	@dptr,a
      00109D 90 80 32         [24] 2452 	mov	dptr,#_spi_write_PARM_3
      0010A0 F0               [24] 2453 	movx	@dptr,a
      0010A1 75 82 E2         [24] 2454 	mov	dpl,#0xE2
      0010A4 12 07 F3         [24] 2455 	lcall	_spi_write
                                   2456 ;	src/radio.c:395: flush_tx();
      0010A7 90 80 2F         [24] 2457 	mov	dptr,#_spi_write_PARM_2
      0010AA E4               [12] 2458 	clr	a
      0010AB F0               [24] 2459 	movx	@dptr,a
      0010AC A3               [24] 2460 	inc	dptr
      0010AD F0               [24] 2461 	movx	@dptr,a
      0010AE A3               [24] 2462 	inc	dptr
      0010AF F0               [24] 2463 	movx	@dptr,a
      0010B0 90 80 32         [24] 2464 	mov	dptr,#_spi_write_PARM_3
      0010B3 F0               [24] 2465 	movx	@dptr,a
      0010B4 75 82 E1         [24] 2466 	mov	dpl,#0xE1
      0010B7 12 07 F3         [24] 2467 	lcall	_spi_write
                                   2468 ;	src/radio.c:396: in1bc = 0;
      0010BA 90 C7 B7         [24] 2469 	mov	dptr,#0xC7B7
      0010BD E4               [12] 2470 	clr	a
      0010BE F0               [24] 2471 	movx	@dptr,a
      0010BF 22               [24] 2472 	ret
      0010C0                       2473 00186$:
                                   2474 ;	src/radio.c:400: else if(request == TRANSMIT_ACK_PAYLOAD)
      0010C0 BF 08 02         [24] 2475 	cjne	r7,#0x08,00497$
      0010C3 80 03            [24] 2476 	sjmp	00498$
      0010C5                       2477 00497$:
      0010C5 02 11 EF         [24] 2478 	ljmp	00183$
      0010C8                       2479 00498$:
                                   2480 ;	src/radio.c:406: if(data[0] > 32) data[0] = 32;
      0010C8 90 80 41         [24] 2481 	mov	dptr,#_handle_radio_request_PARM_2
      0010CB E0               [24] 2482 	movx	a,@dptr
      0010CC FC               [12] 2483 	mov	r4,a
      0010CD A3               [24] 2484 	inc	dptr
      0010CE E0               [24] 2485 	movx	a,@dptr
      0010CF FD               [12] 2486 	mov	r5,a
      0010D0 A3               [24] 2487 	inc	dptr
      0010D1 E0               [24] 2488 	movx	a,@dptr
      0010D2 FE               [12] 2489 	mov	r6,a
      0010D3 8C 82            [24] 2490 	mov	dpl,r4
      0010D5 8D 83            [24] 2491 	mov	dph,r5
      0010D7 8E F0            [24] 2492 	mov	b,r6
      0010D9 12 16 09         [24] 2493 	lcall	__gptrget
      0010DC FB               [12] 2494 	mov  r3,a
      0010DD 24 DF            [12] 2495 	add	a,#0xff - 0x20
      0010DF 50 0B            [24] 2496 	jnc	00139$
      0010E1 8C 82            [24] 2497 	mov	dpl,r4
      0010E3 8D 83            [24] 2498 	mov	dph,r5
      0010E5 8E F0            [24] 2499 	mov	b,r6
      0010E7 74 20            [12] 2500 	mov	a,#0x20
      0010E9 12 15 D6         [24] 2501 	lcall	__gptrput
      0010EC                       2502 00139$:
                                   2503 ;	src/radio.c:407: if(data[0] < 1) data[0] = 1;
      0010EC 8C 82            [24] 2504 	mov	dpl,r4
      0010EE 8D 83            [24] 2505 	mov	dph,r5
      0010F0 8E F0            [24] 2506 	mov	b,r6
      0010F2 12 16 09         [24] 2507 	lcall	__gptrget
      0010F5 FB               [12] 2508 	mov	r3,a
      0010F6 BB 01 00         [24] 2509 	cjne	r3,#0x01,00500$
      0010F9                       2510 00500$:
      0010F9 50 0B            [24] 2511 	jnc	00141$
      0010FB 8C 82            [24] 2512 	mov	dpl,r4
      0010FD 8D 83            [24] 2513 	mov	dph,r5
      0010FF 8E F0            [24] 2514 	mov	b,r6
      001101 74 01            [12] 2515 	mov	a,#0x01
      001103 12 15 D6         [24] 2516 	lcall	__gptrput
      001106                       2517 00141$:
                                   2518 ;	src/radio.c:410: rfce = 0;
      001106 C2 90            [12] 2519 	clr	_rfce
                                   2520 ;	src/radio.c:413: flush_tx();
      001108 90 80 2F         [24] 2521 	mov	dptr,#_spi_write_PARM_2
      00110B E4               [12] 2522 	clr	a
      00110C F0               [24] 2523 	movx	@dptr,a
      00110D A3               [24] 2524 	inc	dptr
      00110E F0               [24] 2525 	movx	@dptr,a
      00110F A3               [24] 2526 	inc	dptr
      001110 F0               [24] 2527 	movx	@dptr,a
      001111 90 80 32         [24] 2528 	mov	dptr,#_spi_write_PARM_3
      001114 F0               [24] 2529 	movx	@dptr,a
      001115 75 82 E1         [24] 2530 	mov	dpl,#0xE1
      001118 C0 06            [24] 2531 	push	ar6
      00111A C0 05            [24] 2532 	push	ar5
      00111C C0 04            [24] 2533 	push	ar4
      00111E 12 07 F3         [24] 2534 	lcall	_spi_write
      001121 D0 04            [24] 2535 	pop	ar4
      001123 D0 05            [24] 2536 	pop	ar5
      001125 D0 06            [24] 2537 	pop	ar6
                                   2538 ;	src/radio.c:414: flush_rx();
      001127 90 80 2F         [24] 2539 	mov	dptr,#_spi_write_PARM_2
      00112A E4               [12] 2540 	clr	a
      00112B F0               [24] 2541 	movx	@dptr,a
      00112C A3               [24] 2542 	inc	dptr
      00112D F0               [24] 2543 	movx	@dptr,a
      00112E A3               [24] 2544 	inc	dptr
      00112F F0               [24] 2545 	movx	@dptr,a
      001130 90 80 32         [24] 2546 	mov	dptr,#_spi_write_PARM_3
      001133 F0               [24] 2547 	movx	@dptr,a
      001134 75 82 E2         [24] 2548 	mov	dpl,#0xE2
      001137 C0 06            [24] 2549 	push	ar6
      001139 C0 05            [24] 2550 	push	ar5
      00113B C0 04            [24] 2551 	push	ar4
      00113D 12 07 F3         [24] 2552 	lcall	_spi_write
                                   2553 ;	src/radio.c:417: write_register_byte(STATUS, MAX_RT | TX_DS | RX_DR);
      001140 90 80 39         [24] 2554 	mov	dptr,#_write_register_byte_PARM_2
      001143 74 70            [12] 2555 	mov	a,#0x70
      001145 F0               [24] 2556 	movx	@dptr,a
      001146 75 82 07         [24] 2557 	mov	dpl,#0x07
      001149 12 08 E0         [24] 2558 	lcall	_write_register_byte
                                   2559 ;	src/radio.c:420: write_register_byte(EN_AA, ENAA_P0);
      00114C 90 80 39         [24] 2560 	mov	dptr,#_write_register_byte_PARM_2
      00114F 74 01            [12] 2561 	mov	a,#0x01
      001151 F0               [24] 2562 	movx	@dptr,a
      001152 75 82 01         [24] 2563 	mov	dpl,#0x01
      001155 12 08 E0         [24] 2564 	lcall	_write_register_byte
                                   2565 ;	src/radio.c:421: write_register_byte(FEATURE, EN_DPL | EN_ACK_PAY);
      001158 90 80 39         [24] 2566 	mov	dptr,#_write_register_byte_PARM_2
      00115B 74 06            [12] 2567 	mov	a,#0x06
      00115D F0               [24] 2568 	movx	@dptr,a
      00115E 75 82 1D         [24] 2569 	mov	dpl,#0x1D
      001161 12 08 E0         [24] 2570 	lcall	_write_register_byte
      001164 D0 04            [24] 2571 	pop	ar4
      001166 D0 05            [24] 2572 	pop	ar5
      001168 D0 06            [24] 2573 	pop	ar6
                                   2574 ;	src/radio.c:424: spi_write(W_ACK_PAYLOAD, &data[1], data[0]);
      00116A 74 01            [12] 2575 	mov	a,#0x01
      00116C 2C               [12] 2576 	add	a,r4
      00116D F9               [12] 2577 	mov	r1,a
      00116E E4               [12] 2578 	clr	a
      00116F 3D               [12] 2579 	addc	a,r5
      001170 FA               [12] 2580 	mov	r2,a
      001171 8E 03            [24] 2581 	mov	ar3,r6
      001173 8C 82            [24] 2582 	mov	dpl,r4
      001175 8D 83            [24] 2583 	mov	dph,r5
      001177 8E F0            [24] 2584 	mov	b,r6
      001179 12 16 09         [24] 2585 	lcall	__gptrget
      00117C FC               [12] 2586 	mov	r4,a
      00117D 90 80 2F         [24] 2587 	mov	dptr,#_spi_write_PARM_2
      001180 E9               [12] 2588 	mov	a,r1
      001181 F0               [24] 2589 	movx	@dptr,a
      001182 EA               [12] 2590 	mov	a,r2
      001183 A3               [24] 2591 	inc	dptr
      001184 F0               [24] 2592 	movx	@dptr,a
      001185 EB               [12] 2593 	mov	a,r3
      001186 A3               [24] 2594 	inc	dptr
      001187 F0               [24] 2595 	movx	@dptr,a
      001188 90 80 32         [24] 2596 	mov	dptr,#_spi_write_PARM_3
      00118B EC               [12] 2597 	mov	a,r4
      00118C F0               [24] 2598 	movx	@dptr,a
      00118D 75 82 A8         [24] 2599 	mov	dpl,#0xA8
      001190 12 07 F3         [24] 2600 	lcall	_spi_write
                                   2601 ;	src/radio.c:427: rfce = 1;
      001193 D2 90            [12] 2602 	setb	_rfce
                                   2603 ;	src/radio.c:431: in1buf[0] = 0;
      001195 90 C6 80         [24] 2604 	mov	dptr,#_in1buf
      001198 E4               [12] 2605 	clr	a
      001199 F0               [24] 2606 	movx	@dptr,a
                                   2607 ;	src/radio.c:432: while(elapsed < 500)
      00119A 7D 00            [12] 2608 	mov	r5,#0x00
      00119C 7E 00            [12] 2609 	mov	r6,#0x00
      00119E                       2610 00144$:
      00119E C3               [12] 2611 	clr	c
      00119F ED               [12] 2612 	mov	a,r5
      0011A0 94 F4            [12] 2613 	subb	a,#0xF4
      0011A2 EE               [12] 2614 	mov	a,r6
      0011A3 94 01            [12] 2615 	subb	a,#0x01
      0011A5 50 36            [24] 2616 	jnc	00146$
                                   2617 ;	src/radio.c:434: status = read_register_byte(STATUS);
      0011A7 75 82 07         [24] 2618 	mov	dpl,#0x07
      0011AA C0 06            [24] 2619 	push	ar6
      0011AC C0 05            [24] 2620 	push	ar5
      0011AE 12 09 02         [24] 2621 	lcall	_read_register_byte
      0011B1 E5 82            [12] 2622 	mov	a,dpl
      0011B3 D0 05            [24] 2623 	pop	ar5
      0011B5 D0 06            [24] 2624 	pop	ar6
                                   2625 ;	src/radio.c:435: if((status & RX_DR) == RX_DR)
      0011B7 54 40            [12] 2626 	anl	a,#0x40
      0011B9 FC               [12] 2627 	mov	r4,a
      0011BA BC 40 08         [24] 2628 	cjne	r4,#0x40,00285$
                                   2629 ;	src/radio.c:437: in1buf[0] = 1;
      0011BD 90 C6 80         [24] 2630 	mov	dptr,#_in1buf
      0011C0 74 01            [12] 2631 	mov	a,#0x01
      0011C2 F0               [24] 2632 	movx	@dptr,a
                                   2633 ;	src/radio.c:438: break;
                                   2634 ;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
      0011C3 80 18            [24] 2635 	sjmp	00146$
      0011C5                       2636 00285$:
      0011C5 7B E8            [12] 2637 	mov	r3,#0xE8
      0011C7 7C 03            [12] 2638 	mov	r4,#0x03
      0011C9                       2639 00212$:
      0011C9 00               [12] 2640 	nop 
      0011CA 00               [12] 2641 	nop 
      0011CB 00               [12] 2642 	nop 
      0011CC 00               [12] 2643 	nop 
      0011CD 1B               [12] 2644 	dec	r3
      0011CE BB FF 01         [24] 2645 	cjne	r3,#0xFF,00505$
      0011D1 1C               [12] 2646 	dec	r4
      0011D2                       2647 00505$:
      0011D2 EB               [12] 2648 	mov	a,r3
      0011D3 4C               [12] 2649 	orl	a,r4
      0011D4 70 F3            [24] 2650 	jnz	00212$
                                   2651 ;	src/radio.c:442: elapsed++;
      0011D6 0D               [12] 2652 	inc	r5
      0011D7 BD 00 C4         [24] 2653 	cjne	r5,#0x00,00144$
      0011DA 0E               [12] 2654 	inc	r6
      0011DB 80 C1            [24] 2655 	sjmp	00144$
      0011DD                       2656 00146$:
                                   2657 ;	src/radio.c:446: write_register_byte(EN_AA, ENAA_NONE);
      0011DD 90 80 39         [24] 2658 	mov	dptr,#_write_register_byte_PARM_2
      0011E0 E4               [12] 2659 	clr	a
      0011E1 F0               [24] 2660 	movx	@dptr,a
      0011E2 75 82 01         [24] 2661 	mov	dpl,#0x01
      0011E5 12 08 E0         [24] 2662 	lcall	_write_register_byte
                                   2663 ;	src/radio.c:448: in1bc = 1;
      0011E8 90 C7 B7         [24] 2664 	mov	dptr,#0xC7B7
      0011EB 74 01            [12] 2665 	mov	a,#0x01
      0011ED F0               [24] 2666 	movx	@dptr,a
      0011EE 22               [24] 2667 	ret
      0011EF                       2668 00183$:
                                   2669 ;	src/radio.c:452: else if(request == TRANSMIT_PAYLOAD)
      0011EF BF 04 02         [24] 2670 	cjne	r7,#0x04,00508$
      0011F2 80 03            [24] 2671 	sjmp	00509$
      0011F4                       2672 00508$:
      0011F4 02 13 7B         [24] 2673 	ljmp	00180$
      0011F7                       2674 00509$:
                                   2675 ;	src/radio.c:455: if(data[0] > 32) data[0] = 32;
      0011F7 90 80 41         [24] 2676 	mov	dptr,#_handle_radio_request_PARM_2
      0011FA E0               [24] 2677 	movx	a,@dptr
      0011FB FC               [12] 2678 	mov	r4,a
      0011FC A3               [24] 2679 	inc	dptr
      0011FD E0               [24] 2680 	movx	a,@dptr
      0011FE FD               [12] 2681 	mov	r5,a
      0011FF A3               [24] 2682 	inc	dptr
      001200 E0               [24] 2683 	movx	a,@dptr
      001201 FE               [12] 2684 	mov	r6,a
      001202 8C 82            [24] 2685 	mov	dpl,r4
      001204 8D 83            [24] 2686 	mov	dph,r5
      001206 8E F0            [24] 2687 	mov	b,r6
      001208 12 16 09         [24] 2688 	lcall	__gptrget
      00120B FB               [12] 2689 	mov  r3,a
      00120C 24 DF            [12] 2690 	add	a,#0xff - 0x20
      00120E 50 0B            [24] 2691 	jnc	00148$
      001210 8C 82            [24] 2692 	mov	dpl,r4
      001212 8D 83            [24] 2693 	mov	dph,r5
      001214 8E F0            [24] 2694 	mov	b,r6
      001216 74 20            [12] 2695 	mov	a,#0x20
      001218 12 15 D6         [24] 2696 	lcall	__gptrput
      00121B                       2697 00148$:
                                   2698 ;	src/radio.c:456: if(data[0] < 1) data[0] = 1;
      00121B 8C 82            [24] 2699 	mov	dpl,r4
      00121D 8D 83            [24] 2700 	mov	dph,r5
      00121F 8E F0            [24] 2701 	mov	b,r6
      001221 12 16 09         [24] 2702 	lcall	__gptrget
      001224 FB               [12] 2703 	mov	r3,a
      001225 BB 01 00         [24] 2704 	cjne	r3,#0x01,00511$
      001228                       2705 00511$:
      001228 50 0B            [24] 2706 	jnc	00150$
      00122A 8C 82            [24] 2707 	mov	dpl,r4
      00122C 8D 83            [24] 2708 	mov	dph,r5
      00122E 8E F0            [24] 2709 	mov	b,r6
      001230 74 01            [12] 2710 	mov	a,#0x01
      001232 12 15 D6         [24] 2711 	lcall	__gptrput
      001235                       2712 00150$:
                                   2713 ;	src/radio.c:459: rfce = 0;
      001235 C2 90            [12] 2714 	clr	_rfce
                                   2715 ;	src/radio.c:463: write_register_byte(SETUP_RETR, (1 << data[1]) | data[2]);
      001237 74 01            [12] 2716 	mov	a,#0x01
      001239 2C               [12] 2717 	add	a,r4
      00123A F9               [12] 2718 	mov	r1,a
      00123B E4               [12] 2719 	clr	a
      00123C 3D               [12] 2720 	addc	a,r5
      00123D FA               [12] 2721 	mov	r2,a
      00123E 8E 03            [24] 2722 	mov	ar3,r6
      001240 89 82            [24] 2723 	mov	dpl,r1
      001242 8A 83            [24] 2724 	mov	dph,r2
      001244 8B F0            [24] 2725 	mov	b,r3
      001246 12 16 09         [24] 2726 	lcall	__gptrget
      001249 F9               [12] 2727 	mov	r1,a
      00124A 89 F0            [24] 2728 	mov	b,r1
      00124C 05 F0            [12] 2729 	inc	b
      00124E 74 01            [12] 2730 	mov	a,#0x01
      001250 80 02            [24] 2731 	sjmp	00515$
      001252                       2732 00513$:
      001252 25 E0            [12] 2733 	add	a,acc
      001254                       2734 00515$:
      001254 D5 F0 FB         [24] 2735 	djnz	b,00513$
      001257 F9               [12] 2736 	mov	r1,a
      001258 74 02            [12] 2737 	mov	a,#0x02
      00125A 2C               [12] 2738 	add	a,r4
      00125B F8               [12] 2739 	mov	r0,a
      00125C E4               [12] 2740 	clr	a
      00125D 3D               [12] 2741 	addc	a,r5
      00125E FA               [12] 2742 	mov	r2,a
      00125F 8E 03            [24] 2743 	mov	ar3,r6
      001261 88 82            [24] 2744 	mov	dpl,r0
      001263 8A 83            [24] 2745 	mov	dph,r2
      001265 8B F0            [24] 2746 	mov	b,r3
      001267 12 16 09         [24] 2747 	lcall	__gptrget
      00126A 90 80 39         [24] 2748 	mov	dptr,#_write_register_byte_PARM_2
      00126D 49               [12] 2749 	orl	a,r1
      00126E F0               [24] 2750 	movx	@dptr,a
      00126F 75 82 04         [24] 2751 	mov	dpl,#0x04
      001272 C0 06            [24] 2752 	push	ar6
      001274 C0 05            [24] 2753 	push	ar5
      001276 C0 04            [24] 2754 	push	ar4
      001278 12 08 E0         [24] 2755 	lcall	_write_register_byte
      00127B D0 04            [24] 2756 	pop	ar4
      00127D D0 05            [24] 2757 	pop	ar5
      00127F D0 06            [24] 2758 	pop	ar6
                                   2759 ;	src/radio.c:466: flush_tx();
      001281 90 80 2F         [24] 2760 	mov	dptr,#_spi_write_PARM_2
      001284 E4               [12] 2761 	clr	a
      001285 F0               [24] 2762 	movx	@dptr,a
      001286 A3               [24] 2763 	inc	dptr
      001287 F0               [24] 2764 	movx	@dptr,a
      001288 A3               [24] 2765 	inc	dptr
      001289 F0               [24] 2766 	movx	@dptr,a
      00128A 90 80 32         [24] 2767 	mov	dptr,#_spi_write_PARM_3
      00128D F0               [24] 2768 	movx	@dptr,a
      00128E 75 82 E1         [24] 2769 	mov	dpl,#0xE1
      001291 C0 06            [24] 2770 	push	ar6
      001293 C0 05            [24] 2771 	push	ar5
      001295 C0 04            [24] 2772 	push	ar4
      001297 12 07 F3         [24] 2773 	lcall	_spi_write
      00129A D0 04            [24] 2774 	pop	ar4
      00129C D0 05            [24] 2775 	pop	ar5
      00129E D0 06            [24] 2776 	pop	ar6
                                   2777 ;	src/radio.c:467: flush_rx();
      0012A0 90 80 2F         [24] 2778 	mov	dptr,#_spi_write_PARM_2
      0012A3 E4               [12] 2779 	clr	a
      0012A4 F0               [24] 2780 	movx	@dptr,a
      0012A5 A3               [24] 2781 	inc	dptr
      0012A6 F0               [24] 2782 	movx	@dptr,a
      0012A7 A3               [24] 2783 	inc	dptr
      0012A8 F0               [24] 2784 	movx	@dptr,a
      0012A9 90 80 32         [24] 2785 	mov	dptr,#_spi_write_PARM_3
      0012AC F0               [24] 2786 	movx	@dptr,a
      0012AD 75 82 E2         [24] 2787 	mov	dpl,#0xE2
      0012B0 C0 06            [24] 2788 	push	ar6
      0012B2 C0 05            [24] 2789 	push	ar5
      0012B4 C0 04            [24] 2790 	push	ar4
      0012B6 12 07 F3         [24] 2791 	lcall	_spi_write
                                   2792 ;	src/radio.c:470: write_register_byte(STATUS, MAX_RT | TX_DS | RX_DR);
      0012B9 90 80 39         [24] 2793 	mov	dptr,#_write_register_byte_PARM_2
      0012BC 74 70            [12] 2794 	mov	a,#0x70
      0012BE F0               [24] 2795 	movx	@dptr,a
      0012BF 75 82 07         [24] 2796 	mov	dpl,#0x07
      0012C2 12 08 E0         [24] 2797 	lcall	_write_register_byte
                                   2798 ;	src/radio.c:473: write_register_byte(CONFIG, read_register_byte(CONFIG) & ~PRIM_RX);
      0012C5 75 82 00         [24] 2799 	mov	dpl,#0x00
      0012C8 12 09 02         [24] 2800 	lcall	_read_register_byte
      0012CB AB 82            [24] 2801 	mov	r3,dpl
      0012CD 90 80 39         [24] 2802 	mov	dptr,#_write_register_byte_PARM_2
      0012D0 74 FE            [12] 2803 	mov	a,#0xFE
      0012D2 5B               [12] 2804 	anl	a,r3
      0012D3 F0               [24] 2805 	movx	@dptr,a
      0012D4 75 82 00         [24] 2806 	mov	dpl,#0x00
      0012D7 12 08 E0         [24] 2807 	lcall	_write_register_byte
                                   2808 ;	src/radio.c:476: write_register_byte(EN_AA, ENAA_P0);
      0012DA 90 80 39         [24] 2809 	mov	dptr,#_write_register_byte_PARM_2
      0012DD 74 01            [12] 2810 	mov	a,#0x01
      0012DF F0               [24] 2811 	movx	@dptr,a
      0012E0 75 82 01         [24] 2812 	mov	dpl,#0x01
      0012E3 12 08 E0         [24] 2813 	lcall	_write_register_byte
      0012E6 D0 04            [24] 2814 	pop	ar4
      0012E8 D0 05            [24] 2815 	pop	ar5
      0012EA D0 06            [24] 2816 	pop	ar6
                                   2817 ;	src/radio.c:479: spi_write(W_TX_PAYLOAD, &data[3], data[0]);
      0012EC 74 03            [12] 2818 	mov	a,#0x03
      0012EE 2C               [12] 2819 	add	a,r4
      0012EF F9               [12] 2820 	mov	r1,a
      0012F0 E4               [12] 2821 	clr	a
      0012F1 3D               [12] 2822 	addc	a,r5
      0012F2 FA               [12] 2823 	mov	r2,a
      0012F3 8E 03            [24] 2824 	mov	ar3,r6
      0012F5 8C 82            [24] 2825 	mov	dpl,r4
      0012F7 8D 83            [24] 2826 	mov	dph,r5
      0012F9 8E F0            [24] 2827 	mov	b,r6
      0012FB 12 16 09         [24] 2828 	lcall	__gptrget
      0012FE FC               [12] 2829 	mov	r4,a
      0012FF 90 80 2F         [24] 2830 	mov	dptr,#_spi_write_PARM_2
      001302 E9               [12] 2831 	mov	a,r1
      001303 F0               [24] 2832 	movx	@dptr,a
      001304 EA               [12] 2833 	mov	a,r2
      001305 A3               [24] 2834 	inc	dptr
      001306 F0               [24] 2835 	movx	@dptr,a
      001307 EB               [12] 2836 	mov	a,r3
      001308 A3               [24] 2837 	inc	dptr
      001309 F0               [24] 2838 	movx	@dptr,a
      00130A 90 80 32         [24] 2839 	mov	dptr,#_spi_write_PARM_3
      00130D EC               [12] 2840 	mov	a,r4
      00130E F0               [24] 2841 	movx	@dptr,a
      00130F 75 82 A0         [24] 2842 	mov	dpl,#0xA0
      001312 12 07 F3         [24] 2843 	lcall	_spi_write
                                   2844 ;	src/radio.c:482: rfce = 1;
      001315 D2 90            [12] 2845 	setb	_rfce
                                   2846 ;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
      001317 7D 0A            [12] 2847 	mov	r5,#0x0A
      001319 7E 00            [12] 2848 	mov	r6,#0x00
      00131B                       2849 00216$:
      00131B 00               [12] 2850 	nop 
      00131C 00               [12] 2851 	nop 
      00131D 00               [12] 2852 	nop 
      00131E 00               [12] 2853 	nop 
      00131F 1D               [12] 2854 	dec	r5
      001320 BD FF 01         [24] 2855 	cjne	r5,#0xFF,00516$
      001323 1E               [12] 2856 	dec	r6
      001324                       2857 00516$:
      001324 ED               [12] 2858 	mov	a,r5
      001325 4E               [12] 2859 	orl	a,r6
      001326 70 F3            [24] 2860 	jnz	00216$
                                   2861 ;	src/radio.c:484: rfce = 0;
      001328 C2 90            [12] 2862 	clr	_rfce
                                   2863 ;	src/radio.c:487: while(true)
      00132A                       2864 00159$:
                                   2865 ;	src/radio.c:490: rfcsn = 0;
      00132A C2 91            [12] 2866 	clr	_rfcsn
                                   2867 ;	src/radio.c:491: RFDAT = _NOP;
      00132C 75 E5 FF         [24] 2868 	mov	_RFDAT,#0xFF
                                   2869 ;	src/radio.c:492: RFRDY = 0;
      00132F C2 C0            [12] 2870 	clr	_RFRDY
                                   2871 ;	src/radio.c:493: while(!RFRDY);
      001331                       2872 00151$:
      001331 30 C0 FD         [24] 2873 	jnb	_RFRDY,00151$
                                   2874 ;	src/radio.c:494: rfcsn = 1;
      001334 D2 91            [12] 2875 	setb	_rfcsn
                                   2876 ;	src/radio.c:497: if((RFDAT & 0x10) == 0x10)
      001336 74 10            [12] 2877 	mov	a,#0x10
      001338 55 E5            [12] 2878 	anl	a,_RFDAT
      00133A FE               [12] 2879 	mov	r6,a
      00133B BE 10 07         [24] 2880 	cjne	r6,#0x10,00155$
                                   2881 ;	src/radio.c:499: in1buf[0] = 0;
      00133E 90 C6 80         [24] 2882 	mov	dptr,#_in1buf
      001341 E4               [12] 2883 	clr	a
      001342 F0               [24] 2884 	movx	@dptr,a
                                   2885 ;	src/radio.c:500: break;
      001343 80 0E            [24] 2886 	sjmp	00160$
      001345                       2887 00155$:
                                   2888 ;	src/radio.c:504: if((RFDAT & 0x20) == 0x20)
      001345 74 20            [12] 2889 	mov	a,#0x20
      001347 55 E5            [12] 2890 	anl	a,_RFDAT
      001349 FE               [12] 2891 	mov	r6,a
      00134A BE 20 DD         [24] 2892 	cjne	r6,#0x20,00159$
                                   2893 ;	src/radio.c:506: in1buf[0] = 1;
      00134D 90 C6 80         [24] 2894 	mov	dptr,#_in1buf
      001350 74 01            [12] 2895 	mov	a,#0x01
      001352 F0               [24] 2896 	movx	@dptr,a
                                   2897 ;	src/radio.c:507: break;
      001353                       2898 00160$:
                                   2899 ;	src/radio.c:512: write_register_byte(EN_AA, ENAA_NONE);
      001353 90 80 39         [24] 2900 	mov	dptr,#_write_register_byte_PARM_2
      001356 E4               [12] 2901 	clr	a
      001357 F0               [24] 2902 	movx	@dptr,a
      001358 75 82 01         [24] 2903 	mov	dpl,#0x01
      00135B 12 08 E0         [24] 2904 	lcall	_write_register_byte
                                   2905 ;	src/radio.c:515: write_register_byte(CONFIG, read_register_byte(CONFIG) | PRIM_RX);
      00135E 75 82 00         [24] 2906 	mov	dpl,#0x00
      001361 12 09 02         [24] 2907 	lcall	_read_register_byte
      001364 E5 82            [12] 2908 	mov	a,dpl
      001366 90 80 39         [24] 2909 	mov	dptr,#_write_register_byte_PARM_2
      001369 44 01            [12] 2910 	orl	a,#0x01
      00136B F0               [24] 2911 	movx	@dptr,a
      00136C 75 82 00         [24] 2912 	mov	dpl,#0x00
      00136F 12 08 E0         [24] 2913 	lcall	_write_register_byte
                                   2914 ;	src/radio.c:518: rfce = 1;
      001372 D2 90            [12] 2915 	setb	_rfce
                                   2916 ;	src/radio.c:519: in1bc = 1;
      001374 90 C7 B7         [24] 2917 	mov	dptr,#0xC7B7
      001377 74 01            [12] 2918 	mov	a,#0x01
      001379 F0               [24] 2919 	movx	@dptr,a
      00137A 22               [24] 2920 	ret
      00137B                       2921 00180$:
                                   2922 ;	src/radio.c:523: else if(request == TRANSMIT_PAYLOAD_GENERIC)
      00137B BF 0C 02         [24] 2923 	cjne	r7,#0x0C,00523$
      00137E 80 01            [24] 2924 	sjmp	00524$
      001380                       2925 00523$:
      001380 22               [24] 2926 	ret
      001381                       2927 00524$:
                                   2928 ;	src/radio.c:525: uint8_t address_start = data[0] + data[1] + 2;
      001381 90 80 41         [24] 2929 	mov	dptr,#_handle_radio_request_PARM_2
      001384 E0               [24] 2930 	movx	a,@dptr
      001385 FD               [12] 2931 	mov	r5,a
      001386 A3               [24] 2932 	inc	dptr
      001387 E0               [24] 2933 	movx	a,@dptr
      001388 FE               [12] 2934 	mov	r6,a
      001389 A3               [24] 2935 	inc	dptr
      00138A E0               [24] 2936 	movx	a,@dptr
      00138B FF               [12] 2937 	mov	r7,a
      00138C 8D 82            [24] 2938 	mov	dpl,r5
      00138E 8E 83            [24] 2939 	mov	dph,r6
      001390 8F F0            [24] 2940 	mov	b,r7
      001392 12 16 09         [24] 2941 	lcall	__gptrget
      001395 FC               [12] 2942 	mov	r4,a
      001396 74 01            [12] 2943 	mov	a,#0x01
      001398 2D               [12] 2944 	add	a,r5
      001399 F5 1A            [12] 2945 	mov	_handle_radio_request_sloc1_1_0,a
      00139B E4               [12] 2946 	clr	a
      00139C 3E               [12] 2947 	addc	a,r6
      00139D F5 1B            [12] 2948 	mov	(_handle_radio_request_sloc1_1_0 + 1),a
      00139F 8F 1C            [24] 2949 	mov	(_handle_radio_request_sloc1_1_0 + 2),r7
      0013A1 85 1A 82         [24] 2950 	mov	dpl,_handle_radio_request_sloc1_1_0
      0013A4 85 1B 83         [24] 2951 	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
      0013A7 85 1C F0         [24] 2952 	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
      0013AA 12 16 09         [24] 2953 	lcall	__gptrget
      0013AD 2C               [12] 2954 	add	a,r4
      0013AE 24 02            [12] 2955 	add	a,#0x02
      0013B0 F8               [12] 2956 	mov	r0,a
                                   2957 ;	src/radio.c:528: if(data[0] > 32) data[0] = 32;
      0013B1 EC               [12] 2958 	mov	a,r4
      0013B2 24 DF            [12] 2959 	add	a,#0xff - 0x20
      0013B4 50 0B            [24] 2960 	jnc	00162$
      0013B6 8D 82            [24] 2961 	mov	dpl,r5
      0013B8 8E 83            [24] 2962 	mov	dph,r6
      0013BA 8F F0            [24] 2963 	mov	b,r7
      0013BC 74 20            [12] 2964 	mov	a,#0x20
      0013BE 12 15 D6         [24] 2965 	lcall	__gptrput
      0013C1                       2966 00162$:
                                   2967 ;	src/radio.c:529: if(data[0] < 1) data[0] = 1;
      0013C1 8D 82            [24] 2968 	mov	dpl,r5
      0013C3 8E 83            [24] 2969 	mov	dph,r6
      0013C5 8F F0            [24] 2970 	mov	b,r7
      0013C7 12 16 09         [24] 2971 	lcall	__gptrget
      0013CA FC               [12] 2972 	mov	r4,a
      0013CB BC 01 00         [24] 2973 	cjne	r4,#0x01,00526$
      0013CE                       2974 00526$:
      0013CE 50 0B            [24] 2975 	jnc	00164$
      0013D0 8D 82            [24] 2976 	mov	dpl,r5
      0013D2 8E 83            [24] 2977 	mov	dph,r6
      0013D4 8F F0            [24] 2978 	mov	b,r7
      0013D6 74 01            [12] 2979 	mov	a,#0x01
      0013D8 12 15 D6         [24] 2980 	lcall	__gptrput
      0013DB                       2981 00164$:
                                   2982 ;	src/radio.c:532: if(data[1] > 5) data[1] = 5;
      0013DB 85 1A 82         [24] 2983 	mov	dpl,_handle_radio_request_sloc1_1_0
      0013DE 85 1B 83         [24] 2984 	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
      0013E1 85 1C F0         [24] 2985 	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
      0013E4 12 16 09         [24] 2986 	lcall	__gptrget
      0013E7 FC               [12] 2987 	mov  r4,a
      0013E8 24 FA            [12] 2988 	add	a,#0xff - 0x05
      0013EA 50 0E            [24] 2989 	jnc	00166$
      0013EC 85 1A 82         [24] 2990 	mov	dpl,_handle_radio_request_sloc1_1_0
      0013EF 85 1B 83         [24] 2991 	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
      0013F2 85 1C F0         [24] 2992 	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
      0013F5 74 05            [12] 2993 	mov	a,#0x05
      0013F7 12 15 D6         [24] 2994 	lcall	__gptrput
      0013FA                       2995 00166$:
                                   2996 ;	src/radio.c:533: if(data[1] < 1) data[1] = 1;
      0013FA 85 1A 82         [24] 2997 	mov	dpl,_handle_radio_request_sloc1_1_0
      0013FD 85 1B 83         [24] 2998 	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
      001400 85 1C F0         [24] 2999 	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
      001403 12 16 09         [24] 3000 	lcall	__gptrget
      001406 FC               [12] 3001 	mov	r4,a
      001407 BC 01 00         [24] 3002 	cjne	r4,#0x01,00529$
      00140A                       3003 00529$:
      00140A 50 0E            [24] 3004 	jnc	00168$
      00140C 85 1A 82         [24] 3005 	mov	dpl,_handle_radio_request_sloc1_1_0
      00140F 85 1B 83         [24] 3006 	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
      001412 85 1C F0         [24] 3007 	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
      001415 74 01            [12] 3008 	mov	a,#0x01
      001417 12 15 D6         [24] 3009 	lcall	__gptrput
      00141A                       3010 00168$:
                                   3011 ;	src/radio.c:536: rfce = 0;
      00141A C2 90            [12] 3012 	clr	_rfce
                                   3013 ;	src/radio.c:539: flush_tx();
      00141C 90 80 2F         [24] 3014 	mov	dptr,#_spi_write_PARM_2
      00141F E4               [12] 3015 	clr	a
      001420 F0               [24] 3016 	movx	@dptr,a
      001421 A3               [24] 3017 	inc	dptr
      001422 F0               [24] 3018 	movx	@dptr,a
      001423 A3               [24] 3019 	inc	dptr
      001424 F0               [24] 3020 	movx	@dptr,a
      001425 90 80 32         [24] 3021 	mov	dptr,#_spi_write_PARM_3
      001428 F0               [24] 3022 	movx	@dptr,a
      001429 75 82 E1         [24] 3023 	mov	dpl,#0xE1
      00142C C0 07            [24] 3024 	push	ar7
      00142E C0 06            [24] 3025 	push	ar6
      001430 C0 05            [24] 3026 	push	ar5
      001432 C0 00            [24] 3027 	push	ar0
      001434 12 07 F3         [24] 3028 	lcall	_spi_write
      001437 D0 00            [24] 3029 	pop	ar0
      001439 D0 05            [24] 3030 	pop	ar5
      00143B D0 06            [24] 3031 	pop	ar6
      00143D D0 07            [24] 3032 	pop	ar7
                                   3033 ;	src/radio.c:540: flush_rx();
      00143F 90 80 2F         [24] 3034 	mov	dptr,#_spi_write_PARM_2
      001442 E4               [12] 3035 	clr	a
      001443 F0               [24] 3036 	movx	@dptr,a
      001444 A3               [24] 3037 	inc	dptr
      001445 F0               [24] 3038 	movx	@dptr,a
      001446 A3               [24] 3039 	inc	dptr
      001447 F0               [24] 3040 	movx	@dptr,a
      001448 90 80 32         [24] 3041 	mov	dptr,#_spi_write_PARM_3
      00144B F0               [24] 3042 	movx	@dptr,a
      00144C 75 82 E2         [24] 3043 	mov	dpl,#0xE2
      00144F C0 07            [24] 3044 	push	ar7
      001451 C0 06            [24] 3045 	push	ar6
      001453 C0 05            [24] 3046 	push	ar5
      001455 C0 00            [24] 3047 	push	ar0
      001457 12 07 F3         [24] 3048 	lcall	_spi_write
                                   3049 ;	src/radio.c:543: write_register_byte(STATUS, MAX_RT | TX_DS | RX_DR);
      00145A 90 80 39         [24] 3050 	mov	dptr,#_write_register_byte_PARM_2
      00145D 74 70            [12] 3051 	mov	a,#0x70
      00145F F0               [24] 3052 	movx	@dptr,a
      001460 75 82 07         [24] 3053 	mov	dpl,#0x07
      001463 12 08 E0         [24] 3054 	lcall	_write_register_byte
                                   3055 ;	src/radio.c:546: write_register_byte(CONFIG, read_register_byte(CONFIG) & ~PRIM_RX);
      001466 75 82 00         [24] 3056 	mov	dpl,#0x00
      001469 12 09 02         [24] 3057 	lcall	_read_register_byte
      00146C AC 82            [24] 3058 	mov	r4,dpl
      00146E 90 80 39         [24] 3059 	mov	dptr,#_write_register_byte_PARM_2
      001471 74 FE            [12] 3060 	mov	a,#0xFE
      001473 5C               [12] 3061 	anl	a,r4
      001474 F0               [24] 3062 	movx	@dptr,a
      001475 75 82 00         [24] 3063 	mov	dpl,#0x00
      001478 12 08 E0         [24] 3064 	lcall	_write_register_byte
      00147B D0 00            [24] 3065 	pop	ar0
      00147D D0 05            [24] 3066 	pop	ar5
      00147F D0 06            [24] 3067 	pop	ar6
      001481 D0 07            [24] 3068 	pop	ar7
                                   3069 ;	src/radio.c:549: configure_address(&data[address_start], data[1]);
      001483 E8               [12] 3070 	mov	a,r0
      001484 2D               [12] 3071 	add	a,r5
      001485 F8               [12] 3072 	mov	r0,a
      001486 E4               [12] 3073 	clr	a
      001487 3E               [12] 3074 	addc	a,r6
      001488 FB               [12] 3075 	mov	r3,a
      001489 8F 04            [24] 3076 	mov	ar4,r7
      00148B 85 1A 82         [24] 3077 	mov	dpl,_handle_radio_request_sloc1_1_0
      00148E 85 1B 83         [24] 3078 	mov	dph,(_handle_radio_request_sloc1_1_0 + 1)
      001491 85 1C F0         [24] 3079 	mov	b,(_handle_radio_request_sloc1_1_0 + 2)
      001494 12 16 09         [24] 3080 	lcall	__gptrget
      001497 90 80 24         [24] 3081 	mov	dptr,#_configure_address_PARM_2
      00149A F0               [24] 3082 	movx	@dptr,a
      00149B 88 82            [24] 3083 	mov	dpl,r0
      00149D 8B 83            [24] 3084 	mov	dph,r3
      00149F 8C F0            [24] 3085 	mov	b,r4
      0014A1 C0 07            [24] 3086 	push	ar7
      0014A3 C0 06            [24] 3087 	push	ar6
      0014A5 C0 05            [24] 3088 	push	ar5
      0014A7 12 07 10         [24] 3089 	lcall	_configure_address
      0014AA D0 05            [24] 3090 	pop	ar5
      0014AC D0 06            [24] 3091 	pop	ar6
      0014AE D0 07            [24] 3092 	pop	ar7
                                   3093 ;	src/radio.c:552: spi_write(W_TX_PAYLOAD, &data[2], data[0]);
      0014B0 74 02            [12] 3094 	mov	a,#0x02
      0014B2 2D               [12] 3095 	add	a,r5
      0014B3 FA               [12] 3096 	mov	r2,a
      0014B4 E4               [12] 3097 	clr	a
      0014B5 3E               [12] 3098 	addc	a,r6
      0014B6 FB               [12] 3099 	mov	r3,a
      0014B7 8F 04            [24] 3100 	mov	ar4,r7
      0014B9 8D 82            [24] 3101 	mov	dpl,r5
      0014BB 8E 83            [24] 3102 	mov	dph,r6
      0014BD 8F F0            [24] 3103 	mov	b,r7
      0014BF 12 16 09         [24] 3104 	lcall	__gptrget
      0014C2 FD               [12] 3105 	mov	r5,a
      0014C3 90 80 2F         [24] 3106 	mov	dptr,#_spi_write_PARM_2
      0014C6 EA               [12] 3107 	mov	a,r2
      0014C7 F0               [24] 3108 	movx	@dptr,a
      0014C8 EB               [12] 3109 	mov	a,r3
      0014C9 A3               [24] 3110 	inc	dptr
      0014CA F0               [24] 3111 	movx	@dptr,a
      0014CB EC               [12] 3112 	mov	a,r4
      0014CC A3               [24] 3113 	inc	dptr
      0014CD F0               [24] 3114 	movx	@dptr,a
      0014CE 90 80 32         [24] 3115 	mov	dptr,#_spi_write_PARM_3
      0014D1 ED               [12] 3116 	mov	a,r5
      0014D2 F0               [24] 3117 	movx	@dptr,a
      0014D3 75 82 A0         [24] 3118 	mov	dpl,#0xA0
      0014D6 12 07 F3         [24] 3119 	lcall	_spi_write
                                   3120 ;	src/radio.c:555: rfce = 1;
      0014D9 D2 90            [12] 3121 	setb	_rfce
                                   3122 ;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
      0014DB 7E 0A            [12] 3123 	mov	r6,#0x0A
      0014DD 7F 00            [12] 3124 	mov	r7,#0x00
      0014DF                       3125 00220$:
      0014DF 00               [12] 3126 	nop 
      0014E0 00               [12] 3127 	nop 
      0014E1 00               [12] 3128 	nop 
      0014E2 00               [12] 3129 	nop 
      0014E3 1E               [12] 3130 	dec	r6
      0014E4 BE FF 01         [24] 3131 	cjne	r6,#0xFF,00531$
      0014E7 1F               [12] 3132 	dec	r7
      0014E8                       3133 00531$:
      0014E8 EE               [12] 3134 	mov	a,r6
      0014E9 4F               [12] 3135 	orl	a,r7
      0014EA 70 F3            [24] 3136 	jnz	00220$
                                   3137 ;	src/radio.c:557: rfce = 0;
      0014EC C2 90            [12] 3138 	clr	_rfce
                                   3139 ;	src/radio.c:560: while(true)
      0014EE                       3140 00175$:
                                   3141 ;	src/radio.c:563: rfcsn = 0;
      0014EE C2 91            [12] 3142 	clr	_rfcsn
                                   3143 ;	src/radio.c:564: RFDAT = _NOP;
      0014F0 75 E5 FF         [24] 3144 	mov	_RFDAT,#0xFF
                                   3145 ;	src/radio.c:565: RFRDY = 0;
      0014F3 C2 C0            [12] 3146 	clr	_RFRDY
                                   3147 ;	src/radio.c:566: while(!RFRDY);
      0014F5                       3148 00169$:
      0014F5 30 C0 FD         [24] 3149 	jnb	_RFRDY,00169$
                                   3150 ;	src/radio.c:567: rfcsn = 1;
      0014F8 D2 91            [12] 3151 	setb	_rfcsn
                                   3152 ;	src/radio.c:570: if((RFDAT & TX_DS) == TX_DS)
      0014FA 74 20            [12] 3153 	mov	a,#0x20
      0014FC 55 E5            [12] 3154 	anl	a,_RFDAT
      0014FE FF               [12] 3155 	mov	r7,a
      0014FF BF 20 EC         [24] 3156 	cjne	r7,#0x20,00175$
                                   3157 ;	src/radio.c:572: in1buf[0] = 1;
      001502 90 C6 80         [24] 3158 	mov	dptr,#_in1buf
      001505 74 01            [12] 3159 	mov	a,#0x01
      001507 F0               [24] 3160 	movx	@dptr,a
                                   3161 ;	src/radio.c:578: write_register_byte(CONFIG, read_register_byte(CONFIG) | PRIM_RX);
      001508 75 82 00         [24] 3162 	mov	dpl,#0x00
      00150B 12 09 02         [24] 3163 	lcall	_read_register_byte
      00150E E5 82            [12] 3164 	mov	a,dpl
      001510 90 80 39         [24] 3165 	mov	dptr,#_write_register_byte_PARM_2
      001513 44 01            [12] 3166 	orl	a,#0x01
      001515 F0               [24] 3167 	movx	@dptr,a
      001516 75 82 00         [24] 3168 	mov	dpl,#0x00
      001519 12 08 E0         [24] 3169 	lcall	_write_register_byte
                                   3170 ;	src/radio.c:579: configure_address(pm_prefix, pm_prefix_length);
      00151C 90 80 0E         [24] 3171 	mov	dptr,#_pm_prefix_length
      00151F E0               [24] 3172 	movx	a,@dptr
      001520 FE               [12] 3173 	mov	r6,a
      001521 A3               [24] 3174 	inc	dptr
      001522 E0               [24] 3175 	movx	a,@dptr
      001523 90 80 24         [24] 3176 	mov	dptr,#_configure_address_PARM_2
      001526 EE               [12] 3177 	mov	a,r6
      001527 F0               [24] 3178 	movx	@dptr,a
      001528 90 80 10         [24] 3179 	mov	dptr,#_pm_prefix
      00152B 75 F0 00         [24] 3180 	mov	b,#0x00
      00152E 12 07 10         [24] 3181 	lcall	_configure_address
                                   3182 ;	src/radio.c:582: rfce = 1;
      001531 D2 90            [12] 3183 	setb	_rfce
                                   3184 ;	src/radio.c:583: in1bc = 1;
      001533 90 C7 B7         [24] 3185 	mov	dptr,#0xC7B7
      001536 74 01            [12] 3186 	mov	a,#0x01
      001538 F0               [24] 3187 	movx	@dptr,a
      001539 22               [24] 3188 	ret
                                   3189 	.area CSEG    (CODE)
                                   3190 	.area CONST   (CODE)
                                   3191 	.area XINIT   (CODE)
      00168A                       3192 __xinit__nordic_bootloader:
      00168A 00 78                 3193 	.byte #0x00,#0x78
      00168C                       3194 __xinit__logitech_bootloader:
      00168C 00 74                 3195 	.byte #0x00,#0x74
      00168E                       3196 __xinit__promiscuous_address:
      00168E AA                    3197 	.db #0xAA	; 170
      00168F 00                    3198 	.db #0x00	; 0
                                   3199 	.area CABS    (ABS,CODE)
