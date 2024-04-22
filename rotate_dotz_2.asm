
.const

BoxWidth	equ	143
BoxHeight	equ	109


.data ; initialised

; HDC hdcSrc
hdcSrc 	dd 0
; HGDIOBJ DotzDC
DotzDC dd 0
; HWND hWnd
;xWnd 	dd 0
Dotzcreation db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 41h; 0
		db 0, 0, 0A0h, 0C1h, 0, 0, 20h, 0C1h; 8
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 0C1h; 16
		db 0, 0, 0, 0, 0, 0, 0A0h, 41h; 24
		db 0, 0, 0A0h, 0C1h, 0, 0, 20h, 41h; 32
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 0C1h; 40
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 41h; 48
		db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 0C1h; 56
		db 0, 0, 0A0h, 41h, 0, 0, 20h, 0C1h; 64
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 41h; 72
		db 0, 0, 20h, 0C1h, 0, 0, 0A0h, 0C1h; 80
		db 0, 0, 0A0h, 41h, 0, 0, 0, 0; 88
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 41h; 96
		db 0, 0, 0, 0, 0, 0, 0A0h, 0C1h; 104
		db 0, 0, 0A0h, 41h, 0, 0, 20h, 41h; 112
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 41h; 120
		db 0, 0, 20h, 41h, 0, 0, 0A0h, 0C1h; 128
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 41h; 136
		db 0, 0, 20h, 0C1h, 0, 0, 0A0h, 41h; 144
		db 0, 0, 0A0h, 41h, 0, 0, 0, 0; 152
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 41h; 160
		db 0, 0, 20h, 41h, 0, 0, 0A0h, 41h; 168
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 41h; 176
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 41h; 184
		db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 0C1h; 192
		db 0, 0, 0A0h, 0C1h, 0, 0, 20h, 0C1h; 200
		db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 0C1h; 208
		db 0, 0, 0, 0, 0, 0, 0A0h, 0C1h; 216
		db 0, 0, 0A0h, 0C1h, 0, 0, 20h, 41h; 224
		db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 0C1h; 232
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 0C1h; 240
		db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 0C1h; 248
		db 0, 0, 0A0h, 0C1h, 0, 0, 20h, 0C1h; 256
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 0C1h; 264
		db 0, 0, 20h, 0C1h, 0, 0, 0A0h, 0C1h; 272
		db 0, 0, 0A0h, 0C1h, 0, 0, 0, 0; 280
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 0C1h; 288
		db 0, 0, 0, 0, 0, 0, 0A0h, 0C1h; 296
		db 0, 0, 0A0h, 0C1h, 0, 0, 20h, 41h; 304
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 0C1h; 312
		db 0, 0, 20h, 41h, 0, 0, 0A0h, 0C1h; 320
		db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 41h; 328
		db 0, 0, 20h, 0C1h, 0, 0, 0A0h, 0C1h; 336
		db 0, 0, 0A0h, 41h, 0, 0, 0, 0; 344
		db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 41h; 352
		db 0, 0, 20h, 41h, 0, 0, 0A0h, 0C1h; 360
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 41h; 368
		db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 41h; 376
		db 0, 0, 0A0h, 0C1h, 0, 0, 20h, 41h; 384
		db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 41h; 392
		db 0, 0, 20h, 41h, 0, 0, 0A0h, 0C1h; 400
		db 0, 0, 0A0h, 41h, 0, 0, 20h, 41h; 408
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 0C1h; 416
		db 0, 0, 20h, 41h, 0, 0, 0A0h, 41h; 424
		db 0, 0, 0A0h, 0C1h, 0, 0, 0, 0; 432
		db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 41h; 440
		db 0, 0, 0, 0, 0, 0, 0A0h, 0C1h; 448
		db 0, 0, 0A0h, 41h, 0, 0, 0, 0; 456
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 0C1h; 464
		db 0, 0, 0, 0, 0, 0, 0A0h, 41h; 472
		db 0, 0, 0A0h, 0C1h, 0, 0, 20h, 0C1h; 480
		db 0, 0, 0A0h, 0C1h, 0, 0, 0A0h, 41h; 488
		db 0, 0, 20h, 0C1h, 0, 0, 0A0h, 0C1h; 496
		db 0, 0, 0A0h, 41h, 0, 0, 20h, 0C1h; 504
		db 0, 0, 0A0h, 41h, 0, 0, 0A0h, 0C1h; 512
		db 0, 0, 20h, 0C1h, 0, 0, 0A0h, 41h; 520
