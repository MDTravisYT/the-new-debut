
	Bitmap MD - Version 1.0 - by MarkeyJester
	Release 02/01/2019

	Console Mode:

	The first argument must be "-", and the following modes
	can be set at any time:

	 -W  =	Width (Acceptable: -W320 -W256 -W256C)						Default 320
	 -H  =	Height (Acceptable: -H240 -H224 -H224C)						Default 224
	 -S  =	Sprite (Acceptable: -SY (yes) -SN (no))						Default Yes
	 -P  =	Plane (Acceptable: -P1 (1 Plane) -P2 (2 Planes)					Default 2 Planes
	 -SH =	Sprite Highlight (Acceptable: -SHY (yes) -SHN (no))				Default Yes
	 -ST =	Snap to tiles (Acceptable: -STY (yes) -STN (no))				Default No (Yes is ignored if Scale Type is custom; i.e. -SC#x#))
	 -SC =	Scale Type (Acceptable: -SCSTRETCH -SCFIT -SCFILL -SC#x#)			Default Fit
		For -SC#x#, this is "CUSTOM", where the first # is the width
		and the second # is the height add.  For example -SC44x-10 will
		scale +44 width and -10 height.
	 -I  =	Interpolation (Acceptable: -IY (yes) -IN (no))					Default Yes
	 -D  =	Dithering (Acceptable: -DNONE (None) -DFLOYD (Floyd-Steinberg)			Default None
				-DJJN (Jarvis, Judice & Ninke), -DORDER (Ordered))
	 -F  =	Force colour priority (Acceptable: -FN (None), -FP (Plane), -FS (Sprite))	Default None
	 -B  =	Best Settings (Acceptable; -BY (yes) -BN (no))					Default No

	Recap of the default settings:

	   -W320 -H224 -SY -P2 -SHY -STN -SCFIT -IY -DNONE -FN -BN

	Example of the arguments in use, say a batch file:

	   BitmapMD.exe - -W256 Image1.bmp Image2.bmp -W320 -SHN Image3.bmp -SN Image4.bmp

	Here, Image1.bmp and Image2.bmp will be converted with the width of 256, then Image3.bmp is
	processed with width changed back to 320 and shadow/highlight turned off, then Image4.bmp
	if processed with Sprites turned off.