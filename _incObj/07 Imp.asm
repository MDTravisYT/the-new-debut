; ===========================================================================
; Object 07 - BigJaw (or "Imp")
; Originally programmed from scratch by KatKuriN
; !!!!! PLEASE ALERT ME TO ANY EDITS MADE TO THIS CODE !!!!!
; I am still learning quite a bit about object code, so bear with me here...
; ===========================================================================
; Todo:
; -Fix flickeryness
; -Find a better way to animate it I suppose?
; -Optimize
; ===========================================================================
Imp:
                lea	(Ani_Imp).l,a1          ; Animate Bigjaw after every routine.
		bsr.w	AnimateSprite           ; Simply for convenience. Don't care if it isn't optimal.
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Imp_Index(pc,d0.w),d1
		jmp	Imp_Index(pc,d1.w)
; ===========================================================================
; Object jump table
; ===========================================================================
Imp_Index:	dc.w Imp_Main-Imp_Index    
		dc.w Imp_Action-Imp_Index
                dc.w Imp_ChkSonic-Imp_Index  
                dc.w Imp_Jump-Imp_Index
; ===========================================================================
; Equates for ease of editing (at least for me)
; However, this causes code to execute just slightly slower!
; We can optimize this later, but until then, let's keep it like this.
; ===========================================================================
; Variables -----------------------------------------------------------------
Bigjaw_JumpRadius:      equ     $5A   ; Change to adjust how far Sonic needs to be before jumping.
Bigjaw_JumpTime         equ     $50   ; Change to adjust time between jumping again.
; Proprietary Constants -----------------------------------------------------
Bigjaw_JumpTimer:       equ     $32   ; DO NOT CHANGE THIS.
				      ; There is no universal constant for timers, so we have to define one.
; Jumptable IDs -------------------------------------------------------------
ID_Imp_Main:		equ 	$0    ; Don't change these either, unless you are attempting to optimize.
ID_Imp_Action:		equ 	$2
ID_Imp_ChkSonic:	equ 	$4
ID_Imp_Jump:		equ 	$6

; ===========================================================================
; Sets up all the parameters for the object, like the hitbox, base tile, etc
; This does not need to be ran again.
; ===========================================================================
Imp_Main:	; Routine $0 (ID_Imp_Main)
		move.b	#ID_Imp_Action,obRoutine(a0)  ; Go to Imp_Action after rts
		move.b	#$13,obHeight(a0)
		move.b	#8,obWidth(a0)
		move.l	#Map_Imp,obMap(a0)            ; Load sprite mappings
		move.w	#$4A6,obGfx(a0)               ; Set base tile
		ori.b	#4,obRender(a0)
		move.b	#4,obPriority(a0)
		move.b	#5,obColType(a0)
		move.b	#$C,obActWid(a0)
		move.b  #0,Bigjaw_Jumptimer(a0)       ; Clear Bigjaw's timer
		rts
; ===========================================================================
; Makes Bigjaw move
; ===========================================================================
Imp_Action:	; Routine $2 (ID_Imp_Action)
                move.b	#ID_Imp_ChkSonic,obRoutine(a0)  ; Jump to Imp_ChkSonic after this routine has executed
                move.b	#1,obAnim(a0)       		; Set animation to walking
                move.w	#-$80,obVelX(a0)    		; Set Bigjaw to move somewhat slowly
                btst	#0,obStatus(a0)
                beq     @facingleft
                neg.w	obVelX(a0)	    		; change direction
@facingleft:

                bsr.w	SpeedToPos
                jsr     (ObjFloorDist).l
		cmpi.w	#-8,d1          ; Are we on a cliff?
		blt.s	@hopdown        ; If so, make bigjaw jump
		cmpi.w	#$C,d1          ; Are we about to hit a wall?
		bge.s	@hopdown        ; If so, make bigjaw jump
		add.w	d1,obY(a0)	; Move bigjaw to the floor
		bra.w   DisplaySprite   ; Display sprite, current routine terminates in this subroutine
@hopdown:
	        move.b	#3,obAnim(a0)  	            ; Set animation to falling
                move.w	#-$300,obVelY(a0)           ; Make Bigjaw kinda hop
                move.b	#ID_Imp_Jump,obRoutine(a0)  ; Go to Imp_Jump
                bra.w   DisplaySprite
; ===========================================================================
; Checks if Sonic is near Bigjaw, and makes bigjaw jump if so.
; ===========================================================================
Imp_ChkSonic:   ; Routine $4 (ID_Imp_ChkSonic)
                move.b	#ID_Imp_Action,obRoutine(a0)  ; Return to Imp_Action after rts
		move.w	(v_player+obX).w,d0
		sub.w	obX(a0),d0
		bpl.s	@isleft
		neg.w	d0

	@isleft:
		tst.b   Bigjaw_JumpTimer(a0)            ; is the jump timer up?
                bpl.s	@nojump		        	; if not, do not jump
                cmpi.w	#Bigjaw_JumpRadius,d0   	; is Sonic within Bigjaw's radius?
		bcc.s	@nojump		        	; if not, do not jump
		move.b	#3,obAnim(a0)                   ; Set animation to falling
		move.w	#-$600,obVelY(a0)               ; Make Bigjaw jump high
	;	sfx     $A6,0,0,0
                move.b	#ID_Imp_Jump,obRoutine(a0)      ; Set Bigjaw to jump after this routine has executed
        @nojump:
                subi.b  #1,Bigjaw_JumpTimer(a0)         ; Subtract 1 from the jump timer
                bra.w   DisplaySprite

; ===========================================================================
; Handles Bigjaw falling and landing. Kind of hacky right now.
; ===========================================================================

Imp_Jump:	; Routine $6 (ID_Imp_Jump)
                bsr.w	ObjectFall
                jsr	(ObjFloorDist).l
		tst.w   d1       			; Are we higher than the floor?
		bpl.s    @skip          		; If so, simply repeat the current obRoutine

		move.b	#ID_Imp_Action,obRoutine(a0)    	     ; Go back to Imp_Action after this routine
		move.b  #Bigjaw_JumpTime,Bigjaw_JumpTimer(a0)        ; Set timer
	;	tst.w   ObVelY(a0)                                   ; Is object velocity negative?
	;	bmi.s   @skip                                        ; If so, skip playing the landing sound (prevents it from playing over and over)

	;	sfx     $BB,0,0,0                                    ; Play the landing sound
@skip:
                move.w	(v_limitbtm2).w,d0
		addi.w	#$E0,d0
		cmp.w	obY(a0),d0	; has object moved below the level boundary?
		bcs.s	@delete		; if yes, branch
		bra.w   DisplaySprite

	@delete:
		bra.w	DeleteObject


