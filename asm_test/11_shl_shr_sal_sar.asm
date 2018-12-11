
format PE console
entry start

include 'win32a.inc'

section '.text' code readable executable

start:
 
 mov eax,0xf0000011
 call print_eax_binary
 ;shl eax,1
 ;shr eax,1
 sar eax,1
 call print_eax_binary

 
 push 0
 call [ExitProcess]

include 'training.inc'