
Imp:

	
		cmpi.b	#2, obSubtype(a0)
		bge.w	KGLSIGN
		
		tst.b  obSubtype(a0)
		beq.w  @katimp


; ===========================================================================
; Object 07 - BigJaw (or "Imp")
; Originally programmed from scratch by KatKuriN
; !!!!! PLEASE ALERT ME TO ANY EDITS MADE TO THIS CODE !!!!!
; I am still learning quite a bit about object code, so bear with me here...
;============================================================================
; Despawn code and variable added later on with short notice with the help of Giovanni. The rest of the code is by KatKuriN.     - KGL       
; ===========================================================================
; Todo:
; -Fix flickeryness
; -Find a better way to animate it I suppose?
; -Optimize
; ===========================================================================


@katimp:
        lea	(Ani_Imp).l,a1          ; Animate Bigjaw after every routine.
		bsr.w	AnimateSprite           ; Simply for convenience. Don't care if it isn't optimal.
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Imp_Index(pc,d0.w),d1
		jsr	Imp_Index(pc,d1.w)			; Changed to jsr so it runs the following check afterwards.
		out_of_range	DeleteObject	; Added check for horizontal distance. 
		; if the object is out of range, it goes to DeleteObject. Otherwise, it just does this:
		rts
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
Bigjaw_VRAM:			equ 	$49B
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
		; The VRAM now uses 49B and not 4A6 as there was empty space in the VRAM, which was necessary to allow for the "Welcome" sign.
		; I have also made it a variable, as the same exact VRAM location needs to be used in more than one instance.
		move.w	#Bigjaw_VRAM,obGfx(a0)               ; Set base tile
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
;		tst.w   ObVelY(a0)                                   ; Is object velocity negative?
;		bmi.s   @skip                                        ; If so, skip playing the landing sound (prevents it from playing over and over)
;
;		sfx     $BB,0,0,0                                    ; Play the landing sound
@skip:
				
        move.w	(v_limitbtm2).w,d0
		addi.w	#$E0,d0
		cmp.w	obY(a0),d0	; has object moved below the level boundary?
		bcs.s	@delete		; if yes, branch
		bra.w   DisplaySprite

	@delete:
		bra.w	DeleteObject


;  End of Kat's Bigjaw code.
;========================================

; ===========================================================================
; Object 07 Subtype 02: TTS Sign
; Bigjaw took up a lot of VRAM... so I found it opprotune to use its space for the TTS sign when Bigjaw isn't loaded.
; Special Thanks to MrLordSith for fixing a VRAM when GHZ Act 1 loads to prioritize BigJaw
;============================================================================



; KGL's Dynamic Tile Sign


KGLSIGN:
		moveq 	#0,d0 ; Basic routine shenanigans
		move.b 	obRoutine(a0),d0
		move.w 	KGLSIGN_Index(pc,d0.w),d1
		jsr 	KGLSIGN_Index(pc,d1.w)
		bra.w 	RememberState ; No longer needed as of writing this, but this makes sure the object won't respawn if it's intentionally deleted.
;========================================
KGLSIGN_Index: dc.w KGLSIGN_Init-KGLSIGN_Index
			dc.w 	KGLSIGN_Action-KGLSIGN_Index

KGLSIGN_Init:
		move.l	#Map_Welcome,obMap(a0)
		move.w	#Bigjaw_VRAM,ObGfx(a0) ; Use the same VRAM as the Imp.
		move.b	#4,obRender(a0)
		move.b	#$13,obActWid(a0)
		move.w	#$200,obPriority(a0)
		
		addi.b 	#2,obRoutine(a0)
		; The loading code for the Welcome sign PLC is also used in sonic.asm, right above Level_SkipTtlCard.
		jmp 	WelcomeSign_Load

KGLSIGN_Action:
		;jsr 	(DisplaySprite).l - A DisplaySprite function here is not needed, as RememberState takes care of this.
		out_of_range	@delete
		rts
@delete:
		jsr 	DeleteObject
		moveq	#plcid_Imp,d0
		jmp		AddPLC		; load Imp back into VRAM

WelcomeSign_Load:
		; This code loads the Welcome sign in just Green Hill Zone act 1. - MrLordSith
		cmpi.w 	#(id_GHZ<<8),(v_zone).w ; Check if this is Green Hill act 1
		bne.s 	@end ; if not, skip the following code:
		moveq	#plcid_WelcomeSign,d0 ; Assign Welcome Sign PLC
		jsr	 	(AddPLC).l ; Slowly load
	@end:
		rts