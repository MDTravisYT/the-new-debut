; ---------------------------------------------------------------------------
; Background layer deformation subroutines
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


DeformLayers:
		tst.b	(f_nobgscroll).w
		beq.s	@bgscroll
		rts	
; ===========================================================================

	@bgscroll:
		clr.w	(v_fg_scroll_flags).w
		clr.w	(v_bg1_scroll_flags).w
		clr.w	(v_bg2_scroll_flags).w
		clr.w	(v_bg3_scroll_flags).w
		bsr.w	ScrollHoriz
		bsr.w	ScrollVertical
		bsr.w	DynamicLevelEvents
		move.w	(v_screenposy).w,(v_scrposy_dup).w
		move.w	(v_bgscreenposy).w,(v_bgscrposy_dup).w
		moveq	#0,d0
		move.b	(v_zone).w,d0
		add.w	d0,d0
		move.w	Deform_Index(pc,d0.w),d0
		jmp	Deform_Index(pc,d0.w)
; End of function DeformLayers

; ===========================================================================
; ---------------------------------------------------------------------------
; Offset index for background layer deformation	code
; ---------------------------------------------------------------------------
Deform_Index:	dc.w Deform_GHZ-Deform_Index, Deform_LZ-Deform_Index
		dc.w Deform_MZ-Deform_Index, Deform_SLZ-Deform_Index
		dc.w Deform_SYZ-Deform_Index, Deform_SBZ-Deform_Index
		dc.w Deform_SBZ-Deform_Index, Deform_GHZ-Deform_Index
		dc.w Deform_CSZ-Deform_Index
; ---------------------------------------------------------------------------
; Green	Hill Zone background layer deformation code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

Deform_GHZ:
	; block 3 - distant mountains
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#2,d4
		move.l	d4,d1
		asl.l	#1,d4
		add.l	d1,d4
		moveq	#0,d6
		bsr.w	BGScroll_Block3
	; block 2 - hills & waterfalls
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#5,d4
		moveq	#0,d6
		bsr.w	BGScroll_Block2
	; calculate Y position
		lea	(v_hscrolltablebuffer).w,a1
		move.w	(v_screenposy).w,d0
		andi.w	#$7FF,d0
		lsr.w	#5,d0
		neg.w	d0
		addi.w	#$10,d0
		bpl.s	@limitY
		moveq	#0,d0
	@limitY:
		move.w	d0,d4
		move.w	d0,(v_bgscrposy_dup).w
		move.w	(v_screenposx).w,d0
		cmpi.b	#id_Title,(v_gamemode).w
		bne.s	@notTitle
		moveq	#0,d0	; reset foreground position in title screen
	@notTitle:
		neg.w	d0
		swap	d0
	; auto-scroll clouds
		lea	(v_bgscroll_buffer).w,a2
		addi.l	#$8000,(a2)+
		addi.l	#$8000,(a2)+
		addi.l	#$8000,(a2)+
	; calculate background scroll	
		move.w	(v_bgscroll_buffer).w,d0
		add.w	(v_bg3screenposx).w,d0
		neg.w	d0
		move.w	#$1F,d1
		sub.w	d4,d1
		bcs.s	@gotoCloud2
	@cloudLoop1:		; upper cloud (32px)
		move.l	d0,(a1)+
		dbf	d1,@cloudLoop1

	@gotoCloud2:
		move.w	(v_bgscroll_buffer+4).w,d0
		add.w	(v_bg3screenposx).w,d0
		neg.w	d0
		move.w	#$F,d1
	@cloudLoop2:		; middle cloud (16px)
		move.l	d0,(a1)+
		dbf	d1,@cloudLoop2

		move.w	(v_bgscroll_buffer+8).w,d0
		add.w	(v_bg3screenposx).w,d0
		neg.w	d0
		move.w	#$F,d1
	@cloudLoop3:		; lower cloud (16px)
		move.l	d0,(a1)+
		dbf	d1,@cloudLoop3

		move.w	#$6E,d1
		move.w	(v_bg3screenposx).w,d0
		neg.w	d0
	@mountainLoop:		; distant mountains (48px)
		move.l	d0,(a1)+
		dbf	d1,@mountainLoop

		move.w	#$00,d1
		move.w	(v_bg2screenposx).w,d0
		neg.w	d0
	@hillLoop:			; hills & waterfalls (40px)
		move.l	d0,(a1)+
		dbf	d1,@hillLoop

		move.w	(v_bg2screenposx).w,d0
		move.w	(v_screenposx).w,d2
		sub.w	d0,d2
		ext.l	d2
		asl.l	#8,d2
		divs.w	#$68,d2
		ext.l	d2
		asl.l	#8,d2
		moveq	#0,d3
		move.w	d0,d3
		move.w	#$47,d1
		add.w	d4,d1
	@waterLoop:			; water deformation
		move.w	d3,d0
		neg.w	d0
		move.l	d0,(a1)+
	;	swap	d3
	;	add.l	d2,d3
	;	swap	d3
		dbf	d1,@waterLoop
		rts
