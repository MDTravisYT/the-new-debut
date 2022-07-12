; ---------------------------------------------------------------------------
; Level Headers
; ---------------------------------------------------------------------------

LevelHeaders:

lhead:	macro plc1,lvlgfx,plc2,sixteen,twofivesix,music,pal
	dc.l (plc1<<24)+lvlgfx
	dc.l (plc2<<24)+sixteen
	dc.l twofivesix
	dc.b 0, music, pal, pal
	endm

; 1st PLC, level gfx (unused), 2nd PLC, 16x16 data, 128x128 data,
; music (unused), palette (unused), palette

;		1st PLC				2nd PLC				128x128 data			palette
;				level gfx*			16x16 data			music*

	lhead	plcid_GHZ,	Nem_GHZ,	plcid_GHZ2,	Blk16_GHZ,	Blk128_GHZ,	bgm_GHZ,	palid_GHZ	; Green Hill
	lhead	plcid_LZ,	Nem_LZ,		plcid_LZ2,	Blk16_LZ,	Blk128_LZ,	bgm_LZ,		palid_LZ	; Labyrinth
	lhead	plcid_MZ,	Nem_MZ,		plcid_MZ2,	Blk16_MZ,	Blk128_MZ,	bgm_MZ,		palid_MZ	; Marble
	lhead	plcid_SLZ,	Nem_SLZ,	plcid_SLZ2,	Blk16_SLZ,	Blk128_SLZ,	bgm_SLZ,	palid_SLZ	; Star Light
	lhead	plcid_SZ,	Nem_SYZ,	plcid_SZ2,	Blk16_SYZ,	Blk128_SYZ,	bgm_SYZ,	palid_SZ	; Spring Yard
	lhead	plcid_CWZ,	Nem_SBZ,	plcid_CWZ2,	Blk16_SBZ,	Blk128_SBZ,	bgm_SBZ,	palid_CWZ2	; Scrap Brain
;	zonewarning LevelHeaders,$10
	lhead	plcid_lock,	Nem_lockN,	plcid_lock,		Blk16_lockN,	Blk128_lockN,	bgm_GHZ,	palid_FUN	; Ending
	lhead	plcid_IMZ,	Nem_GHZ,	plcid_IMZ2,		Blk16_IMZ,	Blk128_IMZ,	bgm_SBZ,	palid_IMZ	; Ice Mountain
	lhead	plcid_CSZ,	Nem_CSZ,	plcid_CSZ2,	Blk16_CSZ,	Blk128_CSZ,	bgm_SBZ,	palid_CSZ	; Cosmic Space
	lhead	plcid_lock,	Nem_lock,	plcid_lock,		Blk16_lock,	Blk128_lock,	bgm_GHZ,	palid_IMZ	; LOCK2
	lhead	plcid_lock,	Nem_lock,	plcid_lock,		Blk16_lock,	Blk128_lock,	bgm_GHZ,	palid_IMZ	; LOCK2
	even

;	* music and level gfx are actually set elsewhere, so these values are useless