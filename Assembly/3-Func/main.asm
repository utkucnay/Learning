extern ExitProcess
extern printf

global main

section .data
 Message db "%d", 0

section .text
sum:
 mov dword [RSP+8], ECX
 mov dword [RSP+16], EDX
 mov ECX, dword [RSP+8]
 add ECX, dword [RSP+16]
 mov EAX, ECX
 ret


main:
 sub RSP, 8

 sub RSP, 32
 mov dword [RSP+8], 2
 mov dword [RSP+16], 4

 sub RSP, 32
 mov ECX, dword [RSP+32+8]
 mov EDX, dword [RSP+32+16]
 call sum
 mov dword [RSP+32+24], EAX
 add RSP, 32

 sub RSP, 32
 lea RCX, [REL Message]
 mov EDX, dword [RSP+32+24]
 call printf
 add RSP, 32

 add RSP, 32

 xor ECX, ECX
 call ExitProcess
