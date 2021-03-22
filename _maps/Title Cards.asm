Map_Cards:
		dc.w M_Card_GHZ-Map_Card ; 0
		dc.w M_Card_LZ-Map_Card      ; 1
		dc.w M_Card_MZ-Map_Card      ; 2
		dc.w M_Card_SLZ-Map_Card     ; 3
		dc.w M_Card_SYZ-Map_Card     ; 4
		dc.w M_Card_SBZ-Map_Card     ; 5
		dc.w M_Card_Zone-Map_Card    ; 6
		dc.w M_Card_IMZ-Map_Card     ; 7
		dc.w M_Card_CSZ-Map_Card     ; 8
		dc.w M_Card_Act1-Map_Card    ; 9
		dc.w M_Card_Act2-Map_Card    ; A
		dc.w M_Card_Act3-Map_Card    ; B
		dc.w M_Card_Oval-Map_Card    ; C
		dc.w M_Card_FZ-Map_Card      ; D
M_Card_GHZ:	dc.b 9 			; GREEN HILL
		dc.b $F8, 5, 0,	$18, $B4
		dc.b $F8, 5, 0,	$3A, $C4
		dc.b $F8, 5, 0,	$10, $D4
		dc.b $F8, 5, 0,	$10, $E4
		dc.b $F8, 5, 0,	$2E, $F4
		dc.b $F8, 5, 0,	$1C, $14
		dc.b $F8, 1, 0,	$20, $24
		dc.b $F8, 5, 0,	$26, $2C
		dc.b $F8, 5, 0,	$26, $3C
		even
M_Card_LZ:	dc.b 9			; LABYRINTH
		dc.b $F8, 5, 0,	$26, $BC
		dc.b $F8, 5, 0,	0, $CC
		dc.b $F8, 5, 0,	4, $DC
		dc.b $F8, 5, 0,	$4A, $EC
		dc.b $F8, 5, 0,	$3A, $FC
		dc.b $F8, 1, 0,	$20, $C
		dc.b $F8, 5, 0,	$2E, $14
		dc.b $F8, 5, 0,	$42, $24
		dc.b $F8, 5, 0,	$1C, $34
		even
M_Card_MZ:	dc.b 6			; MARBLE
		dc.b $F8, 5, 0,	$2A, $CF
		dc.b $F8, 5, 0,	0, $E0
		dc.b $F8, 5, 0,	$3A, $F0
		dc.b $F8, 5, 0,	4, 0
		dc.b $F8, 5, 0,	$26, $10
		dc.b $F8, 5, 0,	$10, $20
		even
M_Card_SLZ:	dc.b 9			; STAR LIGHT
		dc.b $F8, 5, 0,	$3E, $B4
		dc.b $F8, 5, 0,	$42, $C4
		dc.b $F8, 5, 0,	0, $D4
		dc.b $F8, 5, 0,	$3A, $E4
		dc.b $F8, 5, 0,	$26, 4
		dc.b $F8, 1, 0,	$20, $14
		dc.b $F8, 5, 0,	$18, $1C
		dc.b $F8, 5, 0,	$1C, $2C
		dc.b $F8, 5, 0,	$42, $3C
		even
M_Card_SYZ:	dc.b $9	;  GREEN HILL |     SPARKLING
		dc.b $F8, 5, 0, $3E, $C0	; S
		dc.b $F8, 5, 0, $36, $D0	; P
		dc.b $F8, 5, 0, 0, $E0		; A
		dc.b $F8, 5, 0, $3A, $F0	; R
		dc.b $F8, 5, 0, $22, $0	; K
		dc.b $F8, 5, 0, $26, $10	; L
		dc.b $F8, 1, 0, $20, $20	; I
		dc.b $F8, 5, 0, $2E, $28	; N
		dc.b $F8, 5, 0, $18, $38	; G
		even
