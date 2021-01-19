; ---------------------------------------------------------------------------
; Object 07 - Enemy Imp
; ---------------------------------------------------------------------------

Imp:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Imp_Index(pc,d0.w),d1
		jmp	Imp_Index(pc,d1.w)
; ===========================================================================
Imp_Index:	dc.w Imp_Main-Imp_Index
		dc.w Imp_Action-Imp_Index

imp_timedelay:	equ $30		; time between direction changes
; ===========================================================================

Imp_Main:	; Routine 0
		addq.b	#2,obRoutine(a0)
		move.b	#$13,obHeight(a0)
		move.b	#8,obWidth(a0)
		move.l	#Map_Imp,obMap(a0)
		move.w	#$4A6,obGfx(a0)
		ori.b	#4,obRender(a0)
		move.b	#4,obPriority(a0)
		move.b	#5,obColType(a0)
		move.b	#$C,obActWid(a0)
	;	addq.b	#6,ob2ndRout(a0) ; run "Imp_ChkSonic" routine
		move.b	#2,obAnim(a0)
		
locret_8D54:
		rts

Imp_Action:	; Routine 2
		moveq	#0,d0
		move.b	ob2ndRout(a0),d0
		move.w	@index(pc,d0.w),d1
		jsr	@index(pc,d1.w)
		lea	(Ani_Imp).l,a1
		bsr.w	AnimateSprite
		bra.w	RememberState
; ===========================================================================
@index:		dc.w @changedir-@index
		dc.w Imp_Move-@index
		dc.w Imp_Jump-@index
		dc.w Imp_ChkSonic-@index
; ===========================================================================

@changedir:
		subq.w	#1,imp_timedelay(a0)
		bpl.s	@nochg
		addq.b	#2,ob2ndRout(a0)
		move.w	#255,imp_timedelay(a0)
		move.w	#$80,obVelX(a0)
		move.b	#1,obAnim(a0)
		bchg	#0,obStatus(a0)	; change direction the Imp	is facing
		beq.s	@nochg
		neg.w	obVelX(a0)	; change direction the Imp	is moving

	@nochg:
		rts	
; ===========================================================================

Imp_Move:
		subq.w	#1,imp_timedelay(a0)
		bmi.s	loc_AD842
		bsr.w	SpeedToPos
		bchg	#0,$32(a0)
		bne.s	loc_AD782
		move.w	obX(a0),d3
		addi.w	#$C,d3
		btst	#0,obStatus(a0)
		bne.s	loc_AD6A2
		subi.w	#$18,d3

loc_AD6A2:
		jsr	(ObjFloorDist2).l
		cmpi.w	#$C,d1
		bge.s	loc_AD842
		rts	
; ===========================================================================

loc_AD782:
		jsr	(ObjFloorDist).l
		add.w	d1,obY(a0)
		rts	
; ===========================================================================

loc_AD842:
		btst	#2,(v_vbla_byte).w
		beq.s	loc_ADA42
		subq.b	#2,ob2ndRout(a0)
		move.w	#59,imp_timedelay(a0)
		move.w	#0,obVelX(a0)
		move.b	#0,obAnim(a0)
		rts	
; ===========================================================================

loc_ADA42:
		addq.b	#2,ob2ndRout(a0)
		move.w	#-$400,obVelY(a0)
		move.b	#2,obAnim(a0)
		rts	
; ===========================================================================

Imp_Jump:
		bsr.w	SpeedToPos
		addi.w	#$18,obVelY(a0)
		bmi.s	locret_ADF02
		move.b	#3,obAnim(a0)
		jsr	(ObjFloorDist).l
		tst.w	d1
		bpl.s	locret_ADF02
		add.w	d1,obY(a0)
		move.w	#0,obVelY(a0)
		move.b	#1,obAnim(a0)
		move.w	#255,imp_timedelay(a0)
		subq.b	#2,ob2ndRout(a0)
		bsr.w	Imp_ChkSonic2

locret_ADF02:
		rts	
; ===========================================================================

Imp_ChkSonic:
		move.w	#$60,d2
		bsr.w	Imp_ChkSonic2
		bcc.s	locret_AE202
		move.w	(v_player+obY).w,d0
		sub.w	obY(a0),d0
		bcc.s	locret_AE202
		cmpi.w	#-$40,d0
		move.b	#4,obAnim(a0)
		bcs.s	locret_AE202
		tst.w	(v_debuguse).w
		bne.s	locret_AE202
		subq.b	#2,ob2ndRout(a0)
		move.w	d1,obVelX(a0)
		move.w	#-$400,obVelY(a0)

locret_AE202:
		rts	

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Imp_ChkSonic2:
		move.w	#$80,d1
		bset	#0,obStatus(a0)
		move.w	(v_player+obX).w,d0
		sub.w	obX(a0),d0
		bcc.s	loc_AE402
		neg.w	d0
		neg.w	d1
		bclr	#0,obStatus(a0)

loc_AE402:
		cmp.w	d2,d0
		rts	
		