byte_407519 db 0, 0, 0, 0, 0, 0, 0, 0; 0
		db 87h, 71h, 0D4h, 41h, 0BDh, 37h, 86h, 0B5h; 8
		db 6, 0BEh, 79h, 41h, 0D1h, 0DEh, 0ABh, 41h; 16
		db 7Bh, 0CBh, 12h, 0C1h, 0B6h, 0Bh, 4Ah, 41h; 24
		db 0D1h, 0DEh, 0ABh, 41h, 0DFh, 84h, 6Dh, 0C1h; 32
		db 64h, 59h, 9Ah, 40h, 0D1h, 0DEh, 0ABh, 41h; 40
		db 0DEh, 84h, 6Dh, 0C1h, 68h, 59h, 9Ah, 0C0h; 48
		db 0D1h, 0DEh, 0ABh, 41h, 78h, 0CBh, 12h, 0C1h; 56
		db 0B7h, 0Bh, 4Ah, 0C1h, 0D1h, 0DEh, 0ABh, 41h; 64
		db 0BDh, 37h, 6, 36h, 6, 0BEh, 79h, 0C1h; 72
		db 0D1h, 0DEh, 0ABh, 41h, 7Ch, 0CBh, 12h, 41h; 80
		db 0B5h, 0Bh, 4Ah, 0C1h, 0D1h, 0DEh, 0ABh, 41h; 88
		db 0DFh, 84h, 6Dh, 41h, 62h, 59h, 9Ah, 0C0h; 96
		db 0D1h, 0DEh, 0ABh, 41h, 0DEh, 84h, 6Dh, 41h; 104
		db 6Dh, 59h, 9Ah, 40h, 0D1h, 0DEh, 0ABh, 41h; 112
		db 77h, 0CBh, 12h, 41h, 0B8h, 0Bh, 4Ah, 41h; 120
		db 0D1h, 0DEh, 0ABh, 41h, 0BDh, 37h, 86h, 0B5h; 128
		db 0B6h, 0Bh, 0CAh, 41h, 19h, 4Ch, 3, 41h; 136
		db 0E0h, 84h, 6Dh, 0C1h, 5Ch, 75h, 0A3h, 41h; 144
		db 19h, 4Ch, 3, 41h, 2Ch, 28h, 0C0h, 0C1h; 152
		db 1, 0BEh, 0F9h, 40h, 19h, 4Ch, 3, 41h; 160
		db 2Ch, 28h, 0C0h, 0C1h, 0Ch, 0BEh, 0F9h, 0C0h; 168
		db 19h, 4Ch, 3, 41h, 0DCh, 84h, 6Dh, 0C1h; 176
		db 5Dh, 75h, 0A3h, 0C1h, 19h, 4Ch, 3, 41h; 184
		db 9Ch, 53h, 49h, 36h, 0B6h, 0Bh, 0CAh, 0C1h; 192
		db 19h, 4Ch, 3, 41h, 0E2h, 84h, 6Dh, 41h; 200
		db 5Bh, 75h, 0A3h, 0C1h, 19h, 4Ch, 3, 41h; 208
		db 2Dh, 28h, 0C0h, 41h, 0FDh, 0BDh, 0F9h, 0C0h; 216
		db 19h, 4Ch, 3, 41h, 2Bh, 28h, 0C0h, 41h; 224
		db 10h, 0BEh, 0F9h, 40h, 19h, 4Ch, 3, 41h; 232
		db 0DAh, 84h, 6Dh, 41h, 5Eh, 75h, 0A3h, 41h; 240
		db 19h, 4Ch, 3, 41h, 0BDh, 37h, 86h, 0B5h; 248
		db 0B6h, 0Bh, 0CAh, 41h, 1Ch, 4Ch, 3, 0C1h; 256
		db 0E0h, 84h, 6Dh, 0C1h, 5Ch, 75h, 0A3h, 41h; 264
		db 1Ch, 4Ch, 3, 0C1h, 2Ch, 28h, 0C0h, 0C1h; 272
		db 1, 0BEh, 0F9h, 40h, 1Ch, 4Ch, 3, 0C1h; 280
		db 2Ch, 28h, 0C0h, 0C1h, 0Ch, 0BEh, 0F9h, 0C0h; 288
		db 1Ch, 4Ch, 3, 0C1h, 0DCh, 84h, 6Dh, 0C1h; 296
		db 5Dh, 75h, 0A3h, 0C1h, 1Ch, 4Ch, 3, 0C1h; 304
		db 9Ch, 53h, 49h, 36h, 0B6h, 0Bh, 0CAh, 0C1h; 312
		db 1Ch, 4Ch, 3, 0C1h, 0E2h, 84h, 6Dh, 41h; 320
		db 5Bh, 75h, 0A3h, 0C1h, 1Ch, 4Ch, 3, 0C1h; 328
		db 2Dh, 28h, 0C0h, 41h, 0FDh, 0BDh, 0F9h, 0C0h; 336
		db 1Ch, 4Ch, 3, 0C1h, 2Bh, 28h, 0C0h, 41h; 344
		db 10h, 0BEh, 0F9h, 40h, 1Ch, 4Ch, 3, 0C1h; 352
		db 0DAh, 84h, 6Dh, 41h, 5Eh, 75h, 0A3h, 41h; 360
		db 1Ch, 4Ch, 3, 0C1h, 0BDh, 37h, 86h, 0B5h; 368
		db 4, 0BEh, 79h, 41h, 0D1h, 0DEh, 0ABh, 0C1h; 376
		db 7Ah, 0CBh, 12h, 0C1h, 0B4h, 0Bh, 4Ah, 41h; 384
		db 0D1h, 0DEh, 0ABh, 0C1h, 0DDh, 84h, 6Dh, 0C1h; 392
		db 62h, 59h, 9Ah, 40h, 0D1h, 0DEh, 0ABh, 0C1h; 400
		db 0DCh, 84h, 6Dh, 0C1h, 68h, 59h, 9Ah, 0C0h; 408
		db 0D1h, 0DEh, 0ABh, 0C1h, 77h, 0CBh, 12h, 0C1h; 416
		db 0B6h, 0Bh, 4Ah, 0C1h, 0D1h, 0DEh, 0ABh, 0C1h; 424
		db 0BDh, 37h, 6, 36h, 4, 0BEh, 79h, 0C1h; 432
		db 0D1h, 0DEh, 0ABh, 0C1h, 7Bh, 0CBh, 12h, 41h; 440
		db 0B3h, 0Bh, 4Ah, 0C1h, 0D1h, 0DEh, 0ABh, 0C1h; 448
		db 0DEh, 84h, 6Dh, 41h, 60h, 59h, 9Ah, 0C0h; 456
		db 0D1h, 0DEh, 0ABh, 0C1h, 0DCh, 84h, 6Dh, 41h; 464
		db 6Ah, 59h, 9Ah, 40h, 0D1h, 0DEh, 0ABh, 0C1h; 472
		db 76h, 0CBh, 12h, 41h, 0B6h, 0Bh, 4Ah, 41h; 480
		db 0D1h, 0DEh, 0ABh, 0C1h, 0, 0, 0, 0; 488
		db 0, 0, 0, 0, 87h, 71h, 0D4h, 0C1h; 496
		db 77h, 0D7h, 59h, 3Ah, 91h, 99h, 0Bh, 3Dh; 504
		db 87h, 71h, 0D4h, 0C1h, 77h, 0D7h, 59h, 3Ah; 512
		db 0D5h, 0CAh, 4, 0BDh, 87h, 71h, 0D4h, 41h; 520
