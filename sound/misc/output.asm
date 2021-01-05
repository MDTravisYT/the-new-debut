; =============================================================================================
; Project Name:		ding
; Created:		2nd January 2021
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

ding_Header:
	smpsHeaderVoice	ding_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$00

	smpsHeaderDAC	ding_DAC
	smpsHeaderFM	ding_FM1,	smpsPitch00,	$00
	smpsHeaderFM	ding_FM2,	smpsPitch00,	$00
	smpsHeaderFM	ding_FM3,	smpsPitch00,	$00
	smpsHeaderFM	ding_FM4,	smpsPitch00,	$00
	smpsHeaderFM	ding_FM5,	smpsPitch00,	$00
	smpsHeaderPSG	ding_PSG1,	smpsPitch00,	$00,	$00
	smpsHeaderPSG	ding_PSG2,	smpsPitch00,	$00,	$00
	smpsHeaderPSG	ding_PSG3,	smpsPitch00,	$00,	$00
	dc.b		$00,	$00,	$00,	$00

; PSG1 Data
ding_PSG1:

; PSG2 Data
ding_PSG2:

; PSG3 Data
ding_PSG3:

; DAC Data
ding_DAC:
	smpsStop

; FM1 Data
ding_FM1:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$09
	smpsFMvoice	$00
	smpsAlterVol	$0D
	dc.b		smpsNoAttack,	nRst,	$1C
	smpsStop

; FM2 Data
ding_FM2:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$09
	smpsFMvoice	$01
	smpsAlterVol	$09
	dc.b		smpsNoAttack,	nRst,	$1C
	smpsStop

; FM3 Data
ding_FM3:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$09
	smpsFMvoice	$01
	smpsAlterVol	$09
	dc.b		smpsNoAttack,	nRst,	$1C
	smpsStop

; FM4 Data
ding_FM4:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$09
	smpsFMvoice	$01
	smpsAlterVol	$09
	dc.b		smpsNoAttack,	nRst,	$1C
	smpsStop

; FM5 Data
ding_FM5:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$09
	smpsFMvoice	$02
	smpsAlterVol	$09
	dc.b		nAb3,	$1C
	smpsStop

ding_Voices:
	dc.b		$3A,$51,$08,$51,$02,$1E,$1E,$1E,$10,$1F,$1F,$1F,$0F,$00,$00,$00
	dc.b		$02,$0F,$0F,$0F,$1F,$18,$24,$22,$00;			Voice 00
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$2F,$1F,$1F,$FF,$19,$37,$13,$00;			Voice 01
	dc.b		$2C,$72,$72,$33,$32,$1F,$1F,$1F,$1F,$01,$03,$01,$03,$01,$01,$01
	dc.b		$01,$1F,$2F,$1F,$2F,$19,$00,$17,$00;			Voice 02
	even
