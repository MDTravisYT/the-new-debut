; ---------------------------------------------------------------------------
; Object 72 - teleporter (SBZ)
; ---------------------------------------------------------------------------

Teleport:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Tele_Index(pc,d0.w),d1
		jsr	Tele_Index(pc,d1.w)
		out_of_range.s	@delete
		rts	

	@delete:
		jmp	(DeleteObject).l
; ===========================================================================
Tele_Index:	dc.w Tele_Main-Tele_Index
		dc.w loc_166C8-Tele_Index
		dc.w loc_1675E-Tele_Index
		dc.w loc_16798-Tele_Index
; ===========================================================================

Tele_Main:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.b	obSubtype(a0),d0
		add.w	d0,d0
		andi.w	#$1E,d0
		lea	Tele_Data(pc),a2
		adda.w	(a2,d0.w),a2
		move.w	(a2)+,$3A(a0)
		move.l	a2,$3C(a0)
		move.w	(a2)+,$36(a0)
		move.w	(a2)+,$38(a0)

loc_166C8:	; Routine 2
		lea	(v_player).w,a1
		move.w	obX(a1),d0
		sub.w	obX(a0),d0
		btst	#0,obStatus(a0)
		beq.s	loc_166E0
		addi.w	#$F,d0

loc_166E0:
		cmpi.w	#$10,d0
		bcc.s	locret_1675C
		move.w	obY(a1),d1
		sub.w	obY(a0),d1
		addi.w	#$20,d1
		cmpi.w	#$40,d1
		bcc.s	locret_1675C
		tst.b	(f_lockmulti).w
		bne.s	locret_1675C
		cmpi.b	#7,obSubtype(a0)
		bne.s	loc_1670E
		cmpi.w	#50,(v_coins).w
		bcs.s	locret_1675C

loc_1670E:
		addq.b	#2,obRoutine(a0)
		move.b	#$81,(f_lockmulti).w ; lock controls
		move.b	#id_Roll,obAnim(a1) ; use Sonic's rolling animation
		move.w	#$800,obInertia(a1)
		move.w	#0,obVelX(a1)
		move.w	#0,obVelY(a1)
		bclr	#5,obStatus(a0)
		bclr	#5,obStatus(a1)
		bset	#1,obStatus(a1)
		move.w	obX(a0),obX(a1)
		move.w	obY(a0),obY(a1)
		clr.b	$32(a0)
		sfx	$A9,0,0,0	; play Sonic rolling sound

locret_1675C:
		rts	
; ===========================================================================

loc_1675E:	; Routine 4
		lea	(v_player).w,a1
		move.b	$32(a0),d0
		addq.b	#2,$32(a0)
		jsr	(CalcSine).l
		asr.w	#5,d0
		move.w	obY(a0),d2
		sub.w	d0,d2
		move.w	d2,obY(a1)
		cmpi.b	#$80,$32(a0)
		bne.s	locret_16796
		bsr.w	sub_1681C
		addq.b	#2,obRoutine(a0)
		sfx	sfx_Teleport,0,0,0	; play teleport sound

locret_16796:
		rts	
; ===========================================================================

loc_16798:	; Routine 6
		addq.l	#4,sp
		lea	(v_player).w,a1
		subq.b	#1,$2E(a0)
		bpl.s	loc_167DA
		move.w	$36(a0),obX(a1)
		move.w	$38(a0),obY(a1)
		moveq	#0,d1
		move.b	$3A(a0),d1
		addq.b	#4,d1
		cmp.b	$3B(a0),d1
		bcs.s	loc_167C2
		moveq	#0,d1
		bra.s	loc_16800
; ===========================================================================

loc_167C2:
		move.b	d1,$3A(a0)
		movea.l	$3C(a0),a2
		move.w	(a2,d1.w),$36(a0)
		move.w	2(a2,d1.w),$38(a0)
		bra.w	sub_1681C