byte_407729 db 0F9h, 0A7h, 6Fh, 0C2h, 0BDh, 37h, 86h, 0B5h; 0
		db 0B2h, 42h, 1Dh, 0C1h, 0D7h, 9, 84h, 0C2h; 8
		db 0BDh, 37h, 86h, 0B5h, 0E6h, 8Eh, 8Bh, 0C1h; 16
		db 0B9h, 0C0h, 95h, 0C2h, 0BDh, 37h, 86h, 0B5h; 24
		db 1, 28h, 0AEh, 0C1h, 29h, 0F6h, 0BBh, 0C2h; 32
		db 0BDh, 37h, 86h, 0B5h, 0E8h, 8Eh, 8Bh, 0C1h; 40
		db 4, 2Ch, 0C8h, 0C2h, 0BDh, 37h, 86h, 0B5h; 48
		db 0B6h, 42h, 1Dh, 0C1h, 0ABh, 0B8h, 0CCh, 0C2h; 56
		db 0, 0, 0, 80h, 0BDh, 37h, 6, 0B6h; 64
		db 4, 2Ch, 0C8h, 0C2h, 0BDh, 37h, 86h, 35h; 72
		db 0B0h, 42h, 1Dh, 41h, 29h, 0F6h, 0BBh, 0C2h; 80
		db 0BDh, 37h, 86h, 35h, 0E6h, 8Eh, 8Bh, 41h; 88
		db 0B9h, 0C0h, 95h, 0C2h, 0BDh, 37h, 86h, 35h; 96
		db 0FFh, 27h, 0AEh, 41h, 0D7h, 9, 84h, 0C2h; 104
		db 0BDh, 37h, 86h, 35h, 0E7h, 8Eh, 8Bh, 41h; 112
		db 0F8h, 0A7h, 6Fh, 0C2h, 0BDh, 37h, 86h, 35h; 120
		db 0B5h, 42h, 1Dh, 41h, 3Ah, 97h, 33h, 0C2h; 128
		db 0, 0, 0, 0, 41h, 2Fh, 4, 41h; 136
		db 0Dh, 7Ch, 4Fh, 0C2h, 0BDh, 37h, 86h, 35h; 144
		db 0BDh, 58h, 0B4h, 41h, 9Ah, 4Dh, 80h, 0C2h; 152
		db 0BDh, 37h, 6, 36h, 0F0h, 8Ch, 1, 42h; 160
		db 0, 0, 0A0h, 0C2h, 0BDh, 37h, 6, 36h; 168
		db 0D6h, 38h, 10h, 42h, 67h, 0B2h, 0BFh, 0C2h; 176
		db 0BDh, 37h, 6, 36h, 0F2h, 8Ch, 1, 42h; 184
		db 0FAh, 41h, 0D8h, 0C2h, 0BDh, 37h, 86h, 35h; 192
		db 0BEh, 58h, 0B4h, 41h, 63h, 34h, 0E6h, 0C2h; 200
		db 0, 0, 0, 0, 3Ch, 2Fh, 4, 41h; 208
		db 63h, 34h, 0E6h, 0C2h, 0, 0, 0, 80h; 216
		db 45h, 2Fh, 4, 0C1h, 0FAh, 41h, 0D8h, 0C2h; 224
		db 0BDh, 37h, 86h, 0B5h, 0BFh, 58h, 0B4h, 0C1h; 232
		db 66h, 0B2h, 0BFh, 0C2h, 0BDh, 37h, 6, 0B6h; 240
		db 0F1h, 8Ch, 1, 0C2h, 0FFh, 0FFh, 9Fh, 0C2h; 248
		db 0BDh, 37h, 6, 0B6h, 0D6h, 38h, 10h, 0C2h; 256
		db 98h, 4Dh, 80h, 0C2h, 0BDh, 37h, 6, 0B6h; 264
		db 0F1h, 8Ch, 1, 0C2h, 0Bh, 7Ch, 4Fh, 0C2h; 272
		db 0BDh, 37h, 86h, 0B5h, 0BEh, 58h, 0B4h, 0C1h; 280
		db 3Ah, 97h, 33h, 0C2h, 0, 0, 0, 80h; 288
		db 40h, 2Fh, 4, 0C1h, 0, 0, 0DCh, 42h; 296
		db 0BDh, 37h, 86h, 35h, 0FEh, 0FFh, 1Fh, 41h; 304
		db 0, 0, 0DCh, 42h, 0BDh, 37h, 86h, 0B5h; 312
		db 0FEh, 0FFh, 1Fh, 0C1h, 2Ch, 23h, 93h, 42h; 320
		db 0BDh, 37h, 86h, 35h, 0FFh, 0FFh, 1Fh, 0C1h; 328
		db 2Ch, 23h, 93h, 42h, 0, 0, 0, 0; 336
		db 0FEh, 0FFh, 0EFh, 0C1h, 0C6h, 0Bh, 0CBh, 42h; 344
		db 0BDh, 37h, 86h, 35h, 0, 0, 20h, 0C1h; 352
		db 0C6h, 0Bh, 0CBh, 42h, 0, 0, 0, 0; 360
		db 0FFh, 0FFh, 0EFh, 0C1h, 48h, 0DDh, 0DBh, 42h; 368
		db 0, 0, 0, 0, 0FEh, 0FFh, 0EFh, 0C1h; 376
		db 0D4h, 70h, 0A9h, 0C1h, 0, 0, 0, 0; 384
		db 41h, 2Fh, 4, 41h, 0D4h, 70h, 0A9h, 0C1h; 392
		db 0, 0, 0, 80h, 40h, 2Fh, 4, 0C1h; 400
		db 0A0h, 25h, 90h, 40h, 0, 0, 0, 0; 408
		db 41h, 2Fh, 4, 41h, 0A0h, 25h, 90h, 40h; 416
		db 0, 0, 0, 80h, 40h, 2Fh, 4, 0C1h; 424
		db 88h, 6Ah, 0D5h, 41h, 0, 0, 0, 0; 432
		db 41h, 2Fh, 4, 41h, 88h, 6Ah, 0D5h, 41h; 440
		db 0, 0, 0, 80h, 40h, 2Fh, 4, 0C1h; 448
		db 20h, 4Ch, 45h, 42h, 0, 0, 0, 0; 456
		db 41h, 2Fh, 4, 41h, 20h, 4Ch, 45h, 42h; 464
		db 0, 0, 0, 80h, 40h, 2Fh, 4, 0C1h; 472
		db 0CCh, 62h, 92h, 42h, 0, 0, 0, 0; 480
		db 41h, 2Fh, 4, 41h, 0F0h, 2, 0A4h, 42h; 488
		db 0, 0, 0, 0, 31h, 0Ch, 0F1h, 0C1h; 496
		db 0A4h, 98h, 0BCh, 42h, 0, 0, 0, 0; 504
		db 41h, 2Fh, 4, 41h, 28h, 20h, 0A7h, 42h; 512
		db 0, 0, 0, 0, 4Eh, 0B3h, 28h, 0C1h; 520
