Sound6D_Error_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     Sound6D_Error_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, Sound6D_Error_FM5,	$00, $04

; FM5 Data
Sound6D_Error_FM5:
	smpsSetvoice        $00
	dc.b		nC5,	$01,	nCs5,	nD5,	nEb5,	nE5,	nF5,	nFs5,	nG5,	nAb5,	nA5,	nBb5,	nB5,	nC6,	$1B
	smpsStop

Sound6D_Error_Voices:
;	Voice $00
;	$38
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1F, $17, $0C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $07, $07, $03
	smpsVcCoarseFreq    $02, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $0B, $00, $0B, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23