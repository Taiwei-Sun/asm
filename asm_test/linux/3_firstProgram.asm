
format PE console
entry start

include 'win32a.inc'

section '.text' code readable executable

start:
 ;call read_hex
 mv eax,0xaa
 inc eax
 call print_eax

 
 push 0
 call [ExitProcess]

include 'training.inc'