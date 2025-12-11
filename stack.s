// Specify code segment and entry point
.text
.global _start

// Entry point
_start:
	mov		x1, #42 				// Set register 1 to 42
	stp		x1, xzr, [sp, #-16]!	// Push register 1 and an unused register to stack and allocate 16 bytes
	ldp		x0,  x1, [sp], #16		// Pop value from stack into register 0, set register 1 back to null
	mov		w8, #93					// Call exit, will use value in register 0 as exit code
	svc		#0						// Invoke syscall
