; ---------------------------------------------------------------------------
; Object 02 - Forced Debug
; ---------------------------------------------------------------------------

ForceDebug:
		move.b	#1,(f_debugmode).w ; enable debug mode
		rts	

Hacker:
		move.b	#$24,(v_gamemode).w ; crash
		rts	
