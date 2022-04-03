; ---------------------------------------------------------------------------
; Subroutine for Sonic when he's underwater
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_WaterTag:	; TODO: re-implement this in a clean and concise way...
		cmpi.b	#id_MHZ,(v_zone).w	; TIS is level MHZ?
		beq.s	@waterTag
		cmpi.b	#id_LZ,(v_zone).w	; is level LZ?
		beq.s	@islabyrinth	; if yes, branch

	@exit:
		rts
; ===========================================================================

	@islabyrinth:
		move.w	(v_waterpos1).w,d0
		cmp.w	obY(a0),d0	; is Sonic above the water?
		bge.w	@abovewater	; if yes, branch
		bra.s	@waterStatus
	@waterTag:  ;TIS
		cmpi.b	#0,(v_tagwater).w    ;TIS Lava Tag?
		beq.w	@abovewater    ; if yes, branch
		jsr		LoadPlayerPalLoop_Wet
	@waterStatus:
		bset	#6,obStatus(a0)
		bne.s	@exit
		bsr.w	ResumeMusic
		move.w	(v_player+obY).w,(v_watersplashpos).w	;TIS copy y-pos
		command	mus_ToWater	; get into water(tm)
		move.b	#id_DrownCount,(v_bubbles).w ; load bubbles object from Sonic's mouth
		move.b	#$81,(v_bubbles+obSubtype).w
		move.w	#$300,(v_sonspeedmax).w ; change Sonic's top speed
		move.w	#6,(v_sonspeedacc).w ; change Sonic's acceleration
		move.w	#$40,(v_sonspeeddec).w ; change Sonic's deceleration
		tst.b	(v_super).w	; Is character Super?
		beq.s	@skip			; If not branch
		move.w	#$500,(v_sonspeedmax).w
		move.w	#$18,(v_sonspeedacc).w
		move.w	#$80,(v_sonspeeddec).w
	@skip:
		tst.b	(v_shoes).w	; does Sonic have Speed Shoes?
		beq.s	@noshoesbelow	; if not, branch
		move.w	#$600,(v_sonspeedmax).w ; change Sonic's top speed
		move.w	#$C,(v_sonspeedacc).w ; change Sonic's acceleration
	@noshoesbelow:
		asr	obVelX(a0)
		asr	obVelY(a0)
		asr	obVelY(a0)	; slow Sonic
		beq.w	@exit		; branch if Sonic stops moving
		move.w	(v_player+obY).w,(v_watersplashpos).w	;TIS copy y-pos
		move.w	#$100,(v_dust+anim).w	; splash animation
		sfx	sfx_Splash	; play splash sound
		rts
; ===========================================================================

@abovewater:
		jsr		LoadPlayerPalLoop_Dry
		bclr	#6,obStatus(a0)
		beq.w	@exit
		bsr.w	ResumeMusic
		move.w	(v_player+obY).w,(v_watersplashpos).w	;TIS copy y-pos
		command	mus_OutWater	; get out of water(tm)
		move.w	#$600,(v_sonspeedmax).w ; restore Sonic's speed
		move.w	#$C,(v_sonspeedacc).w ; restore Sonic's acceleration
		move.w	#$80,(v_sonspeeddec).w ; restore Sonic's deceleration
		tst.b	(v_super).w	; Is Sonic Super?
		beq.s	@Skipout			; If not branch
		move.w	#$A00,(v_sonspeedmax).w
		move.w	#$30,(v_sonspeedacc).w
		move.w	#$100,(v_sonspeeddec).w
@Skipout:
		tst.b	(v_shoes).w	; does Sonic have Speed Shoes?
		beq.s	@noshoesbelow1	; if not, branch
		move.w	#$600,(v_sonspeedmax).w ; change Sonic's top speed
		move.w	#$C,(v_sonspeedacc).w ; change Sonic's acceleration
	@noshoesbelow1:
		cmpi.b	#4,obRoutine(a0)	; is Sonic falling back from getting hurt?
		beq.s	@cont		; if yes, branch
		asl	obVelY(a0)
@cont:
		tst.w	obVelY(a0)
		beq.w	@exit
		move.w	#$100,(v_dust+anim).w	; splash animation
		cmpi.w	#-$1000,obVelY(a0)
		bgt.s	@belowmaxspeed
		move.w	#-$1000,obVelY(a0) ; set maximum speed on leaving water

	@belowmaxspeed:
		sfx	sfx_Splash	; play splash sound
		rts
; End of function Sonic_WaterTag

LoadPlayerPalLoop_Dry:
		move.b	(v_character).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	@loadPalLUT(pc,d0.w),a1
		move.w	#$F,d0             ;TIS Length ($F = full line)
		lea		($FFFFFB00),a2        ;RAM location ($FB00 = line 1)
		jsr		Palload_Loop
        rts

@loadPalLUT:
		dc.l	Pal_Sonic
		dc.l	Pal_Tails
		dc.l	Pal_Knuckles
		dc.l	Pal_Shadow
		dc.l	Pal_Metal
		dc.l	Pal_Mighty
		dc.l	Pal_Amy
		dc.l	Pal_LegacySonic

LoadPlayerPalLoop_Wet:
		move.b	(v_character).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	@loadPalLUT(pc,d0.w),a1
		move.w	#$F,d0             ;TIS Length ($F = full line)
		lea		($FFFFFB00),a2        ;RAM location ($FB00 = line 1)
		jsr		Palload_Loop
        rts

@loadPalLUT:
		dc.l	Pal_LZSonWater
		dc.l	Pal_LZTaiWater
		dc.l	Pal_LZKnuWater
		dc.l	Pal_LZShaWater
		dc.l	Pal_LZMetWater
		dc.l	Pal_LZMtyWater
		dc.l	Pal_LZAmyWater
		dc.l	Pal_LZSonWater