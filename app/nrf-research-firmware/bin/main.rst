                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Jul  5 2014) (Linux)
                                      4 ; This file was generated Mon Sep 19 15:43:07 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _spi_write
                                     14 	.globl _init_usb
                                     15 	.globl _RFRDY
                                     16 	.globl _rfcsn
                                     17 	.globl _rfce
                                     18 	.globl _ien1
                                     19 	.globl _ien0
                                     20 	.globl _REGXC
                                     21 	.globl _REGXL
                                     22 	.globl _REGXH
                                     23 	.globl _TICKDV
                                     24 	.globl _RFDAT
                                     25 	.globl _P0DIR
                                     26 	.globl _P0
                                     27 	.globl _AESIA1
                                     28 	.globl _AESIV
                                     29 	.globl _usbcon
                                     30 	.globl _rfcon
                                     31 	.globl _rfctl
                                     32 	.globl _setupbuf
                                     33 	.globl _out1buf
                                     34 	.globl _in1buf
                                     35 	.globl _in0buf
                                     36 ;--------------------------------------------------------
                                     37 ; special function registers
                                     38 ;--------------------------------------------------------
                                     39 	.area RSEG    (ABS,DATA)
      000000                         40 	.org 0x0000
                           0000E6    41 _rfctl	=	0x00e6
                           000090    42 _rfcon	=	0x0090
                           0000A0    43 _usbcon	=	0x00a0
                           0000F2    44 _AESIV	=	0x00f2
                           0000F5    45 _AESIA1	=	0x00f5
                           000080    46 _P0	=	0x0080
                           000094    47 _P0DIR	=	0x0094
                           0000E5    48 _RFDAT	=	0x00e5
                           0000AB    49 _TICKDV	=	0x00ab
                           0000AB    50 _REGXH	=	0x00ab
                           0000AC    51 _REGXL	=	0x00ac
                           0000AD    52 _REGXC	=	0x00ad
                           0000A8    53 _ien0	=	0x00a8
                           0000B8    54 _ien1	=	0x00b8
                                     55 ;--------------------------------------------------------
                                     56 ; special function bits
                                     57 ;--------------------------------------------------------
                                     58 	.area RSEG    (ABS,DATA)
      000000                         59 	.org 0x0000
                           000090    60 _rfce	=	0x0090
                           000091    61 _rfcsn	=	0x0091
                           0000C0    62 _RFRDY	=	0x00c0
                                     63 ;--------------------------------------------------------
                                     64 ; overlayable register banks
                                     65 ;--------------------------------------------------------
                                     66 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         67 	.ds 8
                                     68 ;--------------------------------------------------------
                                     69 ; internal ram data
                                     70 ;--------------------------------------------------------
                                     71 	.area DSEG    (DATA)
                                     72 ;--------------------------------------------------------
                                     73 ; overlayable items in internal ram 
                                     74 ;--------------------------------------------------------
                                     75 ;--------------------------------------------------------
                                     76 ; Stack segment in internal ram 
                                     77 ;--------------------------------------------------------
                                     78 	.area	SSEG
      000027                         79 __start__stack:
      000027                         80 	.ds	1
                                     81 
                                     82 ;--------------------------------------------------------
                                     83 ; indirectly addressable internal ram data
                                     84 ;--------------------------------------------------------
                                     85 	.area ISEG    (DATA)
                                     86 ;--------------------------------------------------------
                                     87 ; absolute internal ram data
                                     88 ;--------------------------------------------------------
                                     89 	.area IABS    (ABS,DATA)
                                     90 	.area IABS    (ABS,DATA)
                                     91 ;--------------------------------------------------------
                                     92 ; bit data
                                     93 ;--------------------------------------------------------
                                     94 	.area BSEG    (BIT)
      000000                         95 _configured:
      000000                         96 	.ds 1
                                     97 ;--------------------------------------------------------
                                     98 ; paged external ram data
                                     99 ;--------------------------------------------------------
                                    100 	.area PSEG    (PAG,XDATA)
                                    101 ;--------------------------------------------------------
                                    102 ; external ram data
                                    103 ;--------------------------------------------------------
                                    104 	.area XSEG    (XDATA)
                           00C700   105 _in0buf	=	0xc700
                           00C680   106 _in1buf	=	0xc680
                           00C640   107 _out1buf	=	0xc640
                           00C7E8   108 _setupbuf	=	0xc7e8
      008000                        109 _radio_mode:
      008000                        110 	.ds 1
      008001                        111 _pm_prefix_length:
      008001                        112 	.ds 2
      008003                        113 _pm_prefix:
      008003                        114 	.ds 5
      008008                        115 _pm_payload_length:
      008008                        116 	.ds 1
                                    117 ;--------------------------------------------------------
                                    118 ; absolute external ram data
                                    119 ;--------------------------------------------------------
                                    120 	.area XABS    (ABS,XDATA)
                                    121 ;--------------------------------------------------------
                                    122 ; external initialized ram data
                                    123 ;--------------------------------------------------------
                                    124 	.area XISEG   (XDATA)
      0080A9                        125 _nordic_bootloader:
      0080A9                        126 	.ds 2
      0080AB                        127 _logitech_bootloader:
      0080AB                        128 	.ds 2
      0080AD                        129 _promiscuous_address:
      0080AD                        130 	.ds 2
                                    131 	.area HOME    (CODE)
                                    132 	.area GSINIT0 (CODE)
                                    133 	.area GSINIT1 (CODE)
                                    134 	.area GSINIT2 (CODE)
                                    135 	.area GSINIT3 (CODE)
                                    136 	.area GSINIT4 (CODE)
                                    137 	.area GSINIT5 (CODE)
                                    138 	.area GSINIT  (CODE)
                                    139 	.area GSFINAL (CODE)
                                    140 	.area CSEG    (CODE)
                                    141 ;--------------------------------------------------------
                                    142 ; interrupt vector 
                                    143 ;--------------------------------------------------------
                                    144 	.area HOME    (CODE)
      000000                        145 __interrupt_vect:
      000000 02 00 6B         [24]  146 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  147 	reti
      000004                        148 	.ds	7
      00000B 32               [24]  149 	reti
      00000C                        150 	.ds	7
      000013 32               [24]  151 	reti
      000014                        152 	.ds	7
      00001B 32               [24]  153 	reti
      00001C                        154 	.ds	7
      000023 32               [24]  155 	reti
      000024                        156 	.ds	7
      00002B 32               [24]  157 	reti
      00002C                        158 	.ds	7
      000033 32               [24]  159 	reti
      000034                        160 	.ds	7
      00003B 32               [24]  161 	reti
      00003C                        162 	.ds	7
      000043 32               [24]  163 	reti
      000044                        164 	.ds	7
      00004B 32               [24]  165 	reti
      00004C                        166 	.ds	7
      000053 32               [24]  167 	reti
      000054                        168 	.ds	7
      00005B 32               [24]  169 	reti
      00005C                        170 	.ds	7
      000063 02 01 97         [24]  171 	ljmp	_usb_irq
                                    172 ;--------------------------------------------------------
                                    173 ; global & static initialisations
                                    174 ;--------------------------------------------------------
                                    175 	.area HOME    (CODE)
                                    176 	.area GSINIT  (CODE)
                                    177 	.area GSFINAL (CODE)
                                    178 	.area GSINIT  (CODE)
                                    179 	.globl __sdcc_gsinit_startup
                                    180 	.globl __sdcc_program_startup
                                    181 	.globl __start__stack
                                    182 	.globl __mcs51_genXINIT
                                    183 	.globl __mcs51_genXRAMCLEAR
                                    184 	.globl __mcs51_genRAMCLEAR
                                    185 	.area GSFINAL (CODE)
      0000C4 02 00 66         [24]  186 	ljmp	__sdcc_program_startup
                                    187 ;--------------------------------------------------------
                                    188 ; Home
                                    189 ;--------------------------------------------------------
                                    190 	.area HOME    (CODE)
                                    191 	.area HOME    (CODE)
      000066                        192 __sdcc_program_startup:
      000066 02 00 C7         [24]  193 	ljmp	_main
                                    194 ;	return from main will return to caller
                                    195 ;--------------------------------------------------------
                                    196 ; code
                                    197 ;--------------------------------------------------------
                                    198 	.area CSEG    (CODE)
                                    199 ;------------------------------------------------------------
                                    200 ;Allocation info for local variables in function 'main'
                                    201 ;------------------------------------------------------------
                                    202 ;__00030005                Allocated with name '_main___00030005_4_17'
                                    203 ;us                        Allocated with name '_main_us_4_17'
                                    204 ;------------------------------------------------------------
                                    205 ;	src/main.c:23: void main()
                                    206 ;	-----------------------------------------
                                    207 ;	 function main
                                    208 ;	-----------------------------------------
      0000C7                        209 _main:
                           000007   210 	ar7 = 0x07
                           000006   211 	ar6 = 0x06
                           000005   212 	ar5 = 0x05
                           000004   213 	ar4 = 0x04
                           000003   214 	ar3 = 0x03
                           000002   215 	ar2 = 0x02
                           000001   216 	ar1 = 0x01
                           000000   217 	ar0 = 0x00
                                    218 ;	src/main.c:25: rfcon = 0x06; // enable RF clock
      0000C7 75 90 06         [24]  219 	mov	_rfcon,#0x06
                                    220 ;	src/main.c:26: rfctl = 0x10; // enable SPI
      0000CA 75 E6 10         [24]  221 	mov	_rfctl,#0x10
                                    222 ;	src/main.c:27: ien0 = 0x80;  // enable interrupts
      0000CD 75 A8 80         [24]  223 	mov	_ien0,#0x80
                                    224 ;	src/main.c:28: TICKDV = 0xFF; // set the tick divider
      0000D0 75 AB FF         [24]  225 	mov	_TICKDV,#0xFF
                                    226 ;	src/main.c:31: init_usb();
      0000D3 12 01 18         [24]  227 	lcall	_init_usb
                                    228 ;	src/main.c:34: flush_rx();
      0000D6 90 80 2F         [24]  229 	mov	dptr,#_spi_write_PARM_2
      0000D9 E4               [12]  230 	clr	a
      0000DA F0               [24]  231 	movx	@dptr,a
      0000DB A3               [24]  232 	inc	dptr
      0000DC F0               [24]  233 	movx	@dptr,a
      0000DD A3               [24]  234 	inc	dptr
      0000DE F0               [24]  235 	movx	@dptr,a
      0000DF 90 80 32         [24]  236 	mov	dptr,#_spi_write_PARM_3
      0000E2 F0               [24]  237 	movx	@dptr,a
      0000E3 75 82 E2         [24]  238 	mov	dpl,#0xE2
      0000E6 12 07 F3         [24]  239 	lcall	_spi_write
                                    240 ;	src/main.c:35: flush_tx();
      0000E9 90 80 2F         [24]  241 	mov	dptr,#_spi_write_PARM_2
      0000EC E4               [12]  242 	clr	a
      0000ED F0               [24]  243 	movx	@dptr,a
      0000EE A3               [24]  244 	inc	dptr
      0000EF F0               [24]  245 	movx	@dptr,a
      0000F0 A3               [24]  246 	inc	dptr
      0000F1 F0               [24]  247 	movx	@dptr,a
      0000F2 90 80 32         [24]  248 	mov	dptr,#_spi_write_PARM_3
      0000F5 F0               [24]  249 	movx	@dptr,a
      0000F6 75 82 E1         [24]  250 	mov	dpl,#0xE1
      0000F9 12 07 F3         [24]  251 	lcall	_spi_write
                                    252 ;	src/main.c:38: while(1)
      0000FC                        253 00102$:
                                    254 ;	src/main.c:40: REGXH = 0xFF;
      0000FC 75 AB FF         [24]  255 	mov	_REGXH,#0xFF
                                    256 ;	src/main.c:41: REGXL = 0xFF;
      0000FF 75 AC FF         [24]  257 	mov	_REGXL,#0xFF
                                    258 ;	src/main.c:42: REGXC = 0x08;
      000102 75 AD 08         [24]  259 	mov	_REGXC,#0x08
                                    260 ;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
      000105 7E E8            [12]  261 	mov	r6,#0xE8
      000107 7F 03            [12]  262 	mov	r7,#0x03
      000109                        263 00104$:
      000109 00               [12]  264 	nop 
      00010A 00               [12]  265 	nop 
      00010B 00               [12]  266 	nop 
      00010C 00               [12]  267 	nop 
      00010D 1E               [12]  268 	dec	r6
      00010E BE FF 01         [24]  269 	cjne	r6,#0xFF,00120$
      000111 1F               [12]  270 	dec	r7
      000112                        271 00120$:
      000112 EE               [12]  272 	mov	a,r6
      000113 4F               [12]  273 	orl	a,r7
      000114 70 F3            [24]  274 	jnz	00104$
                                    275 ;	src/main.c:43: delay_us(1000);
      000116 80 E4            [24]  276 	sjmp	00102$
                                    277 	.area CSEG    (CODE)
                                    278 	.area CONST   (CODE)
                                    279 	.area XINIT   (CODE)
      001678                        280 __xinit__nordic_bootloader:
      001678 00 78                  281 	.byte #0x00,#0x78
      00167A                        282 __xinit__logitech_bootloader:
      00167A 00 74                  283 	.byte #0x00,#0x74
      00167C                        284 __xinit__promiscuous_address:
      00167C AA                     285 	.db #0xAA	; 170
      00167D 00                     286 	.db #0x00	; 0
                                    287 	.area CABS    (ABS,CODE)
