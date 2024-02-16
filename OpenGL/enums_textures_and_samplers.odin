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
	TEXTURE_BUFFER               = TEXTURE_BUFFER,
	TEXTURE_CUBE_MAP             = TEXTURE_CUBE_MAP,
	TEXTURE_CUBE_MAP_ARRAY       = TEXTURE_CUBE_MAP_ARRAY,
	TEXTURE_2D_MULTISAMPLE       = TEXTURE_2D_MULTISAMPLE,
	TEXTURE_2D_MULTISAMPLE_ARRAY = TEXTURE_2D_MULTISAMPLE_ARRAY,
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
// target: Sampler_Parameter

/* void SamplerParameteriv(uint sampler, enum pname, const T *param); */
// target: Sampler_Parameter

/* void SamplerParameterfv(uint sampler, enum pname, const T *param); */
// target: Sampler_Parameter

/* void SamplerParameterIiv(uint sampler, enum pname, const T *params); */
// target: Sampler_Parameter

/* void SamplerParameterIuiv(uint sampler, enum pname, const T *params); */
// target: Sampler_Parameter


/* Sampler Queries [8.3] */

/* void GetSamplerParameteriv(uint sampler, enum pname, T *params); */
// target: Sampler_Parameter

/* void GetSamplerParameterfv(uint sampler, enum pname, T *params); */
// target: Sampler_Parameter

/* void GetSamplerParameterIiv(uint sampler, enum pname, T *params); */
// target: Sampler_Parameter

/* void GetSamplerParameterIuiv(uint sampler, enum pname, T *params); */
// target: Sampler_Parameter


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

/* void TexImage3D(enum target, int level, int internalformat, sizei width, sizei height, sizei depth, int border, enum format, enum type, const void *data); */
Tex_Image_3D_Target :: enum u32 {
	TEXTURE_3D                   = TEXTURE_3D,
	TEXTURE_2D_ARRAY             = TEXTURE_2D_ARRAY,
	TEXTURE_CUBE_MAP_ARRAY       = TEXTURE_CUBE_MAP_ARRAY,
	PROXY_TEXTURE_3D             = PROXY_TEXTURE_3D,
	PROXY_TEXTURE_2D_ARRAY       = PROXY_TEXTURE_2D_ARRAY,
	PROXY_TEXTURE_CUBE_MAP_ARRAY = PROXY_TEXTURE_CUBE_MAP_ARRAY,
}

