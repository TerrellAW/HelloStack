// Specify code segment and entry point
.text
.global _start

// Entry point
_start:
	mov		x0, #0 		// Set status to 0
	mov		w8, #93		// Call exit
	svc		#0			// Invoke syscall
