package vendor_gl

/* Create and Bind Buffer Objects [6.1] */
/* void BindBuffer(enum target, uint buffer); */
Buffer_Binding_Target :: enum u32 {
	ARRAY_BUFFER              = ARRAY_BUFFER,
	UNIFORM_BUFFER            = UNIFORM_BUFFER,
	ATOMIC_COUNTER_BUFFER     = ATOMIC_COUNTER_BUFFER,
	QUERY_BUFFER              = QUERY_BUFFER,
	COPY_READ_BUFFER          = COPY_READ_BUFFER,
	COPY_WRITE_BUFFER         = COPY_WRITE_BUFFER,
	DISPATCH_INDIRECT_BUFFER  = DISPATCH_INDIRECT_BUFFER,
	DRAW_INDIRECT_BUFFER      = DRAW_INDIRECT_BUFFER,
	ELEMENT_ARRAY_BUFFER      = ELEMENT_ARRAY_BUFFER,
	TEXTURE_BUFFER            = TEXTURE_BUFFER,
	PIXEL_PACK_BUFFER         = PIXEL_PACK_BUFFER,
	PIXEL_UNPACK_BUFFER       = PIXEL_UNPACK_BUFFER,
	PARAMETER_BUFFER          = PARAMETER_BUFFER,
	SHADER_STORAGE_BUFFER     = SHADER_STORAGE_BUFFER,
	TRANSFORM_FEEDBACK_BUFFER = TRANSFORM_FEEDBACK_BUFFER,
}

/* void BindBufferRange(enum target, uint index, uint buffer, intptr offset, sizeiptr size); */
Buffer_Binding_Indexed_Target :: enum u32 {
	ATOMIC_COUNTER_BUFFER     = ATOMIC_COUNTER_BUFFER,
	SHADER_STORAGE_BUFFER     = SHADER_STORAGE_BUFFER,
	UNIFORM_BUFFER            = UNIFORM_BUFFER,
	TRANSFORM_FEEDBACK_BUFFER = TRANSFORM_FEEDBACK_BUFFER,
}

/* void BindBufferBase(enum target, uint index, uint buffer); */
// target: Buffer_Binding_Indexed_Target

/* void BindBuffersRange(enum target, uint first, sizei count, const uint *buffers, const intptr *offsets, const sizeiptr *size); */
// target: Buffer_Binding_Indexed_Target

/* void BindBuffersBase(enum target, uint first, sizei count, const uint *buffers); */
// target: Buffer_Binding_Indexed_Target


/* Create/Modify Buffer Object Data [6.2] */

/* void BufferStorage(enum target, sizeiptr size, const void *data, bitfield flags); */
// target: Buffer_Binding_Target

Buffer_Storage_Bits :: enum u32 {
	MAP_READ_BIT        = MAP_READ_BIT,
	MAP_WRITE_BIT       = MAP_WRITE_BIT,
	DYNAMIC_STORAGE_BIT = DYNAMIC_STORAGE_BIT,
	CLIENT_STORAGE_BIT  = CLIENT_STORAGE_BIT,
	MAP_COHERENT_BIT    = MAP_COHERENT_BIT,
	MAP_PERSISTENT_BIT  = MAP_PERSISTENT_BIT,
}

/* void NamedBufferStorage(uint buffer, sizeiptr size, const void *data, bitfield flags); */
// flags: Buffer_Storage_Bits

/* void BufferData(enum target, sizeiptr size, const void *data, enum usage); */
// target: Buffer_Binding_Target

Buffer_Data_Usage :: enum u32 {
	DYNAMIC_DRAW = DYNAMIC_DRAW,
	DYNAMIC_READ = DYNAMIC_READ,
	DYNAMIC_COPY = DYNAMIC_COPY,
	STATIC_DRAW  = STATIC_DRAW,
	STATIC_READ  = STATIC_READ,
	STATIC_COPY  = STATIC_COPY,
	STREAM_DRAW  = STREAM_DRAW,
	STREAM_READ  = STREAM_READ,
	STREAM_COPY  = STREAM_COPY,
}

/* void NamedBufferData(uint buffer, sizeiptr size, const void *data, enum usage); */
// usage: Buffer_Data_Usage

/* void BufferSubData(enum target, intptr offset, sizeiptr size, const void *data); */
// target: Buffer_Binding_Target

/* void ClearBufferSubData(enum target, enum internalFormat, intptr offset, sizeiptr size, enum format, enum type, const void *data); */
// target: Buffer_Binding_Target

Buffer_Internalformat :: enum u32 {
	R8       = R8,
	R8I      = R8I,
	R8UI     = R8UI,
	R16      = R16,
	R16F     = R16F,
	R16I     = R16I,
	R16UI    = R16UI,
	R32F     = R32F,
	R32I     = R32I,
	R32UI    = R32UI,
	RG8      = RG8,
	RG8I     = RG8I,
	RG8UI    = RG8UI,
	RG16     = RG16,
	RG16F    = RG16F,
	RG16I    = RG16I,
	RG16UI   = RG16UI,
	RG32F    = RG32F,
	RG32I    = RG32I,
	RG32UI   = RG32UI,
	RGB32F   = RGB32F,
	RGB32I   = RGB32I,
	RGB32UI  = RGB32UI,
	RGBA8    = RGBA8,
	RGBA8I   = RGBA8I,
	RGBA8UI  = RGBA8UI,
	RGBA16   = RGBA16,
	RGBA16F  = RGBA16F,
	RGBA16I  = RGBA16I,
	RGBA16UI = RGBA16UI,
	RGBA32F  = RGBA32F,
	RGBA32I  = RGBA32I,
	RGBA32UI = RGBA32UI,
}

