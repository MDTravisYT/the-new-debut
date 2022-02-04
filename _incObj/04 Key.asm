; ---------------------------------------------------------------------------
; Object 24 - rings
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

;Key_type:	equ $30

; ===========================================================================

Key_Main:	; Routine 0
		lea	(v_objstate).w,a2
		moveq	#0,d0
		move.b	obRespawnNo(a0),d0
		lea	2(a2,d0.w),a2
		move.b	(a2),d4
		move.b	obSubtype(a0),d1

		addq.b	#2,obRoutine(a0)
		;move.w	d2,obX(a1)	; set x-axis position based on d2
		;move.w	obX(a0),$32(a1)
		;move.w	d3,obY(a1)	; set y-axis position based on d3
		move.l	#Map_Key,obMap(a0)
		move.w	#$26C0,obGfx(a0)
		move.b	#4,obRender(a0)
		move.b	#2,obPriority(a0)
		move.b	#$47,obColType(a0)
		move.b	#8,obActWid(a0)
		move.b	#2,obAnim(a0)
		;move.b	obRespawnNo(a0),obRespawnNo(a1)
		move.b	d1,$34(a0)
		
		jsr		KeyCheckOrder
		;move.b	d1,Key_type(a0)
		;cmpi.b	(v_emeralds).w,Key_type(a0) ; check subtype with Keys
		;bhi.w	DeleteObject ; delete if subtype is lower than Keys

Key_Animate:	; Routine 2
		;move.b	(v_ani1_frame).w,obFrame(a0) ; set frame
		jsr		KeyCheckOrder
	;	lea	(Ani_Key).l,a1
	;	bsr.w	AnimateSprite
		bsr.w	DisplaySprite
		out_of_range.w	DeleteObject
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

Key_Delete:	; Routine 8
		bra.w	DeleteObject

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


CollectKey:
		addq.b	#1,(v_emeralds).w
		move.b	obSubtype(a0),(v_emldlist).w
		sfx		$C9,0,0,0
		rts
		move.w	d0,(v_jpadhold2).w ; stop Sonic moving
		move.b	#1,(f_lockctrl).w ; lock controls

		;addq.b	#1,(v_emeralds).w
		;move.w	#bgm_Key,d0 ; play extra life music

	;@playsnd:
		lea 	(v_player),a1
		clr.b	obInertia(a1)
		move.w	#-$F00,obVelY(a1)
		clr.w	obVelX(a1)
		;clr.w	obVelY(a1)
		move.b	#id_Leap2,obAnim(a1)
		;move.w	#-$F00,obVelY(a1)
		;move.b	#id_Leap2,obAnim(a1)
		rts
		;jmp	(PlaySound_Special).l
		;sfx		bgm_Key,1,0,0
		;rts
KeyCheckOrder:
		move.b	obSubtype(a0),d3
		move.b	(v_emeralds).w,d2 ; check to see if Key count is same as subtype to avoid infinite Keys
		sub.w	d2,d3
		tst.b	d3
		blt.w	DeleteObject
		move.b	obSubtype(a0),d3
		move.b	(v_emldlist).w,d4 ; check to see if current Key equals subtype to avoid infinite Keys
		cmp.b	d3,d4
		beq.w	DeleteObject
		rts
; End of function CollectKey