; ---------------------------------------------------------------------------
; Sonic when he's drowning
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


Sonic_Drowned:
		jsr  SpeedToPos		      ; Make Sonic able to move
		addi.w  #$10,y_vel(a0)		  ; Apply gravity
		bsr.w   Sonic_RecordPosition    ; Record position
		bsr.w   Sonic_Animate           ; Animate Sonic
		bsr.w   Sonic_LoadGfx           ; Load Sonic's DPLCs
		jmp   DisplaySprite           ; And finally, display Sonic