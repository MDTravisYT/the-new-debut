; ---------------------------------------------------------------------------
; Animation script - shield and invincibility stars
; ---------------------------------------------------------------------------
Ani_Shield:	dc.w @shield-Ani_Shield
		dc.w @stars1-Ani_Shield
		dc.w @stars2-Ani_Shield
		dc.w @stars3-Ani_Shield
		dc.w @stars4-Ani_Shield
@shield:	dc.b 5,	1, 2, 3, 4, 5, 6, afEnd
@stars1:	dc.b 5,	1, 2, 3, afEnd
@stars2:	dc.b 5,	1, 2, 3, afEnd
@stars3:	dc.b 5,	1, 2, 3, afEnd
@stars4:	dc.b 5,	1, 2, 3, afEnd
		even