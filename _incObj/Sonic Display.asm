; ---------------------------------------------------------------------------
; Subroutine to display Sonic and set music
; ---------------------------------------------------------------------------

Sonic_Display:
		move.b	flashtime(a0),d0
		beq.s	@display
		subq.b	#1,flashtime(a0)
		lsr.w	#3,d0
		bcc.s	@chkinvincible

	@display:
		jsr	(DisplaySprite).l

	@chkinvincible:
		tst.b	(v_invinc).w	; does Sonic have invincibility?
		beq.s	@chkshoes	; if not, branch
		tst.b	(v_super).w ; Prevent Sonic from getting (invincibility, shoes) if Super
		bne.w	ExitDisplay
		tst.b	invtime(a0)	; check	time remaining for invinciblity
		beq.s	@chkshoes	; if no	time remains, branch
		move.b	(v_framebyte).w,d0
		andi.b	#7,d0
		bne.s	@chkshoes
		subq.b	#1,invtime(a0)	; subtract 1 from time
		bne.s	@chkshoes
		tst.b	(f_lockscreen).w
		bne.s	@removeinvincible
		cmpi.w	#$C,(v_air).w
		bcs.s	@removeinvincible
		moveq	#0,d0
		move.b	(v_zone).w,d0
		cmpi.w	#(id_LZ<<8)+3,(v_zone).w ; check if level is SBZ3
		bne.s	@music
		moveq	#5,d0		; play SBZ music
	@music:
		lea	(MusicList2).l,a1
		move.b	(a1,d0.w),d0
		jsr	(PlaySound).l	; play normal music

	@removeinvincible:
		move.b	#0,(v_invinc).w ; cancel invincibility

	@chkshoes:
		tst.b	(v_shoes).w	; does Sonic have speed	shoes?
		beq.s	ExitDisplay		; if not, branch
		tst.b	shoetime(a0)	; check	time remaining
		beq.s	ExitDisplay
		move.b	(v_framebyte).w,d0
		andi.b	#7,d0
		bne.s	ExitDisplay
		subq.b	#1,shoetime(a0)	; subtract 1 from time
		bne.s	ExitDisplay
		move.w	#$600,(v_sonspeedmax).w ; restore Sonic's speed
		move.w	#$C,(v_sonspeedacc).w ; restore Sonic's acceleration
		move.w	#$80,(v_sonspeeddec).w ; restore Sonic's deceleration
		btst	#6,obStatus(a0)	; is Sonic underwater?
		beq.s	@isdry		; if not, branch
		move.w	#$300,(v_sonspeedmax).w ; change Sonic's top speed
		move.w	#$6,(v_sonspeedacc).w	; change Sonic's acceleration
		move.w	#$40,(v_sonspeeddec).w	; change Sonic's deceleration
	@isdry:
		move.b	#0,(v_shoes).w	; cancel speed shoes
		music	bgm_Slowdown,1,0,0	; run music at normal speed

	ExitDisplay:
		rts