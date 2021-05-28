; ---------------------------------------------------------------------------
; Object 25 - Keys
; ---------------------------------------------------------------------------

Key:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Key_Index(pc,d0.w),d1
		jmp	Key_Index(pc,d1.w)
; ===========================================================================
Key_Index:
ptr_Key_Main:		dc.w Key_Main-Key_Index
ptr_Key_Animate:	dc.w Key_Animate-Key_Index
ptr_Key_Collect:	dc.w Key_Collect-Key_Index
ptr_Key_Sparkle:	dc.w Key_Sparkle-Key_Index
ptr_Key_Delete:	dc.w Key_Delete-Key_Index

id_Key_Main:		equ ptr_Key_Main-Key_Index	; 0
id_Key_Animate:		equ ptr_Key_Animate-Key_Index	; 2
id_Key_Collect:		equ ptr_Key_Collect-Key_Index	; 4
id_Key_Sparkle:		equ ptr_Key_Sparkle-Key_Index	; 6
id_Key_Delete:		equ ptr_Key_Delete-Key_Index	; 8
; ---------------------------------------------------------------------------
; Distances between Keys (format: horizontal, vertical)
; ---------------------------------------------------------------------------
Key_PosData:	dc.b $10, 0		; horizontal tight
		dc.b $18, 0		; horizontal normal
		dc.b $20, 0		; horizontal wide
		dc.b 0,	$10		; vertical tight
		dc.b 0,	$18		; vertical normal
		dc.b 0,	$20		; vertical wide
		dc.b $10, $10		; diagonal
		dc.b $18, $18
		dc.b $20, $20
		dc.b $F0, $10
		dc.b $E8, $18
		dc.b $E0, $20
		dc.b $10, 8
		dc.b $18, $10
		dc.b $F0, 8
		dc.b $E8, $10
; ===========================================================================

Key_Main:	; Routine 0
		lea	(v_objstate).w,a2
		moveq	#0,d0
		move.b	obRespawnNo(a0),d0
		lea	2(a2,d0.w),a2
		move.b	(a2),d4
		move.b	obSubtype(a0),d1
		move.b	d1,d0
		andi.w	#7,d1
		cmpi.w	#7,d1
		bne.s	loc_9b80Copy
		moveq	#6,d1

	loc_9b80Copy:
		swap	d1
		move.w	#0,d1
		lsr.b	#4,d0
		add.w	d0,d0
		move.b	Key_PosData(pc,d0.w),d5 ; load Key spacing data
		ext.w	d5
		move.b	Key_PosData+1(pc,d0.w),d6
		ext.w	d6
		movea.l	a0,a1
		move.w	obX(a0),d2
		move.w	obY(a0),d3
		lsr.b	#1,d4
		bcs.s	loc_9c02Copy
		bclr	#7,(a2)
		bra.s	loc_9bbaCopy
; ===========================================================================

Key_MakeKeys:
		swap	d1
		lsr.b	#1,d4
		bcs.s	loc_9c02Copy
		bclr	#7,(a2)
		bsr.w	FindFreeObj
		bne.s	loc_9c0eCopy

loc_9bbaCopy:
		move.b	#$04,0(a1)	; load Key object
		addq.b	#2,obRoutine(a1)
		move.w	d2,obX(a1)	; set x-axis position based on d2
		move.w	obX(a0),$32(a1)
		move.w	d3,obY(a1)	; set y-axis position based on d3
		move.l	#Map_Key,obMap(a1)
		move.w	#$26C0,obGfx(a1)
		move.b	#4,obRender(a1)
		move.b	#2,obPriority(a1)
		move.b	#$47,obColType(a1)
		move.b	#8,obActWid(a1)
		move.b	obRespawnNo(a0),obRespawnNo(a1)
		move.b	d1,$34(a1)

loc_9c02Copy:
		addq.w	#1,d1
		add.w	d5,d2		; add Key spacing value to d2
		add.w	d6,d3		; add Key spacing value to d3
		swap	d1
		dbf	d1,Key_MakeKeys ; repeat for	number of Keys

loc_9c0eCopy:
		btst	#0,(a2)
		bne.w	DeleteObject

Key_Animate:	; Routine 2
	;	move.b	(v_ani1_frame).w,obFrame(a0) ; set frame
		bsr.w	DisplaySprite
	;	out_of_range.s	Key_Delete,$32(a0)
		rts	
; ===========================================================================

Key_Collect:	; Routine 4
		addq.b	#2,obRoutine(a0)
		move.b	#0,obColType(a0)
		move.b	#1,obPriority(a0)
		bsr.w	CollectKey
		lea	(v_objstate).w,a2
		moveq	#0,d0
		move.b	obRespawnNo(a0),d0
		move.b	$34(a0),d1
		bset	d1,2(a2,d0.w)

Key_Sparkle:	; Routine 6
	;	lea	(Ani_Ring).l,a1
	;	bsr.w	AnimateSprite
	;	bra.w	DisplaySprite
; ===========================================================================

Key_Delete:	; Routine 8
		bra.w	DeleteObject

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


CollectKey:
	;	addq.w	#1,(v_emeralds).w	; add 1 to Keys
	;	ori.b	#1,(f_Keycount).w ; update the Keys counter
		move.w	#sfx_Ring,d0	; play Key sound
		jmp	(PlaySound_Special).l
; End of function CollectKey