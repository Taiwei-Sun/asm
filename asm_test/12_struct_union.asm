
format PE console
entry start

include 'win32a.inc'

struct IPV4
 union
  struct
   a db ?
   b db ?
   c db ?
   d db ?
  ends
  addr dd ?
 ends

ends



section '.data' data readable writeable
 myHost IPV4 <127,0,0,1>


section '.text' code readable executable

start:
 
 xor eax,eax
 mov eax,dword[myHost]
 call print_eax_binary
 
 xor eax,eax
 mov eax,dword[myHost.addr]
 call print_eax_binary
 
 xor eax,eax
 mov al,byte[myHost.d]
 call print_eax_binary
 
 xor eax,eax
 mov al,byte[myHost+3]
 call print_eax_binary
 
 xor eax,eax
 mov eax,IPV4.b
 call print_eax_binary
 
 xor eax,eax
 mov eax,IPV4.addr
 call print_eax_binary
 
 

 
 push 0
 call [ExitProcess]

include 'training.inc'