; End of function Deform_GHZ

; ---------------------------------------------------------------------------
; Labyrinth Zone background layer deformation code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||
Deform_LZ:
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#7,d4
		move.w	(v_scrshifty).w,d5
		ext.l	d5
		asl.l	#7,d5
		bsr.w	BGScroll_Block1
		move.w #$0,($FFFFF70C).w
		move.w	(v_bgscreenposy).w,(v_bgscrposy_dup).w
		lea	($FFFFCC00).w,a1	; load beginning address of horizontal scroll buffer to a1

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#1,d0			; divide by 2 (Slow down the scroll position)
		move.w	#48-1,d1		; set number of scan lines to dump (minus 1 for dbf)
LZ_DeformLoop_1:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,LZ_DeformLoop_1	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#2,d0			; divide by 4 (Slow down the scroll position)
		move.w	#24-1,d1		; set number of scan lines to dump (minus 1 for dbf)
LZ_DeformLoop_2:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,LZ_DeformLoop_2	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#3,d0			; divide by 8 (Slow down the scroll position)
		move.w	#8-1,d1		; set number of scan lines to dump (minus 1 for dbf)
LZ_DeformLoop_3:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,LZ_DeformLoop_3	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#4,d0			; divide by 16 (Slow down the scroll position)
		move.w	#64-1,d1		; set number of scan lines to dump (minus 1 for dbf)
LZ_DeformLoop_4:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,LZ_DeformLoop_4	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#3,d0			; divide by 8 (Slow down the scroll position)
		move.w	#8-1,d1		; set number of scan lines to dump (minus 1 for dbf)
LZ_DeformLoop_5:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,LZ_DeformLoop_5	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#2,d0			; divide by 4 (Slow down the scroll position)
		move.w	#24-1,d1		; set number of scan lines to dump (minus 1 for dbf)
LZ_DeformLoop_6:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,LZ_DeformLoop_6	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#1,d0			; divide by 2 (Slow down the scroll position)
		move.w	#54-1,d1		; set number of scan lines to dump (minus 1 for dbf)
LZ_DeformLoop_7:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,LZ_DeformLoop_7	; repeat d1 number of scanlines
		rts	
; End of function Deform_LZ

; ---------------------------------------------------------------------------
; Marble Zone background layer deformation code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Deform_MZ:
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#6,d4
		move.l	d4,d1
		asl.l	#1,d4
		add.l	d1,d4
		moveq	#0,d5
		bsr.w	ScrollBlock1
		move.w	#$200,d0
		move.w	(v_screenposy).w,d1
		subi.w	#$1C8,d1
		bcs.s	loc_6402
		move.w	d1,d2
		add.w	d1,d1
		add.w	d2,d1
		asr.w	#2,d1
		add.w	d1,d0

loc_6402:
		move.w	d0,(v_bg2screenposy).w
		bsr.w	ScrollBlock3
		move.w	(v_bgscreenposy).w,(v_bgscrposy_dup).w
		lea	(v_hscrolltablebuffer).w,a1
		move.w	#223,d1
		move.w	(v_screenposx).w,d0
		neg.w	d0
		swap	d0
		move.w	(v_bgscreenposx).w,d0
		neg.w	d0

