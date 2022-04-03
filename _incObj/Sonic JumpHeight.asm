; ---------------------------------------------------------------------------
; Subroutine controlling Sonic's jump height/duration
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_JumpHeight:
		tst.b	obJumping(a0)
		beq.w	Sonic_UpwardsVelocityCap
		move.w	#-$400,d1
		btst	#6,obStatus(a0)
		beq.s	@cont
		move.w	#-$200,d1

	@cont:
		cmp.w	obVelY(a0),d1
		ble.s	@lockcheck
		move.b	(v_jpadhold2).w,d0
		cmpi.b	#id_Amy,(v_character).w
		bne.s	@notamy
		cmp.b 	#1,(v_highJump).w	; check if bit 2 of the Air Attack flag is set
		beq.s	@lockcheck
		andi.b	#btnBC,d0
		bra.s	@cont2
	@notamy:
		andi.b	#btnABC,d0	; is A, B or C pressed?
	@cont2:
		bne.w	locret_134C2	; if yes, branch
		move.w	d1,obVelY(a0)

	@lockcheck:
		tst.b	(f_lockctrl).w	; are controls locked?
		bne.w	locret_134C2	; i don't want you using those moves while they are...
		tst.b	(v_springshoes).w
		bne.w	locret_134C2

Character_DoubleJumpMoves: ; Sets the moves depending on the character
		moveq	#0,d0
		move.b	(v_character).w,d0
		add.w	d0,d0
		add.w	d0,d0
		movea.l	@playerLUT(pc,d0.w),a1
		jmp		(a1)

	@playerLUT:
		dc.l	Sonic_DropDashAndShieldMoves,@ret,@ret,@ret,@ret,@ret,@ret,@ret

	@ret:
		rts



Sonic_DropDashAndShieldMoves: ; Sonic's Abilities
		tst.b	(v_super).w
		bne.s	@skipshield
		cmpi.b	#1,(v_shield).w	; Normal shield?
		bgt.s	@skipdrop

	@skipshield:
		cmpi.b	#4,obDoubleJump(a0)
		beq.w	DropDash_Continue
		cmpi.b	#3,obDoubleJump(a0)
		beq.w	Sonic_DropDash
		cmpi.b	#2,obDoubleJump(a0)
		beq.w	Sonic_DropDash

	@skipdrop:
		tst.b	obDoubleJump(a0)		; is Sonic currently performing a double jump?
		bne.w	locret_134C2			; if yes, branch
		move.b	(v_jpadpress2).w,d0		; Is a jump button pressed?
		andi.b	#btnABC,d0
		beq.s	Sonic_DDASMreturn			; if not, branch
;		bclr	#4,obStatus(a0) ; not necessary but keeping it here just in case
		tst.b	(v_super).w	; check Super-state
		beq.s	Sonic_FireShield		; if not in a super-state, branch
		move.b	#1,obDoubleJump(a0)
		bra.w	Sonic_DropDash

Sonic_DDASMreturn:
		rts

; ---------------------------------------------------------------------------
Sonic_FireShield:
        cmpi.b	#2,(v_shield).w     
		bne.s	Sonic_LightningShield
		move.b	#1,(v_oshield+obAnim).w
		move.b	#1,obDoubleJump(a0)
		move.w	#$800,d0
		btst	#0,status(a0)		; is Sonic facing left?
		beq.s	loc_11958				; if not, branch
		neg.w	d0					; reverse speed value, moving Sonic left

loc_11958:
		move.w	d0,x_vel(a0)		; apply velocity...
		move.w	d0,inertia(a0)	; ...both ground and air
		move.w	#0,y_vel(a0)		; kill y-velocity
		move.w	#$2000,(v_cameralag).w
		jsr	Reset_Player_Position_Array
	;	sfx		sfx_FireAttack		
; ---------------------------------------------------------------------------
Sonic_LightningShield:
		cmpi.b  #4,(v_shield).w 	; does Sonic have a Lightning Shield?
		bne.s	Sonic_BubbleShield			; if not, branch
		move.b	#1,(v_oshield+obAnim).w
		move.b	#1,obDoubleJump(a0)
		move.w	#-$580,y_vel(a0)	; bounce Sonic up, creating the double jump effect
		clr.b	obJumping(a0)
;		sfx	sfx_ElectricAttack
		rts
; ---------------------------------------------------------------------------
Sonic_BubbleShield:
        cmpi.b	#8,(v_shield).w  
		bne.w	Sonic_GoldShield
		move.b	#1,(v_oshield+obAnim).w
		move.b	#1,obDoubleJump(a0)
		move.w	#0,x_vel(a0)		; halt horizontal speed...
		move.w	#0,obinertia(a0)	; ...both ground and air
		move.w	#$800,y_vel(a0)		; force Sonic down
	;	sfx		sfx_BubbleAttack	
		rts	
; ---------------------------------------------------------------------------
Sonic_GoldShield:
        cmpi.b	#3,(v_shield).w  
		bne.w	Sonic_ChkGoSuper	
		btst	#6,obDoubleJump(a0)
		beq.s	Check_Homein
		rts

