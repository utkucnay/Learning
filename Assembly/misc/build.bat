@echo off

set arg1=%1

nasm -f win64 -o "%arg1%.obj" "%arg1%.asm"

link "%arg1%.obj" /SUBSYSTEM:CONSOLE /OUT:"%arg1%.exe" kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