Tex_Image_3D_Internalformat :: Texture_Internal_Format
// TODO(tarik): Can maybe name it Internalformat or Internal_Format?
Texture_Internal_Format :: enum i32 {
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

/* void TexImage2D(enum target, int level, int internalformat, sizei width, sizei height, int border, enum format, enum type, const void *data); */
// internalformat: Texture_Internal_Format
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

/* void TexImage1D(enum target, int level, int internalformat, sizei width, int border, enum format, enum type, const void *data); */
// internalformat: Texture_Internal_Format
// format:         Pixel_Data_Format
// type:           Pixel_Data_Type

Tex_Image_1D_Target :: enum u32 {
	TEXTURE_1D       = TEXTURE_1D,
	PROXY_TEXTURE_1D = PROXY_TEXTURE_1D,
}


/* Alternate Texture Image Spec. [8.6] */

/* void CopyTexImage2D(enum target, int level, enum internalformat, int x, int y, sizei width, sizei height, int border); */
// internalformat: Texture_Internal_Format

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
// internalformat: Texture_Internal_Format

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

Compressed_Internal_Format :: enum u32 {
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
// internalformat: Compressed_Internal_Format

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
// internalformat: Texture_Internal_Format

/* void CompressedTexSubImage3D(enum target, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, enum format, sizei imageSize, const void *data); */
// target: Tex_Sub_Image_3D_Target
// format: Compressed_Internal_Format

/* void CompressedTexSubImage2D(enum target, int level, int xoffset, int yoffset, sizei width, sizei height, enum format, sizei imageSize, cont void *data); */
// target: Copy_Tex_Image_2D_Target
// format: Compressed_Internal_Format

/* void CompressedTexSubImage1D(enum target, int level, int xoffset, sizei width, enum format, sizei imageSize, const void *data); */
// target: Copy_Tex_Image_1D_Target
// format: Texture_Internal_Format

/* void CompressedTextureSubImage3D(uint texture, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, enum format, sizei imageSize, const void *data); */
// format: Compressed_Internal_Format

/* void CompressedTextureSubImage2D(uint texture, int level, int xoffset, int yoffset, sizei width, sizei height, enum format, sizei imageSize, cont void *data); */
// format: Compressed_Internal_Format

/* void CompressedTextureSubImage1D(uint texture, int level, int xoffset, sizei width, enum format, sizei imageSize, const void *data); */
// format: Texture_Internal_Format


/* Multisample Textures [8.8] */

/* void TexImage3DMultisample(enum target, sizei samples, int internalformat, sizei width, sizei height, sizei depth, boolean fixedsamplelocations); */
Tex_Image_3D_Multisample_Target :: enum u32 {
	TEXTURE_2D_MULTISAMPLE_ARRAY       = TEXTURE_2D_MULTISAMPLE_ARRAY,
	PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY,
}

Color_Depth_Stencil_Renderable_Format :: enum i32 {
	// NOTE(tarik): Commented out fields might be part of the enum as per my
	//              limited understanding of the Spec (see page 234, 327,
	// ...), however they're not included in the Ref. Card, which this enum
	// is based on.
	// Further, Ref. Card speaks of RGBA32, which doesn't exist. Thus, I
	// assume RGBA32I was meant and leave it it.
	
	// Color-Renderable
	RED                = RED,
	RG                 = RG,
	RGB                = RGB,
	RGBA               = RGBA,
	// R8                 = R8,
	// R8_SNORM           = R8_SNORM,
	// R16                = R16,
	// R16_SNORM          = R16_SNORM,
	// RG8                = RG8,
	// RG8_SNORM          = RG8_SNORM,
	// RG16               = RG16,
	// RG16_SNORM         = RG16_SNORM,
	// R3_G3_B2           = R3_G3_B2,
	// RGB4               = RGB4,
	// RGB5               = RGB5,
	// RGB565             = RGB5,
	// RGB8               = RGB8,
	// RGB8_SNORM         = RGB8_SNORM,
	// RGB10              = RGB10,
	// RGB12              = RGB12,
	// RGB16              = RGB16_SNORM,
	// RGB16_SNORM        = RGB16_SNORM,
	// RGBA2              = RGBA2,
	// RGBA4              = RGBA4,
	// RGB5_A1            = RGB5_A1,
	// RGBA8              = RGBA8,
	// RGBA8_SNORM        = RGBA8_SNORM,
	// RGB10_A2           = RGB10_A2,
	// RGB10_A2UI         = RGB10_A2UI,
	// RGBA12             = RGBA12,
	// RGBA16             = RGBA16,
	// RGBA16SNORM        = RGBA16,
	// SRGB8              = SRGB8,
	// SRGB8_ALPHA8       = SRGB8_ALPHA8,
	// R16F               = R16F,
	// RG16F              = RG16F,
	// RGB16F             = RGB16F,
	// RGBA16F            = RGBA16F,
	// R32F               = R32F,
	// RG32F              = RG32F,
	// RGB32F             = RGB32F,
	// RGBA32F            = RGBA32F,
	// R11F_G11F_B10F     = R11F_G11F_B10F,
	// R8I                = R8I,
	// R8UI               = R8UI,
	// R16I               = R16I,
	// R16UI              = R16UI,
	// R32I               = R32I,
	// R32UI              = R32UI,
	// RG8I               = RG8I,
	// RG8UI              = RG8UI,
	// RG16I              = RG16I,
	// RG16UI             = RG16UI,
	// RG32I              = RG32I,
	// RG32UI             = RG32UI,
	// RGB8I              = RGB8I,
	// RGB8UI             = RGB8UI,
	// RGB16I             = RGB16I,
	// RGB16UI            = RGB16UI,
	// RGB32I             = RGB32I,
	// RGB32UI            = RGB32UI,
	// RGBA8I             = RGBA8I,
	// RGBA8UI            = RGBA8UI,
	// RGBA16I            = RGBA16I,
	// RGBA16UI           = RGBA16UI,
	RGBA32I            = RGBA32I,
	RGBA32UI           = RGBA32UI,

	// Depth-Renderable
	DEPTH_COMPONENT    = DEPTH_COMPONENT,
	DEPTH_COMPONENT16  = DEPTH_COMPONENT16,
	DEPTH_COMPONENT24  = DEPTH_COMPONENT24,
	DEPTH_COMPONENT32  = DEPTH_COMPONENT32,
	DEPTH_COMPONENT32F = DEPTH_COMPONENT32F,
	// DEPTH_STENCIL      = DEPTH_STENCIL,
	DEPTH24_STENCIL8   = DEPTH24_STENCIL8,
	DEPTH32F_STENCIL8  = DEPTH32F_STENCIL8,

	// Stencil-Renderable
	// STENCIL_INDEX      = STENCIL_INDEX,
	STENCIL_INDEX1     = STENCIL_INDEX1,
	STENCIL_INDEX4     = STENCIL_INDEX4,
	STENCIL_INDEX8     = STENCIL_INDEX8,
	STENCIL_INDEX16    = STENCIL_INDEX16,
}

/* void TexImage2DMultisample(enum target, sizei samples, int internalformat, sizei width, sizei height, boolean fixedsamplelocations); */
// internalformat: Color_Depth_Stencil_Renderable_Format

Tex_Image_2D_Multisample_Target :: enum u32 {
	TEXTURE_2D_MULTISAMPLE       = TEXTURE_2D_MULTISAMPLE,
	PROXY_TEXTURE_2D_MULTISAMPLE = PROXY_TEXTURE_2D_MULTISAMPLE,
}


/* Buffer Textures [8.9] */

/* void TexBufferRange(enum target, enum internalFormat, uint buffer, intptr offset, sizeiptr size); */
Tex_Buffer_Range_Target :: enum u32 {
	TEXTURE_BUFFER = TEXTURE_BUFFER,
}

Tex_Buffer_Range_Internal_Format :: enum u32 {
// TODO(tarik): Better name? Maybe Buffer_Internal_Format :: enum u32 {
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

/* void TexBuffer(enum target, enum internalformat, uint buffer); */

/* void TextureBuffer(uint texture, enum internalformat, uint buffer); */


/* Texture Parameters [8.10] */

/* void TexParameter{i f}(enum target, enum pname, T param); */

/* void TexParameter{i f}v(enum target, enum pname, const T *params); */

/* void TexParameterI{i ui}v(enum target, enum pname, const T *params); */

/* void TextureParameter{i f}(uint texture, enum pname, T param); */

/* void TextureParameter{i f}v(uint texture, enum pname, const T *params); */

/* void TextureParameterI{i ui}v(uint texture, enum pname, const T *params); */


/* Texture Queries [8.11] */

/* void GetTexParameter{if}v(enum target, enum pname, T * params); */

/* void GetTexParameterI{i ui}v(enum target, enum pname, T * params); */

/* void GetTextureParameter{if}v(uint texture, enum pname, T *data); */

/* void GetTextureParameterI{i ui}v(uint texture, enum pname, T *data); */

/* void GetTexLevelParameter{i f}v(enum target, int level, enum pname, T *params); */

/* void GetTextureLevelParameter{i f}v(uint texture, int level, enum pname, T *params); */

/* void GetTexImage(enum target, int level, enum format, enum type, void *pixels); */

/* void GetTexImage(enum target, int level, enum format, enum type, void *pixels); */

/* void GetTextureImage(uint texture, int level, enum format, enum type, sizei bufSize, void *pixels); */

/* void GetnTexImage(enum tex, int level, enum format, enum type, sizei bufSize, void *pixels); */

/* void GetTextureSubImage(uint texture, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, enum format, enum type, sizei bufSize, void *pixels); */

/* void GetCompressedTexImage(enum target, int level, void *pixels); */

/* void GetCompressedTextureImage(uint texture, int level, sizei bufSize, void *pixels); */

/* void GetnCompressedTexImage(enum target, int level, sizei bufsize, void *pixels); */

/* void GetCompressedTextureSubImage(uint texture, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, sizei bufSize, void *pixels); */


/* Cube Map Texture Select [8.13.1] */

/* Enable/Disable/IsEnabled(TEXTURE_CUBE_MAP_SEAMLESS); */


/* Manual Mipmap Generation [8.14.4] */

/* void GenerateMipmap(enum target); */


/* Texture Views [8.18] */

/* void TextureView(uint texture, enum target, uint origtexture, enum internalformat, uint minlevel, uint numlevels, uint minlayer, uint numlayers); */


/* Immutable-Format Tex. Images [8.19] */

/* void TexStorage1D(enum target, sizei levels, enum internalformat, sizei width); */

/* void TexStorage2D(enum target, sizei levels, enum internalformat, sizei width, sizei height); */

/* void TexStorage3D(enum target, sizei levels, enum internalformat, sizei width, sizei height, sizei depth); */

/* void TextureStorage1D(uint texture, sizei levels, enum internalformat, sizei width); */

/* void TextureStorage2D(uint texture, sizei levels, enum internalformat, sizei width, sizei height); */

/* void TextureStorage3D(uint texture, sizei levels, enum internalformat, sizei width, sizei height, sizei depth); */

/* void TexStorage2DMultisample(enum target, sizei samples, enum internalformat, sizei width, sizei height, boolean fixedsamplelocations); */

/* void TexStorage3DMultisample(enum target, sizei samples, enum internalformat, sizei width, sizei height, sizei depth, boolean fixedsamplelocations); */

/* void TextureStorage2DMultisample(uint texture, sizei samples, enum internalformat, sizei width, sizei height, boolean fixedsamplelocations); */

/* void TextureStorage3DMultisample(uint texture, sizei samples, enum internalformat, sizei width, sizei height, sizei depth, boolean fixedsamplelocations); */


/* Invalidate Texture Image Data [8.20] */
/**/


/* Clear Texture Image Data [8.21] */

/* void ClearTexSubImage(uint texture, int level, int xoffset, int yoffset, int zoffset, sizei width, sizei height, sizei depth, enum format, enum type, const void *data); */

/* void ClearTexImage(uint texture, int level, enum format, enum type, const void *data); */


/* Texture Image Loads/Stores [8.26] */

/* void BindImageTexture(uint index, uint texture, int level, boolean layered, int layer, enum access, enum format); */