loc_6426:
		move.l	d0,(a1)+
		dbf	d1,loc_6426
		rts	
; End of function Deform_MZ

; ---------------------------------------------------------------------------
; Star Light Zone background layer deformation code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Deform_SLZ:
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#7,d4
		move.w	(v_scrshifty).w,d5
		ext.l	d5
		asl.l	#7,d5
		bsr.w	ScrollBlock2
		move.w	(v_bgscreenposy).w,(v_bgscrposy_dup).w
		bsr.w	Deform_SLZ_2
		lea	(v_bgscroll_buffer).w,a2
		move.w	(v_bgscreenposy).w,d0
		move.w	d0,d2
		subi.w	#$C0,d0
		andi.w	#$3F0,d0
		lsr.w	#3,d0
		lea	(a2,d0.w),a2
		lea	(v_hscrolltablebuffer).w,a1
		move.w	#$E,d1
		move.w	(v_screenposx).w,d0
		neg.w	d0
		swap	d0
		andi.w	#$F,d2
		add.w	d2,d2
		move.w	(a2)+,d0
		jmp	loc_6482(pc,d2.w)
; ===========================================================================

loc_6480:
		move.w	(a2)+,d0

loc_6482:
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		move.l	d0,(a1)+
		dbf	d1,loc_6480
		rts	
; End of function Deform_SLZ

Deform_SLZ_2:
		lea	(v_bgscroll_buffer).w,a1
		move.w	(v_screenposx).w,d2
		neg.w	d2
		move.w	d2,d0
		asr.w	#3,d0
		sub.w	d2,d0
		ext.l	d0
		asl.l	#4,d0
		divs.w	#$1C,d0
		ext.l	d0
		asl.l	#4,d0
		asl.l	#8,d0
		moveq	#0,d3
		move.w	d2,d3
		move.w	#$1B,d1

loc_64CE:
		move.w	d3,(a1)+
		swap	d3
		add.l	d0,d3
		swap	d3
		dbf	d1,loc_64CE
		move.w	d2,d0
		asr.w	#3,d0
		move.w	#4,d1

loc_64E2:
		move.w	d0,(a1)+
		dbf	d1,loc_64E2
		move.w	d2,d0
		asr.w	#2,d0
		move.w	#4,d1

loc_64F0:
		move.w	d0,(a1)+
		dbf	d1,loc_64F0
		move.w	d2,d0
		asr.w	#1,d0
		move.w	#$1D,d1

loc_64FE:
		move.w	d0,(a1)+
		dbf	d1,loc_64FE
		rts	
; End of function Deform_SLZ_2

; ---------------------------------------------------------------------------
; Spring Yard Zone background layer deformation	code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Deform_SYZ:
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#6,d4
		move.w	(v_scrshifty).w,d5
		ext.l	d5
		asl.l	#4,d5
		move.l	d5,d1
		asl.l	#1,d5
		add.l	d1,d5
		bsr.w	ScrollBlock1
		move.w	(v_bgscreenposy).w,(v_bgscrposy_dup).w
		lea	(v_hscrolltablebuffer).w,a1
		move.w	#223,d1
		move.w	(v_screenposx).w,d0
		neg.w	d0
		swap	d0
		move.w	(v_bgscreenposx).w,d0
		neg.w	d0

loc_653C:
		move.l	d0,(a1)+
		dbf	d1,loc_653C
		rts	
; End of function Deform_SYZ

; ---------------------------------------------------------------------------
; Scrap	Brain Zone background layer deformation	code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Deform_SBZ:
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#6,d4
		move.w	(v_scrshifty).w,d5
		ext.l	d5
		asl.l	#4,d5
		asl.l	#1,d5
		bsr.w	ScrollBlock1
		move.w	(v_bgscreenposy).w,(v_bgscrposy_dup).w
		lea	(v_hscrolltablebuffer).w,a1
		move.w	#223,d1
		move.w	(v_screenposx).w,d0
		neg.w	d0
		swap	d0
		move.w	(v_bgscreenposx).w,d0
		neg.w	d0

