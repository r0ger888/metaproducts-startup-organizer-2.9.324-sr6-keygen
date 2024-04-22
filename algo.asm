include biglib.inc
includelib biglib.lib

include base64.asm

GenKey        PROTO    :DWORD
CheckName   PROTO   :DWORD,:DWORD,:DWORD

.data
ExpD db "4DF7BCBC890A0FF2C176B2A76481DF6BC0765A667B4D38E6EA7B87301521A9E4A"
	 db "2286686A6C11703644B3F69A8439",0
ExpN db "4465E1EFEFB4A11B107765F10D6E15A73C775784F2046379BE6AA879FC71F9589"
	 db "49A67C1CA8BB95568C0A424AF885",0

ProgLabel    db "SUO4",0
OneByte      db 01h,0
LicType      db "10000",0
StartKey     db "dqma",0
EndKey       db "amqd",0
CustomStr    db "WeAreNumberOne",0
NoName        db "insert ur name.",0
TooLong        db "name too long.",0
Blacklisted db "try again.",0
FinalBuffer db 256 dup(0)
NameBuffer    db 256 dup(0)
BlklistBuffer db 256 dup(0)

; blacklisted names from so.exe :

blk1		db "TSRh",0 ; sorry TSRh, it's Metaproducts' fault. :(
blk2		db "Teme Root",0
blk3		db "Donald E Soli",0
blk4		db "R Falcow",0
blk5		db "issam masri",0
blk6		db "steven mcmanus",0
blk7		db "mohamed tarabulsi",0
blk8		db "GINGENE DOMINIQUE",0
blk9		db "cunong ableh",0
blk10		db "Abbey National",0
blk11		db "Robert SanJose",0
blk12		db "Cheryl L Pietsek",0
blk13		db "Karen Colvin",0
blk14		db "Mary P Morrison",0
blk15		db "XSoft",0
blk16		db "Randy Becker",0
blk17		db "Lachlann Grigor",0
blk18		db "Michael Cunningham",0
blk19		db "SINHA KUMAR",0
blk20		db "Mario Sequeira",0
blk21		db "Brian Vinson",0
blk22		db "Low Wai Kong",0
blk23		db "Frank Mauro",0
blk24		db "Clyde Tilley",0
blk25		db "Scott Strobel",0
blk26		db "Joseph Galliano",0
blk27		db "Nigel Hicks",0
blk28		db "Sandra Brimhall",0
blk29		db "Lisa Wainwright",0
blk30		db "Dale Clodfelter",0
blk31		db "Robert Vasque",0
blk32		db "Supplier Group",0
blk33 		db "danita czyzewski",0
blk34		db "Martin Vincent",0
blk35		db "Samuella Sprouse",0
blk36		db "Tina Quattlebuam",0

.data?
_D            dd ?
_N            dd ?
Chipertxt    dd ?
Chipertxt2  dd ?
RSAEnk        db 256 dup(?)
Base64Bfr    db 256 dup(?)

.code
GenKey proc hWin:DWORD

    ; get the whole name string.
    invoke GetDlgItemText,hWin,IDC_NAME,offset NameBuffer,sizeof NameBuffer
    or eax,eax
    jz no_name
    cmp eax,30
    jg name_too_long
   
    ; detect blacklisted names
    invoke lstrcpy,offset BlklistBuffer,offset NameBuffer
    invoke CheckName,offset BlklistBuffer,offset blk1,4500
    test eax,eax
    jz name_blacklisted

	; initialize the string for RSA-370 decryption
    mov byte ptr [RSAEnk],7
    invoke lstrcat,offset RSAEnk,offset ProgLabel    ; SUO4
    invoke lstrcat,offset RSAEnk,offset OneByte        ; 01h
    invoke lstrcat,offset RSAEnk,offset NameBuffer    ; ur name
    invoke lstrcat,offset RSAEnk,offset OneByte        ; 01h
    invoke lstrcat,offset RSAEnk,offset LicType        ; 10000 (Unlimited site license)
    invoke lstrcat,offset RSAEnk,offset OneByte        ; 01h
    invoke lstrcat,offset RSAEnk,offset CustomStr		; any string :p
    invoke _BigCreate,0
    mov _D,eax
    invoke _BigCreate,0
    mov _N,eax
    invoke _BigCreate,0
    mov Chipertxt,eax
    invoke _BigCreate,0
    mov Chipertxt2,eax
   
    ; decrypting string to 370 bits of RSA
    invoke _BigIn,offset ExpD,16,_D
    invoke _BigIn,offset ExpN,16,_N
    invoke lstrlen,offset RSAEnk
    invoke _BigInBytes,offset RSAEnk,eax,256,Chipertxt2
    invoke _BigPowMod,Chipertxt2,_N,_D,Chipertxt
    invoke _BigOutBytes,Chipertxt,256,offset RSAEnk
   
    ; then encode them with base64
    push offset Base64Bfr
    push eax
    push offset RSAEnk
    call Base64Enk
   
    ; "dqma" + final string made of RSA-370 & Base64 + "amqd"
    invoke lstrcat,offset FinalBuffer,offset StartKey
    invoke lstrcat,offset FinalBuffer,offset Base64Bfr
    invoke lstrcat,offset FinalBuffer,offset EndKey
   
    ; final result in the textbox :p
    invoke SetDlgItemText,hWin,IDC_SERIAL,offset FinalBuffer
   
    ; clear RSA buffers.
    call Clean
    ret
   
no_name:
    invoke SetDlgItemText,hWin,IDC_SERIAL,0
    ret
   
name_too_long:
    invoke SetDlgItemText,hWin,IDC_SERIAL,addr TooLong
    ret
   
name_blacklisted:
    invoke SetDlgItemText,hWin,IDC_SERIAL,addr Blacklisted
    ret
   
GenKey endp

Clean proc

    invoke RtlZeroMemory,offset FinalBuffer,sizeof FinalBuffer
    invoke RtlZeroMemory,offset RSAEnk,sizeof RSAEnk
    invoke RtlZeroMemory,offset Base64Bfr,sizeof Base64Bfr
    invoke RtlZeroMemory,offset NameBuffer,sizeof NameBuffer
    invoke _BigDestroy,_D
    invoke _BigDestroy,_N
    invoke _BigDestroy,Chipertxt
    invoke _BigDestroy,Chipertxt2
    ret
   
Clean endp

CheckName proc str_1:LPCSTR,str_2:LPCSTR,bfrSize:DWORD

	push esi
	push edi
	push ebx
	mov edi, [str_1]
	mov esi, [str_2]
	mov ebx, [bfrSize]
	add ebx, esi

name_verif: 			
	invoke lstrcmp,edi,esi
	test eax, eax
	jz final
	invoke lstrlen,esi
	inc eax
	add esi, eax
	cmp esi, ebx
	jl name_verif

final:
	pop ebx
	pop edi
	pop esi
	ret
	
CheckName endp