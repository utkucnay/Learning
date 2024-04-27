extern ExitProcess
extern printf

global main

section .data
 Message db "%d", 10, 0

section .text
main:
 sub RSP, 8

 sub RSP, 16
 mov dword [RSP+16], 0
 mov dword [RSP+8], 20

.BC:
 mov ECX, dword [RSP+16]
 mov EDX, dword [RSP+8]
 cmp ECX, EDX
 jae .BE

 sub RSP, 32
 lea RCX, [REL Message]
 mov EDX, dword [RSP+32+16]
 call printf
 add RSP, 32

 mov ECX, dword [RSP+16]
 inc ECX
 mov dword [RSP+16], ECX
 jmp .BC

.BE:

 add RSP, 16
 add RSP, 8
 xor ECX, ECX
 call ExitProcess
