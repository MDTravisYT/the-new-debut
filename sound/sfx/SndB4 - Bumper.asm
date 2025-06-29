Bomper_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     Bomper_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $03

	smpsHeaderSFXChannel cFM5, Bomper_FM5,	$00, $00
	smpsHeaderSFXChannel cFM4, Bomper_FM4,	$0C, $00
	smpsHeaderSFXChannel cFM3, Bomper_FM3,	$F4, $02

; FM5 Data
Bomper_FM5:
	smpsSetvoice        $00
	smpsJump            Bomper_Jump00

; FM3 Data
Bomper_FM3:
	smpsSetvoice        $00
	smpsJump            Bomper_Jump00

; FM4 Data
Bomper_FM4:
	smpsSetvoice        $00
	smpsAlterNote       $07
	dc.b	nRst, $01

Bomper_Jump00:
	dc.b	nA4, $20
	smpsStop


Bomper_Voices:
;	Voice $00
;	$3C
;	$05, $01, $0A, $01, 	$56, $5C, $5C, $5C, 	$0E, $11, $11, $11
;	$09, $0A, $06, $0A, 	$4F, $3F, $3F, $3F, 	$1F, $80, $2B, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $0A, $01, $05
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1C, $1C, $1C, $16
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $11, $11, $0E
	smpsVcDecayRate2    $0A, $06, $0A, $09
	smpsVcDecayLevel    $03, $03, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2B, $00, $1F

;	Voice $01
;	$05
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$12, $0C, $0C, $0C
;	$12, $08, $08, $08, 	$1F, $5F, $5F, $5F, 	$07, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $12
	smpsVcDecayRate2    $08, $08, $08, $12
	smpsVcDecayLevel    $05, $05, $05, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $07

