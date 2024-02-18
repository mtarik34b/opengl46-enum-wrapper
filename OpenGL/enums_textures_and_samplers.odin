package vendor_gl

/* void ActiveTexture(enum texture); */
Active_Texture :: enum u32 {
	TEXTURE0  = TEXTURE0,
	TEXTURE1  = TEXTURE1,
	TEXTURE2  = TEXTURE2,
	TEXTURE3  = TEXTURE3,
	TEXTURE4  = TEXTURE4,
	TEXTURE5  = TEXTURE5,
	TEXTURE6  = TEXTURE6,
	TEXTURE7  = TEXTURE7,
	TEXTURE8  = TEXTURE8,
	TEXTURE9  = TEXTURE9,
	TEXTURE10 = TEXTURE10,
	TEXTURE11 = TEXTURE11,
	TEXTURE12 = TEXTURE12,
	TEXTURE13 = TEXTURE13,
	TEXTURE14 = TEXTURE14,
	TEXTURE15 = TEXTURE15,
	TEXTURE16 = TEXTURE16,
	TEXTURE17 = TEXTURE17,
	TEXTURE18 = TEXTURE18,
	TEXTURE19 = TEXTURE19,
	TEXTURE20 = TEXTURE20,
	TEXTURE21 = TEXTURE21,
	TEXTURE22 = TEXTURE22,
	TEXTURE23 = TEXTURE23,
	TEXTURE24 = TEXTURE24,
	TEXTURE25 = TEXTURE25,
	TEXTURE26 = TEXTURE26,
	TEXTURE27 = TEXTURE27,
	TEXTURE28 = TEXTURE28,
	TEXTURE29 = TEXTURE29,
	TEXTURE30 = TEXTURE30,
	TEXTURE31 = TEXTURE31,
}


/* Texture Objects [8.1] */

/* void BindTexture(enum target, uint texture); */
Texture_Target :: enum u32 {
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
	// NOTE(tarik): TEXTURE_BUFFER is no argument for Tex*Parameter* below.
	TEXTURE_BUFFER               = TEXTURE_BUFFER,
}

/* void CreateTextures(enum target, sizei n, uint *textures); */
// target: Texture_Target


/* Sampler Objects [8.2] */

/* void SamplerParameteri(uint sampler, enum pname, T param); */
Sampler_Parameter :: enum u32 {
	TEXTURE_BORDER_COLOR   = TEXTURE_BORDER_COLOR,
	TEXTURE_COMPARE_FUNC   = TEXTURE_COMPARE_FUNC,
	TEXTURE_COMPARE_MODE   = TEXTURE_COMPARE_MODE,
	TEXTURE_LOD_BIAS       = TEXTURE_LOD_BIAS,
	TEXTURE_MAX_LOD        = TEXTURE_MAX_LOD,
	TEXTURE_MAG_FILTER     = TEXTURE_MAG_FILTER,
	TEXTURE_MIN_FILTER     = TEXTURE_MIN_FILTER,
	TEXTURE_MIN_LOD        = TEXTURE_MIN_LOD,
	TEXTURE_MAX_ANISOTROPY = TEXTURE_MAX_ANISOTROPY,
	TEXTURE_WRAP_S         = TEXTURE_WRAP_S,
	TEXTURE_WRAP_T         = TEXTURE_WRAP_T,
	TEXTURE_WRAP_R         = TEXTURE_WRAP_R,
}

/* void SamplerParameterf(uint sampler, enum pname, T param); */
// pname: Sampler_Parameter

/* void SamplerParameteriv(uint sampler, enum pname, const T *param); */
// pname: Sampler_Parameter

/* void SamplerParameterfv(uint sampler, enum pname, const T *param); */
// pname: Sampler_Parameter

/* void SamplerParameterIiv(uint sampler, enum pname, const T *params); */
// pname: Sampler_Parameter

/* void SamplerParameterIuiv(uint sampler, enum pname, const T *params); */
// pname: Sampler_Parameter


/* Sampler Queries [8.3] */

/* void GetSamplerParameteriv(uint sampler, enum pname, T *params); */
// pname: Sampler_Parameter

/* void GetSamplerParameterfv(uint sampler, enum pname, T *params); */
// pname: Sampler_Parameter

/* void GetSamplerParameterIiv(uint sampler, enum pname, T *params); */
// pname: Sampler_Parameter

/* void GetSamplerParameterIuiv(uint sampler, enum pname, T *params); */
// pname: Sampler_Parameter


/* Pixel Storage Modes [8.4.1] */

/* void PixelStorei(enum pname, T param); */
Pixel_Store_Parameter :: enum u32 {
	PACK_SWAP_BYTES                = PACK_SWAP_BYTES,
	PACK_LSB_FIRST                 = PACK_LSB_FIRST,
	PACK_ROW_LENGTH                = PACK_ROW_LENGTH,
	PACK_SKIP_ROWS                 = PACK_SKIP_ROWS,
	PACK_SKIP_PIXELS               = PACK_SKIP_PIXELS,
	PACK_ALIGNMENT                 = PACK_ALIGNMENT,
	PACK_IMAGE_HEIGHT              = PACK_IMAGE_HEIGHT,
	PACK_SKIP_IMAGES               = PACK_SKIP_IMAGES,
	PACK_COMPRESSED_BLOCK_WIDTH    = PACK_COMPRESSED_BLOCK_WIDTH,
	PACK_COMPRESSED_BLOCK_HEIGHT   = PACK_COMPRESSED_BLOCK_HEIGHT,
	PACK_COMPRESSED_BLOCK_DEPTH    = PACK_COMPRESSED_BLOCK_DEPTH,
	PACK_COMPRESSED_BLOCK_SIZE     = PACK_COMPRESSED_BLOCK_SIZE,

	UNPACK_SWAP_BYTES              = UNPACK_SWAP_BYTES,
	UNPACK_LSB_FIRST               = UNPACK_LSB_FIRST,
	UNPACK_ROW_LENGTH              = UNPACK_ROW_LENGTH,
	UNPACK_SKIP_ROWS               = UNPACK_SKIP_ROWS,
	UNPACK_SKIP_PIXELS             = UNPACK_SKIP_PIXELS,
	UNPACK_ALIGNMENT               = UNPACK_ALIGNMENT,
	UNPACK_IMAGE_HEIGHT            = UNPACK_IMAGE_HEIGHT,
	UNPACK_SKIP_IMAGES             = UNPACK_SKIP_IMAGES,
	UNPACK_COMPRESSED_BLOCK_WIDTH  = UNPACK_COMPRESSED_BLOCK_WIDTH,
	UNPACK_COMPRESSED_BLOCK_HEIGHT = UNPACK_COMPRESSED_BLOCK_HEIGHT,
	UNPACK_COMPRESSED_BLOCK_DEPTH  = UNPACK_COMPRESSED_BLOCK_DEPTH,
	UNPACK_COMPRESSED_BLOCK_SIZE   = UNPACK_COMPRESSED_BLOCK_SIZE,
}

/* void PixelStoref(enum pname, T param); */
// pname: Pixel_Store_Parameter


/* Texture Image Spec. [8.5] */

// NOTE(tarik): internalformat was turned from int to u32, whereas it's casted to i32 when passed to impl_*
/* void TexImage3D(enum target, int level, int internalformat, sizei width, sizei height, sizei depth, int border, enum format, enum type, const void *data); */
Tex_Image_3D_Target :: enum u32 {
	TEXTURE_3D                   = TEXTURE_3D,
	TEXTURE_2D_ARRAY             = TEXTURE_2D_ARRAY,
	TEXTURE_CUBE_MAP_ARRAY       = TEXTURE_CUBE_MAP_ARRAY,
	PROXY_TEXTURE_3D             = PROXY_TEXTURE_3D,
	PROXY_TEXTURE_2D_ARRAY       = PROXY_TEXTURE_2D_ARRAY,
	PROXY_TEXTURE_CUBE_MAP_ARRAY = PROXY_TEXTURE_CUBE_MAP_ARRAY,
}

