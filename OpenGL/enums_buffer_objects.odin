package vendor_gl

/* Create and Bind Buffer Objects [6.1] */

/* void BindBuffer(enum target, uint buffer); */
Buffer_Binding_Target :: enum u32 {
	Array_Buffer              = ARRAY_BUFFER,
	Uniform_Buffer            = UNIFORM_BUFFER,
	Atomic_Counter_Buffer     = ATOMIC_COUNTER_BUFFER,
	Query_Buffer              = QUERY_BUFFER,
	Copy_Read_Buffer          = COPY_READ_BUFFER,
	Copy_Write_Buffer         = COPY_WRITE_BUFFER,
	Dispatch_Indirect_Buffer  = DISPATCH_INDIRECT_BUFFER,
	Draw_Indirect_Buffer      = DRAW_INDIRECT_BUFFER,
	Element_Array_Buffer      = ELEMENT_ARRAY_BUFFER,
	Texture_Buffer            = TEXTURE_BUFFER,
	Pixel_Pack_Buffer         = PIXEL_PACK_BUFFER,
	Pixel_Unpack_Buffer       = PIXEL_UNPACK_BUFFER,
	Parameter_Buffer          = PARAMETER_BUFFER,
	Shader_Storage_Buffer     = SHADER_STORAGE_BUFFER,
	Transform_Feedback_Buffer = TRANSFORM_FEEDBACK_BUFFER,
}

/* void BindBufferRange(enum target, uint index, uint buffer, intptr offset, sizeiptr size); */
Buffer_Binding_Indexed_Target :: enum u32 {
	Atomic_Counter_Buffer     = ATOMIC_COUNTER_BUFFER,
	Shader_Storage_Buffer     = SHADER_STORAGE_BUFFER,
	Uniform_Buffer            = UNIFORM_BUFFER,
	Transform_Feedback_Buffer = TRANSFORM_FEEDBACK_BUFFER,
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
	Map_Read_Bit        = MAP_READ_BIT,
	Map_Write_Bit       = MAP_WRITE_BIT,
	Dynamic_Storage_Bit = DYNAMIC_STORAGE_BIT,
	Client_Storage_Bit  = CLIENT_STORAGE_BIT,
	Map_Coherent_Bit    = MAP_COHERENT_BIT,
	Map_Persistent_Bit  = MAP_PERSISTENT_BIT,
}

/* void NamedBufferStorage(uint buffer, sizeiptr size, const void *data, bitfield flags); */
// flags: Buffer_Storage_Bits

/* void BufferData(enum target, sizeiptr size, const void *data, enum usage); */
// target: Buffer_Binding_Target

Buffer_Data_Usage :: enum u32 {
	Dynamic_Draw = DYNAMIC_DRAW,
	Dynamic_Read = DYNAMIC_READ,
	Dynamic_Copy = DYNAMIC_COPY,
	Static_Draw  = STATIC_DRAW,
	Static_Read  = STATIC_READ,
	Static_Copy  = STATIC_COPY,
	Stream_Draw  = STREAM_DRAW,
	Stream_Read  = STREAM_READ,
	Stream_Copy  = STREAM_COPY,
}

/* void NamedBufferData(uint buffer, sizeiptr size, const void *data, enum usage); */
// usage: Buffer_Data_Usage

/* void BufferSubData(enum target, intptr offset, sizeiptr size, const void *data); */
// target: Buffer_Binding_Target

/* void ClearBufferSubData(enum target, enum internalFormat, intptr offset, sizeiptr size, enum format, enum type, const void *data); */
// target: Buffer_Binding_Target

Buffer_Internalformat :: enum u32 {
	R8       = R8,
	R8i      = R8I,
	R8ui     = R8UI,
	R16      = R16,
	R16F     = R16F,
	R16i     = R16I,
	R16ui    = R16UI,
	R32F     = R32F,
	R32i     = R32I,
	R32ui    = R32UI,
	RG8      = RG8,
	RG8i     = RG8I,
	RG8ui    = RG8UI,
	RG16     = RG16,
	RG16F    = RG16F,
	RG16i    = RG16I,
	RG16ui   = RG16UI,
	RG32F    = RG32F,
	RG32i    = RG32I,
	RG32ui   = RG32UI,
	RGB32F   = RGB32F,
	RGB32i   = RGB32I,
	RGB32ui  = RGB32UI,
	RGBA8    = RGBA8,
	RGBA8i   = RGBA8I,
	RGBA8ui  = RGBA8UI,
	RGBA16   = RGBA16,
	RGBA16F  = RGBA16F,
	RGBA16i  = RGBA16I,
	RGBA16ui = RGBA16UI,
	RGBA32F  = RGBA32F,
	RGBA32i  = RGBA32I,
	RGBA32ui = RGBA32UI,
}

Buffer_Format :: enum u32 {
	Red             = RED,
	Green           = GREEN,
	Blue            = BLUE,
	RG              = RG,
	RGB             = RGB,
	RGBA            = RGBA,
	BGR             = BGR,
	BGRA            = BGRA,
	Red_Integer     = RED_INTEGER,
	Green_Integer   = GREEN_INTEGER,
	Blue_Integer    = BLUE_INTEGER,
	RG_Integer      = RG_INTEGER,
	RGB_Integer     = RGB_INTEGER,
	RGBA_Integer    = RGBA_INTEGER,
	BGR_Integer     = BGR_INTEGER,
	BGRA_Integer    = BGRA_INTEGER,
	Stencil_Index   = STENCIL_INDEX,
	Depth_Component = DEPTH_COMPONENT,
	Depth_Stencil   = DEPTH_STENCIL,
}

