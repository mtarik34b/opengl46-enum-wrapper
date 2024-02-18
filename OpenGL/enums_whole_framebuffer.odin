package vendor_gl

/* Selecting Buffers for Writing [17.4.1] */

/* void DrawBuffer(enum buf); */
Draw_Buffer :: enum u32 {
	NONE               = NONE,
	FRONT_LEFT         = FRONT_LEFT,
	FRONT_RIGHT        = FRONT_RIGHT,
	BACK_LEFT          = BACK_LEFT,
	BACK_RIGHT         = BACK_RIGHT,
	FRONT              = FRONT,
	BACK               = BACK,
	LEFT               = LEFT,
	RIGHT              = RIGHT,
	FRONT_AND_BACK     = FRONT_AND_BACK,

	COLOR_ATTACHMENT0  = COLOR_ATTACHMENT0,
	COLOR_ATTACHMENT1  = COLOR_ATTACHMENT1,
	COLOR_ATTACHMENT2  = COLOR_ATTACHMENT2,
	COLOR_ATTACHMENT3  = COLOR_ATTACHMENT3,
	COLOR_ATTACHMENT4  = COLOR_ATTACHMENT4,
	COLOR_ATTACHMENT5  = COLOR_ATTACHMENT5,
	COLOR_ATTACHMENT6  = COLOR_ATTACHMENT6,
	COLOR_ATTACHMENT7  = COLOR_ATTACHMENT7,
	COLOR_ATTACHMENT8  = COLOR_ATTACHMENT8,
	COLOR_ATTACHMENT9  = COLOR_ATTACHMENT9,
	COLOR_ATTACHMENT10 = COLOR_ATTACHMENT10,
	COLOR_ATTACHMENT11 = COLOR_ATTACHMENT11,
	COLOR_ATTACHMENT12 = COLOR_ATTACHMENT12,
	COLOR_ATTACHMENT13 = COLOR_ATTACHMENT13,
	COLOR_ATTACHMENT14 = COLOR_ATTACHMENT14,
	COLOR_ATTACHMENT15 = COLOR_ATTACHMENT15,
	COLOR_ATTACHMENT16 = COLOR_ATTACHMENT16,
	COLOR_ATTACHMENT17 = COLOR_ATTACHMENT17,
	COLOR_ATTACHMENT18 = COLOR_ATTACHMENT18,
	COLOR_ATTACHMENT19 = COLOR_ATTACHMENT19,
	COLOR_ATTACHMENT20 = COLOR_ATTACHMENT20,
	COLOR_ATTACHMENT21 = COLOR_ATTACHMENT21,
	COLOR_ATTACHMENT22 = COLOR_ATTACHMENT22,
	COLOR_ATTACHMENT23 = COLOR_ATTACHMENT23,
	COLOR_ATTACHMENT24 = COLOR_ATTACHMENT24,
	COLOR_ATTACHMENT25 = COLOR_ATTACHMENT25,
	COLOR_ATTACHMENT26 = COLOR_ATTACHMENT26,
	COLOR_ATTACHMENT27 = COLOR_ATTACHMENT27,
	COLOR_ATTACHMENT28 = COLOR_ATTACHMENT28,
	COLOR_ATTACHMENT29 = COLOR_ATTACHMENT29,
	COLOR_ATTACHMENT30 = COLOR_ATTACHMENT30,
	COLOR_ATTACHMENT31 = COLOR_ATTACHMENT31,
}

/* void NamedFramebufferDrawBuffer(uint framebuffer, enum buf); */
// buf: Draw_Buffer