Texture_Internalformat :: enum u32 {
	// Base Internal Format
	DEPTH_COMPONENT = DEPTH_COMPONENT,
	DEPTH_STENCIL   = DEPTH_STENCIL,
	STENCIL_INDEX   = STENCIL_INDEX, // TODO(tarik): This needs to be verified. It's correct according to Ref. Card.
	RED             = RED,
	RG              = RG,
	RGB             = RGB,
	RGBA            = RGBA,

	// Sized Internal Format
	R8             = R8,
	R8_SNORM       = R8_SNORM,
	R16            = R16,
	R16_SNORM      = R16_SNORM,
	RG8            = RG8,
	RG8_SNORM      = RG8_SNORM,
	RG16           = RG16,
	RG16_SNORM     = RG16_SNORM,
	R3_G3_B2       = R3_G3_B2,
	RGB4           = RGB4,
	RGB5           = RGB5,
	RGB8           = RGB8,
	RGB8_SNORM     = RGB8_SNORM,
	RGB10          = RGB10,
	RGB12          = RGB12,
	RGB16_SNORM    = RGB16_SNORM,
	RGBA2          = RGBA2,
	RGBA4          = RGBA4,
	RGB5_A1        = RGB5_A1,
	RGBA8          = RGBA8,
	RGBA8_SNORM    = RGBA8_SNORM,
	RGB10_A2       = RGB10_A2,
	RGB10_A2UI     = RGB10_A2UI,
	RGBA12         = RGBA12,
	RGBA16         = RGBA16,
	SRGB8          = SRGB8,
	SRGB8_ALPHA8   = SRGB8_ALPHA8,
	R16F           = R16F,
	RG16F          = RG16F,
	RGB16F         = RGB16F,
	RGBA16F        = RGBA16F,
	R32F           = R32F,
	RG32F          = RG32F,
	RGB32F         = RGB32F,
	RGBA32F        = RGBA32F,
	R11F_G11F_B10F = R11F_G11F_B10F,
	RGB9_E5        = RGB9_E5,
	R8I            = R8I,
	R8UI           = R8UI,
	R16I           = R16I,
	R16UI          = R16UI,
	R32I           = R32I,
	R32UI          = R32UI,
	RG8I           = RG8I,
	RG8UI          = RG8UI,
	RG16I          = RG16I,
	RG16UI         = RG16UI,
	RG32I          = RG32I,
	RG32UI         = RG32UI,
	RGB8I          = RGB8I,
	RGB8UI         = RGB8UI,
	RGB16I         = RGB16I,
	RGB16UI        = RGB16UI,
	RGB32I         = RGB32I,
	RGB32UI        = RGB32UI,
	RGBA8I         = RGBA8I,
	RGBA8UI        = RGBA8UI,
	RGBA16I        = RGBA16I,
	RGBA16UI       = RGBA16UI,
	RGBA32I        = RGBA32I,
	RGBA32UI       = RGBA32UI,

	// Compressed Internal Format (Generic)
	COMPRESSED_RED        = COMPRESSED_RED,
	COMPRESSED_RG         = COMPRESSED_RG,
	COMPRESSED_RGB        = COMPRESSED_RGB,
	COMPRESSED_RGBA       = COMPRESSED_RGBA,
	COMPRESSED_SRGB       = COMPRESSED_SRGB,
	COMPRESSED_SRGB_ALPHA = COMPRESSED_SRGB_ALPHA,

	// Compressed Internal Format (Specific)
	COMPRESSED_RED_RGTC1               = COMPRESSED_RED_RGTC1,
	COMPRESSED_SIGNED_RED_RGTC1        = COMPRESSED_SIGNED_RED_RGTC1,
	COMPRESSED_RG_RGTC2                = COMPRESSED_RG_RGTC2,
	COMPRESSED_SIGNED_RG_RGTC2         = COMPRESSED_SIGNED_RG_RGTC2,
	COMPRESSED_RGBA_BPTC_UNORM         = COMPRESSED_RGBA_BPTC_UNORM,
	COMPRESSED_SRGB_ALPHA_BPTC_UNORM   = COMPRESSED_SRGB_ALPHA_BPTC_UNORM,
	COMPRESSED_RGB_BPTC_SIGNED_FLOAT   = COMPRESSED_RGB_BPTC_SIGNED_FLOAT,
	COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT,
}

Tex_Image_3D_Format :: Pixel_Data_Format
Pixel_Data_Format :: enum u32 {
	STENCIL_INDEX   = STENCIL_INDEX,
	DEPTH_COMPONENT = DEPTH_COMPONENT,
	DEPTH_STENCIL   = DEPTH_STENCIL,
	RED             = RED,
	GREEN           = GREEN,
	BLUE            = BLUE,
	RG              = RG,
	RGB             = RGB,
	RGBA            = RGBA,
	BGR             = BGR,
	BGRA            = BGRA,
	RED_INTEGER     = RED_INTEGER,
	GREEN_INTEGER   = GREEN_INTEGER,
	BLUE_INTEGER    = BLUE_INTEGER,
	RG_INTEGER      = RG_INTEGER,
	RGB_INTEGER     = RGB_INTEGER,
	RGBA_INTEGER    = RGBA_INTEGER,
	BGR_INTEGER     = BGR_INTEGER,
	BGRA_INTEGER    = BGRA_INTEGER,
}

Tex_Image_3D_Type :: Pixel_Data_Type
Pixel_Data_Type :: enum u32 {
	UNSIGNED_BYTE                  = UNSIGNED_BYTE,
	BYTE                           = BYTE,
	UNSIGNED_SHORT                 = UNSIGNED_SHORT,
	SHORT                          = SHORT,
	UNSIGNED_INT                   = UNSIGNED_INT,
	INT                            = INT,
	HALF_FLOAT                     = HALF_FLOAT,
	FLOAT                          = FLOAT,
	UNSIGNED_BYTE_3_3_2            = UNSIGNED_BYTE_3_3_2,
	UNSIGNED_BYTE_2_3_3_REV        = UNSIGNED_BYTE_2_3_3_REV,
	UNSIGNED_SHORT_5_6_5           = UNSIGNED_SHORT_5_6_5,
	UNSIGNED_SHORT_5_6_5_REV       = UNSIGNED_SHORT_5_6_5_REV,
	UNSIGNED_SHORT_4_4_4_4         = UNSIGNED_SHORT_4_4_4_4,
	UNSIGNED_SHORT_4_4_4_4_REV     = UNSIGNED_SHORT_4_4_4_4_REV,
	UNSIGNED_SHORT_5_5_5_1         = UNSIGNED_SHORT_5_5_5_1,
	UNSIGNED_SHORT_1_5_5_5_REV     = UNSIGNED_SHORT_1_5_5_5_REV,
	UNSIGNED_INT_8_8_8_8           = UNSIGNED_INT_8_8_8_8,
	UNSIGNED_INT_8_8_8_8_REV       = UNSIGNED_INT_8_8_8_8_REV,
	UNSIGNED_INT_10_10_10_2        = UNSIGNED_INT_10_10_10_2,
	UNSIGNED_INT_2_10_10_10_REV    = UNSIGNED_INT_2_10_10_10_REV,
	UNSIGNED_INT_24_8              = UNSIGNED_INT_24_8,
	UNSIGNED_INT_10F_11F_11F_REV   = UNSIGNED_INT_10F_11F_11F_REV,
	UNSIGNED_INT_5_9_9_9_REV       = UNSIGNED_INT_5_9_9_9_REV,
	FLOAT_32_UNSIGNED_INT_24_8_REV = FLOAT_32_UNSIGNED_INT_24_8_REV,
}

// NOTE(tarik): internalformat was turned from int to u32, whereas it's casted to i32 when passed to impl_*
/* void TexImage2D(enum target, int level, int internalformat, sizei width, sizei height, int border, enum format, enum type, const void *data); */
// internalformat: Texture_Internalformat
// format:         Pixel_Data_Format
// type:           Pixel_Data_Type