loc_6576:
		move.l	d0,(a1)+
		dbf	d1,loc_6576
		rts	
; End of function Deform_SBZ

Deform_CSZ:
		move.w	(v_scrshiftx).w,d4
		ext.l	d4
		asl.l	#7,d4
		move.w	(v_scrshifty).w,d5
		ext.l	d5
		asl.l	#7,d5
		bsr.w	ScrollBlock1
		move.w #$0,($FFFFF70C).w
		move.w	(v_bgscreenposy).w,(v_bgscrposy_dup).w
		lea	($FFFFCC00).w,a1	; load beginning address of horizontal scroll buffer to a1

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#8,d0			; divide by 256 (Slow down the scroll position)
		move.w	#108-1,d1		; set number of scan lines to dump (minus 1 for dbf)
CSZ_Deform1:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,CSZ_Deform1	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#5,d0			; divide by 64 (Slow down the scroll position)
		move.w	#12-1,d1		; set number of scan lines to dump (minus 1 for dbf)
CSZ_Deform2:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,CSZ_Deform2	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#5,d0			; divide by 32 (Slow down the scroll position)
		move.w	#8-1,d1		; set number of scan lines to dump (minus 1 for dbf)
CSZ_Deform3:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,CSZ_Deform3	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#4,d0			; divide by 16 (Slow down the scroll position)
		move.w	#8-1,d1		; set number of scan lines to dump (minus 1 for dbf)
CSZ_Deform4:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,CSZ_Deform4	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#3,d0			; divide by 8 (Slow down the scroll position)
		move.w	#8-1,d1		; set number of scan lines to dump (minus 1 for dbf)
CSZ_Deform5:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,CSZ_Deform5	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#2,d0			; divide by 4 (Slow down the scroll position)
		move.w	#32-1,d1		; set number of scan lines to dump (minus 1 for dbf)
CSZ_Deform6:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,CSZ_Deform6	; repeat d1 number of scanlines

		move.w	($FFFFF700).w,d0	; load FG screen's X position
		neg.w	d0			; negate (positive to negative)
		swap	d0			; send to the left side of d0
		move.w	($FFFFF708).w,d0	; load BG screen's X position
		neg.w	d0			; negate (positive to negative)
		asr.w	#1,d0			; divide by 2 (Slow down the scroll position)
		move.w	#54-1,d1		; set number of scan lines to dump (minus 1 for dbf)
CSZ_Deform7:
		move.l	d0,(a1)+		; dump both the FG and BG scanline position to buffer
		dbf	d1,CSZ_Deform7	; repeat d1 number of scanlines
; End of function Deform_CSZ

; ---------------------------------------------------------------------------
; Subroutine to	scroll the level horizontally as Sonic moves
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


ScrollHoriz:
		move.w	(v_screenposx).w,d4 ; save old screen position
		bsr.s	MoveScreenHoriz
		move.w	(v_screenposx).w,d0
		andi.w	#$10,d0
		move.b	(v_fg_xblock).w,d1
		eor.b	d1,d0
		bne.s	@return
		eori.b	#$10,(v_fg_xblock).w
		move.w	(v_screenposx).w,d0
		sub.w	d4,d0		; compare new with old screen position
		bpl.s	@scrollRight

		bset	#2,(v_fg_scroll_flags).w ; screen moves backward
		rts	

	@scrollRight:
		bset	#3,(v_fg_scroll_flags).w ; screen moves forward

	@return:
		rts	
; End of function ScrollHoriz


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


MoveScreenHoriz:
		move.w	(v_player+obX).w,d0
		sub.w	(v_screenposx).w,d0 ; Sonic's distance from left edge of screen
		subi.w	#144,d0		; is distance less than 144px?
		bcs.s	SH_BehindMid	; if yes, branch
		subi.w	#16,d0		; is distance more than 160px?
		bcc.s	SH_AheadOfMid	; if yes, branch
		clr.w	(v_scrshiftx).w
		rts	
