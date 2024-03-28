extern ExitProcess
extern printf

global main

section .data
 Message db "Hello, World!", 0

section .text
main:
 sub RSP, 8

 sub RSP, 32
 lea RCX, [REL Message]
 call printf
 add RSP, 32

 xor ECX, ECX
 call ExitProcess
