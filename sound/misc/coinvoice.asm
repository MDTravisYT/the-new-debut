; =============================================================================================
; Project Name:		coin
; Created:		2nd January 2021
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

coin_Header:
;	Voice Pointer	location
	smpsHeaderVoice	coin_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$07,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$00

;	DAC Pointer	location
	smpsHeaderDAC	coin_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	coin_FM1,	smpsPitch00,	$00
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	coin_FM2,	smpsPitch00,	$00
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	coin_FM3,	smpsPitch00,	$00
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	coin_FM4,	smpsPitch00,	$00
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	coin_FM5,	smpsPitch00,	$00
;	FM6 Pointer	location	pitch		volume
	smpsHeaderFM	coin_FM6,	smpsPitch00,	$00
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	coin_PSG1,	smpsPitch00,	$00,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	coin_PSG2,	smpsPitch00,	$00,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	coin_PSG3,	smpsPitch00,	$00,	$00
	dc.b		$00,	$00,	$00,	$00

; FM2 Data
coin_FM2:

; FM3 Data
coin_FM3:

; FM4 Data
coin_FM4:

; FM5 Data
coin_FM5:

; FM6 Data
coin_FM6:

; PSG1 Data
coin_PSG1:

; PSG2 Data
coin_PSG2:

; PSG3 Data
coin_PSG3:
	smpsStop

; FM1 Data
coin_FM1:
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$19
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nF4,	$09,	nC5,	$0F,	nRst,	$7F,	$29
	smpsStop

coin_Voices:
	dc.b		$06,$37,$72,$77,$09,$1F,$1F,$1F,$1F,$13,$0A,$07,$0F,$00,$00,$00
	dc.b		$00,$0F,$2F,$3F,$07,$23,$00,$0C,$00;			Voice 00
	even