; ===========================================================================

SH_AheadOfMid:
		cmpi.w	#16,d0		; is Sonic within 16px of middle area?
		bcs.s	SH_Ahead16	; if yes, branch
		move.w	#16,d0		; set to 16 if greater

	SH_Ahead16:
		add.w	(v_screenposx).w,d0
		cmp.w	(v_limitright2).w,d0
		blt.s	SH_SetScreen
		move.w	(v_limitright2).w,d0

SH_SetScreen:
		move.w	d0,d1
		sub.w	(v_screenposx).w,d1
		asl.w	#8,d1
		move.w	d0,(v_screenposx).w ; set new screen position
		move.w	d1,(v_scrshiftx).w ; set distance for screen movement
		rts	
; ===========================================================================

SH_BehindMid:
		add.w	(v_screenposx).w,d0
		cmp.w	(v_limitleft2).w,d0
		bgt.s	SH_SetScreen
		move.w	(v_limitleft2).w,d0
		bra.s	SH_SetScreen
; End of function MoveScreenHoriz

; ===========================================================================
		tst.w	d0
		bpl.s	loc_6610
		move.w	#-2,d0
		bra.s	SH_BehindMid

loc_6610:
		move.w	#2,d0
		bra.s	SH_AheadOfMid

; ---------------------------------------------------------------------------
; Subroutine to	scroll the level vertically as Sonic moves
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


ScrollVertical:
		moveq	#0,d1
		move.w	(v_player+obY).w,d0
		sub.w	(v_screenposy).w,d0 ; Sonic's distance from top of screen
		btst	#2,(v_player+obStatus).w ; is Sonic rolling?
		beq.s	SV_NotRolling	; if not, branch
		subq.w	#5,d0

	SV_NotRolling:
		btst	#1,(v_player+obStatus).w ; is Sonic jumping?
		beq.s	loc_664A	; if not, branch

		addi.w	#32,d0
		sub.w	(v_lookshift).w,d0
		bcs.s	loc_6696
		subi.w	#64,d0
		bcc.s	loc_6696
		tst.b	(f_bgscrollvert).w
		bne.s	loc_66A8
		bra.s	loc_6656
; ===========================================================================

loc_664A:
		sub.w	(v_lookshift).w,d0
		bne.s	loc_665C
		tst.b	(f_bgscrollvert).w
		bne.s	loc_66A8

loc_6656:
		clr.w	(v_scrshifty).w
		rts	
; ===========================================================================

loc_665C:
		cmpi.w	#$60,(v_lookshift).w
		bne.s	loc_6684
		move.w	(v_player+obInertia).w,d1
		bpl.s	loc_666C
		neg.w	d1

loc_666C:
		cmpi.w	#$800,d1
		bcc.s	loc_6696
		move.w	#$600,d1
		cmpi.w	#6,d0
		bgt.s	loc_66F6
		cmpi.w	#-6,d0
		blt.s	loc_66C0
		bra.s	loc_66AE
; ===========================================================================

loc_6684:
		move.w	#$200,d1
		cmpi.w	#2,d0
		bgt.s	loc_66F6
		cmpi.w	#-2,d0
		blt.s	loc_66C0
		bra.s	loc_66AE
; ===========================================================================

loc_6696:
		move.w	#$1000,d1
		cmpi.w	#$10,d0
		bgt.s	loc_66F6
		cmpi.w	#-$10,d0
		blt.s	loc_66C0
		bra.s	loc_66AE
; ===========================================================================

loc_66A8:
		moveq	#0,d0
		move.b	d0,(f_bgscrollvert).w

loc_66AE:
		moveq	#0,d1
		move.w	d0,d1
		add.w	(v_screenposy).w,d1
		tst.w	d0
		bpl.w	loc_6700
		bra.w	loc_66CC
; ===========================================================================