Tex_Image_2D_Target :: enum u32 {
	TEXTURE_2D                  = TEXTURE_2D,
	TEXTURE_1D_ARRAY            = TEXTURE_1D_ARRAY,
	TEXTURE_RECTANGLE           = TEXTURE_RECTANGLE,
	TEXTURE_CUBE_MAP_POSITIVE_X = TEXTURE_CUBE_MAP_POSITIVE_X,
	TEXTURE_CUBE_MAP_POSITIVE_Y = TEXTURE_CUBE_MAP_POSITIVE_Y,
	TEXTURE_CUBE_MAP_POSITIVE_Z = TEXTURE_CUBE_MAP_POSITIVE_Z,
	TEXTURE_CUBE_MAP_NEGATIVE_X = TEXTURE_CUBE_MAP_NEGATIVE_X,
	TEXTURE_CUBE_MAP_NEGATIVE_Y = TEXTURE_CUBE_MAP_NEGATIVE_Y,
	TEXTURE_CUBE_MAP_NEGATIVE_Z = TEXTURE_CUBE_MAP_NEGATIVE_Z,
	PROXY_TEXTURE_2D            = PROXY_TEXTURE_2D,
	PROXY_TEXTURE_1D_ARRAY      = PROXY_TEXTURE_1D_ARRAY,
	PROXY_TEXTURE_RECTANGLE     = PROXY_TEXTURE_RECTANGLE,
	PROXY_TEXTURE_CUBE_MAP      = PROXY_TEXTURE_CUBE_MAP,
}

// NOTE(tarik): internalformat was turned from int to u32, whereas it's casted to i32 when passed to impl_*
/* void TexImage1D(enum target, int level, int internalformat, sizei width, int border, enum format, enum type, const void *data); */
// internalformat: Texture_Internalformat
// format:         Pixel_Data_Format
// type:           Pixel_Data_Type

Tex_Image_1D_Target :: enum u32 {
	TEXTURE_1D       = TEXTURE_1D,
	PROXY_TEXTURE_1D = PROXY_TEXTURE_1D,
}


/* Alternate Texture Image Spec. [8.6] */

/* void CopyTexImage2D(enum target, int level, enum internalformat, int x, int y, sizei width, sizei height, int border); */
// internalformat: Texture_Internalformat

Copy_Tex_Image_2D_Target :: enum u32 {
	TEXTURE_2D                  = TEXTURE_2D,
	TEXTURE_1D_ARRAY            = TEXTURE_1D_ARRAY,
	TEXTURE_RECTANGLE           = TEXTURE_RECTANGLE,
	TEXTURE_CUBE_MAP_POSITIVE_X = TEXTURE_CUBE_MAP_POSITIVE_X,
	TEXTURE_CUBE_MAP_POSITIVE_Y = TEXTURE_CUBE_MAP_POSITIVE_Y,
	TEXTURE_CUBE_MAP_POSITIVE_Z = TEXTURE_CUBE_MAP_POSITIVE_Z,
	TEXTURE_CUBE_MAP_NEGATIVE_X = TEXTURE_CUBE_MAP_NEGATIVE_X,
	TEXTURE_CUBE_MAP_NEGATIVE_Y = TEXTURE_CUBE_MAP_NEGATIVE_Y,
	TEXTURE_CUBE_MAP_NEGATIVE_Z = TEXTURE_CUBE_MAP_NEGATIVE_Z,
}

/* void CopyTexImage1D(enum target, int level, enum internalformat, int x, int y, sizei width, int border); */
// internalformat: Texture_Internalformat

Copy_Tex_Image_1D_Target :: enum u32 {
	TEXTURE_1D = TEXTURE_1D,
}

/* void TexSubImage3D(enum target, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, enum format, enum type, const void *data); */
// format: Pixel_Data_Format
// type:   Pixel_Data_Type

Tex_Sub_Image_3D_Target :: enum u32 {
	TEXTURE_3D             = TEXTURE_3D,
	TEXTURE_2D_ARRAY       = TEXTURE_2D_ARRAY,
	TEXTURE_CUBE_MAP_ARRAY = TEXTURE_CUBE_MAP_ARRAY,
}

/* void TexSubImage2D(enum target, int level, int xoffset, int yoffset, sizei width, sizei height, enum format, enum type, const void *data); */
// target: Copy_Tex_Image_2D_Target
// format: Pixel_Data_Format
// type:   Pixel_Data_Type

/* void TexSubImage1D(enum target, int level, int xoffset, sizei width, enum format, enum type, const void *data); */
// target: Copy_Tex_Image_1D_Target
// format: Pixel_Data_Format
// type:   Pixel_Data_Type

/* void CopyTexSubImage3D(enum target, int level, int xoffset, int yoffset, int zoffset, int x, int y, sizei width, sizei height); */
// target: Tex_Sub_Image_3D_Target

/* void CopyTexSubImage2D(enum target, int level, int xoffset, int yoffset, int x, int y, sizei width, sizei height); */
// target: Tex_Image_2D_Target

/* void CopyTexSubImage1D(enum target, int level, int xoffset, int x, int y, sizei width); */
// target: Copy_Tex_Image_1D_Target

/* void TextureSubImage3D(uint texture, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, enum format, enum type, const void *pixels); */
// format: Pixel_Data_Format
// type: : Pixel_Data_Type

/* void TextureSubImage2D(uint texture, int level, int xoffset, int yoffset, sizei width, sizei height, enum format, enum type, const void *pixels); */
// format: Pixel_Data_Format
// type: : Pixel_Data_Type

/* void TextureSubImage1D(uint texture, int level, int xoffset, sizei width, enum format, enum type, const void *pixels); */
// format: Pixel_Data_Format
// type: : Pixel_Data_Type


/* Compressed Texture Images [8.7] */

/* void CompressedTexImage3D(enum target, int level, enum internalformat, sizei width, sizei height, sizei depth, int border, sizei imageSize, const void *data); */
// target: Tex_Image_3D_Target 

Compressed_Internalformat :: enum u32 {
	// Generic, Copyable
	COMPRESSED_RED        = COMPRESSED_RED,
	COMPRESSED_RG         = COMPRESSED_RG,
	COMPRESSED_RGB        = COMPRESSED_RGB,
	COMPRESSED_RGBA       = COMPRESSED_RGBA,
	COMPRESSED_SRGB       = COMPRESSED_SRGB,
	COMPRESSED_SRGB_ALPHA = COMPRESSED_SRGB_ALPHA,
	
	// Specific, Copyable
	COMPRESSED_RED_RGTC1               = COMPRESSED_RED_RGTC1,
	COMPRESSED_SIGNED_RED_RGTC1        = COMPRESSED_SIGNED_RED_RGTC1,
	COMPRESSED_RG_RGTC2                = COMPRESSED_RG_RGTC2,
	COMPRESSED_SIGNED_RG_RGTC2         = COMPRESSED_SIGNED_RG_RGTC2,
	COMPRESSED_RGBA_BPTC_UNORM         = COMPRESSED_RGBA_BPTC_UNORM,
	COMPRESSED_SRGB_ALPHA_BPTC_UNORM   = COMPRESSED_SRGB_ALPHA_BPTC_UNORM,
	COMPRESSED_RGB_BPTC_SIGNED_FLOAT   = COMPRESSED_RGB_BPTC_SIGNED_FLOAT,
	COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT,

	// Specific, Not Copyable
	COMPRESSED_RGB8_ETC2                      = COMPRESSED_RGB8_ETC2,
	COMPRESSED_SRGB8_ETC2                     = COMPRESSED_SRGB8_ETC2,
	COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2  = COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2,
	COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2,
	COMPRESSED_RGBA8_ETC2_EAC                 = COMPRESSED_RGBA8_ETC2_EAC,
	COMPRESSED_SRGB8_ALPHA8_ETC2_EAC          = COMPRESSED_SRGB8_ALPHA8_ETC2_EAC,
	COMPRESSED_R11_EAC                        = COMPRESSED_R11_EAC,
	COMPRESSED_SIGNED_R11_EAC                 = COMPRESSED_SIGNED_R11_EAC,
	COMPRESSED_RG11_EAC                       = COMPRESSED_RG11_EAC,
	COMPRESSED_SIGNED_RG11_EAC                = COMPRESSED_SIGNED_RG11_EAC
}


