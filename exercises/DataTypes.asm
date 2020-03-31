; HelloWorld.asm
; Author:  @brandonkovacs

global _start

section .text

_start:

	; print hello world
	mov eax, 0x4		; write system call
	mov ebx, 0x1		; stdout
	mov ecx, message	; string buffer
	mov edx, mlen		; length of string buffer
	int 0x80		; interrupt and execute system call

	; exit cleanly
	mov eax, 0x1		; exit system call
	mov ebx, 0x0		; pass in 0 as argument
	int 0x80		; interrupt and execute system call

section .data

	var1:	db 0xAA
	var2: 	db 0xBB, 0xCC, 0xDD
	var3:	dw 0xEE
	var4:	dd 0xAABBCCDD
	var5:	dd 0x112233
	var6:	TIMES 6 db 0xFF


	message: db "Hello World!"
	mlen	equ $-message

section .bss

	var7:	resb 100
	var8:	resw 20
