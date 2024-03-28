extern ExitProcess
extern printf

global main

section .data
 Message db "%d", 0

section .text
main:
 sub RSP, 8

 sub RSP, 32
 mov dword [RSP+8], 2
 mov dword [RSP+16], 4
 mov ECX, dword [RSP+8]
 add ECX, dword [RSP+16]
 mov dword [RSP+24], ECX

 sub RSP, 32
 lea RCX, [REL Message]
 mov EDX, dword [RSP+32+24]
 call printf
 add RSP, 32

 add RSP, 32

 xor ECX, ECX
 call ExitProcess
