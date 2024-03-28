extern ExitProcess
extern printf

global main

section .data
 Message db "%d", 0

section .text
main:
 sub RSP, 8

 mov R8D, 2
 mov R9D, 4
 add R8D, R9D

 sub RSP, 32
 lea RCX, [REL Message]
 mov EDX, R8D
 call printf
 add RSP, 32

 xor ECX, ECX
 call ExitProcess
