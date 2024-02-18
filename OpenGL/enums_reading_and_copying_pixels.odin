package vendor_gl

/* Reading Pixels [18.2] */

/* void ReadBuffer(enum src); */
// src: Draw_Buffer (in other file)

/* void NamedFramebufferReadBuffer(uint framebuffer, enum src); */
// src: Draw_Buffer (in other file)

/* void ReadPixels(int x, int y, sizei width, sizei height, enum format, enum type, void *data); */
Read_Pixels_Parameter :: enum u32 {
	PACK_SWAP_BYTES              = PACK_SWAP_BYTES,
	PACK_LSB_FIRST               = PACK_LSB_FIRST,
	PACK_ROW_LENGTH              = PACK_ROW_LENGTH,
	PACK_SKIP_ROWS               = PACK_SKIP_ROWS,
	PACK_SKIP_PIXELS             = PACK_SKIP_PIXELS,
	PACK_ALIGNMENT               = PACK_ALIGNMENT,
	PACK_IMAGE_HEIGHT            = PACK_IMAGE_HEIGHT,
	PACK_SKIP_IMAGES             = PACK_SKIP_IMAGES,
	PACK_COMPRESSED_BLOCK_WIDTH  = PACK_COMPRESSED_BLOCK_WIDTH,
	PACK_COMPRESSED_BLOCK_HEIGHT = PACK_COMPRESSED_BLOCK_HEIGHT,
	PACK_COMPRESSED_BLOCK_DEPTH  = PACK_COMPRESSED_BLOCK_DEPTH,
	PACK_COMPRESSED_BLOCK_SIZE   = PACK_COMPRESSED_BLOCK_SIZE,
}
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
// mask: Clear_Bits
Blit_Framebuffer_Filter :: enum u32 {
	LINEAR  = LINEAR,
	NEAREST = NEAREST,
}

/* void BlitNamedFramebuffer(uint readFramebuffer, uint drawFramebuffer, int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, bitfield mask, enum filter); */
// mask: Clear_Bits
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