; ===========================================================================

loc_167DA:
		move.l	obX(a1),d2
		move.l	obY(a1),d3
		move.w	obVelX(a1),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.w	obVelY(a1),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d2,obX(a1)
		move.l	d3,obY(a1)
		rts	
; ===========================================================================

loc_16800:
		andi.w	#$7FF,obY(a1)
		clr.b	obRoutine(a0)
		clr.b	(f_lockmulti).w
		move.w	#0,obVelX(a1)
		move.w	#$200,obVelY(a1)
		rts	

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_1681C:
		moveq	#0,d0
		move.w	#$1000,d2
		move.w	$36(a0),d0
		sub.w	obX(a1),d0
		bge.s	loc_16830
		neg.w	d0
		neg.w	d2

loc_16830:
		moveq	#0,d1
		move.w	#$1000,d3
		move.w	$38(a0),d1
		sub.w	obY(a1),d1
		bge.s	loc_16844
		neg.w	d1
		neg.w	d3

loc_16844:
		cmp.w	d0,d1
		bcs.s	loc_1687A
		moveq	#0,d1
		move.w	$38(a0),d1
		sub.w	obY(a1),d1
		swap	d1
		divs.w	d3,d1
		moveq	#0,d0
		move.w	$36(a0),d0
		sub.w	obX(a1),d0
		beq.s	loc_16866
		swap	d0
		divs.w	d1,d0

loc_16866:
		move.w	d0,obVelX(a1)
		move.w	d3,obVelY(a1)
		tst.w	d1
		bpl.s	loc_16874
		neg.w	d1

loc_16874:
		move.w	d1,$2E(a0)
		rts	
; ===========================================================================

loc_1687A:
		moveq	#0,d0
		move.w	$36(a0),d0
		sub.w	obX(a1),d0
		swap	d0
		divs.w	d2,d0
		moveq	#0,d1
		move.w	$38(a0),d1
		sub.w	obY(a1),d1
		beq.s	loc_16898
		swap	d1
		divs.w	d0,d1

loc_16898:
		move.w	d1,obVelY(a1)
		move.w	d2,obVelX(a1)
		tst.w	d0
		bpl.s	loc_168A6
		neg.w	d0

loc_168A6:
		move.w	d0,$2E(a0)
		rts	
; End of function sub_1681C

; ===========================================================================
Tele_Data:	dc.w @type00-Tele_Data, @type01-Tele_Data, @type02-Tele_Data
		dc.w @type03-Tele_Data, @type04-Tele_Data, @type05-Tele_Data
		dc.w @type06-Tele_Data, @type07-Tele_Data, @type07-Tele_Data
@type00:	dc.w $28,	$1190, $0488, $114C, $04AC
		dc.w	$10C0, $04AC, $103C, $04CC, $0FC4, $04CC, $0F40, $04AC
		dc.w	$0EF0, $04AC, $0ECC, $04A4, $0E94, $04E0, $0E90, $0588
@type01:	dc.w $20,	$0AC0, $05B0, $0A40, $05CC, $09C4, $05CC, $093C, $05AC
		dc.w	$08F0, $05AC, $08CC, $05A4, $0894, $05E8, $0890, $0688
@type02:	dc.w $18, $0794, $007C, $0758, $00AC, $06F4, $00AC, $06CC, $00A4
		dc.w	$0694, $00E4, $0690, $0184
@type03:	dc.w 4,	$0094, $0388
@type04:	dc.w $2C, $1394, $0370, $13D0, $03AC, $142C, $03AC, $1450, $03A4
		dc.w	$1494, $03DC, $1494, $0474, $14CC, $04AC, $1530, $04AC, $1550, $04A4
		dc.w	$1594, $04E0, $1598, $0588
@type05:	dc.w 4,	$1298, $0688
@type06:	dc.w 4, $0994, $0084
@type07:	dc.w 4,	$1794, $0788
