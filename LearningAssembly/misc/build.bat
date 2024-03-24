

@echo off

set arg1=%1

nasm -f win64 "%arg1%.asm"

link /ENTRY:Start /SUBSYSTEM:CONSOLE /OUT:"%arg1%.exe" kernel32.lib user32.lib "%arg1%.obj"