loc_66C0:
		neg.w	d1
		ext.l	d1
		asl.l	#8,d1
		add.l	(v_screenposy).w,d1
		swap	d1

loc_66CC:
		cmp.w	(v_limittop2).w,d1
		bgt.s	loc_6724
		cmpi.w	#-$100,d1
		bgt.s	loc_66F0
		andi.w	#$7FF,d1
		andi.w	#$7FF,(v_player+obY).w
		andi.w	#$7FF,(v_screenposy).w
		andi.w	#$3FF,(v_bgscreenposy).w
		bra.s	loc_6724
; ===========================================================================

loc_66F0:
		move.w	(v_limittop2).w,d1
		bra.s	loc_6724
; ===========================================================================

loc_66F6:
		ext.l	d1
		asl.l	#8,d1
		add.l	(v_screenposy).w,d1
		swap	d1

loc_6700:
		cmp.w	(v_limitbtm2).w,d1
		blt.s	loc_6724
		subi.w	#$800,d1
		bcs.s	loc_6720
		andi.w	#$7FF,(v_player+obY).w
		subi.w	#$800,(v_screenposy).w
		andi.w	#$3FF,(v_bgscreenposy).w
		bra.s	loc_6724
; ===========================================================================

loc_6720:
		move.w	(v_limitbtm2).w,d1

loc_6724:
		move.w	(v_screenposy).w,d4
		swap	d1
		move.l	d1,d3
		sub.l	(v_screenposy).w,d3
		ror.l	#8,d3
		move.w	d3,(v_scrshifty).w
		move.l	d1,(v_screenposy).w
		move.w	(v_screenposy).w,d0
		andi.w	#$10,d0
		move.b	(v_fg_yblock).w,d1
		eor.b	d1,d0
		bne.s	@return
		eori.b	#$10,(v_fg_yblock).w
		move.w	(v_screenposy).w,d0
		sub.w	d4,d0
		bpl.s	@scrollBottom
		bset	#0,(v_fg_scroll_flags).w
		rts	
; ===========================================================================

	@scrollBottom:
		bset	#1,(v_fg_scroll_flags).w

	@return:
		rts	
; End of function ScrollVertical


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||
; Scrolls background and sets redraw flags.
; d4 - background x offset * $10000
; d5 - background y offset * $10000

BGScroll_XY:
		move.l	(v_bgscreenposx).w,d2
		move.l	d2,d0
		add.l	d4,d0
		move.l	d0,(v_bgscreenposx).w
		move.l	d0,d1
		swap.w	d1
		andi.w	#$10,d1
		move.b	(v_bg1_xblock).w,d3
		eor.b	d3,d1
		bne.s	BGScroll_YRelative	; no change in Y
		eori.b	#$10,(v_bg1_xblock).w
		sub.l	d2,d0	; new - old
		bpl.s	@scrollRight
		bset	#2,(v_bg1_scroll_flags).w
		bra.s	BGScroll_YRelative
	@scrollRight:
		bset	#3,(v_bg1_scroll_flags).w
BGScroll_YRelative:
		move.l	(v_bgscreenposy).w,d3
		move.l	d3,d0
		add.l	d5,d0
		move.l	d0,(v_bgscreenposy).w
		move.l	d0,d1
		swap.w	d1
		andi.w	#$10,d1
		move.b	(v_bg1_yblock).w,d2
		eor.b	d2,d1
		bne.s	@return
		eori.b	#$10,(v_bg1_yblock).w
		sub.l	d3,d0
		bpl.s	@scrollBottom
		bset	#0,(v_bg1_scroll_flags).w
		rts
	@scrollBottom:
		bset	#1,(v_bg1_scroll_flags).w
	@return:
		rts
; End of function BGScroll_XY

Bg_Scroll_Y:
		move.l	(v_bgscreenposy).w,d3
		move.l	d3,d0
		add.l	d5,d0
		move.l	d0,(v_bgscreenposy).w
		move.l	d0,d1
		swap.w	d1
		andi.w	#$10,d1
		move.b	(v_bg1_yblock).w,d2
		eor.b	d2,d1
		bne.s	@return
		eori.b	#$10,(v_bg1_yblock).w
		sub.l	d3,d0
		bpl.s	@scrollBottom
		bset	#4,(v_bg1_scroll_flags).w
		rts
	@scrollBottom:
		bset	#5,(v_bg1_scroll_flags).w
	@return:
		rts


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


