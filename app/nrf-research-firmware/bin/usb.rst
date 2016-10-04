                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Jul  5 2014) (Linux)
                                      4 ; This file was generated Mon Sep 19 15:43:07 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module usb
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _write_descriptor
                                     13 	.globl _write_device_string
                                     14 	.globl _handle_radio_request
                                     15 	.globl _strlen
                                     16 	.globl _memset
                                     17 	.globl _memcpy
                                     18 	.globl _RFRDY
                                     19 	.globl _rfcsn
                                     20 	.globl _rfce
                                     21 	.globl _ien1
                                     22 	.globl _ien0
                                     23 	.globl _REGXC
                                     24 	.globl _REGXL
                                     25 	.globl _REGXH
                                     26 	.globl _TICKDV
                                     27 	.globl _RFDAT
                                     28 	.globl _P0DIR
                                     29 	.globl _P0
                                     30 	.globl _AESIA1
                                     31 	.globl _AESIV
                                     32 	.globl _usbcon
                                     33 	.globl _rfcon
                                     34 	.globl _rfctl
                                     35 	.globl _request
                                     36 	.globl _setupbuf
                                     37 	.globl _out1buf
                                     38 	.globl _in1buf
                                     39 	.globl _in0buf
                                     40 	.globl _init_usb
                                     41 	.globl _usb_reset_config
                                     42 	.globl _usb_irq
                                     43 	.globl _handle_setup_request
                                     44 ;--------------------------------------------------------
                                     45 ; special function registers
                                     46 ;--------------------------------------------------------
                                     47 	.area RSEG    (ABS,DATA)
      000000                         48 	.org 0x0000
                           0000E6    49 _rfctl	=	0x00e6
                           000090    50 _rfcon	=	0x0090
                           0000A0    51 _usbcon	=	0x00a0
                           0000F2    52 _AESIV	=	0x00f2
                           0000F5    53 _AESIA1	=	0x00f5
                           000080    54 _P0	=	0x0080
                           000094    55 _P0DIR	=	0x0094
                           0000E5    56 _RFDAT	=	0x00e5
                           0000AB    57 _TICKDV	=	0x00ab
                           0000AB    58 _REGXH	=	0x00ab
                           0000AC    59 _REGXL	=	0x00ac
                           0000AD    60 _REGXC	=	0x00ad
                           0000A8    61 _ien0	=	0x00a8
                           0000B8    62 _ien1	=	0x00b8
                                     63 ;--------------------------------------------------------
                                     64 ; special function bits
                                     65 ;--------------------------------------------------------
                                     66 	.area RSEG    (ABS,DATA)
      000000                         67 	.org 0x0000
                           000090    68 _rfce	=	0x0090
                           000091    69 _rfcsn	=	0x0091
                           0000C0    70 _RFRDY	=	0x00c0
                                     71 ;--------------------------------------------------------
                                     72 ; overlayable register banks
                                     73 ;--------------------------------------------------------
                                     74 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         75 	.ds 8
                                     76 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                         77 	.ds 8
                                     78 ;--------------------------------------------------------
                                     79 ; overlayable bit register bank
                                     80 ;--------------------------------------------------------
                                     81 	.area BIT_BANK	(REL,OVR,DATA)
      000021                         82 bits:
      000021                         83 	.ds 1
                           008000    84 	b0 = bits[0]
                           008100    85 	b1 = bits[1]
                           008200    86 	b2 = bits[2]
                           008300    87 	b3 = bits[3]
                           008400    88 	b4 = bits[4]
                           008500    89 	b5 = bits[5]
                           008600    90 	b6 = bits[6]
                           008700    91 	b7 = bits[7]
                                     92 ;--------------------------------------------------------
                                     93 ; internal ram data
                                     94 ;--------------------------------------------------------
                                     95 	.area DSEG    (DATA)
      000010                         96 _write_device_string_sloc0_1_0:
      000010                         97 	.ds 2
                                     98 ;--------------------------------------------------------
                                     99 ; overlayable items in internal ram 
                                    100 ;--------------------------------------------------------
                                    101 ;--------------------------------------------------------
                                    102 ; indirectly addressable internal ram data
                                    103 ;--------------------------------------------------------
                                    104 	.area ISEG    (DATA)
                                    105 ;--------------------------------------------------------
                                    106 ; absolute internal ram data
                                    107 ;--------------------------------------------------------
                                    108 	.area IABS    (ABS,DATA)
                                    109 	.area IABS    (ABS,DATA)
                                    110 ;--------------------------------------------------------
                                    111 ; bit data
                                    112 ;--------------------------------------------------------
                                    113 	.area BSEG    (BIT)
      000001                        114 _configured:
      000001                        115 	.ds 1
      000002                        116 _handle_setup_request_handled_1_67:
      000002                        117 	.ds 1
                                    118 ;--------------------------------------------------------
                                    119 ; paged external ram data
                                    120 ;--------------------------------------------------------
                                    121 	.area PSEG    (PAG,XDATA)
                                    122 ;--------------------------------------------------------
                                    123 ; external ram data
                                    124 ;--------------------------------------------------------
                                    125 	.area XSEG    (XDATA)
                           00C700   126 _in0buf	=	0xc700
                           00C680   127 _in1buf	=	0xc680
                           00C640   128 _out1buf	=	0xc640
                           00C7E8   129 _setupbuf	=	0xc7e8
      008009                        130 _write_device_string_string_1_63:
      008009                        131 	.ds 3
      00800C                        132 _write_descriptor_desc_len_1_65:
      00800C                        133 	.ds 1
                                    134 ;--------------------------------------------------------
                                    135 ; absolute external ram data
                                    136 ;--------------------------------------------------------
                                    137 	.area XABS    (ABS,XDATA)
                                    138 ;--------------------------------------------------------
                                    139 ; external initialized ram data
                                    140 ;--------------------------------------------------------
                                    141 	.area XISEG   (XDATA)
      0080AF                        142 _nordic_bootloader:
      0080AF                        143 	.ds 2
      0080B1                        144 _logitech_bootloader:
      0080B1                        145 	.ds 2
      0080B3                        146 _request::
      0080B3                        147 	.ds 2
                                    148 	.area HOME    (CODE)
                                    149 	.area GSINIT0 (CODE)
                                    150 	.area GSINIT1 (CODE)
                                    151 	.area GSINIT2 (CODE)
                                    152 	.area GSINIT3 (CODE)
                                    153 	.area GSINIT4 (CODE)
                                    154 	.area GSINIT5 (CODE)
                                    155 	.area GSINIT  (CODE)
                                    156 	.area GSFINAL (CODE)
                                    157 	.area CSEG    (CODE)
                                    158 ;--------------------------------------------------------
                                    159 ; global & static initialisations
                                    160 ;--------------------------------------------------------
                                    161 	.area HOME    (CODE)
                                    162 	.area GSINIT  (CODE)
                                    163 	.area GSFINAL (CODE)
                                    164 	.area GSINIT  (CODE)
                                    165 ;--------------------------------------------------------
                                    166 ; Home
                                    167 ;--------------------------------------------------------
                                    168 	.area HOME    (CODE)
                                    169 	.area HOME    (CODE)
                                    170 ;--------------------------------------------------------
                                    171 ; code
                                    172 ;--------------------------------------------------------
                                    173 	.area CSEG    (CODE)
                                    174 ;------------------------------------------------------------
                                    175 ;Allocation info for local variables in function 'init_usb'
                                    176 ;------------------------------------------------------------
                                    177 ;ms_elapsed                Allocated with name '_init_usb_ms_elapsed_1_56'
                                    178 ;__00020005                Allocated with name '_init_usb___00020005_3_58'
                                    179 ;us                        Allocated with name '_init_usb_us_3_58'
                                    180 ;------------------------------------------------------------
                                    181 ;	src/usb.c:29: bool init_usb() 
                                    182 ;	-----------------------------------------
                                    183 ;	 function init_usb
                                    184 ;	-----------------------------------------
      000118                        185 _init_usb:
                           000007   186 	ar7 = 0x07
                           000006   187 	ar6 = 0x06
                           000005   188 	ar5 = 0x05
                           000004   189 	ar4 = 0x04
                           000003   190 	ar3 = 0x03
                           000002   191 	ar2 = 0x02
                           000001   192 	ar1 = 0x01
                           000000   193 	ar0 = 0x00
                                    194 ;	src/usb.c:32: configured = false;
      000118 C2 01            [12]  195 	clr	_configured
                                    196 ;	src/usb.c:35: usbcon = 0x40; 
      00011A 75 A0 40         [24]  197 	mov	_usbcon,#0x40
                                    198 ;	src/usb.c:38: usbcs |= 0x08;
      00011D 90 C7 D6         [24]  199 	mov	dptr,#0xC7D6
      000120 E0               [24]  200 	movx	a,@dptr
      000121 44 08            [12]  201 	orl	a,#0x08
      000123 F0               [24]  202 	movx	@dptr,a
                                    203 ;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
      000124 7E 50            [12]  204 	mov	r6,#0x50
      000126 7F C3            [12]  205 	mov	r7,#0xC3
      000128                        206 00104$:
      000128 00               [12]  207 	nop 
      000129 00               [12]  208 	nop 
      00012A 00               [12]  209 	nop 
      00012B 00               [12]  210 	nop 
      00012C 1E               [12]  211 	dec	r6
      00012D BE FF 01         [24]  212 	cjne	r6,#0xFF,00123$
      000130 1F               [12]  213 	dec	r7
      000131                        214 00123$:
      000131 EE               [12]  215 	mov	a,r6
      000132 4F               [12]  216 	orl	a,r7
      000133 70 F3            [24]  217 	jnz	00104$
                                    218 ;	src/usb.c:40: usbcs &= ~0x08;
      000135 90 C7 D6         [24]  219 	mov	dptr,#0xC7D6
      000138 E0               [24]  220 	movx	a,@dptr
      000139 54 F7            [12]  221 	anl	a,#0xF7
      00013B F0               [24]  222 	movx	@dptr,a
                                    223 ;	src/usb.c:43: usb_reset_config();
      00013C 12 01 44         [24]  224 	lcall	_usb_reset_config
                                    225 ;	src/usb.c:46: while(!configured);
      00013F                        226 00101$:
      00013F 30 01 FD         [24]  227 	jnb	_configured,00101$
                                    228 ;	src/usb.c:49: return true;
      000142 D3               [12]  229 	setb	c
      000143 22               [24]  230 	ret
                                    231 ;------------------------------------------------------------
                                    232 ;Allocation info for local variables in function 'usb_reset_config'
                                    233 ;------------------------------------------------------------
                                    234 ;	src/usb.c:53: void usb_reset_config()
                                    235 ;	-----------------------------------------
                                    236 ;	 function usb_reset_config
                                    237 ;	-----------------------------------------
      000144                        238 _usb_reset_config:
                                    239 ;	src/usb.c:56: usbien = 0x11;  // USB reset and setup data valid
      000144 90 C7 AE         [24]  240 	mov	dptr,#0xC7AE
      000147 74 11            [12]  241 	mov	a,#0x11
      000149 F0               [24]  242 	movx	@dptr,a
                                    243 ;	src/usb.c:57: in_ien = 0x00;  // Disable EP IN interrupts
      00014A 90 C7 AC         [24]  244 	mov	dptr,#0xC7AC
      00014D E4               [12]  245 	clr	a
      00014E F0               [24]  246 	movx	@dptr,a
                                    247 ;	src/usb.c:58: out_ien = 0x02; // Enable EP1 OUT interrupt
      00014F 90 C7 AD         [24]  248 	mov	dptr,#0xC7AD
      000152 74 02            [12]  249 	mov	a,#0x02
      000154 F0               [24]  250 	movx	@dptr,a
                                    251 ;	src/usb.c:59: ien1 = 0x10;    // Enable USB interrupt
      000155 75 B8 10         [24]  252 	mov	_ien1,#0x10
                                    253 ;	src/usb.c:60: in_irq = 0x1F;  // Clear IN IRQ flags
      000158 90 C7 A9         [24]  254 	mov	dptr,#0xC7A9
      00015B 74 1F            [12]  255 	mov	a,#0x1F
      00015D F0               [24]  256 	movx	@dptr,a
                                    257 ;	src/usb.c:61: out_irq = 0x1F; // Clear OUT IRQ flags
      00015E 90 C7 AA         [24]  258 	mov	dptr,#0xC7AA
      000161 F0               [24]  259 	movx	@dptr,a
                                    260 ;	src/usb.c:64: inbulkval = 0x02;
      000162 90 C7 DE         [24]  261 	mov	dptr,#0xC7DE
      000165 74 02            [12]  262 	mov	a,#0x02
      000167 F0               [24]  263 	movx	@dptr,a
                                    264 ;	src/usb.c:65: outbulkval = 0x02;
      000168 90 C7 DF         [24]  265 	mov	dptr,#0xC7DF
      00016B F0               [24]  266 	movx	@dptr,a
                                    267 ;	src/usb.c:66: inisoval = 0x00;
      00016C 90 C7 E0         [24]  268 	mov	dptr,#0xC7E0
      00016F E4               [12]  269 	clr	a
      000170 F0               [24]  270 	movx	@dptr,a
                                    271 ;	src/usb.c:67: outisoval = 0x00;  
      000171 90 C7 E1         [24]  272 	mov	dptr,#0xC7E1
      000174 F0               [24]  273 	movx	@dptr,a
                                    274 ;	src/usb.c:70: bout1addr = 32;
      000175 90 C7 81         [24]  275 	mov	dptr,#0xC781
      000178 74 20            [12]  276 	mov	a,#0x20
      00017A F0               [24]  277 	movx	@dptr,a
                                    278 ;	src/usb.c:71: bout2addr = 64;
      00017B 90 C7 82         [24]  279 	mov	dptr,#0xC782
      00017E 23               [12]  280 	rl	a
      00017F F0               [24]  281 	movx	@dptr,a
                                    282 ;	src/usb.c:72: binstaddr = 16;
      000180 90 C7 88         [24]  283 	mov	dptr,#0xC788
      000183 74 10            [12]  284 	mov	a,#0x10
      000185 F0               [24]  285 	movx	@dptr,a
                                    286 ;	src/usb.c:73: bin1addr  = 32;
      000186 90 C7 89         [24]  287 	mov	dptr,#0xC789
      000189 23               [12]  288 	rl	a
      00018A F0               [24]  289 	movx	@dptr,a
                                    290 ;	src/usb.c:74: bin2addr  = 64;
      00018B 90 C7 8A         [24]  291 	mov	dptr,#0xC78A
      00018E 23               [12]  292 	rl	a
      00018F F0               [24]  293 	movx	@dptr,a
                                    294 ;	src/usb.c:75: out1bc    = 0xFF;
      000190 90 C7 C7         [24]  295 	mov	dptr,#0xC7C7
      000193 74 FF            [12]  296 	mov	a,#0xFF
      000195 F0               [24]  297 	movx	@dptr,a
      000196 22               [24]  298 	ret
                                    299 ;------------------------------------------------------------
                                    300 ;Allocation info for local variables in function 'usb_irq'
                                    301 ;------------------------------------------------------------
                                    302 ;	src/usb.c:79: void usb_irq() __interrupt(12)  __using(1)
                                    303 ;	-----------------------------------------
                                    304 ;	 function usb_irq
                                    305 ;	-----------------------------------------
      000197                        306 _usb_irq:
                           00000F   307 	ar7 = 0x0F
                           00000E   308 	ar6 = 0x0E
                           00000D   309 	ar5 = 0x0D
                           00000C   310 	ar4 = 0x0C
                           00000B   311 	ar3 = 0x0B
                           00000A   312 	ar2 = 0x0A
                           000009   313 	ar1 = 0x09
                           000008   314 	ar0 = 0x08
      000197 C0 21            [24]  315 	push	bits
      000199 C0 E0            [24]  316 	push	acc
      00019B C0 F0            [24]  317 	push	b
      00019D C0 82            [24]  318 	push	dpl
      00019F C0 83            [24]  319 	push	dph
      0001A1 C0 07            [24]  320 	push	(0+7)
      0001A3 C0 06            [24]  321 	push	(0+6)
      0001A5 C0 05            [24]  322 	push	(0+5)
      0001A7 C0 04            [24]  323 	push	(0+4)
      0001A9 C0 03            [24]  324 	push	(0+3)
      0001AB C0 02            [24]  325 	push	(0+2)
      0001AD C0 01            [24]  326 	push	(0+1)
      0001AF C0 00            [24]  327 	push	(0+0)
      0001B1 C0 D0            [24]  328 	push	psw
      0001B3 75 D0 08         [24]  329 	mov	psw,#0x08
                                    330 ;	src/usb.c:83: switch (ivec) 
      0001B6 90 C7 A8         [24]  331 	mov	dptr,#0xC7A8
      0001B9 E0               [24]  332 	movx	a,@dptr
      0001BA FF               [12]  333 	mov	r7,a
      0001BB 60 0A            [24]  334 	jz	00101$
      0001BD BF 10 02         [24]  335 	cjne	r7,#0x10,00117$
      0001C0 80 16            [24]  336 	sjmp	00102$
      0001C2                        337 00117$:
                                    338 ;	src/usb.c:86: case 0x00:
      0001C2 BF 24 4D         [24]  339 	cjne	r7,#0x24,00105$
      0001C5 80 22            [24]  340 	sjmp	00103$
      0001C7                        341 00101$:
                                    342 ;	src/usb.c:87: handle_setup_request();
      0001C7 75 D0 00         [24]  343 	mov	psw,#0x00
      0001CA 12 03 DC         [24]  344 	lcall	_handle_setup_request
      0001CD 75 D0 08         [24]  345 	mov	psw,#0x08
                                    346 ;	src/usb.c:88: usbirq = 0x01;
      0001D0 90 C7 AB         [24]  347 	mov	dptr,#0xC7AB
      0001D3 74 01            [12]  348 	mov	a,#0x01
      0001D5 F0               [24]  349 	movx	@dptr,a
                                    350 ;	src/usb.c:89: break;
                                    351 ;	src/usb.c:92: case 0x10:
      0001D6 80 3A            [24]  352 	sjmp	00105$
      0001D8                        353 00102$:
                                    354 ;	src/usb.c:93: usb_reset_config();
      0001D8 75 D0 00         [24]  355 	mov	psw,#0x00
      0001DB 12 01 44         [24]  356 	lcall	_usb_reset_config
      0001DE 75 D0 08         [24]  357 	mov	psw,#0x08
                                    358 ;	src/usb.c:94: usbirq = 0x10;
      0001E1 90 C7 AB         [24]  359 	mov	dptr,#0xC7AB
      0001E4 74 10            [12]  360 	mov	a,#0x10
      0001E6 F0               [24]  361 	movx	@dptr,a
                                    362 ;	src/usb.c:95: break;
                                    363 ;	src/usb.c:98: case 0x24:
      0001E7 80 29            [24]  364 	sjmp	00105$
      0001E9                        365 00103$:
                                    366 ;	src/usb.c:99: handle_radio_request(out1buf[0], &out1buf[1]);
      0001E9 90 C6 40         [24]  367 	mov	dptr,#_out1buf
      0001EC E0               [24]  368 	movx	a,@dptr
      0001ED FF               [12]  369 	mov	r7,a
      0001EE 90 80 41         [24]  370 	mov	dptr,#_handle_radio_request_PARM_2
      0001F1 74 41            [12]  371 	mov	a,#(_out1buf + 0x0001)
      0001F3 F0               [24]  372 	movx	@dptr,a
      0001F4 74 C6            [12]  373 	mov	a,#((_out1buf + 0x0001) >> 8)
      0001F6 A3               [24]  374 	inc	dptr
      0001F7 F0               [24]  375 	movx	@dptr,a
      0001F8 E4               [12]  376 	clr	a
      0001F9 A3               [24]  377 	inc	dptr
      0001FA F0               [24]  378 	movx	@dptr,a
      0001FB 8F 82            [24]  379 	mov	dpl,r7
      0001FD 75 D0 00         [24]  380 	mov	psw,#0x00
      000200 12 09 9F         [24]  381 	lcall	_handle_radio_request
      000203 75 D0 08         [24]  382 	mov	psw,#0x08
                                    383 ;	src/usb.c:100: out_irq = 0x02;
      000206 90 C7 AA         [24]  384 	mov	dptr,#0xC7AA
      000209 74 02            [12]  385 	mov	a,#0x02
      00020B F0               [24]  386 	movx	@dptr,a
                                    387 ;	src/usb.c:101: out1bc = 0xFF;
      00020C 90 C7 C7         [24]  388 	mov	dptr,#0xC7C7
      00020F 74 FF            [12]  389 	mov	a,#0xFF
      000211 F0               [24]  390 	movx	@dptr,a
                                    391 ;	src/usb.c:103: }
      000212                        392 00105$:
      000212 D0 D0            [24]  393 	pop	psw
      000214 D0 00            [24]  394 	pop	(0+0)
      000216 D0 01            [24]  395 	pop	(0+1)
      000218 D0 02            [24]  396 	pop	(0+2)
      00021A D0 03            [24]  397 	pop	(0+3)
      00021C D0 04            [24]  398 	pop	(0+4)
      00021E D0 05            [24]  399 	pop	(0+5)
      000220 D0 06            [24]  400 	pop	(0+6)
      000222 D0 07            [24]  401 	pop	(0+7)
      000224 D0 83            [24]  402 	pop	dph
      000226 D0 82            [24]  403 	pop	dpl
      000228 D0 F0            [24]  404 	pop	b
      00022A D0 E0            [24]  405 	pop	acc
      00022C D0 21            [24]  406 	pop	bits
      00022E 32               [24]  407 	reti
                                    408 ;------------------------------------------------------------
                                    409 ;Allocation info for local variables in function 'write_device_string'
                                    410 ;------------------------------------------------------------
                                    411 ;sloc0                     Allocated with name '_write_device_string_sloc0_1_0'
                                    412 ;string                    Allocated with name '_write_device_string_string_1_63'
                                    413 ;x                         Allocated with name '_write_device_string_x_1_64'
                                    414 ;length                    Allocated with name '_write_device_string_length_1_64'
                                    415 ;------------------------------------------------------------
                                    416 ;	src/usb.c:107: void write_device_string(const char * string)
                                    417 ;	-----------------------------------------
                                    418 ;	 function write_device_string
                                    419 ;	-----------------------------------------
      00022F                        420 _write_device_string:
                           000007   421 	ar7 = 0x07
                           000006   422 	ar6 = 0x06
                           000005   423 	ar5 = 0x05
                           000004   424 	ar4 = 0x04
                           000003   425 	ar3 = 0x03
                           000002   426 	ar2 = 0x02
                           000001   427 	ar1 = 0x01
                           000000   428 	ar0 = 0x00
      00022F AF F0            [24]  429 	mov	r7,b
      000231 AE 83            [24]  430 	mov	r6,dph
      000233 E5 82            [12]  431 	mov	a,dpl
      000235 90 80 09         [24]  432 	mov	dptr,#_write_device_string_string_1_63
      000238 F0               [24]  433 	movx	@dptr,a
      000239 EE               [12]  434 	mov	a,r6
      00023A A3               [24]  435 	inc	dptr
      00023B F0               [24]  436 	movx	@dptr,a
      00023C EF               [12]  437 	mov	a,r7
      00023D A3               [24]  438 	inc	dptr
      00023E F0               [24]  439 	movx	@dptr,a
                                    440 ;	src/usb.c:110: int length = strlen(string);
      00023F 90 80 09         [24]  441 	mov	dptr,#_write_device_string_string_1_63
      000242 E0               [24]  442 	movx	a,@dptr
      000243 FD               [12]  443 	mov	r5,a
      000244 A3               [24]  444 	inc	dptr
      000245 E0               [24]  445 	movx	a,@dptr
      000246 FE               [12]  446 	mov	r6,a
      000247 A3               [24]  447 	inc	dptr
      000248 E0               [24]  448 	movx	a,@dptr
      000249 FF               [12]  449 	mov	r7,a
      00024A 8D 82            [24]  450 	mov	dpl,r5
      00024C 8E 83            [24]  451 	mov	dph,r6
      00024E 8F F0            [24]  452 	mov	b,r7
      000250 12 15 F1         [24]  453 	lcall	_strlen
      000253 AE 82            [24]  454 	mov	r6,dpl
      000255 AF 83            [24]  455 	mov	r7,dph
                                    456 ;	src/usb.c:111: memset(in0buf+2, 0, 64);
      000257 90 80 9D         [24]  457 	mov	dptr,#_memset_PARM_2
      00025A E4               [12]  458 	clr	a
      00025B F0               [24]  459 	movx	@dptr,a
      00025C 90 80 9E         [24]  460 	mov	dptr,#_memset_PARM_3
      00025F 74 40            [12]  461 	mov	a,#0x40
      000261 F0               [24]  462 	movx	@dptr,a
      000262 E4               [12]  463 	clr	a
      000263 A3               [24]  464 	inc	dptr
      000264 F0               [24]  465 	movx	@dptr,a
      000265 90 C7 02         [24]  466 	mov	dptr,#(_in0buf + 0x0002)
      000268 75 F0 00         [24]  467 	mov	b,#0x00
      00026B C0 07            [24]  468 	push	ar7
      00026D C0 06            [24]  469 	push	ar6
      00026F 12 15 3A         [24]  470 	lcall	_memset
      000272 D0 06            [24]  471 	pop	ar6
      000274 D0 07            [24]  472 	pop	ar7
                                    473 ;	src/usb.c:112: in0buf[0] = 2+length*2;
      000276 8E 04            [24]  474 	mov	ar4,r6
      000278 8F 05            [24]  475 	mov	ar5,r7
      00027A EC               [12]  476 	mov	a,r4
      00027B 2C               [12]  477 	add	a,r4
      00027C FC               [12]  478 	mov	r4,a
      00027D 0C               [12]  479 	inc	r4
      00027E 0C               [12]  480 	inc	r4
      00027F 90 C7 00         [24]  481 	mov	dptr,#_in0buf
      000282 EC               [12]  482 	mov	a,r4
      000283 F0               [24]  483 	movx	@dptr,a
                                    484 ;	src/usb.c:113: in0buf[1] = STRING_DESCRIPTOR;
      000284 90 C7 01         [24]  485 	mov	dptr,#(_in0buf + 0x0001)
      000287 74 03            [12]  486 	mov	a,#0x03
      000289 F0               [24]  487 	movx	@dptr,a
                                    488 ;	src/usb.c:114: for(x = 0; x < length; x++) in0buf[2+x*2] = string[x];
      00028A 90 80 09         [24]  489 	mov	dptr,#_write_device_string_string_1_63
      00028D E0               [24]  490 	movx	a,@dptr
      00028E FB               [12]  491 	mov	r3,a
      00028F A3               [24]  492 	inc	dptr
      000290 E0               [24]  493 	movx	a,@dptr
      000291 FC               [12]  494 	mov	r4,a
      000292 A3               [24]  495 	inc	dptr
      000293 E0               [24]  496 	movx	a,@dptr
      000294 FD               [12]  497 	mov	r5,a
      000295 79 00            [12]  498 	mov	r1,#0x00
      000297 7A 00            [12]  499 	mov	r2,#0x00
      000299                        500 00103$:
      000299 C3               [12]  501 	clr	c
      00029A E9               [12]  502 	mov	a,r1
      00029B 9E               [12]  503 	subb	a,r6
      00029C EA               [12]  504 	mov	a,r2
      00029D 64 80            [12]  505 	xrl	a,#0x80
      00029F 8F F0            [24]  506 	mov	b,r7
      0002A1 63 F0 80         [24]  507 	xrl	b,#0x80
      0002A4 95 F0            [12]  508 	subb	a,b
      0002A6 50 37            [24]  509 	jnc	00101$
      0002A8 C0 06            [24]  510 	push	ar6
      0002AA C0 07            [24]  511 	push	ar7
      0002AC 89 00            [24]  512 	mov	ar0,r1
      0002AE E8               [12]  513 	mov	a,r0
      0002AF 28               [12]  514 	add	a,r0
      0002B0 24 02            [12]  515 	add	a,#0x02
      0002B2 24 00            [12]  516 	add	a,#_in0buf
      0002B4 F5 10            [12]  517 	mov	_write_device_string_sloc0_1_0,a
      0002B6 E4               [12]  518 	clr	a
      0002B7 34 C7            [12]  519 	addc	a,#(_in0buf >> 8)
      0002B9 F5 11            [12]  520 	mov	(_write_device_string_sloc0_1_0 + 1),a
      0002BB E9               [12]  521 	mov	a,r1
      0002BC 2B               [12]  522 	add	a,r3
      0002BD F8               [12]  523 	mov	r0,a
      0002BE EA               [12]  524 	mov	a,r2
      0002BF 3C               [12]  525 	addc	a,r4
      0002C0 FE               [12]  526 	mov	r6,a
      0002C1 8D 07            [24]  527 	mov	ar7,r5
      0002C3 88 82            [24]  528 	mov	dpl,r0
      0002C5 8E 83            [24]  529 	mov	dph,r6
      0002C7 8F F0            [24]  530 	mov	b,r7
      0002C9 12 16 09         [24]  531 	lcall	__gptrget
      0002CC F8               [12]  532 	mov	r0,a
      0002CD 85 10 82         [24]  533 	mov	dpl,_write_device_string_sloc0_1_0
      0002D0 85 11 83         [24]  534 	mov	dph,(_write_device_string_sloc0_1_0 + 1)
      0002D3 F0               [24]  535 	movx	@dptr,a
      0002D4 09               [12]  536 	inc	r1
      0002D5 B9 00 01         [24]  537 	cjne	r1,#0x00,00115$
      0002D8 0A               [12]  538 	inc	r2
      0002D9                        539 00115$:
      0002D9 D0 07            [24]  540 	pop	ar7
      0002DB D0 06            [24]  541 	pop	ar6
      0002DD 80 BA            [24]  542 	sjmp	00103$
      0002DF                        543 00101$:
                                    544 ;	src/usb.c:115: in0bc = in0buf[0];
      0002DF 90 C7 00         [24]  545 	mov	dptr,#_in0buf
      0002E2 E0               [24]  546 	movx	a,@dptr
      0002E3 90 C7 B5         [24]  547 	mov	dptr,#0xC7B5
      0002E6 F0               [24]  548 	movx	@dptr,a
      0002E7 22               [24]  549 	ret
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'write_descriptor'
                                    552 ;------------------------------------------------------------
                                    553 ;desc_len                  Allocated with name '_write_descriptor_desc_len_1_65'
                                    554 ;------------------------------------------------------------
                                    555 ;	src/usb.c:119: bool write_descriptor()
                                    556 ;	-----------------------------------------
                                    557 ;	 function write_descriptor
                                    558 ;	-----------------------------------------
      0002E8                        559 _write_descriptor:
                                    560 ;	src/usb.c:121: uint8_t desc_len = request->wLength;
      0002E8 90 80 B3         [24]  561 	mov	dptr,#_request
      0002EB E0               [24]  562 	movx	a,@dptr
      0002EC FE               [12]  563 	mov	r6,a
      0002ED A3               [24]  564 	inc	dptr
      0002EE E0               [24]  565 	movx	a,@dptr
      0002EF FF               [12]  566 	mov	r7,a
      0002F0 74 06            [12]  567 	mov	a,#0x06
      0002F2 2E               [12]  568 	add	a,r6
      0002F3 F5 82            [12]  569 	mov	dpl,a
      0002F5 E4               [12]  570 	clr	a
      0002F6 3F               [12]  571 	addc	a,r7
      0002F7 F5 83            [12]  572 	mov	dph,a
      0002F9 E0               [24]  573 	movx	a,@dptr
      0002FA FC               [12]  574 	mov	r4,a
      0002FB A3               [24]  575 	inc	dptr
      0002FC E0               [24]  576 	movx	a,@dptr
      0002FD FD               [12]  577 	mov	r5,a
      0002FE 90 80 0C         [24]  578 	mov	dptr,#_write_descriptor_desc_len_1_65
      000301 EC               [12]  579 	mov	a,r4
      000302 F0               [24]  580 	movx	@dptr,a
                                    581 ;	src/usb.c:123: switch(request->wValue >> 8)
      000303 8E 82            [24]  582 	mov	dpl,r6
      000305 8F 83            [24]  583 	mov	dph,r7
      000307 A3               [24]  584 	inc	dptr
      000308 A3               [24]  585 	inc	dptr
      000309 E0               [24]  586 	movx	a,@dptr
      00030A A3               [24]  587 	inc	dptr
      00030B E0               [24]  588 	movx	a,@dptr
      00030C FE               [12]  589 	mov	r6,a
      00030D 7F 00            [12]  590 	mov	r7,#0x00
      00030F BE 01 05         [24]  591 	cjne	r6,#0x01,00126$
      000312 BF 00 02         [24]  592 	cjne	r7,#0x00,00126$
      000315 80 14            [24]  593 	sjmp	00101$
      000317                        594 00126$:
      000317 BE 02 05         [24]  595 	cjne	r6,#0x02,00127$
      00031A BF 00 02         [24]  596 	cjne	r7,#0x00,00127$
      00031D 80 4D            [24]  597 	sjmp	00104$
      00031F                        598 00127$:
      00031F BE 03 06         [24]  599 	cjne	r6,#0x03,00128$
      000322 BF 00 03         [24]  600 	cjne	r7,#0x00,00128$
      000325 02 03 B6         [24]  601 	ljmp	00107$
      000328                        602 00128$:
      000328 02 03 DA         [24]  603 	ljmp	00108$
                                    604 ;	src/usb.c:126: case DEVICE_DESCRIPTOR:
      00032B                        605 00101$:
                                    606 ;	src/usb.c:127: if(desc_len > device_descriptor.bLength) desc_len = device_descriptor.bLength;
      00032B 90 16 29         [24]  607 	mov	dptr,#_device_descriptor
      00032E E4               [12]  608 	clr	a
      00032F 93               [24]  609 	movc	a,@a+dptr
      000330 FF               [12]  610 	mov	r7,a
      000331 C3               [12]  611 	clr	c
      000332 9C               [12]  612 	subb	a,r4
      000333 50 05            [24]  613 	jnc	00103$
      000335 90 80 0C         [24]  614 	mov	dptr,#_write_descriptor_desc_len_1_65
      000338 EF               [12]  615 	mov	a,r7
      000339 F0               [24]  616 	movx	@dptr,a
      00033A                        617 00103$:
                                    618 ;	src/usb.c:128: memcpy(in0buf, &device_descriptor, desc_len);
      00033A 90 80 0C         [24]  619 	mov	dptr,#_write_descriptor_desc_len_1_65
      00033D E0               [24]  620 	movx	a,@dptr
      00033E FF               [12]  621 	mov	r7,a
      00033F FD               [12]  622 	mov	r5,a
      000340 7E 00            [12]  623 	mov	r6,#0x00
      000342 90 80 A0         [24]  624 	mov	dptr,#_memcpy_PARM_2
      000345 74 29            [12]  625 	mov	a,#_device_descriptor
      000347 F0               [24]  626 	movx	@dptr,a
      000348 74 16            [12]  627 	mov	a,#(_device_descriptor >> 8)
      00034A A3               [24]  628 	inc	dptr
      00034B F0               [24]  629 	movx	@dptr,a
      00034C 74 80            [12]  630 	mov	a,#0x80
      00034E A3               [24]  631 	inc	dptr
      00034F F0               [24]  632 	movx	@dptr,a
      000350 90 80 A3         [24]  633 	mov	dptr,#_memcpy_PARM_3
      000353 ED               [12]  634 	mov	a,r5
      000354 F0               [24]  635 	movx	@dptr,a
      000355 EE               [12]  636 	mov	a,r6
      000356 A3               [24]  637 	inc	dptr
      000357 F0               [24]  638 	movx	@dptr,a
      000358 90 C7 00         [24]  639 	mov	dptr,#_in0buf
      00035B 75 F0 00         [24]  640 	mov	b,#0x00
      00035E C0 07            [24]  641 	push	ar7
      000360 12 15 62         [24]  642 	lcall	_memcpy
      000363 D0 07            [24]  643 	pop	ar7
                                    644 ;	src/usb.c:129: in0bc = desc_len;
      000365 90 C7 B5         [24]  645 	mov	dptr,#0xC7B5
      000368 EF               [12]  646 	mov	a,r7
      000369 F0               [24]  647 	movx	@dptr,a
                                    648 ;	src/usb.c:130: return true;
      00036A D3               [12]  649 	setb	c
                                    650 ;	src/usb.c:133: case CONFIGURATION_DESCRIPTOR:
      00036B 22               [24]  651 	ret
      00036C                        652 00104$:
                                    653 ;	src/usb.c:134: if(desc_len > configuration_descriptor.wTotalLength) desc_len = configuration_descriptor.wTotalLength;
      00036C 90 16 3D         [24]  654 	mov	dptr,#(_configuration_descriptor + 0x0002)
      00036F E4               [12]  655 	clr	a
      000370 93               [24]  656 	movc	a,@a+dptr
      000371 FE               [12]  657 	mov	r6,a
      000372 A3               [24]  658 	inc	dptr
      000373 E4               [12]  659 	clr	a
      000374 93               [24]  660 	movc	a,@a+dptr
      000375 FF               [12]  661 	mov	r7,a
      000376 7D 00            [12]  662 	mov	r5,#0x00
      000378 C3               [12]  663 	clr	c
      000379 EE               [12]  664 	mov	a,r6
      00037A 9C               [12]  665 	subb	a,r4
      00037B EF               [12]  666 	mov	a,r7
      00037C 9D               [12]  667 	subb	a,r5
      00037D 50 05            [24]  668 	jnc	00106$
      00037F 90 80 0C         [24]  669 	mov	dptr,#_write_descriptor_desc_len_1_65
      000382 EE               [12]  670 	mov	a,r6
      000383 F0               [24]  671 	movx	@dptr,a
      000384                        672 00106$:
                                    673 ;	src/usb.c:135: memcpy(in0buf, &configuration_descriptor, desc_len);
      000384 90 80 0C         [24]  674 	mov	dptr,#_write_descriptor_desc_len_1_65
      000387 E0               [24]  675 	movx	a,@dptr
      000388 FF               [12]  676 	mov	r7,a
      000389 FD               [12]  677 	mov	r5,a
      00038A 7E 00            [12]  678 	mov	r6,#0x00
      00038C 90 80 A0         [24]  679 	mov	dptr,#_memcpy_PARM_2
      00038F 74 3B            [12]  680 	mov	a,#_configuration_descriptor
      000391 F0               [24]  681 	movx	@dptr,a
      000392 74 16            [12]  682 	mov	a,#(_configuration_descriptor >> 8)
      000394 A3               [24]  683 	inc	dptr
      000395 F0               [24]  684 	movx	@dptr,a
      000396 74 80            [12]  685 	mov	a,#0x80
      000398 A3               [24]  686 	inc	dptr
      000399 F0               [24]  687 	movx	@dptr,a
      00039A 90 80 A3         [24]  688 	mov	dptr,#_memcpy_PARM_3
      00039D ED               [12]  689 	mov	a,r5
      00039E F0               [24]  690 	movx	@dptr,a
      00039F EE               [12]  691 	mov	a,r6
      0003A0 A3               [24]  692 	inc	dptr
      0003A1 F0               [24]  693 	movx	@dptr,a
      0003A2 90 C7 00         [24]  694 	mov	dptr,#_in0buf
      0003A5 75 F0 00         [24]  695 	mov	b,#0x00
      0003A8 C0 07            [24]  696 	push	ar7
      0003AA 12 15 62         [24]  697 	lcall	_memcpy
      0003AD D0 07            [24]  698 	pop	ar7
                                    699 ;	src/usb.c:136: in0bc = desc_len;
      0003AF 90 C7 B5         [24]  700 	mov	dptr,#0xC7B5
      0003B2 EF               [12]  701 	mov	a,r7
      0003B3 F0               [24]  702 	movx	@dptr,a
                                    703 ;	src/usb.c:137: return true;
      0003B4 D3               [12]  704 	setb	c
                                    705 ;	src/usb.c:141: case STRING_DESCRIPTOR:
      0003B5 22               [24]  706 	ret
      0003B6                        707 00107$:
                                    708 ;	src/usb.c:142: write_device_string(device_strings[setupbuf[2]]);
      0003B6 90 C7 EA         [24]  709 	mov	dptr,#(_setupbuf + 0x0002)
      0003B9 E0               [24]  710 	movx	a,@dptr
      0003BA 75 F0 02         [24]  711 	mov	b,#0x02
      0003BD A4               [48]  712 	mul	ab
      0003BE 24 B5            [12]  713 	add	a,#_device_strings
      0003C0 F5 82            [12]  714 	mov	dpl,a
      0003C2 74 80            [12]  715 	mov	a,#(_device_strings >> 8)
      0003C4 35 F0            [12]  716 	addc	a,b
      0003C6 F5 83            [12]  717 	mov	dph,a
      0003C8 E0               [24]  718 	movx	a,@dptr
      0003C9 FE               [12]  719 	mov	r6,a
      0003CA A3               [24]  720 	inc	dptr
      0003CB E0               [24]  721 	movx	a,@dptr
      0003CC FF               [12]  722 	mov	r7,a
      0003CD 7D 80            [12]  723 	mov	r5,#0x80
      0003CF 8E 82            [24]  724 	mov	dpl,r6
      0003D1 8F 83            [24]  725 	mov	dph,r7
      0003D3 8D F0            [24]  726 	mov	b,r5
      0003D5 12 02 2F         [24]  727 	lcall	_write_device_string
                                    728 ;	src/usb.c:143: return true;   
      0003D8 D3               [12]  729 	setb	c
                                    730 ;	src/usb.c:144: }  
      0003D9 22               [24]  731 	ret
      0003DA                        732 00108$:
                                    733 ;	src/usb.c:147: return false;
      0003DA C3               [12]  734 	clr	c
      0003DB 22               [24]  735 	ret
                                    736 ;------------------------------------------------------------
                                    737 ;Allocation info for local variables in function 'handle_setup_request'
                                    738 ;------------------------------------------------------------
                                    739 ;	src/usb.c:151: void handle_setup_request()
                                    740 ;	-----------------------------------------
                                    741 ;	 function handle_setup_request
                                    742 ;	-----------------------------------------
      0003DC                        743 _handle_setup_request:
                                    744 ;	src/usb.c:153: bool handled = false;
      0003DC C2 02            [12]  745 	clr	_handle_setup_request_handled_1_67
                                    746 ;	src/usb.c:154: switch(request->bRequest)
      0003DE 90 80 B3         [24]  747 	mov	dptr,#_request
      0003E1 E0               [24]  748 	movx	a,@dptr
      0003E2 FE               [12]  749 	mov	r6,a
      0003E3 A3               [24]  750 	inc	dptr
      0003E4 E0               [24]  751 	movx	a,@dptr
      0003E5 FF               [12]  752 	mov	r7,a
      0003E6 8E 82            [24]  753 	mov	dpl,r6
      0003E8 8F 83            [24]  754 	mov	dph,r7
      0003EA A3               [24]  755 	inc	dptr
      0003EB E0               [24]  756 	movx	a,@dptr
      0003EC FD               [12]  757 	mov	r5,a
      0003ED 60 52            [24]  758 	jz	00110$
      0003EF BD 05 02         [24]  759 	cjne	r5,#0x05,00154$
      0003F2 80 1E            [24]  760 	sjmp	00104$
      0003F4                        761 00154$:
      0003F4 BD 06 02         [24]  762 	cjne	r5,#0x06,00155$
      0003F7 80 0D            [24]  763 	sjmp	00101$
      0003F9                        764 00155$:
      0003F9 BD 08 02         [24]  765 	cjne	r5,#0x08,00156$
      0003FC 80 30            [24]  766 	sjmp	00109$
      0003FE                        767 00156$:
      0003FE BD 09 02         [24]  768 	cjne	r5,#0x09,00157$
      000401 80 13            [24]  769 	sjmp	00105$
      000403                        770 00157$:
      000403 02 04 7C         [24]  771 	ljmp	00117$
                                    772 ;	src/usb.c:157: case GET_DESCRIPTOR:
      000406                        773 00101$:
                                    774 ;	src/usb.c:158: if(write_descriptor()) handled = true;
      000406 12 02 E8         [24]  775 	lcall	_write_descriptor
      000409 40 03            [24]  776 	jc	00158$
      00040B 02 04 7C         [24]  777 	ljmp	00117$
      00040E                        778 00158$:
      00040E D2 02            [12]  779 	setb	_handle_setup_request_handled_1_67
                                    780 ;	src/usb.c:159: break;
                                    781 ;	src/usb.c:162: case SET_ADDRESS:
      000410 80 6A            [24]  782 	sjmp	00117$
      000412                        783 00104$:
                                    784 ;	src/usb.c:163: handled = true;
      000412 D2 02            [12]  785 	setb	_handle_setup_request_handled_1_67
                                    786 ;	src/usb.c:164: break;
                                    787 ;	src/usb.c:167: case SET_CONFIGURATION:   
      000414 80 66            [24]  788 	sjmp	00117$
      000416                        789 00105$:
                                    790 ;	src/usb.c:168: if (request->wValue == 0) configured = false; // Not configured, drop back to powered state
      000416 8E 82            [24]  791 	mov	dpl,r6
      000418 8F 83            [24]  792 	mov	dph,r7
      00041A A3               [24]  793 	inc	dptr
      00041B A3               [24]  794 	inc	dptr
      00041C E0               [24]  795 	movx	a,@dptr
      00041D FC               [12]  796 	mov	r4,a
      00041E A3               [24]  797 	inc	dptr
      00041F E0               [24]  798 	movx	a,@dptr
      000420 FD               [12]  799 	mov	r5,a
      000421 4C               [12]  800 	orl	a,r4
      000422 70 04            [24]  801 	jnz	00107$
      000424 C2 01            [12]  802 	clr	_configured
      000426 80 02            [24]  803 	sjmp	00108$
      000428                        804 00107$:
                                    805 ;	src/usb.c:169: else configured = true;                       // Configured
      000428 D2 01            [12]  806 	setb	_configured
      00042A                        807 00108$:
                                    808 ;	src/usb.c:170: handled = true;
      00042A D2 02            [12]  809 	setb	_handle_setup_request_handled_1_67
                                    810 ;	src/usb.c:171: break;
                                    811 ;	src/usb.c:174: case GET_CONFIGURATION:
      00042C 80 4E            [24]  812 	sjmp	00117$
      00042E                        813 00109$:
                                    814 ;	src/usb.c:175: in0buf[0] = configured;
      00042E A2 01            [12]  815 	mov	c,_configured
      000430 E4               [12]  816 	clr	a
      000431 33               [12]  817 	rlc	a
      000432 FD               [12]  818 	mov	r5,a
      000433 90 C7 00         [24]  819 	mov	dptr,#_in0buf
      000436 F0               [24]  820 	movx	@dptr,a
                                    821 ;	src/usb.c:176: in0bc = 1;
      000437 90 C7 B5         [24]  822 	mov	dptr,#0xC7B5
      00043A 74 01            [12]  823 	mov	a,#0x01
      00043C F0               [24]  824 	movx	@dptr,a
                                    825 ;	src/usb.c:177: handled = true;
      00043D D2 02            [12]  826 	setb	_handle_setup_request_handled_1_67
                                    827 ;	src/usb.c:178: break;
                                    828 ;	src/usb.c:181: case GET_STATUS:
      00043F 80 3B            [24]  829 	sjmp	00117$
      000441                        830 00110$:
                                    831 ;	src/usb.c:184: if (request->bmRequestType == 0x82)
      000441 8E 82            [24]  832 	mov	dpl,r6
      000443 8F 83            [24]  833 	mov	dph,r7
      000445 E0               [24]  834 	movx	a,@dptr
      000446 FE               [12]  835 	mov	r6,a
      000447 BE 82 21         [24]  836 	cjne	r6,#0x82,00115$
                                    837 ;	src/usb.c:186: if ((setupbuf[4] & 0x80) == 0x80) in0buf[0] = in1cs;
      00044A 90 C7 EC         [24]  838 	mov	dptr,#(_setupbuf + 0x0004)
      00044D E0               [24]  839 	movx	a,@dptr
      00044E FF               [12]  840 	mov	r7,a
      00044F 53 07 80         [24]  841 	anl	ar7,#0x80
      000452 BF 80 0B         [24]  842 	cjne	r7,#0x80,00112$
      000455 90 C7 B6         [24]  843 	mov	dptr,#0xC7B6
      000458 E0               [24]  844 	movx	a,@dptr
      000459 FF               [12]  845 	mov	r7,a
      00045A 90 C7 00         [24]  846 	mov	dptr,#_in0buf
      00045D F0               [24]  847 	movx	@dptr,a
      00045E 80 14            [24]  848 	sjmp	00116$
      000460                        849 00112$:
                                    850 ;	src/usb.c:187: else in0buf[0] = out1cs; 
      000460 90 C7 C6         [24]  851 	mov	dptr,#0xC7C6
      000463 E0               [24]  852 	movx	a,@dptr
      000464 FF               [12]  853 	mov	r7,a
      000465 90 C7 00         [24]  854 	mov	dptr,#_in0buf
      000468 F0               [24]  855 	movx	@dptr,a
      000469 80 09            [24]  856 	sjmp	00116$
      00046B                        857 00115$:
                                    858 ;	src/usb.c:194: in0buf[0] = 0;
      00046B 90 C7 00         [24]  859 	mov	dptr,#_in0buf
      00046E E4               [12]  860 	clr	a
      00046F F0               [24]  861 	movx	@dptr,a
                                    862 ;	src/usb.c:195: in0buf[1] = 0;
      000470 90 C7 01         [24]  863 	mov	dptr,#(_in0buf + 0x0001)
      000473 F0               [24]  864 	movx	@dptr,a
      000474                        865 00116$:
                                    866 ;	src/usb.c:198: in0bc = 2;
      000474 90 C7 B5         [24]  867 	mov	dptr,#0xC7B5
      000477 74 02            [12]  868 	mov	a,#0x02
      000479 F0               [24]  869 	movx	@dptr,a
                                    870 ;	src/usb.c:199: handled = true;
      00047A D2 02            [12]  871 	setb	_handle_setup_request_handled_1_67
                                    872 ;	src/usb.c:201: }
      00047C                        873 00117$:
                                    874 ;	src/usb.c:204: if(handled) ep0cs = 0x02; // hsnak
      00047C 30 02 07         [24]  875 	jnb	_handle_setup_request_handled_1_67,00119$
      00047F 90 C7 B4         [24]  876 	mov	dptr,#0xC7B4
      000482 74 02            [12]  877 	mov	a,#0x02
      000484 F0               [24]  878 	movx	@dptr,a
      000485 22               [24]  879 	ret
      000486                        880 00119$:
                                    881 ;	src/usb.c:205: else ep0cs = 0x01; // ep0stall
      000486 90 C7 B4         [24]  882 	mov	dptr,#0xC7B4
      000489 74 01            [12]  883 	mov	a,#0x01
      00048B F0               [24]  884 	movx	@dptr,a
      00048C 22               [24]  885 	ret
                                    886 	.area CSEG    (CODE)
                                    887 	.area CONST   (CODE)
                                    888 	.area XINIT   (CODE)
      00167E                        889 __xinit__nordic_bootloader:
      00167E 00 78                  890 	.byte #0x00,#0x78
      001680                        891 __xinit__logitech_bootloader:
      001680 00 74                  892 	.byte #0x00,#0x74
      001682                        893 __xinit__request:
      001682 E8 C7                  894 	.byte _setupbuf,(_setupbuf >> 8)
                                    895 	.area CABS    (ABS,CODE)
