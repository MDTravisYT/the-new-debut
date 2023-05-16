; ---------------------------------------------------------------------------
; Subroutine to allow Sonic to push a button to roll mid-air
; ---------------------------------------------------------------------------

Sonic_AirRoll:
        ;cmpi.b  #$1F,$1C(a0)      ; are we already in rolling animation
        cmpi.b  #id_Roll,obAnim(a0)     ; are we already in rolling animation
        ;cmpi.b  #$2,$1C(a0)      ; are we already in rolling animation
        beq.s   AirRoll_Return   ; if yes, branch
		
AirRoll_CheckBtn:
        move.b ($FFFFF603).w,d0 ; Move $FFFFF603 to d0
        andi.b #$70,d0 ; Has A/B/C been pressed?
        beq.s  AirRoll_Return
		
        move.b #$20,$1C(a0) ; Set Sonic's animation to rolling.
        move.w    #$A5,d0
        jsr    (PlaySound_Special).l ;    play Sonic rolling sound
		
AirRoll_Return:
        rts