package vendor_gl

/* Reading Pixels [18.2] */

/* void ReadBuffer(enum src); */
// src: Draw_Buffer (in other file)

/* void NamedFramebufferReadBuffer(uint framebuffer, enum src); */
// src: Draw_Buffer (in other file)

/* void ReadPixels(int x, int y, sizei width, sizei height, enum format, enum type, void *data); */
// format: Pixel_Data_Format
// type:   Pixel_Data_Type

/* void ReadnPixels(int x, int y, sizei width, sizei height, enum format, enum type, sizei bufSize, void *data); */
// format: Pixel_Data_Format
// type:   Pixel_Data_Type


/* Final Conversion [18.2.8] */

/* void ClampColor(enum target, enum clamp); */
Clamp_Color_Target :: enum u32 {
	CLAMP_READ_COLOR = CLAMP_READ_COLOR,
}

Color_Clamping :: enum u32 {
	TRUE       = 1,
	FALSE      = 0,
	FIXED_ONLY = FIXED_ONLY,
}


/* Copying Pixels [18.3] */

/* void BlitFramebuffer(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, bitfield mask, enum filter); */
Blit_Mask_Bits :: enum u32 {
	COLOR_BUFFER_BIT   = COLOR_BUFFER_BIT,
	DEPTH_BUFFER_BIT   = DEPTH_BUFFER_BIT,
	STENCIL_BUFFER_BIT = STENCIL_BUFFER_BIT,
}

// NOTE(tarik): This shall suffice until Odin has real bitfields.
Blit_Mask :: enum u32 {
	COLOR_BUFFER_BIT         = COLOR_BUFFER_BIT,
	DEPTH_BUFFER_BIT         = DEPTH_BUFFER_BIT,
	STENCIL_BUFFER_BIT       = STENCIL_BUFFER_BIT,
	COLOR_DEPTH_BITS         = COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT,
	COLOR_STENCIL_BITS       = COLOR_BUFFER_BIT | STENCIL_BUFFER_BIT,
	DEPTH_STENCIL_BITS       = DEPTH_BUFFER_BIT | STENCIL_BUFFER_BIT,
	COLOR_DEPTH_STENCIL_BITS = COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT | STENCIL_BUFFER_BIT,
}

Blit_Framebuffer_Filter :: enum u32 {
	LINEAR  = LINEAR,
	NEAREST = NEAREST,
}

/* void BlitNamedFramebuffer(uint readFramebuffer, uint drawFramebuffer, int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, bitfield mask, enum filter); */
// mask: Blit_Mask
// filter: Blit_Framebuffer_Filter

/* void CopyImageSubData(uint srcName, enum srcTarget, int srcLevel, int srcX, int srcY, int srcZ, uint dstName, enum dstTarget, int dstLevel, int dstX, int dstY, int dstZ, sizei srcWidth, sizei srcHeight, sizei srcDepth); */
Copy_Image_Sub_Data_Target :: enum u32 {
	RENDERBUFFER                 = RENDERBUFFER,

	TEXTURE_1D                   = TEXTURE_1D,
	TEXTURE_2D                   = TEXTURE_2D,
	TEXTURE_3D                   = TEXTURE_3D,
	TEXTURE_1D_ARRAY             = TEXTURE_1D_ARRAY,
	TEXTURE_2D_ARRAY             = TEXTURE_2D_ARRAY,
	TEXTURE_RECTANGLE            = TEXTURE_RECTANGLE,
	TEXTURE_CUBE_MAP             = TEXTURE_CUBE_MAP,
	TEXTURE_CUBE_MAP_ARRAY       = TEXTURE_CUBE_MAP_ARRAY,
	TEXTURE_2D_MULTISAMPLE       = TEXTURE_2D_MULTISAMPLE,
	TEXTURE_2D_MULTISAMPLE_ARRAY = TEXTURE_2D_MULTISAMPLE_ARRAY,
}