/* void CompressedTexImage2D(enum target, int level, enum internalformat, sizei width, sizei height, int border, sizei imageSize, const void *data); */
// internalformat: Compressed_Internalformat

Compressed_Tex_Image_2D_Target :: enum u32 {
	TEXTURE_2D                  = TEXTURE_2D,
	TEXTURE_1D_ARRAY            = TEXTURE_1D_ARRAY,
	TEXTURE_CUBE_MAP_POSITIVE_X = TEXTURE_CUBE_MAP_POSITIVE_X,
	TEXTURE_CUBE_MAP_POSITIVE_Y = TEXTURE_CUBE_MAP_POSITIVE_Y,
	TEXTURE_CUBE_MAP_POSITIVE_Z = TEXTURE_CUBE_MAP_POSITIVE_Z,
	TEXTURE_CUBE_MAP_NEGATIVE_X = TEXTURE_CUBE_MAP_NEGATIVE_X,
	TEXTURE_CUBE_MAP_NEGATIVE_Y = TEXTURE_CUBE_MAP_NEGATIVE_Y,
	TEXTURE_CUBE_MAP_NEGATIVE_Z = TEXTURE_CUBE_MAP_NEGATIVE_Z,
	PROXY_TEXTURE_2D            = PROXY_TEXTURE_2D,
	PROXY_TEXTURE_1D_ARRAY      = PROXY_TEXTURE_1D_ARRAY,
	PROXY_TEXTURE_CUBE_MAP      = PROXY_TEXTURE_CUBE_MAP,
}


/* void CompressedTexImage1D(enum target, int level, enum internalformat, sizei width, int border, sizei imageSize, const void *data); */
// target:         Tex_Image_1D_Target
// internalformat: Texture_Internalformat

/* void CompressedTexSubImage3D(enum target, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, enum format, sizei imageSize, const void *data); */
// target: Tex_Sub_Image_3D_Target
// format: Compressed_Internalformat

/* void CompressedTexSubImage2D(enum target, int level, int xoffset, int yoffset, sizei width, sizei height, enum format, sizei imageSize, cont void *data); */
// target: Copy_Tex_Image_2D_Target
// format: Compressed_Internalformat

/* void CompressedTexSubImage1D(enum target, int level, int xoffset, sizei width, enum format, sizei imageSize, const void *data); */
// target: Copy_Tex_Image_1D_Target
// format: Texture_Internalformat

/* void CompressedTextureSubImage3D(uint texture, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, enum format, sizei imageSize, const void *data); */
// format: Compressed_Internalformat

/* void CompressedTextureSubImage2D(uint texture, int level, int xoffset, int yoffset, sizei width, sizei height, enum format, sizei imageSize, cont void *data); */
// format: Compressed_Internalformat

/* void CompressedTextureSubImage1D(uint texture, int level, int xoffset, sizei width, enum format, sizei imageSize, const void *data); */
// format: Texture_Internalformat


/* Multisample Textures [8.8] */

/* void TexImage3DMultisample(enum target, sizei samples, int internalformat, sizei width, sizei height, sizei depth, boolean fixedsamplelocations); */
Tex_3D_Multisample_Target :: enum u32 {
	TEXTURE_2D_MULTISAMPLE_ARRAY       = TEXTURE_2D_MULTISAMPLE_ARRAY,
	PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY,
}

Color_Depth_Stencil_Renderable_Format :: enum i32 {
	// TODO(tarik): Marked fields are part of the enum as per my limited
	//              understanding of the Spec. (see page 234, 327,...),
	//              however they're not included in the Ref. Card. This
	//              makes the name of this enum questionable.
	//              Further, Ref. Card speaks of RGBA32, which doesn't
	//              exist. Thus, I assume RGBA32I was meant and leave it in.
	// 
	//              Probably the best is to use all.
	
	// Color-Renderable
	RED                = RED,
	RG                 = RG,
	RGB                = RGB,
	RGBA               = RGBA,
	R8                 = R8,                 // *
	R8_SNORM           = R8_SNORM,           // *
	R16                = R16,                // *
	R16_SNORM          = R16_SNORM,          // *
	RG8                = RG8,                // *
	RG8_SNORM          = RG8_SNORM,          // *
	RG16               = RG16,               // *
	RG16_SNORM         = RG16_SNORM,         // *
	R3_G3_B2           = R3_G3_B2,           // *
	RGB4               = RGB4,               // *
	RGB5               = RGB5,               // *
	RGB565             = RGB5,               // *
	RGB8               = RGB8,               // *
	RGB8_SNORM         = RGB8_SNORM,         // *
	RGB10              = RGB10,              // *
	RGB12              = RGB12,              // *
	RGB16              = RGB16,              // *
	RGB16_SNORM        = RGB16_SNORM,        // *
	RGBA2              = RGBA2,              // *
	RGBA4              = RGBA4,              // *
	RGB5_A1            = RGB5_A1,            // *
	RGBA8              = RGBA8,              // *
	RGBA8_SNORM        = RGBA8_SNORM,        // *
	RGB10_A2           = RGB10_A2,           // *
	RGB10_A2UI         = RGB10_A2UI,         // *
	RGBA12             = RGBA12,             // *
	RGBA16             = RGBA16,             // *
	RGBA16_SNORM       = RGBA16_SNORM,       // *
	SRGB8              = SRGB8,              // *
	SRGB8_ALPHA8       = SRGB8_ALPHA8,       // *
	R16F               = R16F,               // *
	RG16F              = RG16F,              // *
	RGB16F             = RGB16F,             // *
	RGBA16F            = RGBA16F,            // *
	R32F               = R32F,               // *
	RG32F              = RG32F,              // *
	RGB32F             = RGB32F,             // *
	RGBA32F            = RGBA32F,            // *
	R11F_G11F_B10F     = R11F_G11F_B10F,     // *
	R8I                = R8I,                // *
	R8UI               = R8UI,               // *
	R16I               = R16I,               // *
	R16UI              = R16UI,              // *
	R32I               = R32I,               // *
	R32UI              = R32UI,              // *
	RG8I               = RG8I,               // *
	RG8UI              = RG8UI,              // *
	RG16I              = RG16I,              // *
	RG16UI             = RG16UI,             // *
	RG32I              = RG32I,              // *
	RG32UI             = RG32UI,             // *
	RGB8I              = RGB8I,              // *
	RGB8UI             = RGB8UI,             // *
	RGB16I             = RGB16I,             // *
	RGB16UI            = RGB16UI,            // *
	RGB32I             = RGB32I,             // *
	RGB32UI            = RGB32UI,            // *
	RGBA8I             = RGBA8I,             // *
	RGBA8UI            = RGBA8UI,            // *
	RGBA16I            = RGBA16I,            // *
	RGBA16UI           = RGBA16UI,           // *
	RGBA32I            = RGBA32I,
	RGBA32UI           = RGBA32UI,

	// Depth-Renderable
	DEPTH_COMPONENT    = DEPTH_COMPONENT,
	DEPTH_COMPONENT16  = DEPTH_COMPONENT16,
	DEPTH_COMPONENT24  = DEPTH_COMPONENT24,
	DEPTH_COMPONENT32  = DEPTH_COMPONENT32,
	DEPTH_COMPONENT32F = DEPTH_COMPONENT32F,
	DEPTH_STENCIL      = DEPTH_STENCIL,      // *
	DEPTH24_STENCIL8   = DEPTH24_STENCIL8,
	DEPTH32F_STENCIL8  = DEPTH32F_STENCIL8,

	// Stencil-Renderable
	STENCIL_INDEX      = STENCIL_INDEX,      // *
	STENCIL_INDEX1     = STENCIL_INDEX1,
	STENCIL_INDEX4     = STENCIL_INDEX4,
	STENCIL_INDEX8     = STENCIL_INDEX8,
	STENCIL_INDEX16    = STENCIL_INDEX16,
}

