section .text
	global_start		;must be declared for linker 
_start:				;tell linker entry point
 
	mov	edx,len		;message length
	mov	ecx,msg		;message to writ
	mov	ebx,1		;file descriptor (stdout)
	mov	eax,4		;system call number(sys_write)
	int	80h		;call kernel
	
	mov	edx,9		;message legth
	mov	ecx,s2		;message to write
	mov	ebx,1		;file descriptor (stdout)
	mov	eax,4		;system call number(sys_write)
	int	80h		;call kernel
	
	mov	eax,1		;system call number(sys_exit)
	int	80h		;call kernel
	
section .data
msg db 'Displaying 9 stars',0xa ;a message
len equ $ - msg			;length of message
s2 times 9 db '*'
	
