package vendor_gl

/* OpenGL Errors [2.3.1] */

/* enum GetError(void); */
Error :: enum u32 {
	NO_ERROR                      = NO_ERROR,
	CONTEXT_LOST                  = CONTEXT_LOST,
	INVALID_ENUM                  = INVALID_ENUM,
	INVALID_VALUE                 = INVALID_VALUE,
	INVALID_OPERATION             = INVALID_OPERATION,
	INVALID_FRAMEBUFFER_OPERATION = INVALID_FRAMEBUFFER_OPERATION,
	OUT_OF_MEMORY                 = OUT_OF_MEMORY,
	STACK_OVERFLOW                = STACK_OVERFLOW,
	STACK_UNDERFLOW               = STACK_UNDERFLOW,
}


/* Graphics Reset Recovery [2.3.2] */

/* enum GetGraphicsResetStatus(void); */
Graphics_Reset_Status :: enum u32 {
	NO_ERROR               = NO_ERROR,
	GUILTY_CONTEXT_RESET   = GUILTY_CONTEXT_RESET,
	INNOCENT_CONTEXT_RESET = INNOCENT_CONTEXT_RESET,
	UNKNOWN_CONTEXT_RESET  = UNKNOWN_CONTEXT_RESET,
}
