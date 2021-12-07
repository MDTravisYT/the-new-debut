; ---------------------------------------------------------------------------
; Object 02 - Forced Debug
; ---------------------------------------------------------------------------

ForceDebug:
		move.b	#1,(f_debugmode).w ; enable debug mode
		rts	

Hacker:
		move.b  #$28,($FFFFF600).w      ; set the screen mode to Title Screen
