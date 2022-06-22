; ---------------------------------------------------------------------------
; Object 24 - rings
; ---------------------------------------------------------------------------

TestDisplay:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	off_4CCC(pc,d0.w),d1
		jmp	off_4CCC(pc,d1.w)
; ---------------------------------------------------------------------------

off_4CCC:	dc.w loc_4CD4-off_4CCC, loc_4D04-off_4CCC, loc_4D28-off_4CCC, loc_4D28-off_4CCC
; ---------------------------------------------------------------------------

loc_4CD4:
		addq.b	#2,$24(a0)		;Object Routine
		move.w	#$84,$C(a0)	;	Y
		move.w	#$D7,$8(a0)		;	X
		move.l	#Map02,4(a0)
		move.w	#$2100,2(a0)
		move.b	#4,1(a0)
		move.b	#1,$21(a0)		;Unused SST
		move.b	#2,$1A(a0)		;ObFrame
		move.b	#3,$19(a0)		;ObPri

loc_4D04:
		bsr.w	DisplaySprite
		subq.b	#1,$1E(a0)
		bpl.s	locret_4D26
		move.b	#$4,$1E(a0)
		move.b	$1A(a0),d0
		addq.b	#1,d0
		cmpi.b	#$28,d0			;Is $1A lower than $28?
		blo.s	loc_4D22		;If so, set frame
		moveq	#$28,d0

loc_4D22:
		move.b	d0,$1A(a0)

locret_4D26:
		rts
; ---------------------------------------------------------------------------

loc_4D28:
		bsr.w	DeleteObject
		rts
; End of function CollectKey

