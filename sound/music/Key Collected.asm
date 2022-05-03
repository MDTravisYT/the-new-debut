Mus91_Sonic_Got_Through_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     Mus91_Sonic_Got_Through_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $04

	smpsHeaderDAC       Mus91_Sonic_Got_Through_FM2
	smpsHeaderFM        Mus91_Sonic_Got_Through_FM1,	$00, $0A
	smpsHeaderFM        Mus91_Sonic_Got_Through_FM2,	$DD, $0A
	smpsHeaderFM        Mus91_Sonic_Got_Through_FM2,	$F5, $15
	smpsHeaderFM        Mus91_Sonic_Got_Through_FM2,	$F5, $15
	smpsHeaderFM        Mus91_Sonic_Got_Through_FM2,	$F5, $14
	smpsHeaderPSG       Mus91_Sonic_Got_Through_FM2,	$D1, $05, $00, fTone_05
	smpsHeaderPSG       Mus91_Sonic_Got_Through_FM2,	$DD, $07, $00, fTone_05
	smpsHeaderPSG       Mus91_Sonic_Got_Through_FM2,	$DD, $00, $00, fTone_04

; FM1 Data
Mus91_Sonic_Got_Through_FM1:
	smpsSetvoice        $00
	dc.b	nC5, $12, nRst

; PSG1 Data
Mus91_Sonic_Got_Through_FM2:
	smpsStop


Mus91_Sonic_Got_Through_Voices:
;	Voice $00
;	$3D
;	$01, $02, $00, $01, 	$1F, $0E, $0E, $0E, 	$07, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$1F, $0F, $0F, $0F, 	$17, $8D, $8C, $8C
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $03
	smpsVcCoarseFreq    $04, $0A, $01, $08
	smpsVcRateScale     $02, $01, $03, $01
	smpsVcAttackRate    $1C, $1F, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $04, $0F
	smpsVcDecayRate2    $05, $05, $02, $02
	smpsVcDecayLevel    $06, $06, $0A, $0A
	smpsVcReleaseRate   $06, $06, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $28