/* void DrawBuffers(sizei n, const enum *bufs); */
Draw_Buffers :: enum u32 {
	NONE               = NONE,
	FRONT_LEFT         = FRONT_LEFT,
	FRONT_RIGHT        = FRONT_RIGHT,
	BACK_LEFT          = BACK_LEFT,
	BACK_RIGHT         = BACK_RIGHT,

	COLOR_ATTACHMENT0  = COLOR_ATTACHMENT0,
	COLOR_ATTACHMENT1  = COLOR_ATTACHMENT1,
	COLOR_ATTACHMENT2  = COLOR_ATTACHMENT2,
	COLOR_ATTACHMENT3  = COLOR_ATTACHMENT3,
	COLOR_ATTACHMENT4  = COLOR_ATTACHMENT4,
	COLOR_ATTACHMENT5  = COLOR_ATTACHMENT5,
	COLOR_ATTACHMENT6  = COLOR_ATTACHMENT6,
	COLOR_ATTACHMENT7  = COLOR_ATTACHMENT7,
	COLOR_ATTACHMENT8  = COLOR_ATTACHMENT8,
	COLOR_ATTACHMENT9  = COLOR_ATTACHMENT9,
	COLOR_ATTACHMENT10 = COLOR_ATTACHMENT10,
	COLOR_ATTACHMENT11 = COLOR_ATTACHMENT11,
	COLOR_ATTACHMENT12 = COLOR_ATTACHMENT12,
	COLOR_ATTACHMENT13 = COLOR_ATTACHMENT13,
	COLOR_ATTACHMENT14 = COLOR_ATTACHMENT14,
	COLOR_ATTACHMENT15 = COLOR_ATTACHMENT15,
	COLOR_ATTACHMENT16 = COLOR_ATTACHMENT16,
	COLOR_ATTACHMENT17 = COLOR_ATTACHMENT17,
	COLOR_ATTACHMENT18 = COLOR_ATTACHMENT18,
	COLOR_ATTACHMENT19 = COLOR_ATTACHMENT19,
	COLOR_ATTACHMENT20 = COLOR_ATTACHMENT20,
	COLOR_ATTACHMENT21 = COLOR_ATTACHMENT21,
	COLOR_ATTACHMENT22 = COLOR_ATTACHMENT22,
	COLOR_ATTACHMENT23 = COLOR_ATTACHMENT23,
	COLOR_ATTACHMENT24 = COLOR_ATTACHMENT24,
	COLOR_ATTACHMENT25 = COLOR_ATTACHMENT25,
	COLOR_ATTACHMENT26 = COLOR_ATTACHMENT26,
	COLOR_ATTACHMENT27 = COLOR_ATTACHMENT27,
	COLOR_ATTACHMENT28 = COLOR_ATTACHMENT28,
	COLOR_ATTACHMENT29 = COLOR_ATTACHMENT29,
	COLOR_ATTACHMENT30 = COLOR_ATTACHMENT30,
	COLOR_ATTACHMENT31 = COLOR_ATTACHMENT31,
}

/* void NamedFramebufferDrawBuffers(uint framebuffer, sizei n, const enum *bufs); */
// bufs: Draw_Buffers


/* Fine Control of Buffer Updates [17.4.2] */

/* void StencilMaskSeparate(enum face, uint mask); */
// face: Stencil_Face


/* Clearing the Buffers [17.4.3] */

/* void Clear(bitfield buf); */
Clear_Bits :: enum u32 {
	COLOR_BUFFER_BIT   = COLOR_BUFFER_BIT,
	DEPTH_BUFFER_BIT   = DEPTH_BUFFER_BIT,
	STENCIL_BUFFER_BIT = STENCIL_BUFFER_BIT,
}

/* void ClearBufferiv(enum buffer, int drawbuffer, const T *value); */
Clear_Bufferiv :: enum u32 {
	COLOR   = COLOR,
	STENCIL = STENCIL,
}

/* void ClearBufferfv(enum buffer, int drawbuffer, const T *value); */
Clear_Bufferfv :: enum u32 {
	COLOR = COLOR,
	DEPTH = DEPTH,
}

/* void ClearBufferuiv(enum buffer, int drawbuffer, const T *value); */
Clear_Bufferuiv :: enum u32 {
	COLOR = COLOR,
}

/* void ClearNamedFramebufferiv(uint framebuffer, enum buffer, int drawbuffer, const T *value); */
// buffer: Clear_Bufferiv

/* void ClearNamedFramebufferfv(uint framebuffer, enum buffer, int drawbuffer, const T *value); */
// buffer: Clear_Bufferfv

/* void ClearNamedFramebufferuiv(uint framebuffer, enum buffer, int drawbuffer, const T *value); */
// buffer: Clear_Bufferuiv

/* void ClearBufferfi(enum buffer, int drawbuffer, float depth, int stencil); */
Clear_Bufferfi :: enum u32 {
	DEPTH_STENCIL = DEPTH_STENCIL,
}

