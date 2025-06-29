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

; 1st PLC, level gfx (unused), 2nd PLC, 16x16 data, 256x256 data,
; music (unused), palette (unused), palette

;		1st PLC				2nd PLC				256x256 data			palette
;				level gfx*			16x16 data			music*

	lhead	plcid_GHZ,	Nem_GHZ,	plcid_GHZ2,	Blk16_GHZ,	Blk256_GHZ,	bgm_GHZ,	palid_GHZ	; Green Hill
	lhead	plcid_LZ,	Nem_LZ,		plcid_LZ2,	Blk16_LZ,	Blk256_LZ,	bgm_LZ,		palid_LZ	; Labyrinth
	lhead	plcid_MZ,	Nem_MZ,		plcid_MZ2,	Blk16_MZ,	Blk256_MZ,	bgm_MZ,		palid_MZ	; Marble
	lhead	plcid_GHZ,	Null_Level,	plcid_GHZ2,	Null_Level,	Null_Level,	bgm_SLZ,	palid_GHZ	; Star Light
	lhead	plcid_GHZ,	Null_Level,	plcid_GHZ2,	Null_Level,	Null_Level,	bgm_SYZ,	palid_GHZ	; Spring Yard
	lhead	plcid_GHZ,	Null_Level,	plcid_GHZ2,	Null_Level,	Null_Level,	bgm_SBZ,	palid_GHZ	; Scrap Brain
;	zonewarning LevelHeaders,$10
	lhead	plcid_lock,	Nem_lockN,	plcid_lock,	Blk16_lockN,Blk256_lockN,	bgm_GHZ,	palid_FUN	; Ending
	lhead	plcid_GHZ,	Null_Level,	plcid_GHZ2,	Null_Level,	Null_Level,	bgm_SBZ,	palid_GHZ	; Ice Mountain
	lhead	plcid_GHZ,	Null_Level,	plcid_GHZ2,	Null_Level,	Null_Level,	bgm_SBZ,	palid_GHZ	; Cosmic Space
	lhead	plcid_lock,	Nem_lock,	plcid_lock,	Blk16_lock,	Blk256_lock,	bgm_GHZ,	palid_GHZ	; LOCK2
	lhead	plcid_lock,	Nem_lock,	plcid_lock,	Blk16_lock,	Blk256_lock,	bgm_GHZ,	palid_GHZ	; LOCK2
	even

;	* music and level gfx are actually set elsewhere, so these values are useless