byte_407939 db 0, 0, 0A0h, 0C1h, 0FEh, 0D8h, 0A6h, 41h; 0
		db 0FFh, 0FFh, 9Fh, 0C1h, 0BDh, 37h, 86h, 35h; 8
		db 0FEh, 0D8h, 0A6h, 41h, 0ACh, 0C5h, 0A7h, 36h; 16
		db 0BDh, 37h, 86h, 35h, 0DEh, 1Fh, 5Bh, 3Fh; 24
		db 0FEh, 0FFh, 9Fh, 0C1h, 1, 0, 20h, 41h; 32
		db 0FEh, 0D8h, 0A6h, 41h, 0FFh, 0FFh, 9Fh, 0C1h; 40
		db 0, 0, 0A0h, 41h, 0FEh, 0D8h, 0A6h, 41h; 48
		db 0FFh, 0FFh, 9Fh, 0C1h, 0, 0, 0A0h, 0C1h; 56
		db 0FFh, 0D8h, 0A6h, 41h, 0FEh, 0FFh, 1Fh, 0C1h; 64
		db 0, 0, 0A0h, 41h, 0FFh, 0D8h, 0A6h, 41h; 72
		db 0FEh, 0FFh, 1Fh, 0C1h, 0, 0, 0A0h, 0C1h; 80
		db 80h, 6Ch, 23h, 42h, 0FFh, 0FFh, 9Fh, 0C1h; 88
		db 0FFh, 0FFh, 9Fh, 41h, 0, 27h, 0E9h, 0C1h; 96
		db 0, 0, 20h, 0C1h, 0, 0, 0A0h, 0C1h; 104
		db 0FFh, 0D8h, 0A6h, 41h, 0, 0, 20h, 41h; 112
		db 0, 0, 0A0h, 41h, 7Fh, 6Ch, 23h, 42h; 120
		db 1, 0, 20h, 41h, 0, 0, 0A0h, 0C1h; 128
		db 0, 0D9h, 0A6h, 41h, 0, 0, 0A0h, 41h; 136
		db 0FFh, 0FFh, 1Fh, 0C1h, 0, 0D9h, 0A6h, 41h; 144
		db 0, 0, 0A0h, 41h, 0BDh, 37h, 86h, 35h; 152
		db 0, 0D9h, 0A6h, 41h, 0, 0, 0A0h, 41h; 160
		db 0, 0, 0A0h, 41h, 10h, 20h, 5Bh, 3Fh; 168
		db 0FFh, 0FFh, 9Fh, 41h, 0, 0, 0A0h, 41h; 176
		db 0, 0D9h, 0A6h, 41h, 0, 0, 0A0h, 41h; 184
		db 0C6h, 0FCh, 9, 0C2h, 0FFh, 26h, 99h, 0C1h; 192
		db 8Ah, 64h, 17h, 42h, 0B7h, 0B5h, 0FAh, 0C0h; 200
		db 0FDh, 26h, 99h, 0C1h, 6Eh, 18h, 8Ah, 41h; 208
		db 0A8h, 0B0h, 24h, 0C2h, 7Ah, 99h, 28h, 0C2h; 216
		db 0C6h, 67h, 85h, 41h, 3Bh, 0ABh, 0AFh, 40h; 224
		db 0E2h, 1Eh, 8Ah, 0C2h, 6Eh, 0A4h, 2Fh, 0C2h; 232
		db 15h, 0C9h, 0DEh, 0C1h, 0, 27h, 99h, 0C1h; 240
		db 13h, 0F3h, 67h, 0C1h, 0E3h, 48h, 0BFh, 0C1h; 248
		db 7Dh, 93h, 44h, 0C2h, 0C5h, 54h, 90h, 40h; 256
		db 92h, 3Ch, 2Fh, 40h, 0, 27h, 99h, 0C1h; 264
		db 0AFh, 0B5h, 0FAh, 0C0h, 0CAh, 0C1h, 54h, 0C0h; 272
		db 7Fh, 93h, 44h, 0C2h, 0A7h, 0B0h, 24h, 42h; 280
		db 3Ah, 98h, 0BAh, 41h, 7Dh, 93h, 6Ch, 0C2h; 288
		db 99h, 0C2h, 32h, 0C1h, 6Dh, 18h, 8Ah, 41h; 296
		db 0FFh, 26h, 99h, 0C1h, 6Fh, 0ADh, 8Eh, 41h; 304
		db 0C7h, 91h, 5Eh, 41h, 0FDh, 26h, 99h, 0C1h; 312
		db 96h, 0Ah, 32h, 0C2h, 15h, 0C9h, 0DEh, 41h; 320
		db 7Fh, 93h, 44h, 0C2h, 0C5h, 0FCh, 9, 42h; 328
		db 4Fh, 92h, 20h, 42h, 9Fh, 0FDh, 61h, 0C2h; 336
		db 1Fh, 47h, 7Ah, 40h, 5Fh, 3Dh, 0Dh, 0C1h; 344
		db 7Dh, 93h, 44h, 0C2h, 76h, 30h, 55h, 41h; 352
		db 6Dh, 0ADh, 8Eh, 41h, 80h, 93h, 6Ch, 0C2h; 360
		db 6Bh, 18h, 0DAh, 0C1h, 2Eh, 0E6h, 8Fh, 40h; 368
		db 80h, 93h, 1Ch, 0C2h, 12h, 0C9h, 0DEh, 0C1h; 376
		db 95h, 0F3h, 56h, 0C2h, 0FEh, 0B1h, 2Dh, 41h; 384
		db 0C6h, 0F3h, 46h, 0C1h, 0F2h, 0BCh, 1, 42h; 392
		db 0FEh, 0B1h, 2Dh, 41h, 93h, 0F3h, 6, 0C2h; 400
		db 95h, 0F3h, 6, 42h, 21h, 20h, 5Bh, 3Fh; 408
		db 0C8h, 0F3h, 46h, 41h, 0C8h, 0F3h, 46h, 0C1h; 416
		db 32h, 20h, 5Bh, 3Fh, 94h, 0F3h, 6, 42h; 424
		db 2Fh, 18h, 1Bh, 0C2h, 0FFh, 1Fh, 5Bh, 3Fh; 432
		db 75h, 8Fh, 8Fh, 40h, 0B8h, 0C7h, 67h, 0C1h; 440
		db 0BCh, 1Fh, 5Bh, 3Fh, 5Ch, 30h, 96h, 0C1h; 448
		db 2Fh, 18h, 1Bh, 42h, 0FFh, 26h, 0E9h, 0C1h; 456
		db 0EDh, 0F1h, 9, 0C2h, 0B9h, 0C7h, 67h, 41h; 464
		db 32h, 20h, 5Bh, 3Fh, 5Ch, 30h, 0E6h, 41h; 472
		db 0F4h, 0FEh, 0F7h, 0C1h, 0FFh, 4Dh, 12h, 0C1h; 480
		db 0FEh, 0FBh, 0A8h, 41h, 14h, 0BFh, 3Bh, 0C2h; 488
		db 7Eh, 93h, 1Ch, 0C2h, 0Eh, 1, 98h, 41h; 496
		db 0F4h, 0FEh, 0F7h, 41h, 1, 4Eh, 12h, 0C1h; 504
		db 0FBh, 0FBh, 0A8h, 0C1h, 0FEh, 7Dh, 4Ch, 42h; 512
		db 0FDh, 4Dh, 12h, 0C1h, 0F4h, 0FEh, 0A7h, 41h; 520