M_Card_SBZ:	dc.b $8	;  GREEN HILL |     CLOCK  ORK
		dc.b $F8, 5, 0, 8, $C0		; C
		dc.b $F8, 5, 0, $26, $D0	; L
		dc.b $F8, 5, 0, $32, $E0	; O
		dc.b $F8, 5, 0, 8, $F0		; C
		dc.b $F8, 5, 0, $22, $0	; K
		dc.b $F8, 5, 0, $32, $30	; O
		dc.b $F8, 5, 0, $3A, $40	; R
		dc.b $F8, 5, 0, $22, $50	; K
		even
M_Card_IMZ:	dc.b $B	;  GREEN HILL |   ICE MOUNTAIN
		dc.b $F8, 1, 0, $20, $A0	; I
		dc.b $F8, 5, 0, 8, $A8		; C
		dc.b $F8, 5, 0, $10, $B8	; E
		dc.b $F8, 5, 0, $2A, $D8	; M
		dc.b $F8, 5, 0, $32, $E8	; O
		dc.b $F8, 5, 0, $46, $F8	; U
		dc.b $F8, 5, 0, $2E, $8	; N
		dc.b $F8, 5, 0, $42, $18	; T
		dc.b $F8, 5, 0, 0, $28		; A
		dc.b $F8, 1, 0, $20, $38	; I
		dc.b $F8, 5, 0, $2E, $40	; N
M_Card_CSZ:	dc.b $B	;  COSMIC SPACE
		dc.b $F8, 5, 0, 8, $9C		; C
		dc.b $F8, 5, 0, $32, $AC	; O
		dc.b $F8, 5, 0, $3E, $BC	; S
		dc.b $F8, 5, 0, $2A, $CC	; M
		dc.b $F8, 1, 0, $20, $DC	; I
		dc.b $F8, 5, 0, 8, $E4		; C
		dc.b $F8, 5, 0, $3E, $4	; S
		dc.b $F8, 5, 0, $36, $14	; P
		dc.b $F8, 5, 0, 0, $24		; A
		dc.b $F8, 5, 0, 8, $34		; C
		dc.b $F8, 5, 0, $10, $44	; E
M_Card_Zone:	dc.b 4			; ZONE
		dc.b $F8, 5, 0,	$4E, $E0
		dc.b $F8, 5, 0,	$32, $F0
		dc.b $F8, 5, 0,	$2E, 0
		dc.b $F8, 5, 0,	$10, $10
		even
M_Card_Act1:	dc.b 2			; ACT 1
		dc.b 4,	$C, 0, $53, $EC
		dc.b $F4, 2, 0,	$57, $C
M_Card_Act2:	dc.b 2			; ACT 2
		dc.b 4,	$C, 0, $53, $EC
		dc.b $F4, 6, 0,	$5A, 8
M_Card_Act3:	dc.b 2			; ACT 3
		dc.b 4,	$C, 0, $53, $EC
		dc.b $F4, 6, 0,	$60, 8
M_Card_Oval:	dc.b $D			; Oval
		dc.b $E4, $C, 0, $70, $F4
		dc.b $E4, 2, 0,	$74, $14
		dc.b $EC, 4, 0,	$77, $EC
		dc.b $F4, 5, 0,	$79, $E4
		dc.b $14, $C, $18, $70,	$EC
		dc.b 4,	2, $18,	$74, $E4
		dc.b $C, 4, $18, $77, 4
		dc.b $FC, 5, $18, $79, $C
		dc.b $EC, 8, 0,	$7D, $FC
		dc.b $F4, $C, 0, $7C, $F4
		dc.b $FC, 8, 0,	$7C, $F4
		dc.b 4,	$C, 0, $7C, $EC
		dc.b $C, 8, 0, $7C, $EC
		even
M_Card_FZ:	dc.b 5			; FINAL
		dc.b $F8, 5, 0,	$14, $DC
		dc.b $F8, 1, 0,	$20, $EC
		dc.b $F8, 5, 0,	$2E, $F4
		dc.b $F8, 5, 0,	0, 4
		dc.b $F8, 5, 0,	$26, $14
		even