BGScroll_YAbsolute:
		move.w	(v_bgscreenposy).w,d3
		move.w	d0,(v_bgscreenposy).w
		move.w	d0,d1
		andi.w	#$10,d1
		move.b	(v_bg1_yblock).w,d2
		eor.b	d2,d1
		bne.s	@return
		eori.b	#$10,(v_bg1_yblock).w
		sub.w	d3,d0
		bpl.s	@scrollBottom
		bset	#0,(v_bg1_scroll_flags).w
		rts
	@scrollBottom:
		bset	#1,(v_bg1_scroll_flags).w
	@return:
		rts
; End of function BGScroll_YAbsolute


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||
; d6 - bit to set for redraw

BGScroll_Block1:
		move.l	(v_bgscreenposx).w,d2
		move.l	d2,d0
		add.l	d4,d0
		move.l	d0,(v_bgscreenposx).w
		move.l	d0,d1
		swap.w	d1
		andi.w	#$10,d1
		move.b	(v_bg1_xblock).w,d3
		eor.b	d3,d1
		bne.s	@return
		eori.b	#$10,(v_bg1_xblock).w
		sub.l	d2,d0
		bpl.s	@scrollRight
		bset	d6,(v_bg1_scroll_flags).w
		bra.s	@return
	@scrollRight:
		addq.b	#1,d6
		bset	d6,(v_bg1_scroll_flags).w
	@return:
		rts
; End of function BGScroll_Block1


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


BGScroll_Block2:
		move.l	(v_bg2screenposx).w,d2
		move.l	d2,d0
		add.l	d4,d0
		move.l	d0,(v_bg2screenposx).w
		move.l	d0,d1
		swap.w	d1
		andi.w	#$10,d1
		move.b	(v_bg2_xblock).w,d3
		eor.b	d3,d1
		bne.s	@return
		eori.b	#$10,(v_bg2_xblock).w
		sub.l	d2,d0
		bpl.s	@scrollRight
		bset	d6,(v_bg2_scroll_flags).w
		bra.s	@return
	@scrollRight:
		addq.b	#1,d6
		bset	d6,(v_bg2_scroll_flags).w
	@return:
		rts
;-------------------------------------------------------------------------------
BGScroll_Block3:
		move.l	(v_bg3screenposx).w,d2
		move.l	d2,d0
		add.l	d4,d0
		move.l	d0,(v_bg3screenposx).w
		move.l	d0,d1
		swap.w	d1
		andi.w	#$10,d1
		move.b	(v_bg3_xblock).w,d3
		eor.b	d3,d1
		bne.s	@return
		eori.b	#$10,(v_bg3_xblock).w
		sub.l	d2,d0
		bpl.s	@scrollRight
		bset	d6,(v_bg3_scroll_flags).w
		bra.s	@return
	@scrollRight:
		addq.b	#1,d6
		bset	d6,(v_bg3_scroll_flags).w
	@return:
		rts
		
BGScroll_Block4:
		move.w	(v_bg2screenposx).w,d2
		move.w	(v_bg2screenposy).w,d3
		move.w	(v_scrshiftx).w,d0
		ext.l	d0
		asl.l	#7,d0
		add.l	d0,(v_bg2screenposx).w
		move.w	(v_bg2screenposx).w,d0
		andi.w	#$10,d0
		move.b	($FFFFF74E).w,d1
		eor.b	d1,d0
		bne.s	locret_6884
		eori.b	#$10,($FFFFF74E).w
		move.w	(v_bg2screenposx).w,d0
		sub.w	d2,d0
		bpl.s	loc_687E
		bset	#2,(v_bg2_scroll_flags).w
		bra.s	locret_6884
; ===========================================================================

