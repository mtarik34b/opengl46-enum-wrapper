package vendor_gl

/* Scissor Test [17.3.2] */
/**/


/* Multisample Fragment Ops. [17.3.3] */

/* void SampleMaski(uint maskNumber, bitfield mask); */
// NOTE(tarik): bitfield mask is unimplemented

/* void StencilFunc(enum func, int ref, uint mask); */
Comparison_Func :: enum u32 {
	NEVER    = NEVER,
	ALWAYS   = ALWAYS,
	LESS     = LESS,
	LEQUAL   = LEQUAL,
	EQUAL    = EQUAL,
	GEQUAL   = GEQUAL,
	GREATER  = GREATER,
	NOTEQUAL = NOTEQUAL,
}

/* void StencilFuncSeparate(enum face, enum func, int ref, uint mask); */
// func: Comparison_Func
Stencil_Face :: enum u32 {
	FRONT          = FRONT,
	BACK           = BACK,
	FRONT_AND_BACK = FRONT_AND_BACK,
}

/* void StencilOp(enum sfail, enum dpfail, enum dppass); */
// sfail:  Stencil_Operation
// dpfail: Stencil_Operation
// dppass: Stencil_Operation
Stencil_Operation :: enum u32 {
	KEEP      = KEEP,
	ZERO      = ZERO,
	REPLACE   = REPLACE,
	INCR      = INCR,
	DECR      = DECR,
	INVERT    = INVERT,
	INCR_WRAP = INCR_WRAP,
	DECR_WRAP = DECR_WRAP,
}

/* void StencilOpSeparate(enum face, enum sfail, enum dpfail, enum dppass); */
// face:   Stencil_Face
// sfail:  Stencil_Operation
// dpfail: Stencil_Operation
// dppass: Stencil_Operation


/* Depth Buffer Test [17.3.6] */

/* void DepthFunc(enum func); */
// func: Comparison_Func


/* Occlusion Queries [17.3.7] */

/* BeginQuery(enum target, uint id); */
Occlusion_Query_Target :: enum u32 {
	SAMPLES_PASSED                  = SAMPLES_PASSED,
	ANY_SAMPLES_PASSED              = ANY_SAMPLES_PASSED,
	ANY_SAMPLES_PASSED_CONSERVATIVE = ANY_SAMPLES_PASSED_CONSERVATIVE,
}

/* EndQuery(enum target); */
// target: Occlusion_Query_Target


/* Blending [17.3.8] */

/* void BlendEquation(enum mode); */
Blend_Mode :: enum u32 {
	FUNC_ADD              = FUNC_ADD,
	FUNC_SUBTRACT         = FUNC_SUBTRACT,
	FUNC_REVERSE_SUBTRACT = FUNC_REVERSE_SUBTRACT,
	MIN                   = MIN,
	MAX                   = MAX,
}

/* void BlendEquationSeparate(enum modeRGB, enum modeAlpha); */
// modeRGB:  Blend_Mode
// modeAlpha Blend_Mode

/* void BlendEquationi(uint buf, enum mode); */
// mode: Blend_Mode

/* void BlendEquationSeparatei(uint buf, enum modeRGB, enum modeAlpha); */
// modeRGB:  Blend_Mode
// modeAlpha Blend_Mode

/* void BlendFunc(enum src, enum dst); */
// src: Blend_Function
// dst: Blend_Function
Blend_Function :: enum u32 {
	ZERO                     = ZERO,
	ONE                      = ONE,
	SRC_COLOR                = SRC_COLOR,
	ONE_MINUS_SRC_COLOR      = ONE_MINUS_SRC_COLOR,
	DST_COLOR                = DST_COLOR,
	ONE_MINUS_DST_COLOR      = ONE_MINUS_DST_COLOR,
	SRC_ALPHA                = SRC_ALPHA,
	ONE_MINUS_SRC_ALPHA      = ONE_MINUS_SRC_ALPHA,
	DST_ALPHA                = DST_ALPHA,
	ONE_MINUS_DST_ALPHA      = ONE_MINUS_DST_ALPHA,
	CONSTANT_COLOR           = CONSTANT_COLOR,
	ONE_MINUS_CONSTANT_COLOR = ONE_MINUS_CONSTANT_COLOR,
	CONSTANT_ALPHA           = CONSTANT_ALPHA,
	ONE_MINUS_CONSTANT_ALPHA = ONE_MINUS_CONSTANT_ALPHA,
	SRC_ALPHA_SATURATE       = SRC_ALPHA_SATURATE,
	SRC1_COLOR               = SRC1_COLOR,
	ONE_MINUS_SRC1_COLOR     = ONE_MINUS_SRC1_COLOR,
	SRC1_ALPHA               = SRC1_ALPHA,
	ONE_MINUS_SRC1_ALPHA     = ONE_MINUS_SRC1_ALPHA,
}

/* void BlendFuncSeparate(enum srcRGB, enum dstRGB, enum srcAlpha, enum dstAlpha); */
// srcRGB:   Blend_Function
// dstRGB:   Blend_Function
// srcAlpha: Blend_Function
// dstAlpha: Blend_Function

/* void BlendFunci(uint buf, enum src, enum dst); */
// src: Blend_Function
// dst: Blend_Function

/* void BlendFuncSeparatei(uint buf, enum srcRGB, enum dstRGB, enum srcAlpha, enum dstAlpha); */
// srcRGB:   Blend_Function
// dstRGB:   Blend_Function
// srcAlpha: Blend_Function
// dstAlpha: Blend_Function


/* Dithering [17.3.10] */


/* Logical Operation [17.3.11] */

/* void LogicOp(enum op); */
Logical_Operation :: enum u32 {
	CLEAR         = CLEAR,
	SET           = SET,
	COPY          = COPY,
	COPY_INVERTED = COPY_INVERTED,
	NOOP          = NOOP,
	INVERT        = INVERT,
	AND           = AND,
	NAND          = NAND,
	OR            = OR,
	NOR           = NOR,
	XOR           = XOR,
	EQUIV         = EQUIV,
	AND_REVERSE   = AND_REVERSE,
	AND_INVERTED  = AND_INVERTED,
	OR_REVERSE    = OR_REVERSE,
	OR_INVERTED   = OR_INVERTED,
}