; float dword_407B49
dword_407B49 dd 3C41ACDEh
; float dword_407B4D
dword_407B4D dd 3CBD5561h
; float dword_407B51
dword_407B51 dd 0BCB54C12h
; float dword_407B55
dword_407B55 dd 3D00A8D2h
; float dword_407B59
dword_407B59 dd 3C23D70Ah
		db 0C3h ; Ã
		db 0F5h ; õ
		db 0C8h ; È
		db  3Fh ; ?
; float dword_407B61
dword_407B61 dd 3F060807h
; float dword_407B65
dword_407B65 dd 3FACCCCDh
; float dword_407B69
dword_407B69 dd 3FCA3D71h
; float dword_407B6D
dword_407B6D dd 3EFF6018h
		db  0Ah
		db 0D7h ; ×
		db  23h ; #
		db  3Ch ; <
flt_407B75 real4 0.000099999997
		db 0CDh ; Í
		db 0CCh ; Ì
		db 0CCh ; Ì
		db  3Dh ; =
		db  33h ; 3
		db  33h ; 3
		db  73h ; s
		db  3Fh ; ?
		db 0CDh ; Í
		db 0CCh ; Ì
		db 0CCh ; Ì
		db  3Dh ; =
byte_407E4C db 1B4h dup(0)
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;
		db    ? ;

.data? ; uninitialised

byte_40805C db 210h dup(?)
byte_40826C db 210h dup(?)
byte_40847C db 210h dup(?)
byte_40868C db 210h dup(?)
byte_40889C db 210h dup(?)
byte_408AAC db 210h dup(?)
byte_408CBC db 210h dup(?)

.code

RotatingDotz proc near

var_14 	= dword ptr -14h
AnimSequence 	= dword ptr -10h
hdc 	= dword ptr -4
lpThreadParameter= dword ptr  8

		push ebp
		mov ebp, esp
		add esp, 0FFFFFFECh
		push 10 	; nIDDlgItem
		push xWnd 	; hDlg
		call GetDlgItem
		push eax 	; hWnd
		call GetDC
		mov [ebp+hdc], eax
		push 0 	; hWnd
		call GetDC
		push eax 	; hdc
		call CreateCompatibleDC
		mov hdcSrc, eax
		push BoxHeight 	; cy
		push BoxWidth 	; cx
		push [ebp+hdc] ; hdc
		call CreateCompatibleBitmap
		mov DotzDC, eax
		push eax 	; h
		push hdcSrc 	; hdc
		call SelectObject
		push 2 	; mode
		push hdcSrc 	; hdc
		call SetBkMode
		invoke GetWindowRect,xWnd,offset ZndRect
		invoke GetDlgItem,xWnd,10
		invoke GetWindowRect,eax,addr DotzRect
		mov edi,ZndRect.left
		mov esi,DotzRect.left
		sub edi,esi
		mov ebx,ZndRect.top
		mov edx,DotzRect.top
		sub ebx,edx
		invoke SetBrushOrgEx,hdcSrc,edi,ebx,0
		mov eax,hBrush
		invoke SelectObject,hdcSrc,eax
		push 2Ch 	; int
		push offset Dotzcreation ; int
		push dword_407B65 ; float
		call BigDotz
		push 2Ch 	; int
		push offset byte_407519 ; int
		push dword_407B69 ; float
		call BigDotz
		push 2Ch 	; int
		push offset byte_407729 ; int
		push dword_407B6D ; float
		call BigDotz
		push 2Ch 	; int
		push dword_407B61 ; float
		push 0 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B61 ; float
		push 2 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		mov [ebp+AnimSequence], 0
		push offset Dotzcreation
		push 0
		call sub_401960
		push offset Dotzcreation
		push 1
		call sub_401960
		push offset Dotzcreation
		push 2
		call sub_401960
		push offset Dotzcreation
		push 3
		call sub_401960
		push offset Dotzcreation
		push 4
		call sub_401960

loc_401AD4:
		finit
		invoke PatBlt,hdcSrc,0,0,BoxWidth,BoxHeight,PATCOPY
		cmp [ebp+AnimSequence], 0C80h
		jbe loc_401AFF
		mov [ebp+AnimSequence], 0

loc_401AFF:
		cmp [ebp+AnimSequence], 0C1Ch
		jnz loc_401B32
		push 64h
		push 2Ch
		push offset Dotzcreation
		push offset byte_40805C
		push offset byte_407E4C
		call sub_40187F
		mov [ebp+var_14], 1
		lea eax, byte_40805C
		jmp loc_401F8A