Buffer_Format :: enum u32 {
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
	STENCIL_INDEX   = STENCIL_INDEX,
	DEPTH_COMPONENT = DEPTH_COMPONENT,
	DEPTH_STENCIL   = DEPTH_STENCIL,
}

//TODO(tarik): Duplicate of Pixel_Data_Type (other file)
Buffer_Type :: enum u32 {
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

/* void ClearNamedBufferSubData(uint buffer, enum internalformat, intptr offset, sizeiptr size, enum format, enum type, const void *data); */
// internalformat: Buffer_Internalformat
// format:         Buffer_Format
// type:           Buffer_Type

/* void ClearBufferData(enum target, enum internalformat, enum format, enum type, const void *data); */
// target:         Buffer_Binding_Target
// internalformat: Buffer_Internalformat
// format:         Buffer_Format
// type:           Buffer_Type

/* void ClearNamedBufferData(uint buffer, enum internalformat, enum format, enum type, const void *data); */
// target:         Buffer_Binding_Target
// internalformat: Buffer_Internalformat
// format:         Buffer_Format
// type:           Buffer_Type


/* Map/Unmap Buffer Data [6.3] */

/* void *MapBufferRange(enum target, intptr offset, sizeiptr length, bitfield access); */
// target: Buffer_Binding_Target

Access_Bits :: enum u32 {
	MAP_READ_BIT              = MAP_READ_BIT,
	MAP_WRITE_BIT             = MAP_WRITE_BIT,
	MAP_PERSISTENT_BIT        = MAP_PERSISTENT_BIT,
	MAP_COHERENT_BIT          = MAP_COHERENT_BIT,
	MAP_INVALIDATE_BUFFER_BIT = MAP_INVALIDATE_BUFFER_BIT,
	MAP_INVALIDATE_RANGE_BIT  = MAP_INVALIDATE_RANGE_BIT,
	MAP_FLUSH_EXPLICIT_BIT    = MAP_FLUSH_EXPLICIT_BIT,
	MAP_UNSYNCHRONIZED_BIT    = MAP_UNSYNCHRONIZED_BIT,
}

/* void *MapNamedBufferRange(uint buffer, intptr offset, sizeiptr length, bitfield access); */
// access: Access_Bits

/* void *MapBuffer(enum target, enum access); */
// target: Buffer_Binding_Target

Access :: enum u32 {
	READ_ONLY  = READ_ONLY,
	WRITE_ONLY = WRITE_ONLY,
	READ_WRITE = READ_WRITE,
}

/* void *MapNamedBuffer(uint buffer, enum access); */
// access: Access

/* boolean UnmapBuffer(enum target); */
// target: Buffer_Binding_Target

/* Invalidate Buffer Data [6.5] */


/* Buffer Object Queries [6, 6.7] */

/* void GetBufferSubData(enum target, intptr offset, sizeiptr size, void *data); */
// target: Buffer_Binding_Target

/* void GetBufferParameteriv(enum target, enum pname, int*data); */
// target: Buffer_Binding_Target

Buffer_Parameter :: enum u32 {
	BUFFER_SIZE              = BUFFER_SIZE,
	BUFFER_USAGE             = BUFFER_USAGE,
	BUFFER_ACCESS            = BUFFER_ACCESS,
	BUFFER_ACCESS_FLAGS      = BUFFER_ACCESS_FLAGS,
	BUFFER_MAPPED            = BUFFER_MAPPED,
	BUFFER_MAP_OFFSET        = BUFFER_MAP_OFFSET,
	BUFFER_MAP_LENGTH        = BUFFER_MAP_LENGTH,
	BUFFER_IMMUTABLE_STORAGE = BUFFER_IMMUTABLE_STORAGE,
}

/* void GetBufferParameteri64v(enum target, enum pname, int64*data); */
// target: Buffer_Binding_Target
// pname: Buffer_Parameter

/* void GetNamedBufferParameteriv(uint buffer, enum pname, int*data); */
// pname: Buffer_Parameter

/* void GetNamedBufferParameteri[64]v(uint buffer, enum pname, int[64]*data); */
// pname: Buffer_Parameter

/* void GetBufferPointerv(enum target, enum pname, const void **params); */
// target: Buffer_Binding_Target

Buffer_Pointer_Parameter :: enum u32 {
	BUFFER_MAP_POINTER = BUFFER_MAP_POINTER,
}

/* void GetNamedBufferPointerv(uint buffer, enum pname, const void **params); */
// pname: Buffer_Pointer_Parameter


/* Copy Between Buffers [6.6] */

/* void CopyBufferSubData(enum readTarget, enum writeTarget, intptr readOffset, intptr writeOffset, sizeiptr size); */
// readTarget:  Buffer_Binding_Target
// writeTarget: Buffer_Binding_Target