/* void TexImage2DMultisample(enum target, sizei samples, int internalformat, sizei width, sizei height, boolean fixedsamplelocations); */
// internalformat: Color_Depth_Stencil_Renderable_Format

Tex_2D_Multisample_Target :: enum u32 {
	TEXTURE_2D_MULTISAMPLE       = TEXTURE_2D_MULTISAMPLE,
	PROXY_TEXTURE_2D_MULTISAMPLE = PROXY_TEXTURE_2D_MULTISAMPLE,
}


/* Buffer Textures [8.9] */

/* void TexBufferRange(enum target, enum internalFormat, uint buffer, intptr offset, sizeiptr size); */
Tex_Buffer_Target :: enum u32 {
	TEXTURE_BUFFER = TEXTURE_BUFFER,
}

Tex_Buffer_Internalformat :: enum u32 {
	R8       = R8,
	R16      = R16,
	R16F     = R16F,
	R32F     = R32F,
	R8I      = R8I,
	R16I     = R16I,
	R32I     = R32I,
	R8UI     = R8UI,
	R16UI    = R16UI,
	R32UI    = R32UI,
	RG8      = RG8,
	RG16     = RG16,
	RG16F    = RG16F,
	RG32F    = RG32F,
	RG8I     = RG8I,
	RG16I    = RG16I,
	RG32I    = RG32I,
	RG8UI    = RG8UI,
	RG16UI   = RG16UI,
	RG32UI   = RG32UI,
	RGB32F   = RGB32F,
	RGB32I   = RGB32I,
	RGB32UI  = RGB32UI,
	RGBA8    = RGBA8,
	RGBA16   = RGBA16,
	RGBA16F  = RGBA16F,
	RGBA32F  = RGBA32F,
	RGBA8I   = RGBA8I,
	RGBA16I  = RGBA16I,
	RGBA32I  = RGBA32I,
	RGBA8UI  = RGBA8UI,
	RGBA16UI = RGBA16UI,
	RGBA32UI = RGBA32UI,
}

/* void TextureBufferRange(uint texture, enum internalFormat, uint buffer, intptr offset, sizeiptr size); */
// internalformat: Tex_Buffer_Internalformat

/* void TexBuffer(enum target, enum internalformat, uint buffer); */
// target: Tex_Buffer_Target
// internalformat: Tex_Buffer_Internalformat

/* void TextureBuffer(uint texture, enum internalformat, uint buffer); */
// internalformat: Tex_Buffer_Internalformat


/* Texture Parameters [8.10] */