loc_401B32:
		cmp [ebp+AnimSequence], 0C1Ch
		jbe loc_401B62
		push [ebp+var_14]
		push 2Ch
		push offset byte_40826C
		push offset byte_40805C
		push offset byte_407E4C
		call CubePhormat
		inc [ebp+var_14]
		lea eax, byte_40826C
		jmp loc_401F8A

loc_401B62:
		cmp [ebp+AnimSequence], 0A8Ch
		jbe loc_401B9E
		push 2Ch 	; int
		push dword_407B55 ; float
		push 2 	; int
		push offset byte_40805C ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B51 ; float
		push 0 	; int
		push offset byte_40805C ; int
		call DotzSpin
		lea eax, byte_40805C
		jmp loc_401F8A

loc_401B9E:
		cmp [ebp+AnimSequence], 9C4h
		jbe loc_401BEE
		push 2Ch 	; int
		push dword_407B55 ; float
		push 2 	; int
		push offset byte_40805C ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B51 ; float
		push 1 	; int
		push offset byte_40805C ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B49 ; float
		push 0 	; int
		push offset byte_40805C ; int
		call DotzSpin
		lea eax, byte_40805C
		jmp loc_401F8A

loc_401BEE:
		cmp [ebp+AnimSequence], 94Ch
		jbe loc_401C3E
		push 2Ch 	; int
		push dword_407B51 ; float
		push 2 	; int
		push offset byte_40805C ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B49 ; float
		push 1 	; int
		push offset byte_40805C ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B55 ; float
		push 0 	; int
		push offset byte_40805C ; int
		call DotzSpin
		lea eax, byte_40805C
		jmp loc_401F8A

loc_401C3E:
		cmp [ebp+AnimSequence], 8CAh
		jnz loc_401C71
		push 64h
		push 2Ch
		push offset byte_407939
		push offset byte_40826C
		push offset byte_407E4C
		call sub_40187F
		lea eax, byte_40826C
		mov [ebp+var_14], 1
		jmp loc_401F8A

loc_401C71:
		cmp [ebp+AnimSequence], 8CAh
		jbe loc_401CA1
		push [ebp+var_14]
		push 2Ch
		push offset byte_40805C
		push offset byte_40826C
		push offset byte_407E4C
		call CubePhormat
		inc [ebp+var_14]
		lea eax, byte_40805C
		jmp loc_401F8A

loc_401CA1:
		cmp [ebp+AnimSequence], 7D0h
		jbe loc_401CDD
		push 2Ch 	; int
		push dword_407B4D ; float
		push 2 	; int
		push offset byte_40826C ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B4D ; float
		push 1 	; int
		push offset byte_40826C ; int
		call DotzSpin
		lea eax, byte_40826C
		jmp loc_401F8A

loc_401CDD:
		cmp [ebp+AnimSequence], 744h
		jbe loc_401D19
		push 2Ch 	; int
		push dword_407B4D ; float
		push 2 	; int
		push offset byte_40826C ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B4D ; float
		push 0 	; int
		push offset byte_40826C ; int
		call DotzSpin
		lea eax, byte_40826C
		jmp loc_401F8A

loc_401D19:
		cmp [ebp+AnimSequence], 708h
		jnz loc_401D4C
		push 3Ch
		push 2Ch
		push offset byte_407729
		push offset byte_40805C
		push offset byte_407E4C
		call sub_40187F
		lea eax, byte_40805C
		mov [ebp+var_14], 1
		jmp loc_401F8A

loc_401D4C:
		cmp [ebp+AnimSequence], 708h
		jbe loc_401D7C
		push [ebp+var_14]
		push 2Ch
		push offset byte_40826C
		push offset byte_40805C
		push offset byte_407E4C
		call CubePhormat
		inc [ebp+var_14]
		lea eax, byte_40826C
		jmp loc_401F8A

loc_401D7C:
		cmp [ebp+AnimSequence], 640h
		jbe loc_401DB8
		push 2Ch 	; int
		push dword_407B55 ; float
		push 2 	; int
		push offset byte_40805C ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B51 ; float
		push 1 	; int
		push offset byte_40805C ; int
		call DotzSpin
		lea eax, byte_40805C
		jmp loc_401F8A

loc_401DB8:
		cmp [ebp+AnimSequence], 5DCh
		jnz loc_401DEB
		push 64h
		push 2Ch
		push offset byte_407519
		push offset Dotzcreation
		push offset byte_407E4C
		call sub_40187F
		mov [ebp+var_14], 1
		lea eax, Dotzcreation
		jmp loc_401F8A

loc_401DEB:
		cmp [ebp+AnimSequence], 5DCh
		jbe loc_401E1B
		push [ebp+var_14]
		push 2Ch
		push offset byte_40805C
		push offset Dotzcreation
		push offset byte_407E4C
		call CubePhormat
		inc [ebp+var_14]
		lea eax, byte_40805C
		jmp loc_401F8A

loc_401E1B:
		cmp [ebp+AnimSequence], 4E2h
		jbe loc_401E57
		push 2Ch 	; int
		push dword_407B55 ; float
		push 2 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B55 ; float
		push 1 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		lea eax, Dotzcreation
		jmp loc_401F8A

loc_401E57:
		cmp [ebp+AnimSequence], 3E8h
		jbe loc_401E7F
		push 2Ch 	; int
		push dword_407B55 ; float
		push 1 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		lea eax, Dotzcreation
		jmp loc_401F8A

loc_401E7F:
		cmp [ebp+AnimSequence], 2EEh
		jbe loc_401EBB
		push 2Ch 	; int
		push dword_407B4D ; float
		push 1 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B55 ; float
		push 2 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		lea eax, Dotzcreation
		jmp loc_401F8A

loc_401EBB:
		cmp [ebp+AnimSequence], 1F7h
		jbe loc_401EF7
		push 2Ch 	; int
		push dword_407B51 ; float
		push 1 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B4D ; float
		push 2 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		lea eax, Dotzcreation
		jmp loc_401F8A

loc_401EF7:
		cmp [ebp+AnimSequence], 104h
		jbe loc_401F42
		push 2Ch 	; int
		push dword_407B4D ; float
		push 0 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B59 ; float
		push 2 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		fld dword_407B59
		fsub flt_407B75
		fstp dword_407B59
		lea eax, Dotzcreation
		jmp loc_401F8A