loc_687E:
		bset	#3,(v_bg2_scroll_flags).w

locret_6884:
		rts
; End of function ScrollBlock4  
; ITS A MIXTURE!
ScrollBlock1:
		move.l	(v_bgscreenposx).w,d2
		move.l	d2,d0
		add.l	d4,d0
		move.l	d0,(v_bgscreenposx).w
		move.l	d0,d1
		swap	d1
		andi.w	#$10,d1
		move.b	($FFFFF74C).w,d3
		eor.b	d3,d1
		bne.s	loc_679C
		eori.b	#$10,($FFFFF74C).w
		sub.l	d2,d0
		bpl.s	loc_6796
		bset	#2,(v_bg1_scroll_flags).w
		bra.s	loc_679C
; ===========================================================================

loc_6796:
		bset	#3,(v_bg1_scroll_flags).w

loc_679C:
		move.l	(v_bgscreenposy).w,d3
		move.l	d3,d0
		add.l	d5,d0
		move.l	d0,(v_bgscreenposy).w
		move.l	d0,d1
		swap	d1
		andi.w	#$10,d1
		move.b	($FFFFF74D).w,d2
		eor.b	d2,d1
		bne.s	locret_67D0
		eori.b	#$10,($FFFFF74D).w
		sub.l	d3,d0
		bpl.s	loc_67CA
		bset	#0,(v_bg1_scroll_flags).w
		rts	
; ===========================================================================

loc_67CA:
		bset	#1,(v_bg1_scroll_flags).w

locret_67D0:
		rts	
; End of function ScrollBlock1


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


ScrollBlock2:
		move.l	(v_bgscreenposx).w,d2
		move.l	d2,d0
		add.l	d4,d0
		move.l	d0,(v_bgscreenposx).w
		move.l	(v_bgscreenposy).w,d3
		move.l	d3,d0
		add.l	d5,d0
		move.l	d0,(v_bgscreenposy).w
		move.l	d0,d1
		swap	d1
		andi.w	#$10,d1
		move.b	($FFFFF74D).w,d2
		eor.b	d2,d1
		bne.s	locret_6812
		eori.b	#$10,($FFFFF74D).w
		sub.l	d3,d0
		bpl.s	loc_680C
		bset	#0,(v_bg1_scroll_flags).w
		rts	
; ===========================================================================

loc_680C:
		bset	#1,(v_bg1_scroll_flags).w

locret_6812:
		rts	
; End of function ScrollBlock2


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


ScrollBlock3:
		move.w	(v_bgscreenposy).w,d3
		move.w	d0,(v_bgscreenposy).w
		move.w	d0,d1
		andi.w	#$10,d1
		move.b	($FFFFF74D).w,d2
		eor.b	d2,d1
		bne.s	locret_6842
		eori.b	#$10,($FFFFF74D).w
		sub.w	d3,d0
		bpl.s	loc_683C
		bset	#0,(v_bg1_scroll_flags).w
		rts	
; ===========================================================================

loc_683C:
		bset	#1,(v_bg1_scroll_flags).w

locret_6842:
		rts	
; End of function ScrollBlock3


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


ScrollBlock4:
		move.w	(v_bg2screenposx).w,d2
		move.w	(v_bg2screenposy).w,d3
		move.w	(v_scrshiftx).w,d0
		ext.l	d0
		asl.l	#7,d0
		add.l	d0,(v_bg2screenposx).w
		move.w	(v_bg2screenposx).w,d0
		andi.w	#$10,d0
		move.b	($FFFFF74E).w,d1
		eor.b	d1,d0
		bne.s	locret_68842
		eori.b	#$10,($FFFFF74E).w
		move.w	(v_bg2screenposx).w,d0
		sub.w	d2,d0
		bpl.s	loc_687E2
		bset	#2,(v_bg2_scroll_flags).w
		bra.s	locret_68842
; ===========================================================================

loc_687E2:
		bset	#3,(v_bg2_scroll_flags).w

locret_68842:
		rts
; End of function ScrollBlock4  
