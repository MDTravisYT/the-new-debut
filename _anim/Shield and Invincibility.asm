; ---------------------------------------------------------------------------
; Animation script - shield and invincibility stars
; ---------------------------------------------------------------------------
Ani_Shield:	dc.w @stars1-Ani_Shield
		dc.w @stars1-Ani_Shield
		dc.w @stars2-Ani_Shield
		dc.w @stars3-Ani_Shield
		dc.w @stars4-Ani_Shield
@stars1:	dc.b 2,	1, 0, 6, 0, 3, 0, 8, 0, 5, 0, 2, 0, 7, 0, 4, 0, afEnd
@stars2:	dc.b 2,	0, 6, 0, 3, 0, 8, 0, 5, 0, 2, 0, 7, 0, 4, 0, 1, afEnd
@stars3:	dc.b 2,	6, 0, 3, 0, 8, 0, 5, 0, 2, 0, 7, 0, 4, 0, 1, 0, afEnd
@stars4:	dc.b 2,	0, 3, 0, 8, 0, 5, 0, 2, 0, 7, 0, 4, 0, 1, 0, 6, afEnd
		even