Check_Homein: ; Original code by MainMemory, Modified by AngelKOR64
		move.b	(v_jpadpress2).w,d0
		andi.b	#btnABC,d0	; is A, B or C pressed?
		beq.s	@endHome
		move.b	#1,obDoubleJump(a0)
		bset	#6,obDoubleJump(a0)
		bsr.w	Sonic_Homing
		move.b	#id_roll,obAnim(a0)
	@endHome:
		rts
; ---------------------------------------------------------------------------

Sonic_Homing:
		moveq	#(v_objspace_End-(v_lvlobjspace))/(v_objspace-1),d1	; run the first $80 objects in levels
		lea	(v_lvlobjspace).w,a1 ; a1=object
		movea	#0,a2
; ---------------------------------------------------------------------------

HomeObject:	; what the fuck is wrong with this??? any of my attempts to fix it just end in it working even less than it does now. what the fuck?
		move.b	(a1),d0	; get the object's ID
		beq.w	HomeNextObject ; if it's obj00, skip it
		move.b	obColType(a1),d0			; Get its collision_flags
		beq.w	HomeNextObject				; that next check *should* be the same as this, if i understand properly
		tst.b	d0
		beq.s	HomeNextObject
		cmpi.b	#$46,d0
		beq.s	@continueHome
		cmpi.b	#$40,d0
		bcc.s	HomeNextObject

	@continueHome:
		move.w	y_pos(a1),d3
		add.w	#$10,d3
		btst	#0,status(a0)
		bne.s	@continueHome2
		move.w	x_pos(a1),d3
		cmp.w	x_pos(a0),d3
		blt.s	HomeNextObject
		bra.s	@continueHome3

	@continueHome2:
		move.w	x_pos(a1),d3
		cmp.w	x_pos(a0),d3
		bgt.s	HomeNextObject

	@continueHome3:
		move.w	x_pos(a1),d3
		sub.w	x_pos(a0),d3
		muls.w	d3,d3
		bpl.s	@continueHome4
		neg.l	d3

	@continueHome4:
		move.w	y_pos(a1),d4
		sub.w	y_pos(a0),d4
		muls.w	d4,d4
		bpl.s	@continueHome5
		neg.l	d4

	@continueHome5:
		add.l	d4,d3
		cmpi.l	#$8000,d3 ;maximum distance
		bcc.s	HomeNextObject
		cmpi.l	#0,a2
		beq.s	@continueHome6
		cmp.l	d2,d3
		bge.s	HomeNextObject

	@continueHome6:
		lea	(a1),a2
		move.l	d3,d2
; ---------------------------------------------------------------------------

HomeNextObject:
		lea	(v_objspace).w,a1 ; load Obj address
		dbf	d1,HomeObject
;		move.b	#1,(v_shieldobject+obAnim).w ; doesn't have a separate anim right now
		cmpi.l	#0,a2
		beq.s	HomeNoLock
		move.w	obX(a2),d1
		sub.w	obX(a0),d1
		move.w	obY(a2),d2
		sub.w	obY(a0),d2
		jsr	(CalcAngle).l
		jsr	(CalcSine).l
		move.w	#$B,d3
		btst	#6,obStatus(a0)	; Check if underwater, return if not
		beq.s	@continueHome
		subq.w	#1,d3
	@continueHome:
		muls.w	d3,d1
		move.w	d1,obVelX(a0)
		muls.w	d3,d0
		move.w	d0,obVelY(a0)
;		sfx		sfx_Dash
		rts
; ---------------------------------------------------------------------------
HomeNoLock:
		move.b	#1,obDoubleJump(a0)
		bclr	#6,obDoubleJump(a0)
		move.w	#0,obVelX(a0)		; halt horizontal speed...
		move.w	#0,obinertia(a0)	; ...both ground and air
		move.w	#$800,obVelY(a0)		; force Sonic down
;		sfx		sfx_Dash
; ---------------------------------------------------------------------------
return_homing:
		rts
; ---------------------------------------------------------------------------
Sonic_ChkGoSuper:
		tst.b	(f_timecount).w
		beq.w	Sonic_DropDash
		tst.b	(v_super).w
		bne.w	Sonic_DropDash
		cmpi.b	#6,(v_emeralds).w
		bne.w	Sonic_DropDash
		cmpi.w	#50,(v_rings).w
		blo.w	Sonic_DropDash

SuperSonic_Cont:
;		include	"_incObj/Player/Mess of a Super form.asm"

locret_134C2:
		rts	
; ===========================================================================

Sonic_UpwardsVelocityCap:
		tst.b	obSpindash(a0)	; is Sonic charging his spin dash? (or in a pinball thing)
		bne.s	@ret		; if yes, branch
		cmpi.w	#-$FC0,obVelY(a0)
		bge.s	@ret
		move.w	#-$FC0,obVelY(a0)

	@ret:
		rts	
; End of function Sonic_JumpHeight