loc_401F42:
		cmp [ebp+AnimSequence], 0
		jb loc_401F8A
		push 2Ch 	; int
		push dword_407B4D ; float
		push 2 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		push 2Ch 	; int
		push dword_407B59 ; float
		push 1 	; int
		push offset Dotzcreation ; int
		call DotzSpin
		fld dword_407B59
		fadd flt_407B75
		fstp dword_407B59
		lea eax, Dotzcreation
		jmp $+2

loc_401F8A:
		mov ebx, eax
		mov eax, [ebp+AnimSequence]
		cdq
		mov ecx, 3
		idiv ecx
		test edx, edx
		jnz loc_401FA0
		call sub_401985

loc_401FA0:
		push ebx
		push 0
		call sub_401960
		push 2Ch 	; int
		push offset byte_408CBC ; int
		push 333333h ; color
		push 37h 	; int
		push 48h 	; int
		push hdcSrc 	; hdc
		call DotzProc
		push 2Ch 	; int
		push offset byte_408AAC ; int
		push 888888h ; color
		push 37h 	; int
		push 48h 	; int
		push hdcSrc 	; hdc
		call DotzProc
		push 2Ch 	; int
		push offset byte_40889C ; int
		push 0BBBBBBh ; color
		push 37h 	; int
		push 48h 	; int
		push hdcSrc 	; hdc
		call DotzProc
		push 2Ch 	; int
		push offset byte_40868C ; int
		push 0DDDDDDh 	; color
		push 37h 	; int
		push 48h 	; int
		push hdcSrc 	; hdc
		call DotzProc
		push 2Ch 	; int
		push offset byte_40847C ; int
		push 0EEEEEEh 	; color
		push 37h 	; int
		push 48h 	; int
		push hdcSrc 	; hdc
		call DotzProc
		inc [ebp+AnimSequence]
		push 0CC0020h ; rop
		push 0 	; y1
		push 0 	; x1
		push hdcSrc 	; hdcSrc
		push BoxHeight 	; cy
		push BoxWidth 	; cx
		push 0 	; y
		push 0 	; x
		push [ebp+hdc] ; hdc
		call BitBlt
		push 0Ch 	; dwMilliseconds
		call Sleep
		jmp loc_401AD4
RotatingDotz endp

BigDotz proc near

var_4 	= dword ptr -4
arg_0 	= dword ptr  8
arg_4 	= dword ptr  0Ch
arg_8 	= dword ptr  10h

		push ebp
		mov ebp, esp
		add esp, 0FFFFFFFCh
		finit
		mov [ebp+var_4], 0
		mov esi, [ebp+arg_4]

loc_401774:
		fld dword ptr [esi]
		fmul [ebp+arg_0]
		fstp dword ptr [esi]
		fld dword ptr [esi+4]
		fmul [ebp+arg_0]
		fstp dword ptr [esi+4]
		fld dword ptr [esi+8]
		fmul [ebp+arg_0]
		fstp dword ptr [esi+8]
		inc [ebp+var_4]
		add esi, 0Ch
		mov eax, [ebp+var_4]
		cmp eax, [ebp+arg_8]
		jl loc_401774
		leave
		retn 0Ch
BigDotz endp

DotzSpin proc near

var_8 	= dword ptr -8
var_4 	= dword ptr -4
arg_0 	= dword ptr  8
arg_4 	= dword ptr  0Ch
arg_8 	= dword ptr  10h
arg_C 	= dword ptr  14h

		push ebp
		mov ebp, esp
		add esp, 0FFFFFFF8h
		mov [ebp+var_4], 0
		mov esi, [ebp+arg_0]
		finit

loc_4017B2:
		cmp [ebp+arg_4], 0
		jnz loc_4017EC
		fld dword ptr [esi+4]
		fstp [ebp+var_8]
		fld [ebp+arg_8]
		fcos
		fmul dword ptr [esi+4]
		fld [ebp+arg_8]
		fsin
		fmul dword ptr [esi+8]
		fchs
		faddp st(1), st
		fstp dword ptr [esi+4]
		fld [ebp+arg_8]
		fsin
		fmul [ebp+var_8]
		fld [ebp+arg_8]
		fcos
		fmul dword ptr [esi+8]
		faddp st(1), st
		fstp dword ptr [esi+8]
		jmp loc_401852

loc_4017EC:
		cmp [ebp+arg_4], 1
		jnz loc_401823
		fld dword ptr [esi]
		fstp [ebp+var_8]
		fld [ebp+arg_8]
		fcos
		fmul dword ptr [esi]
		fld [ebp+arg_8]
		fsin
		fmul dword ptr [esi+8]
		faddp st(1), st
		fstp dword ptr [esi]
		fld [ebp+arg_8]
		fsin
		fmul [ebp+var_8]
		fchs
		fld [ebp+arg_8]
		fcos
		fmul dword ptr [esi+8]
		faddp st(1), st
		fstp dword ptr [esi+8]
		jmp loc_401852

loc_401823:
		fld dword ptr [esi]
		fstp [ebp+var_8]
		fld [ebp+arg_8]
		fcos
		fmul dword ptr [esi]
		fld [ebp+arg_8]
		fsin
		fmul dword ptr [esi+4]
		fchs
		faddp st(1), st
		fstp dword ptr [esi]
		fld [ebp+arg_8]
		fsin
		fmul [ebp+var_8]
		fld [ebp+arg_8]
		fcos
		fmul dword ptr [esi+4]
		faddp st(1), st
		fstp dword ptr [esi+4]

loc_401852:
		inc [ebp+var_4]
		add esi, 0Ch
		mov eax, [ebp+var_4]
		cmp eax, [ebp+arg_C]
		jl loc_4017B2
		leave
		retn 10h
DotzSpin endp

sub_401960 proc near

arg_0 	= dword ptr  8
arg_4 	= dword ptr  0Ch

		push ebp
		mov ebp, esp
		push eax
		xor edx, edx
		mov eax, 210h
		push eax
		mov ebx, [ebp+arg_0]
		imul eax, ebx
		add eax, offset byte_40847C
		push eax
		push [ebp+arg_4]
		call sub_402D94
		pop eax
		leave
		retn 8
sub_401960 endp

sub_402D94 proc near