/* void TexParameteri(enum target, enum pname, T param); */
Texture_Parameter_Target :: enum u32 {
// NOTE(tarik): This differs from Texture_Target by not having TEXTURE_BUFFER.
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
Texture_Parameter :: enum u32 {
	DEPTH_STENCIL_TEXTURE_MODE = DEPTH_STENCIL_TEXTURE_MODE,
	TEXTURE_WRAP_S             = TEXTURE_WRAP_S,
	TEXTURE_WRAP_T             = TEXTURE_WRAP_T,
	TEXTURE_WRAP_R             = TEXTURE_WRAP_R,
	TEXTURE_BORDER_COLOR       = TEXTURE_BORDER_COLOR,
	TEXTURE_MIN_FILTER         = TEXTURE_MIN_FILTER,
	TEXTURE_MAG_FILTER         = TEXTURE_MAG_FILTER,
	TEXTURE_LOD_BIAS           = TEXTURE_LOD_BIAS,
	TEXTURE_MIN_LOD            = TEXTURE_MIN_LOD,
	TEXTURE_MAX_LOD            = TEXTURE_MAX_LOD,
	TEXTURE_BASE_LEVEL         = TEXTURE_BASE_LEVEL,
	TEXTURE_MAX_LEVEL          = TEXTURE_MAX_LEVEL,
	TEXTURE_SWIZZLE_R          = TEXTURE_SWIZZLE_R,
	TEXTURE_SWIZZLE_G          = TEXTURE_SWIZZLE_G,
	TEXTURE_SWIZZLE_B          = TEXTURE_SWIZZLE_B,
	TEXTURE_SWIZZLE_A          = TEXTURE_SWIZZLE_A,
	TEXTURE_SWIZZLE_RGBA       = TEXTURE_SWIZZLE_RGBA,
	TEXTURE_COMPARE_MODE       = TEXTURE_COMPARE_MODE,
	TEXTURE_COMPARE_FUNC       = TEXTURE_COMPARE_FUNC,
	// TODO(tarik): This one is only in the Spec:
	TEXTURE_MAX_ANISOTROPY     = TEXTURE_MAX_ANISOTROPY,
}

/* void TexParameterf(enum target, enum pname, T param); */
// target: Texture_Parameter_Target
// pname:  Texture_Parameter

/* void TexParameteriv(enum target, enum pname, const T *params); */
// target: Texture_Parameter_Target
// pname:  Texture_Parameter

/* void TexParameterfv(enum target, enum pname, const T *params); */
// target: Texture_Parameter_Target
// pname:  Texture_Parameter

/* void TexParameterIiv(enum target, enum pname, const T *params); */
// target: Texture_Parameter_Target
// pname:  Texture_Parameter

/* void TexParameterIuiv(enum target, enum pname, const T *params); */
// target: Texture_Parameter_Target
// pname:  Texture_Parameter

/* void TextureParameteri(uint texture, enum pname, T param); */
// pname: Texture_Parameter

/* void TextureParameterf(uint texture, enum pname, T param); */
// pname: Texture_Parameter

/* void TextureParameteriv(uint texture, enum pname, const T *params); */
// pname: Texture_Parameter

/* void TextureParameterfv(uint texture, enum pname, const T *params); */
// pname: Texture_Parameter

/* void TextureParameterIiv(uint texture, enum pname, const T *params); */
// pname: Texture_Parameter

/* void TextureParameterIuiv(uint texture, enum pname, const T *params); */
// pname: Texture_Parameter


/* Texture Queries [8.11] */

/* void GetTexParameteriv(enum target, enum pname, T * params); */
// target: Texture_Parameter_Target

Get_Texture_Parameter :: enum u32 {
	IMAGE_FORMAT_COMPATIBILITY_TYPE = IMAGE_FORMAT_COMPATIBILITY_TYPE,
	TEXTURE_IMMUTABLE_FORMAT        = TEXTURE_IMMUTABLE_FORMAT,
	TEXTURE_IMMUTABLE_LEVELS        = TEXTURE_IMMUTABLE_LEVELS,
	TEXTURE_TARGET                  = TEXTURE_TARGET,
	TEXTURE_VIEW_MIN_LEVEL          = TEXTURE_VIEW_MIN_LEVEL,
	TEXTURE_VIEW_NUM_LEVELS         = TEXTURE_VIEW_NUM_LEVELS,
	TEXTURE_VIEW_MIN_LAYER          = TEXTURE_VIEW_MIN_LAYER,
	TEXTURE_VIEW_NUM_LAYERS         = TEXTURE_VIEW_NUM_LAYERS,

	DEPTH_STENCIL_TEXTURE_MODE      = DEPTH_STENCIL_TEXTURE_MODE,
	TEXTURE_WRAP_S                  = TEXTURE_WRAP_S,
	TEXTURE_WRAP_T                  = TEXTURE_WRAP_T,
	TEXTURE_WRAP_R                  = TEXTURE_WRAP_R,
	TEXTURE_BORDER_COLOR            = TEXTURE_BORDER_COLOR,
	TEXTURE_MIN_FILTER              = TEXTURE_MIN_FILTER,
	TEXTURE_MAG_FILTER              = TEXTURE_MAG_FILTER,
	TEXTURE_LOD_BIAS                = TEXTURE_LOD_BIAS,
	TEXTURE_MIN_LOD                 = TEXTURE_MIN_LOD,
	TEXTURE_MAX_LOD                 = TEXTURE_MAX_LOD,
	TEXTURE_BASE_LEVEL              = TEXTURE_BASE_LEVEL,
	TEXTURE_MAX_LEVEL               = TEXTURE_MAX_LEVEL,
	TEXTURE_SWIZZLE_R               = TEXTURE_SWIZZLE_R,
	TEXTURE_SWIZZLE_G               = TEXTURE_SWIZZLE_G,
	TEXTURE_SWIZZLE_B               = TEXTURE_SWIZZLE_B,
	TEXTURE_SWIZZLE_A               = TEXTURE_SWIZZLE_A,
	TEXTURE_SWIZZLE_RGBA            = TEXTURE_SWIZZLE_RGBA,
	TEXTURE_COMPARE_MODE            = TEXTURE_COMPARE_MODE,
	TEXTURE_COMPARE_FUNC            = TEXTURE_COMPARE_FUNC,
	// TODO(tarik): This one is only in the Spec:
	TEXTURE_MAX_ANISOTROPY          = TEXTURE_MAX_ANISOTROPY,
}

/* void GetTexParameterfv(enum target, enum pname, T * params); */
// target: Texture_Parameter_Target
// pname:  Get_Texture_Parameter

/* void GetTexParameterIiv(enum target, enum pname, T * params); */
// target: Texture_Parameter_Target
// pname:  Get_Texture_Parameter

/* void GetTexParameterIuiv(enum target, enum pname, T * params); */
// target: Texture_Parameter_Target
// pname:  Get_Texture_Parameter

/* void GetTextureParameteriv(uint texture, enum pname, T *data); */
// pname:  Get_Texture_Parameter

/* void GetTextureParameterfv(uint texture, enum pname, T *data); */
// pname:  Get_Texture_Parameter

/* void GetTextureParameterIiv(uint texture, enum pname, T *data); */
// pname:  Get_Texture_Parameter

/* void GetTextureParameterIuiv(uint texture, enum pname, T *data); */
// pname:  Get_Texture_Parameter

/* void GetTexLevelParameteriv(enum target, int level, enum pname, T *params); */
Tex_Level_Parameter_Target :: enum u32 {
	TEXTURE_1D                         = TEXTURE_1D,
	TEXTURE_2D                         = TEXTURE_2D,
	TEXTURE_3D                         = TEXTURE_3D,
	TEXTURE_1D_ARRAY                   = TEXTURE_1D_ARRAY,
	TEXTURE_2D_ARRAY                   = TEXTURE_2D_ARRAY,
	TEXTURE_CUBE_MAP_ARRAY             = TEXTURE_CUBE_MAP_ARRAY,
	TEXTURE_RECTANGLE                  = TEXTURE_RECTANGLE,
	TEXTURE_BUFFER                     = TEXTURE_BUFFER,
	TEXTURE_2D_MULTISAMPLE             = TEXTURE_2D_MULTISAMPLE,
	TEXTURE_2D_MULTISAMPLE_ARRAY       = TEXTURE_2D_MULTISAMPLE_ARRAY,
	PROXY_TEXTURE_1D                   = PROXY_TEXTURE_1D,
	PROXY_TEXTURE_2D                   = PROXY_TEXTURE_2D,
	PROXY_TEXTURE_3D                   = PROXY_TEXTURE_3D,
	PROXY_TEXTURE_1D_ARRAY             = PROXY_TEXTURE_1D_ARRAY,
	PROXY_TEXTURE_2D_ARRAY             = PROXY_TEXTURE_2D_ARRAY,
	PROXY_TEXTURE_CUBE_MAP_ARRAY       = PROXY_TEXTURE_CUBE_MAP_ARRAY,
	PROXY_TEXTURE_RECTANGLE            = PROXY_TEXTURE_RECTANGLE,
	PROXY_TEXTURE_CUBE_MAP             = PROXY_TEXTURE_CUBE_MAP,
	PROXY_TEXTURE_2D_MULTISAMPLE       = PROXY_TEXTURE_2D_MULTISAMPLE,
	PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY,

	TEXTURE_CUBE_MAP_POSITIVE_X       = TEXTURE_CUBE_MAP_POSITIVE_X,
	TEXTURE_CUBE_MAP_POSITIVE_Y       = TEXTURE_CUBE_MAP_POSITIVE_Y,
	TEXTURE_CUBE_MAP_POSITIVE_Z       = TEXTURE_CUBE_MAP_POSITIVE_Z,
	TEXTURE_CUBE_MAP_NEGATIVE_X       = TEXTURE_CUBE_MAP_NEGATIVE_X,
	TEXTURE_CUBE_MAP_NEGATIVE_Y       = TEXTURE_CUBE_MAP_NEGATIVE_Y,
	TEXTURE_CUBE_MAP_NEGATIVE_Z       = TEXTURE_CUBE_MAP_NEGATIVE_Z,
}

Tex_Level_Parameter :: enum u32 {
	TEXTURE_WIDTH                     = TEXTURE_WIDTH,
	TEXTURE_HEIGHT                    = TEXTURE_HEIGHT,
	TEXTURE_DEPTH                     = TEXTURE_DEPTH,
	TEXTURE_SAMPLES                   = TEXTURE_SAMPLES,
	TEXTURE_FIXED_SAMPLE_LOCATIONS    = TEXTURE_FIXED_SAMPLE_LOCATIONS,
	TEXTURE_INTERNAL_FORMAT           = TEXTURE_INTERNAL_FORMAT,
	TEXTURE_RED_SIZE                  = TEXTURE_RED_SIZE,
	TEXTURE_GREEN_SIZE                = TEXTURE_GREEN_SIZE,
	TEXTURE_BLUE_SIZE                 = TEXTURE_BLUE_SIZE,
	TEXTURE_ALPHA_SIZE                = TEXTURE_ALPHA_SIZE,
	TEXTURE_DEPTH_SIZE                = TEXTURE_DEPTH_SIZE,
	TEXTURE_STENCIL_SIZE              = TEXTURE_STENCIL_SIZE,
	TEXTURE_COMPRESSED                = TEXTURE_COMPRESSED,
	TEXTURE_COMPRESSED_IMAGE_SIZE     = TEXTURE_COMPRESSED_IMAGE_SIZE,
	TEXTURE_BUFFER_DATA_STORE_BINDING = TEXTURE_BUFFER_DATA_STORE_BINDING,
	TEXTURE_BUFFER_OFFSET             = TEXTURE_BUFFER_OFFSET,
	TEXTURE_BUFFER_SIZE               = TEXTURE_BUFFER_SIZE
}

/* void GetTexLevelParameterfv(enum target, int level, enum pname, T *params); */
// target: Tex_Level_Parameter_Target
// pname:  Tex_Level_Parameter

/* void GetTextureLevelParameteriv(uint texture, int level, enum pname, T *params); */
// pname: Tex_Level_Parameter

/* void GetTextureLevelParameterfv(uint texture, int level, enum pname, T *params); */
// pname: Tex_Level_Parameter

/* void GetTexImage(enum target, int level, enum format, enum type, void *pixels); */
// format: Pixel_Data_Format
// type:   Pixel_Data_Type

Get_Tex_Image_Target :: enum u32 {
	TEXTURE_1D                  = TEXTURE_1D,
	TEXTURE_2D                  = TEXTURE_2D,
	TEXTURE_3D                  = TEXTURE_3D,
	TEXTURE_1D_ARRAY            = TEXTURE_1D_ARRAY,
	TEXTURE_2D_ARRAY            = TEXTURE_2D_ARRAY,
	TEXTURE_CUBE_MAP_ARRAY      = TEXTURE_CUBE_MAP_ARRAY,
	TEXTURE_RECTANGLE           = TEXTURE_RECTANGLE,
	TEXTURE_CUBE_MAP_POSITIVE_X = TEXTURE_CUBE_MAP_POSITIVE_X,
	TEXTURE_CUBE_MAP_POSITIVE_Y = TEXTURE_CUBE_MAP_POSITIVE_Y,
	TEXTURE_CUBE_MAP_POSITIVE_Z = TEXTURE_CUBE_MAP_POSITIVE_Z,
	TEXTURE_CUBE_MAP_NEGATIVE_X = TEXTURE_CUBE_MAP_NEGATIVE_X,
	TEXTURE_CUBE_MAP_NEGATIVE_Y = TEXTURE_CUBE_MAP_NEGATIVE_Y,
	TEXTURE_CUBE_MAP_NEGATIVE_Z = TEXTURE_CUBE_MAP_NEGATIVE_Z,
}

/* void GetTextureImage(uint texture, int level, enum format, enum type, sizei bufSize, void *pixels); */
// format: Pixel_Data_Format
// type:   Pixel_Data_Type

/* void GetnTexImage(enum tex, int level, enum format, enum type, sizei bufSize, void *pixels); */
// target: Get_Tex_Image_Target
// format: Pixel_Data_Format
// type:   Pixel_Data_Type

/* void GetTextureSubImage(uint texture, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, enum format, enum type, sizei bufSize, void *pixels); */
// format: Pixel_Data_Format
// type:   Pixel_Data_Type

/* void GetCompressedTexImage(enum target, int level, void *pixels); */
// target: Get_Tex_Image_Target

// TODO(tarik): Remove this if no enum for int level will be created
/* void GetCompressedTextureImage(uint texture, int level, sizei bufSize, void *pixels); */

/* void GetnCompressedTexImage(enum target, int level, sizei bufsize, void *pixels); */
// target: Get_Tex_Image_Target

// TODO(tarik): Remove this if no enum for int level will be created
/* void GetCompressedTextureSubImage(uint texture, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, sizei bufSize, void *pixels); */


/* Manual Mipmap Generation [8.14.4] */

/* void GenerateMipmap(enum target); */
Generate_Mipmap_Target :: enum u32 {
	TEXTURE_1D             = TEXTURE_1D,
	TEXTURE_2D             = TEXTURE_2D,
	TEXTURE_3D             = TEXTURE_3D,
	TEXTURE_1D_ARRAY       = TEXTURE_1D_ARRAY,
	TEXTURE_2D_ARRAY       = TEXTURE_2D_ARRAY,
	TEXTURE_CUBE_MAP       = TEXTURE_CUBE_MAP,
	TEXTURE_CUBE_MAP_ARRAY = TEXTURE_CUBE_MAP_ARRAY
}


/* Texture Views [8.18] */

/* void TextureView(uint texture, enum target, uint origtexture, enum internalformat, uint minlevel, uint numlevels, uint minlayer, uint numlayers); */
Texture_View_Target :: enum u32 {
	TEXTURE_1D                   = TEXTURE_1D,
	TEXTURE_1D_ARRAY             = TEXTURE_1D_ARRAY,
	TEXTURE_2D                   = TEXTURE_2D,
	TEXTURE_2D_ARRAY             = TEXTURE_2D_ARRAY,
	TEXTURE_RECTANGLE            = TEXTURE_RECTANGLE,
	TEXTURE_3D                   = TEXTURE_3D,
	TEXTURE_CUBE_MAP             = TEXTURE_CUBE_MAP,
	TEXTURE_CUBE_MAP_ARRAY       = TEXTURE_CUBE_MAP_ARRAY,
	TEXTURE_2D_MULTISAMPLE       = TEXTURE_2D_MULTISAMPLE,
	TEXTURE_2D_MULTISAMPLE_ARRAY = TEXTURE_2D_MULTISAMPLE_ARRAY,
}

Texture_View_Internalformat :: enum u32 {
	RGBA32F                            = RGBA32F,
	RGBA32UI                           = RGBA32UI,
	RGBA32I                            = RGBA32I,
	RGB32F                             = RGB32F,
	RGB32UI                            = RGB32UI,
	RGB32I                             = RGB32I,
	RGBA16F                            = RGBA16F,
	RG32F                              = RG32F,
	RGBA16UI                           = RGBA16UI,
	RG32UI                             = RG32UI,
	RGBA16I                            = RGBA16I,
	RG32I                              = RG32I,
	RGBA16                             = RGBA16,
	RGBA16_SNORM                       = RGBA16_SNORM,
	RGB16                              = RGB16,
	RGB16_SNORM                        = RGB16_SNORM,
	RGB16F                             = RGB16F,
	RGB16UI                            = RGB16UI,
	RGB16I                             = RGB16I,
	RG16F                              = RG16F,
	R11F_G11F_B10F                     = R11F_G11F_B10F,
	R32F                               = R32F,
	RGB10_A2UI                         = RGB10_A2UI,
	RGBA8UI                            = RGBA8UI,
	RG16UI                             = RG16UI,
	R32UI                              = R32UI,
	RGBA8I                             = RGBA8I,
	RG16I                              = RG16I,
	R32I                               = R32I,
	RGB10_A2                           = RGB10_A2,
	RGBA8                              = RGBA8,
	RG16                               = RG16,
	RGBA8_SNORM                        = RGBA8_SNORM,
	RG16_SNORM                         = RG16_SNORM,
	SRGB8_ALPHA8                       = SRGB8_ALPHA8,
	RGB9_E5                            = RGB9_E5,
	RGB8                               = RGB8,
	RGB8_SNORM                         = RGB8_SNORM,
	SRGB8                              = SRGB8,
	RGB8UI                             = RGB8UI,
	RGB8I                              = RGB8I,
	R16F                               = R16F,
	RG8UI                              = RG8UI,
	R16UI                              = R16UI,
	RG8I                               = RG8I,
	R16I                               = R16I,
	RG8                                = RG8,
	R16                                = R16,
	RG8_SNORM                          = RG8_SNORM,
	R16_SNORM                          = R16_SNORM,
	R8UI                               = R8UI,
	R8I                                = R8I,
	R8                                 = R8,
	R8_SNORM                           = R8_SNORM,
	COMPRESSED_RED_RGTC1               = COMPRESSED_RED_RGTC1,
	COMPRESSED_SIGNED_RED_RGTC1        = COMPRESSED_SIGNED_RED_RGTC1,
	COMPRESSED_RG_RGTC2                = COMPRESSED_RG_RGTC2,
	COMPRESSED_SIGNED_RG_RGTC2         = COMPRESSED_SIGNED_RG_RGTC2,
	COMPRESSED_RGBA_BPTC_UNORM         = COMPRESSED_RGBA_BPTC_UNORM,
	COMPRESSED_SRGB_ALPHA_BPTC_UNORM   = COMPRESSED_SRGB_ALPHA_BPTC_UNORM,
	COMPRESSED_RGB_BPTC_SIGNED_FLOAT   = COMPRESSED_RGB_BPTC_SIGNED_FLOAT,
	COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT,
}


/* Immutable-Format Tex. Images [8.19] */

/* void TexStorage1D(enum target, sizei levels, enum internalformat, sizei width); */
Tex_Storage_1D_Target :: enum u32 {
	TEXTURE_1D       = TEXTURE_1D,
	PROXY_TEXTURE_1D = PROXY_TEXTURE_1D,
}

Tex_Storage_Internalformat :: enum u32 {
	// Color-Renderable
	RED                = RED,
	RG                 = RG,
	RGB                = RGB,
	RGBA               = RGBA,
	R8                 = R8,
	R8_SNORM           = R8_SNORM,
	R16                = R16,
	R16_SNORM          = R16_SNORM,
	RG8                = RG8,
	RG8_SNORM          = RG8_SNORM,
	RG16               = RG16,
	RG16_SNORM         = RG16_SNORM,
	R3_G3_B2           = R3_G3_B2,
	RGB4               = RGB4,
	RGB5               = RGB5,
	RGB565             = RGB5,
	RGB8               = RGB8,
	RGB8_SNORM         = RGB8_SNORM,
	RGB10              = RGB10,
	RGB12              = RGB12,
	RGB16              = RGB16,
	RGB16_SNORM        = RGB16_SNORM,
	RGBA2              = RGBA2,
	RGBA4              = RGBA4,
	RGB5_A1            = RGB5_A1,
	RGBA8              = RGBA8,
	RGBA8_SNORM        = RGBA8_SNORM,
	RGB10_A2           = RGB10_A2,
	RGB10_A2UI         = RGB10_A2UI,
	RGBA12             = RGBA12,
	RGBA16             = RGBA16,
	RGBA16_SNORM        = RGBA16_SNORM,
	SRGB8              = SRGB8,
	SRGB8_ALPHA8       = SRGB8_ALPHA8,
	R16F               = R16F,
	RG16F              = RG16F,
	RGB16F             = RGB16F,
	RGBA16F            = RGBA16F,
	R32F               = R32F,
	RG32F              = RG32F,
	RGB32F             = RGB32F,
	RGBA32F            = RGBA32F,
	R11F_G11F_B10F     = R11F_G11F_B10F,
	R8I                = R8I,
	R8UI               = R8UI,
	R16I               = R16I,
	R16UI              = R16UI,
	R32I               = R32I,
	R32UI              = R32UI,
	RG8I               = RG8I,
	RG8UI              = RG8UI,
	RG16I              = RG16I,
	RG16UI             = RG16UI,
	RG32I              = RG32I,
	RG32UI             = RG32UI,
	RGB8I              = RGB8I,
	RGB8UI             = RGB8UI,
	RGB16I             = RGB16I,
	RGB16UI            = RGB16UI,
	RGB32I             = RGB32I,
	RGB32UI            = RGB32UI,
	RGBA8I             = RGBA8I,
	RGBA8UI            = RGBA8UI,
	RGBA16I            = RGBA16I,
	RGBA16UI           = RGBA16UI,
	RGBA32I            = RGBA32I,
	RGBA32UI           = RGBA32UI,

	// TODO(tarik): Marked fields are a not required format and not included
	// in the Ref. Card. Read 8.5.1 for more info.

	// Depth-Renderable
	DEPTH_COMPONENT16  = DEPTH_COMPONENT16,
	DEPTH_COMPONENT24  = DEPTH_COMPONENT24,
	// DEPTH_COMPONENT32  = DEPTH_COMPONENT32, // *
	DEPTH_COMPONENT32F = DEPTH_COMPONENT32F,
	DEPTH24_STENCIL8   = DEPTH24_STENCIL8,
	DEPTH32F_STENCIL8  = DEPTH32F_STENCIL8,

	// Stencil-Renderable
	// STENCIL_INDEX1     = STENCIL_INDEX1,    // *
	// STENCIL_INDEX4     = STENCIL_INDEX4,    // *
	STENCIL_INDEX8     = STENCIL_INDEX8,
	// STENCIL_INDEX16    = STENCIL_INDEX16,   // *
}

/* void TexStorage2D(enum target, sizei levels, enum internalformat, sizei width, sizei height); */
// internalformat: Tex_Storage_Internalformat

Tex_Storage_2D_Target :: enum u32 {
	TEXTURE_1D_ARRAY        = TEXTURE_1D_ARRAY,
	TEXTURE_2D              = TEXTURE_2D,
	TEXTURE_RECTANGLE       = TEXTURE_RECTANGLE,
	TEXTURE_CUBE_MAP        = TEXTURE_CUBE_MAP,
	PROXY_TEXTURE_1D_ARRAY  = PROXY_TEXTURE_1D_ARRAY,
	PROXY_TEXTURE_2D        = PROXY_TEXTURE_2D,
	PROXY_TEXTURE_RECTANGLE = PROXY_TEXTURE_RECTANGLE,
	PROXY_TEXTURE_CUBE_MAP  = PROXY_TEXTURE_CUBE_MAP,
}

/* void TexStorage3D(enum target, sizei levels, enum internalformat, sizei width, sizei height, sizei depth); */
// internalformat: Tex_Storage_Internalformat

Tex_Storage_3D_Target :: enum u32 {
	TEXTURE_2D_ARRAY             = TEXTURE_2D_ARRAY,
	TEXTURE_3D                   = TEXTURE_3D,
	TEXTURE_CUBE_MAP_ARRAY       = TEXTURE_CUBE_MAP_ARRAY,
	PROXY_TEXTURE_2D_ARRAY       = PROXY_TEXTURE_2D_ARRAY,
	PROXY_TEXTURE_3D             = PROXY_TEXTURE_3D,
	PROXY_TEXTURE_CUBE_MAP_ARRAY = PROXY_TEXTURE_CUBE_MAP_ARRAY,
}

/* void TextureStorage1D(uint texture, sizei levels, enum internalformat, sizei width); */
// internalformat: Tex_Storage_Internalformat

/* void TextureStorage2D(uint texture, sizei levels, enum internalformat, sizei width, sizei height); */
// internalformat: Tex_Storage_Internalformat

/* void TextureStorage3D(uint texture, sizei levels, enum internalformat, sizei width, sizei height, sizei depth); */
// internalformat: Tex_Storage_Internalformat

/* void TexStorage2DMultisample(enum target, sizei samples, enum internalformat, sizei width, sizei height, boolean fixedsamplelocations); */
// target: Tex_2D_Multisample_Target
// internalformat: Tex_Storage_Internalformat

/* void TexStorage3DMultisample(enum target, sizei samples, enum internalformat, sizei width, sizei height, sizei depth, boolean fixedsamplelocations); */
// target: Tex_3D_Multisample_Target

/* void TextureStorage2DMultisample(uint texture, sizei samples, enum internalformat, sizei width, sizei height, boolean fixedsamplelocations); */
// internalformat: Tex_Storage_Internalformat

/* void TextureStorage3DMultisample(uint texture, sizei samples, enum internalformat, sizei width, sizei height, sizei depth, boolean fixedsamplelocations); */
// internalformat: Tex_Storage_Internalformat


/* Clear Texture Image Data [8.21] */

/* void ClearTexSubImage(uint texture, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, enum format, enum type, const void *data); */
// format: Pixel_Data_Format
// type:   Pixel_Data_Type

/* void ClearTexImage(uint texture, int level, enum format, enum type, const void *data); */
// format: Pixel_Data_Format
// type:   Pixel_Data_Type


/* Texture Image Loads/Stores [8.26] */

/* void BindImageTexture(uint index, uint texture, int level, boolean layered, int layer, enum access, enum format); */
// access: Access (from other file)

Image_Unit_Format :: enum u32 {
	RGBA32F        = RGBA32F,
	RGBA16F        = RGBA16F,
	RG32F          = RG32F,
	RG16F          = RG16F,
	R11F_G11F_B10F = R11F_G11F_B10F,
	R32F           = R32F,
	R16F           = R16F,
	RGBA32UI       = RGBA32UI,
	RGBA16UI       = RGBA16UI,
	RGB10_A2UI     = RGB10_A2UI,
	RGBA8UI        = RGBA8UI,
	RG32UI         = RG32UI,
	RG16UI         = RG16UI,
	RG8UI          = RG8UI,
	R32UI          = R32UI,
	R16UI          = R16UI,
	R8UI           = R8UI,
	RGBA32I        = RGBA32I,
	RGBA16I        = RGBA16I,
	RGBA8I         = RGBA8I,
	RG32I          = RG32I,
	RG16I          = RG16I,
	RG8I           = RG8I,
	R32I           = R32I,
	R16I           = R16I,
	R8I            = R8I,
	RGBA16         = RGBA16,
	RGB10_A2       = RGB10_A2,
	RGBA8          = RGBA8,
	RG16           = RG16,
	RG8            = RG8,
	R16            = R16,
	R8             = R8,
	RGBA16_SNORM   = RGBA16_SNORM,
	RGBA8_SNORM    = RGBA8_SNORM,
	RG16_SNORM     = RG16_SNORM,
	RG8_SNORM      = RG8_SNORM,
	R16_SNORM      = R16_SNORM,
	R8_SNORM       = R8_SNORM,
}