//TODO(tarik): Duplicate of Pixel_Data_Type (other file)
Buffer_Type :: enum u32 {
	Unsigned_Byte                  = UNSIGNED_BYTE,
	Byte                           = BYTE,
	Unsigned_Short                 = UNSIGNED_SHORT,
	Short                          = SHORT,
	Unsigned_Int                   = UNSIGNED_INT,
	Int                            = INT,
	Half_Float                     = HALF_FLOAT,
	Float                          = FLOAT,
	Unsigned_Byte_3_3_2            = UNSIGNED_BYTE_3_3_2,
	Unsigned_Byte_2_3_3_Rev        = UNSIGNED_BYTE_2_3_3_REV,
	Unsigned_Short_5_6_5           = UNSIGNED_SHORT_5_6_5,
	Unsigned_Short_5_6_5_Rev       = UNSIGNED_SHORT_5_6_5_REV,
	Unsigned_Short_4_4_4_4         = UNSIGNED_SHORT_4_4_4_4,
	Unsigned_Short_4_4_4_4_Rev     = UNSIGNED_SHORT_4_4_4_4_REV,
	Unsigned_Short_5_5_5_1         = UNSIGNED_SHORT_5_5_5_1,
	Unsigned_Short_1_5_5_5_Rev     = UNSIGNED_SHORT_1_5_5_5_REV,
	Unsigned_Int_8_8_8_8           = UNSIGNED_INT_8_8_8_8,
	Unsigned_Int_8_8_8_8_Rev       = UNSIGNED_INT_8_8_8_8_REV,
	Unsigned_Int_10_10_10_2        = UNSIGNED_INT_10_10_10_2,
	Unsigned_Int_2_10_10_10_Rev    = UNSIGNED_INT_2_10_10_10_REV,
	Unsigned_Int_24_8              = UNSIGNED_INT_24_8,
	Unsigned_Int_10f_11f_11f_Rev   = UNSIGNED_INT_10F_11F_11F_REV,
	Unsigned_Int_5_9_9_9_Rev       = UNSIGNED_INT_5_9_9_9_REV,
	Float_32_Unsigned_Int_24_8_Rev = FLOAT_32_UNSIGNED_INT_24_8_REV,
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
// internalformat: Buffer_Internalformat
// format:         Buffer_Format
// type:           Buffer_Type


/* Map/Unmap Buffer Data [6.3] */

/* void *MapBufferRange(enum target, intptr offset, sizeiptr length, bitfield access); */
// target: Buffer_Binding_Target

Access_Bits :: enum u32 {
	Map_Read_Bit              = MAP_READ_BIT,
	Map_Write_Bit             = MAP_WRITE_BIT,
	Map_Persistent_Bit        = MAP_PERSISTENT_BIT,
	Map_Coherent_Bit          = MAP_COHERENT_BIT,
	Map_Invalidate_Buffer_Bit = MAP_INVALIDATE_BUFFER_BIT,
	Map_Invalidate_Range_Bit  = MAP_INVALIDATE_RANGE_BIT,
	Map_Flush_Explicit_Bit    = MAP_FLUSH_EXPLICIT_BIT,
	Map_Unsynchronized_Bit    = MAP_UNSYNCHRONIZED_BIT,
}

/* void *MapNamedBufferRange(uint buffer, intptr offset, sizeiptr length, bitfield access); */
// access: Access_Bits

/* void *MapBuffer(enum target, enum access); */
// target: Buffer_Binding_Target

Access :: enum u32 {
	Read_Only  = READ_ONLY,
	Write_Only = WRITE_ONLY,
	Read_Write = READ_WRITE,
}

/* void *MapNamedBuffer(uint buffer, enum access); */
// access: Access

/* boolean UnmapBuffer(enum target); */
// target: Buffer_Binding_Target


/* Buffer Object Queries [6, 6.7] */

/* void GetBufferSubData(enum target, intptr offset, sizeiptr size, void *data); */
// target: Buffer_Binding_Target

/* void GetBufferParameteriv(enum target, enum pname, int*data); */
// target: Buffer_Binding_Target

Buffer_Parameter :: enum u32 {
	Buffer_Size              = BUFFER_SIZE,
	Buffer_Usage             = BUFFER_USAGE,
	Buffer_Access            = BUFFER_ACCESS,
	Buffer_Access_Flags      = BUFFER_ACCESS_FLAGS,
	Buffer_Mapped            = BUFFER_MAPPED,
	Buffer_Map_Offset        = BUFFER_MAP_OFFSET,
	Buffer_Map_Length        = BUFFER_MAP_LENGTH,
	Buffer_Immutable_Storage = BUFFER_IMMUTABLE_STORAGE,
}

/* void GetBufferParameteri64v(enum target, enum pname, int64*data); */
// target: Buffer_Binding_Target
// pname: Buffer_Parameter

/* void GetNamedBufferParameteriv(uint buffer, enum pname, int*data); */
// pname: Buffer_Parameter

/* void GetNamedBufferParameteri64v(uint buffer, enum pname, int64*data); */
// pname: Buffer_Parameter

/* void GetBufferPointerv(enum target, enum pname, const void **params); */
// target: Buffer_Binding_Target

Buffer_Pointer_Parameter :: enum u32 {
	Buffer_Map_Pointer = BUFFER_MAP_POINTER,
}

/* void GetNamedBufferPointerv(uint buffer, enum pname, const void **params); */
// pname: Buffer_Pointer_Parameter


/* Copy Between Buffers [6.6] */

/* void CopyBufferSubData(enum readTarget, enum writeTarget, intptr readOffset, intptr writeOffset, sizeiptr size); */
// readTarget:  Buffer_Binding_Target
// writeTarget: Buffer_Binding_Target