arg_0 	= dword ptr  8
arg_4 	= dword ptr  0Ch
arg_8 	= dword ptr  10h

		push ebp
		mov ebp, esp
		push esi
		push edi
		cld
		mov esi, [ebp+arg_0]
		mov edi, [ebp+arg_4]
		mov ecx, [ebp+arg_8]
		shr ecx, 2
		rep movsd
		mov ecx, [ebp+arg_8]
		and ecx, 3
		rep movsb
		pop edi
		pop esi
		leave
		retn 0Ch
sub_402D94 endp

sub_40187F proc near

var_4 	= dword ptr -4
arg_0 	= dword ptr  8
arg_4 	= dword ptr  0Ch
arg_8 	= dword ptr  10h
arg_C 	= dword ptr  14h
arg_10 	= dword ptr  18h

		push ebp
		mov ebp, esp
		add esp, 0FFFFFFFCh
		finit
		mov [ebp+var_4], 0
		mov esi, [ebp+arg_4]
		mov edi, [ebp+arg_8]
		mov edx, [ebp+arg_0]

loc_401898:
		fld dword ptr [edi]
		fld dword ptr [esi]
		call ShapeGathering
		fld dword ptr [edi]
		fld dword ptr [esi]
		fsubp st(1), st
		fabs
		jnz loc_4018AD
		fchs

loc_4018AD:
		fidiv [ebp+arg_10]
		fstp dword ptr [edx]
		fld dword ptr [edi+4]
		fld dword ptr [esi+4]
		call ShapeGathering
		fld dword ptr [edi+4]
		fld dword ptr [esi+4]
		fsubp st(1), st
		fabs
		jnz loc_4018CB
		fchs

loc_4018CB:
		fidiv [ebp+arg_10]
		fstp dword ptr [edx+4]
		fld dword ptr [edi+8]
		fld dword ptr [esi+8]
		call ShapeGathering
		fld dword ptr [edi+8]
		fld dword ptr [esi+8]
		fsubp st(1), st
		fabs
		jnz loc_4018EA
		fchs

loc_4018EA:
		fidiv [ebp+arg_10]
		fstp dword ptr [edx+8]
		inc [ebp+var_4]
		add esi, 0Ch
		add edi, 0Ch
		add edx, 0Ch
		mov eax, [ebp+var_4]
		cmp eax, [ebp+arg_C]
		jl loc_401898
		leave
		retn 14h
sub_40187F endp

ShapeGathering proc near
		fcompp
		fstsw ax
		sahf
		jb loc_401877
		xor ax, ax
		test ax, ax
		retn

loc_401877:
		or ax, 1
		test ax, ax
		retn
ShapeGathering endp

CubePhormat proc near

var_4 	= dword ptr -4
arg_0 	= dword ptr  8
arg_4 	= dword ptr  0Ch
arg_8 	= dword ptr  10h
arg_C 	= dword ptr  14h
arg_10 	= dword ptr  18h

		push ebp
		mov ebp, esp
		add esp, 0FFFFFFFCh
		finit
		mov [ebp+var_4], 0
		mov esi, [ebp+arg_4]
		mov edi, [ebp+arg_8]
		mov edx, [ebp+arg_0]

loc_401921:
		fld dword ptr [edx]
		fimul [ebp+arg_10]
		fld dword ptr [esi]
		faddp st(1), st
		fstp dword ptr [edi]
		fld dword ptr [edx+4]
		fimul [ebp+arg_10]
		fld dword ptr [esi+4]
		faddp st(1), st
		fstp dword ptr [edi+4]
		fld dword ptr [edx+8]
		fimul [ebp+arg_10]
		fld dword ptr [esi+8]
		faddp st(1), st
		fstp dword ptr [edi+8]
		inc [ebp+var_4]
		add esi, 0Ch
		add edi, 0Ch
		add edx, 0Ch
		mov eax, [ebp+var_4]
		cmp eax, [ebp+arg_C]
		jl loc_401921
		leave
		retn 14h
CubePhormat endp

sub_401985 proc near
		push eax
		push 210h
		push offset byte_408CBC
		push offset byte_408AAC
		call sub_402D94
		push 210h
		push offset byte_408AAC
		push offset byte_40889C
		call sub_402D94
		push 210h
		push offset byte_40889C
		push offset byte_40868C
		call sub_402D94
		push 210h
		push offset byte_40868C
		push offset byte_40847C
		call sub_402D94
		pop eax
		retn
sub_401985 endp

DotzProc proc near

var_10 	= dword ptr -10h
var_C 	= dword ptr -0Ch
var_8 	= dword ptr -8
var_4 	= dword ptr -4
hdc 	= dword ptr  8
arg_4 	= dword ptr  0Ch
arg_8 	= dword ptr  10h
color 	= dword ptr  14h
arg_10 	= dword ptr  18h
arg_14 	= dword ptr  1Ch

		push ebp
		mov ebp, esp
		add esp, 0FFFFFFF0h
		finit
		mov [ebp+var_10], 0
		mov esi, [ebp+arg_10]

loc_4016FF:
		fld dword ptr [esi]
		fld dword ptr [esi+4]
		fld dword ptr [esi+8]
		fistp [ebp+var_4]
		fistp [ebp+var_8]
		fistp [ebp+var_C]
		mov eax, [ebp+arg_4]
		mov ebx, [ebp+arg_8]
		add eax, [ebp+var_4]
		add ebx, [ebp+var_8]
		mov eax, [ebp+arg_4]
		mov ebx, [ebp+arg_8]
		add eax, [ebp+var_4]
		add ebx, [ebp+var_8]
		push [ebp+color] ; color
		push ebx 	; y
		push eax 	; x
		push [ebp+hdc] ; hdc
		call SetPixel
		mov eax, [ebp+arg_4]
		mov ebx, [ebp+arg_8]
		add eax, [ebp+var_4]
		inc eax
		add ebx, [ebp+var_8]
		push [ebp+color] ; color
		push ebx 	; y
		push eax 	; x
		push [ebp+hdc] ; hdc
		call SetPixel
		inc [ebp+var_10]
		add esi, 0Ch
		mov eax, [ebp+var_10]
		cmp eax, [ebp+arg_14]
		jl loc_4016FF
		leave
		retn 18h
DotzProc endp

