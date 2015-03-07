.code16					# generates 16-bit code
.text					# executable code location
	.globl _start;
_start:					# code entry-point

	movb $'X' , %al		# character to print
	movb $0x0e , %ah	# bios service code to print
	int $0x10			# interrupt the cpu now
	
	. = _start + 510	# move to 510th byte from current pos
	.byte 0x55			# append boot signature
	.byte 0xaa			# append boot signature

