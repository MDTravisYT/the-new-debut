Sonic_Dash:				; CODE XREF: ROM:Obj01_MdNormalp
		tst.b	$39(a0)
		bne.s	loc_10396
		cmpi.b	#id_LookUp,$1C(a0)
		bne.s	locret_10394
		move.b	($FFFFF603).w,d0
		andi.b	#$70,d0	; 'p'
		beq.w	locret_10394
		move.b	#id_Dash,$1C(a0)
		move.w	#$A9,d0	; '¾'
		jsr	(PlaySound_Special).l
		addq.l	#4,sp
		move.b	#1,$39(a0)

locret_10394:				; CODE XREF: Sonic_Spindash+Cj
					; Sonic_Spindash+16j
		rts
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_10396:				; CODE XREF: Sonic_Spindash+4j
		move.b	($FFFFF602).w,d0
		btst	#1,d0
		bne.s	loc_103DC
	;	move.b	#$E,$16(a0)
		move.b	#7,$17(a0)
		move.b	#1,$1C(a0)
		addq.w	#5,$C(a0)
		move.b	#0,$39(a0)
		move.w	#$2000,($FFFFEED0).w
		move.w	#$800,$14(a0)
		btst	#0,$22(a0)
		beq.s	loc_103D4
		neg.w	$14(a0)

loc_103D4:				; CODE XREF: Sonic_Spindash+6Cj
		bset	#1,$22(a0)
		rts
; ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

loc_103DC:				; CODE XREF: Sonic_Spindash+3Cj
		move.b	($FFFFF603).w,d0
		andi.b	#$70,d0	; 'p'
		beq.w	loc_103EA
		nop

loc_103EA:				; CODE XREF: Sonic_Spindash+82j
		addq.l	#4,sp
		move.b	#$1,(v_invinc).w	; is Sonic invincible?
		rts
; End of function Sonic_Spindash