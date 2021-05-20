SndCE_Ring_Left_Speaker_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     SndCE_Ring_Left_Speaker_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM4, SndCE_Ring_Left_Speaker_FM4,	$00, $05

; FM4 Data
SndCE_Ring_Left_Speaker_FM4:
	smpsSetvoice        $00
	smpsPan             panLeft, $00
	dc.b	nC5, $04, nC6, $1B
	smpsStop

SndCE_Ring_Left_Speaker_Voices:
;	Voice $00
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $0B, $00, $0B, 	$1F, $0F, $1F, $0F, 	$23, $80, $23, $80
	dc.b	$04,$37,$72,$77,$02,$1F,$1F,$1F,$1F,$07,$0A,$07,$0D,$00,$00,$00,$00,$10,$07,$10,$07,$23,$00,$23,$00