/* void ClearNamedFramebufferfi(uint framebuffer, enum buffer, int drawbuffer, float depth, int stencil); */
// buffer: Clear_Bufferfi


/* Invalidating Framebuffers [17.4.4] */

/* void InvalidateSubFramebuffer(enum target, sizei numAttachments, const enum *attachments, int x, int y, sizei width, sizei height); */
// target: Framebuffer_Target
Invalidate_Framebuffer_Attachment :: enum u32 {
	FRONT                    = FRONT,
	FRONT_LEFT               = FRONT_LEFT,
	FRONT_RIGHT              = FRONT_RIGHT,
	BACK                     = BACK,
	BACK_LEFT                = BACK_LEFT,
	BACK_RIGHT               = BACK_RIGHT,
	DEPTH                    = DEPTH,
	STENCIL                  = STENCIL,

	DEPTH_ATTACHMENT         = DEPTH_ATTACHMENT,
	STENCIL_ATTACHMENT       = STENCIL_ATTACHMENT,
	DEPTH_STENCIL_ATTACHMENT = DEPTH_STENCIL_ATTACHMENT,
	COLOR_ATTACHMENT0        = COLOR_ATTACHMENT0,
	COLOR_ATTACHMENT1        = COLOR_ATTACHMENT1,
	COLOR_ATTACHMENT2        = COLOR_ATTACHMENT2,
	COLOR_ATTACHMENT3        = COLOR_ATTACHMENT3,
	COLOR_ATTACHMENT4        = COLOR_ATTACHMENT4,
	COLOR_ATTACHMENT5        = COLOR_ATTACHMENT5,
	COLOR_ATTACHMENT6        = COLOR_ATTACHMENT6,
	COLOR_ATTACHMENT7        = COLOR_ATTACHMENT7,
	COLOR_ATTACHMENT8        = COLOR_ATTACHMENT8,
	COLOR_ATTACHMENT9        = COLOR_ATTACHMENT9,
	COLOR_ATTACHMENT10       = COLOR_ATTACHMENT10,
	COLOR_ATTACHMENT11       = COLOR_ATTACHMENT11,
	COLOR_ATTACHMENT12       = COLOR_ATTACHMENT12,
	COLOR_ATTACHMENT13       = COLOR_ATTACHMENT13,
	COLOR_ATTACHMENT14       = COLOR_ATTACHMENT14,
	COLOR_ATTACHMENT15       = COLOR_ATTACHMENT15,
	COLOR_ATTACHMENT16       = COLOR_ATTACHMENT16,
	COLOR_ATTACHMENT17       = COLOR_ATTACHMENT17,
	COLOR_ATTACHMENT18       = COLOR_ATTACHMENT18,
	COLOR_ATTACHMENT19       = COLOR_ATTACHMENT19,
	COLOR_ATTACHMENT20       = COLOR_ATTACHMENT20,
	COLOR_ATTACHMENT21       = COLOR_ATTACHMENT21,
	COLOR_ATTACHMENT22       = COLOR_ATTACHMENT22,
	COLOR_ATTACHMENT23       = COLOR_ATTACHMENT23,
	COLOR_ATTACHMENT24       = COLOR_ATTACHMENT24,
	COLOR_ATTACHMENT25       = COLOR_ATTACHMENT25,
	COLOR_ATTACHMENT26       = COLOR_ATTACHMENT26,
	COLOR_ATTACHMENT27       = COLOR_ATTACHMENT27,
	COLOR_ATTACHMENT28       = COLOR_ATTACHMENT28,
	COLOR_ATTACHMENT29       = COLOR_ATTACHMENT29,
	COLOR_ATTACHMENT30       = COLOR_ATTACHMENT30,
	COLOR_ATTACHMENT31       = COLOR_ATTACHMENT31,
}

/* void InvalidateNamedFramebufferSubData(uint framebuffer, sizei numAttachments, const enum *attachments, int x, int y, sizei width, sizei height); */
// attachments: Invalidate_Framebuffer_Attachment

/* void InvalidateFramebuffer(enum target, sizei numAttachments, const enum *attachments); */
// target: Framebuffer_Target

// attachments: Invalidate_Framebuffer_Attachment

/* void InvalidateNamedFramebufferData(uint framebuffer, sizei numAttachments, const enum *attachments); */
// attachments: Invalidate_Framebuffer_Attachment
