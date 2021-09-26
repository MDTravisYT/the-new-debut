; ---------------------------------------------------------------------------
; Object 3E - prison capsule
; ---------------------------------------------------------------------------

Prison:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	Pri_Index(pc,d0.w),d1
		jsr	Pri_Index(pc,d1.w)
		jmp	(DisplaySprite).l
		move.w	8(a0),d0
		andi.w	#$FF80,d0
		move.w	(v_screenposx).w,d1
		subi.w	#$80,d1
		andi.w	#$FF80,d1
		sub.w	d1,d0
		cmpi.w	#$280,d0
		jmp	(DeleteObject).l
		rts
; ---------------------------------------------------------------------------

Pri_Index:	dc.w Pri_Main-Pri_Index, Pri_BodyMain-Pri_Index
		dc.w Pri_Switched-Pri_Index, Pri_Explosion-Pri_Index
		dc.w Pri_Explosion-Pri_Index, Pri_Explosion-Pri_Index
		dc.w Pri_Animals-Pri_Index, Pri_EndAct-Pri_Index

byte_B67C:	dc.b 2, $20, 4, 0
		dc.b 4, $C, 5, 1
		dc.b 6, $10, 4, 3
		dc.b 8, $10, 3, 5
; ---------------------------------------------------------------------------

Pri_Main:
		move.l	#Map_Pri,4(a0)
		move.w	#$49D,2(a0)
		move.b	#4,1(a0)
		move.w	$C(a0),$30(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		lsl.w	#2,d0
		lea	byte_B67C(pc,d0.w),a1
		move.b	(a1)+,$24(a0)
		move.b	(a1)+,$18(a0)
		move.b	(a1)+,$19(a0)
		move.b	(a1)+,$1A(a0)
		cmpi.w	#8,d0
		bne.s	locret_B6D4
		move.b	#6,$20(a0)
		move.b	#8,$21(a0)

locret_B6D4:
		rts
; ---------------------------------------------------------------------------

Pri_BodyMain:
		cmpi.b	#2,(v_bossstatus).w
		beq.s	loc_B6F2
		move.w	#$2B,d1
		move.w	#$18,d2
		move.w	#$18,d3
		move.w	8(a0),d4
		jmp	(SolidObject).l
; ---------------------------------------------------------------------------

loc_B6F2:
		tst.b	$25(a0)
		beq.s	loc_B708
		clr.b	$25(a0)
		bclr	#3,(v_player+$22).w
		bset	#1,(v_player+$22).w

loc_B708:
		move.b	#2,$1A(a0)
		rts
; ---------------------------------------------------------------------------

Pri_Switched:
		move.w	#$17,d1
		move.w	#8,d2
		move.w	#8,d3
		move.w	8(a0),d4
		jsr	(SolidObject).l
		lea	(Ani_Pri).l,a1
		jsr	(AnimateSprite).l
		move.w	$30(a0),$C(a0)
		tst.b	$25(a0)
		beq.s	locret_B75E
		addq.w	#8,$C(a0)
		move.b	#$A,$24(a0)
		move.w	#$3C,$1E(a0)
		clr.b	(f_timecount).w
		clr.b	$25(a0)
		bclr	#3,(v_player+$22).w
		bset	#1,(v_player+$22).w

locret_B75E:
		rts
; ---------------------------------------------------------------------------

Pri_Explosion:
		move.b	($FFFFF5C0).w,d0
		andi.b	#7,d0
		bne.s	loc_B7A0
		jsr		(FindFreeObj).l
		bne.s	loc_B7A0
		move.b	#$3F,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		jsr	(RandomNumber).l
		move.w	d0,d1
		moveq	#0,d1
		move.b	d0,d1
		lsr.b	#2,d1
		subi.w	#$20,d1
		add.w	d1,8(a1)
		lsr.w	#8,d0
		lsr.b	#3,d0
		add.w	d0,$C(a1)

loc_B7A0:
		subq.w	#1,obTimeFrame(a0)
		bne.s	locret_B7C4
		move.b	#2,(v_bossstatus).w
		move.b	#$C,$24(a0)
		move.b	#9,$1A(a0)
		move.w	#$B4,$1E(a0)
		addi.w	#$20,$C(a0)

locret_B7C4:
		rts
; ---------------------------------------------------------------------------

Pri_Animals:
		move.b	($FFFFF5C0).w,d0
		andi.b	#7,d0
		bne.s	loc_B7E8
		jsr	(FindFreeObj).l
		bne.s	loc_B7E8
		move.b	#$28,0(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)

loc_B7E8:
		subq.w	#1,$1E(a0)
		bne.s	locret_B7F8
		addq.b	#2,$24(a0)
		move.w	#$3C,$1E(a0)

locret_B7F8:
		rts
; ---------------------------------------------------------------------------

Pri_EndAct:
		subq.w	#1,$1E(a0)
		bne.s	locret_B808
		jsr		(GotThroughAct).l
		jmp	(DeleteObject).l
; ---------------------------------------------------------------------------

locret_B808:
		rts
