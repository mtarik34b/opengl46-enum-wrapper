package vendor_gl

/*
	Command Execution [2.3]
*/

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
Get_Graphics_Reset_Status :: enum u32 {
	NO_ERROR               = NO_ERROR,
	GUILTY_CONTEXT_RESET   = GUILTY_CONTEXT_RESET,
	INNOCENT_CONTEXT_RESET = INNOCENT_CONTEXT_RESET,
	UNKNOWN_CONTEXT_RESET  = UNKNOWN_CONTEXT_RESET,
}


/*
	Timer Queries [4.3]
*/

Query_Counter_Target :: enum u32 {
	TIMESTAMP = TIMESTAMP,
}


/*
	Synchronization
*/

/* Sync Objects and Fences [4.1] */

Fence_Sync_Condition :: enum u32 {
	SYNC_GPU_COMMANDS_COMPLETE = SYNC_GPU_COMMANDS_COMPLETE,
}

Fence_Sync_Bits :: enum u32 {
	ZERO = ZERO,
}


/* Waiting for Sync Objects [4.1.1] */

/* enum ClientWaitSync(sync sync, bitfield flags, uint64 timeout_ns); */
Client_Wait_Sync_Bits :: enum u32 {
	ZERO = ZERO,
	SYNC_FLUSH_COMMANDS_BIT = SYNC_FLUSH_COMMANDS_BIT,
}

/* void WaitSync(sync sync, bitfield flags, uint64 timeout); */
Wait_Sync_Bits :: enum u32 {
	ZERO = ZERO,
}

Wait_Sync_Timeout :: enum u64 {
	TIMEOUT_IGNORED = TIMEOUT_IGNORED,
}


/* Sync Object Queries [4.1.3] */

/* void GetSynciv(sync sync, enum pname, sizei bufSize, sizei *length, int *values); */
Get_Synciv_Parameter :: enum u32 {
	OBJECT_TYPE    = OBJECT_TYPE,
	SYNC_STATUS    = SYNC_STATUS,
	SYNC_CONDITION = SYNC_CONDITION,
	SYNC_FLAGS     = SYNC_FLAGS,
}


/*
	Asynchronous Queries [4.2, 4.2.1]
*/

/* void CreateQueries(enum target, sizei n, uint *ids); */
Query_And_Timestamp_Target :: enum u32 {
	ANY_SAMPLES_PASSED                    = ANY_SAMPLES_PASSED,
	ANY_SAMPLES_PASSED_CONSERVATIVE       = ANY_SAMPLES_PASSED_CONSERVATIVE,
	PRIMITIVES_GENERATED                  = PRIMITIVES_GENERATED,
	SAMPLES_PASSED                        = SAMPLES_PASSED,
	TIME_ELAPSED                          = TIME_ELAPSED,
	PRIMITIVES_SUBMITTED                  = PRIMITIVES_SUBMITTED,
	VERTICES_SUBMITTED                    = VERTICES_SUBMITTED,
	TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN,
	TRANSFORM_FEEDBACK_OVERFLOW           = TRANSFORM_FEEDBACK_OVERFLOW,
	TRANSFORM_FEEDBACK_STREAM_OVERFLOW    = TRANSFORM_FEEDBACK_STREAM_OVERFLOW,
	COMPUTE_SHADER_INVOCATIONS            = COMPUTE_SHADER_INVOCATIONS,
	VERTEX_SHADER_INVOCATIONS             = VERTEX_SHADER_INVOCATIONS,
	FRAGMENT_SHADER_INVOCATIONS           = FRAGMENT_SHADER_INVOCATIONS,
	GEOMETRY_SHADER_INVOCATIONS           = GEOMETRY_SHADER_INVOCATIONS,
	TESS_EVALUATION_SHADER_INVOCATIONS    = TESS_EVALUATION_SHADER_INVOCATIONS,
	TESS_CONTROL_SHADER_PATCHES           = TESS_CONTROL_SHADER_PATCHES,
	GEOMETRY_SHADER_PRIMITIVES_EMITTED    = GEOMETRY_SHADER_PRIMITIVES_EMITTED,
	CLIPPING_INPUT_PRIMITIVES             = CLIPPING_INPUT_PRIMITIVES,
	CLIPPING_OUTPUT_PRIMITIVES            = CLIPPING_OUTPUT_PRIMITIVES,
	TIMESTAMP                             = TIMESTAMP,
}

/* void BeginQuery(enum target, uint id); */
Query_Target :: enum u32 {
	ANY_SAMPLES_PASSED                    = ANY_SAMPLES_PASSED,
	ANY_SAMPLES_PASSED_CONSERVATIVE       = ANY_SAMPLES_PASSED_CONSERVATIVE,
	PRIMITIVES_GENERATED                  = PRIMITIVES_GENERATED,
	SAMPLES_PASSED                        = SAMPLES_PASSED,
	TIME_ELAPSED                          = TIME_ELAPSED,
	PRIMITIVES_SUBMITTED                  = PRIMITIVES_SUBMITTED,
	VERTICES_SUBMITTED                    = VERTICES_SUBMITTED,
	TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN,
	TRANSFORM_FEEDBACK_OVERFLOW           = TRANSFORM_FEEDBACK_OVERFLOW,
	TRANSFORM_FEEDBACK_STREAM_OVERFLOW    = TRANSFORM_FEEDBACK_STREAM_OVERFLOW,
	COMPUTE_SHADER_INVOCATIONS            = COMPUTE_SHADER_INVOCATIONS,
	VERTEX_SHADER_INVOCATIONS             = VERTEX_SHADER_INVOCATIONS,
	FRAGMENT_SHADER_INVOCATIONS           = FRAGMENT_SHADER_INVOCATIONS,
	GEOMETRY_SHADER_INVOCATIONS           = GEOMETRY_SHADER_INVOCATIONS,
	TESS_EVALUATION_SHADER_INVOCATIONS    = TESS_EVALUATION_SHADER_INVOCATIONS,
	TESS_CONTROL_SHADER_PATCHES           = TESS_CONTROL_SHADER_PATCHES,
	GEOMETRY_SHADER_PRIMITIVES_EMITTED    = GEOMETRY_SHADER_PRIMITIVES_EMITTED,
	CLIPPING_INPUT_PRIMITIVES             = CLIPPING_INPUT_PRIMITIVES,
	CLIPPING_OUTPUT_PRIMITIVES            = CLIPPING_OUTPUT_PRIMITIVES,
}

/* void BeginQueryIndexed(enum target, uint index, uint id); */
// target: Query_Target

/* void EndQuery(enum target); */
// target: Query_Target

/* void EndQueryIndexed(enum target, uint index); */
// target: Query_Target

/* void GetQueryiv(enum target, enum pname, int *params); */
// target: Query_And_Timestamp_Target

Query_Parameter :: enum u32 {
	CURRENT_QUERY      = CURRENT_QUERY,
	QUERY_COUNTER_BITS = QUERY_COUNTER_BITS,
}

/* void GetQueryIndexediv(enum target, uint index, enum pname, int *params); */
// target: Query_And_Timestamp_Target
// pname: Query_Parameter

/* void GetQueryObjectiv(uint id, enum pname, int *params); */
Query_Object_Parameter :: enum u32 {
	QUERY_TARGET           = QUERY_TARGET,
	QUERY_RESULT           = QUERY_RESULT,
	QUERY_RESULT_NO_WAIT   = QUERY_RESULT_NO_WAIT,
	QUERY_RESULT_AVAILABLE = QUERY_RESULT_AVAILABLE,
}

/* void GetQueryObjectuiv(uint id, enum pname, uint *params); */
// pname: Query_Object_Parameter

/* void GetQueryObjecti64v(uint id, enum pname, int64 *params); */
// pname: Query_Object_Parameter

/* void GetQueryObjectui64v(uint id, enum pname, uint64 *params); */
// pname: Query_Object_Parameter

/* void GetQueryBufferObjectiv( uint id, uint buffer, enum pname, intptr offset ); */
// pname: Query_Object_Parameter

/* void GetQueryBufferObjectuiv( uint id, uint buffer, enum pname, intptr offset ); */
// pname: Query_Object_Parameter

/* void GetQueryBufferObjecti64v( uint id, uint buffer, enum pname, intptr offset ); */
// pname: Query_Object_Parameter

/* void GetQueryBufferObjectui64v( uint id, uint buffer, enum pname, intptr offset ); */
// pname: Query_Object_Parameter


/*
	Buffer Objects [6]
*/


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

//TODO(tarik): Better name could be Pixel_Data_Type
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

Map_Buffer_Access_Bits :: enum u32 {
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
// access: Map_Buffer_Access_Bits

/* void *MapBuffer(enum target, enum access); */
// target: Buffer_Binding_Target

Map_Buffer_Access :: enum u32 {
	READ_ONLY  = READ_ONLY,
	WRITE_ONLY = WRITE_ONLY,
	READ_WRITE = READ_WRITE,
}

/* void *MapNamedBuffer(uint buffer, enum access); */
// access: Map_Buffer_Access

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


/*
	State and State Requests
*/


/* Simple Queries [22.1] */

/* void GetBooleanv(enum pname, boolean *data); */
Get_Boolean_V_Parameter :: enum u32 {
	SAMPLE_COVERAGE_INVERT    = SAMPLE_COVERAGE_INVERT,
	DEPTH_WRITEMASK           = DEPTH_WRITEMASK,
	UNPACK_SWAP_BYTES         = UNPACK_SWAP_BYTES,
	UNPACK_LSB_FIRST          = UNPACK_LSB_FIRST,
	PACK_SWAP_BYTES           = PACK_SWAP_BYTES,
	PACK_LSB_FIRST            = PACK_LSB_FIRST,
	TRANSFORM_FEEDBACK_PAUSED = TRANSFORM_FEEDBACK_PAUSED,
	TRANSFORM_FEEDBACK_ACTIVE = TRANSFORM_FEEDBACK_ACTIVE,
	SHADER_COMPILER           = SHADER_COMPILER,
	DOUBLEBUFFER              = DOUBLEBUFFER,
	STEREO                    = STEREO,
}

/* void GetIntegerv(enum pname, int *data); */
Get_Integer_V_Parameter :: enum u32 {
	PATCH_VERTICES                                  = PATCH_VERTICES,
	ELEMENT_ARRAY_BUFFER_BINDING                    = ELEMENT_ARRAY_BUFFER_BINDING,
	ARRAY_BUFFER_BINDING                            = ARRAY_BUFFER_BINDING,
	DRAW_INDIRECT_BUFFER_BINDING                    = DRAW_INDIRECT_BUFFER_BINDING,
	VERTEX_ARRAY_BINDING                            = VERTEX_ARRAY_BINDING,
	PARAMETER_BUFFER_BINDING                        = PARAMETER_BUFFER_BINDING,
	PRIMITIVE_RESTART_INDEX                         = PRIMITIVE_RESTART_INDEX,
	CLIP_ORIGIN                                     = CLIP_ORIGIN,
	CLIP_DEPTH_MODE                                 = CLIP_DEPTH_MODE,
	TRANSFORM_FEEDBACK_BINDING                      = TRANSFORM_FEEDBACK_BINDING,
	TRANSFORM_FEEDBACK_BUFFER_BINDING               = TRANSFORM_FEEDBACK_BUFFER_BINDING,
	CLAMP_READ_COLOR                                = CLAMP_READ_COLOR,
	PROVOKING_VERTEX                                = PROVOKING_VERTEX,
	POINT_SPRITE_COORD_ORIGIN                       = POINT_SPRITE_COORD_ORIGIN,
	CULL_FACE_MODE                                  = CULL_FACE_MODE,
	FRONT_FACE                                      = FRONT_FACE,
	POLYGON_MODE                                    = POLYGON_MODE,
	TEXTURE_BINDING_1D                              = TEXTURE_BINDING_1D,
	TEXTURE_BINDING_2D                              = TEXTURE_BINDING_2D,
	TEXTURE_BINDING_3D                              = TEXTURE_BINDING_3D,
	TEXTURE_BINDING_1D_ARRAY                        = TEXTURE_BINDING_1D_ARRAY,
	TEXTURE_BINDING_2D_ARRAY                        = TEXTURE_BINDING_2D_ARRAY,
	TEXTURE_BINDING_CUBE_MAP_ARRAY                  = TEXTURE_BINDING_CUBE_MAP_ARRAY,
	TEXTURE_BINDING_RECTANGLE                       = TEXTURE_BINDING_RECTANGLE,
	TEXTURE_BINDING_BUFFER                          = TEXTURE_BINDING_BUFFER,
	TEXTURE_BINDING_CUBE_MAP                        = TEXTURE_BINDING_CUBE_MAP,
	TEXTURE_BINDING_2D_MULTISAMPLE                  = TEXTURE_BINDING_2D_MULTISAMPLE,
	TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY            = TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY,
	SAMPLER_BINDING                                 = SAMPLER_BINDING,
	ACTIVE_TEXTURE                                  = ACTIVE_TEXTURE,
	STENCIL_FUNC                                    = STENCIL_FUNC,
	STENCIL_VALUE_MASK                              = STENCIL_VALUE_MASK,
	STENCIL_REF                                     = STENCIL_REF,
	STENCIL_FAIL                                    = STENCIL_FAIL,
	STENCIL_PASS_DEPTH_FAIL                         = STENCIL_PASS_DEPTH_FAIL,
	STENCIL_PASS_DEPTH_PASS                         = STENCIL_PASS_DEPTH_PASS,
	DEPTH_FUNC                                      = DEPTH_FUNC,
	LOGIC_OP_MODE                                   = LOGIC_OP_MODE,
	STENCIL_WRITEMASK                               = STENCIL_WRITEMASK,
	STENCIL_BACK_WRITEMASK                          = STENCIL_BACK_WRITEMASK,STENCIL_CLEAR_VALUE,
	DRAW_FRAMEBUFFER_BINDING                        = DRAW_FRAMEBUFFER_BINDING,
	READ_FRAMEBUFFER_BINDING                        = READ_FRAMEBUFFER_BINDING,
	DRAW_BUFFER0                                    = DRAW_BUFFER0,
	DRAW_BUFFER1                                    = DRAW_BUFFER1,
	DRAW_BUFFER2                                    = DRAW_BUFFER2,
	DRAW_BUFFER3                                    = DRAW_BUFFER3,
	DRAW_BUFFER4                                    = DRAW_BUFFER4,
	DRAW_BUFFER5                                    = DRAW_BUFFER5,
	DRAW_BUFFER6                                    = DRAW_BUFFER6,
	DRAW_BUFFER7                                    = DRAW_BUFFER7,
	DRAW_BUFFER8                                    = DRAW_BUFFER8,
	DRAW_BUFFER9                                    = DRAW_BUFFER9,
	DRAW_BUFFER10                                   = DRAW_BUFFER10,
	DRAW_BUFFER11                                   = DRAW_BUFFER11,
	DRAW_BUFFER12                                   = DRAW_BUFFER12,
	DRAW_BUFFER13                                   = DRAW_BUFFER13,
	DRAW_BUFFER14                                   = DRAW_BUFFER14,
	DRAW_BUFFER15                                   = DRAW_BUFFER15,
	READ_BUFFER                                     = READ_BUFFER,
	RENDERBUFFER_BINDING                            = RENDERBUFFER_BINDING,
	UNPACK_IMAGE_HEIGHT                             = UNPACK_IMAGE_HEIGHT,
	UNPACK_SKIP_IMAGES                              = UNPACK_SKIP_IMAGES,
	UNPACK_ROW_LENGTH                               = UNPACK_ROW_LENGTH,
	UNPACK_SKIP_ROWS                                = UNPACK_SKIP_ROWS,
	UNPACK_SKIP_PIXELS                              = UNPACK_SKIP_PIXELS,
	UNPACK_ALIGNMENT                                = UNPACK_ALIGNMENT,
	UNPACK_COMPRESSED_BLOCK_WIDTH                   = UNPACK_COMPRESSED_BLOCK_WIDTH,
	UNPACK_COMPRESSED_BLOCK_HEIGHT                  = UNPACK_COMPRESSED_BLOCK_HEIGHT,
	UNPACK_COMPRESSED_BLOCK_DEPTH                   = UNPACK_COMPRESSED_BLOCK_DEPTH,
	UNPACK_COMPRESSED_BLOCK_SIZE                    = UNPACK_COMPRESSED_BLOCK_SIZE,
	PIXEL_UNPACK_BUFFER_BINDING                     = PIXEL_UNPACK_BUFFER_BINDING,
	PACK_IMAGE_HEIGHT                               = PACK_IMAGE_HEIGHT,
	PACK_SKIP_IMAGES                                = PACK_SKIP_IMAGES,
	PACK_ROW_LENGTH                                 = PACK_ROW_LENGTH,
	PACK_SKIP_ROWS                                  = PACK_SKIP_ROWS,
	PACK_SKIP_PIXELS                                = PACK_SKIP_PIXELS,
	PACK_ALIGNMENT                                  = PACK_ALIGNMENT,
	PACK_COMPRESSED_BLOCK_WIDTH                     = PACK_COMPRESSED_BLOCK_WIDTH,
	PACK_COMPRESSED_BLOCK_HEIGHT                    = PACK_COMPRESSED_BLOCK_HEIGHT,
	PACK_COMPRESSED_BLOCK_DEPTH                     = PACK_COMPRESSED_BLOCK_DEPTH,
	PACK_COMPRESSED_BLOCK_SIZE                      = PACK_COMPRESSED_BLOCK_SIZE,
	PIXEL_PACK_BUFFER_BINDING                       = PIXEL_PACK_BUFFER_BINDING,
	CURRENT_PROGRAM                                 = CURRENT_PROGRAM,
	PROGRAM_PIPELINE_BINDING                        = PROGRAM_PIPELINE_BINDING,
	ATOMIC_COUNTER_BUFFER_BINDING                   = ATOMIC_COUNTER_BUFFER_BINDING,
	SHADER_STORAGE_BUFFER_BINDING                   = SHADER_STORAGE_BUFFER_BINDING,
	UNIFORM_BUFFER_BINDING                          = UNIFORM_BUFFER_BINDING,
	LINE_SMOOTH_HINT                                = LINE_SMOOTH_HINT,
	POLYGON_SMOOTH_HINT                             = POLYGON_SMOOTH_HINT,
	TEXTURE_COMPRESSION_HINT                        = TEXTURE_COMPRESSION_HINT,
	FRAGMENT_SHADER_DERIVATIVE_HINT                 = FRAGMENT_SHADER_DERIVATIVE_HINT,
	DISPATCH_INDIRECT_BUFFER_BINDING                = DISPATCH_INDIRECT_BUFFER_BINDING,
	CONTEXT_RELEASE_BEHAVIOR                        = CONTEXT_RELEASE_BEHAVIOR,
	MAX_CLIP_DISTANCES                              = MAX_CLIP_DISTANCES,
	MAX_CULL_DISTANCES                              = MAX_CULL_DISTANCES,
	MAX_COMBINED_CLIP_AND_CULL_DISTANCES            = MAX_COMBINED_CLIP_AND_CULL_DISTANCES,
	SUBPIXEL_BITS                                   = SUBPIXEL_BITS,
	MAX_3D_TEXTURE_SIZE                             = MAX_3D_TEXTURE_SIZE,
	MAX_TEXTURE_SIZE                                = MAX_TEXTURE_SIZE,
	MAX_ARRAY_TEXTURE_LAYERS                        = MAX_ARRAY_TEXTURE_LAYERS,
	MAX_CUBE_MAP_TEXTURE_SIZE                       = MAX_CUBE_MAP_TEXTURE_SIZE,
	MAX_RENDERBUFFER_SIZE                           = MAX_RENDERBUFFER_SIZE,
	MAX_VIEWPORTS                                   = MAX_VIEWPORTS,
	VIEWPORT_SUBPIXEL_BITS                          = VIEWPORT_SUBPIXEL_BITS,
	LAYER_PROVOKING_VERTEX                          = LAYER_PROVOKING_VERTEX,
	VIEWPORT_INDEX_PROVOKING_VERTEX                 = VIEWPORT_INDEX_PROVOKING_VERTEX,
	MAX_ELEMENTS_INDICES                            = MAX_ELEMENTS_INDICES,
	MAX_ELEMENTS_VERTICES                           = MAX_ELEMENTS_VERTICES,MAX_VERTEX_ATTRIB_RELATIVE_OFFSET,
	MAX_VERTEX_ATTRIB_BINDINGS                      = MAX_VERTEX_ATTRIB_BINDINGS,
	MAX_VERTEX_ATTRIB_STRIDE                        = MAX_VERTEX_ATTRIB_STRIDE,
	NUM_COMPRESSED_TEXTURE_FORMATS                  = NUM_COMPRESSED_TEXTURE_FORMATS,
	COMPRESSED_TEXTURE_FORMATS                      = COMPRESSED_TEXTURE_FORMATS,
	MAX_TEXTURE_BUFFER_SIZE                         = MAX_TEXTURE_BUFFER_SIZE,
	MAX_RECTANGLE_TEXTURE_SIZE                      = MAX_RECTANGLE_TEXTURE_SIZE,
	NUM_PROGRAM_BINARY_FORMATS                      = NUM_PROGRAM_BINARY_FORMATS,
	PROGRAM_BINARY_FORMATS                          = PROGRAM_BINARY_FORMATS,
	NUM_SHADER_BINARY_FORMATS                       = NUM_SHADER_BINARY_FORMATS,
	SHADER_BINARY_FORMATS                           = SHADER_BINARY_FORMATS,
	MIN_MAP_BUFFER_ALIGNMENT                        = MIN_MAP_BUFFER_ALIGNMENT,
	TEXTURE_BUFFER_OFFSET_ALIGNMENT                 = TEXTURE_BUFFER_OFFSET_ALIGNMENT,
	MAJOR_VERSION                                   = MAJOR_VERSION,
	MINOR_VERSION                                   = MINOR_VERSION,
	CONTEXT_FLAGS                                   = CONTEXT_FLAGS,
	CONTEXT_PROFILE_MASK                            = CONTEXT_PROFILE_MASK,
	NUM_EXTENSIONS                                  = NUM_EXTENSIONS,
	NUM_SHADING_LANGUAGE_VERSIONS                   = NUM_SHADING_LANGUAGE_VERSIONS,
	NUM_SPIR_V_EXTENSIONS                           = NUM_SPIR_V_EXTENSIONS,
	MAX_VERTEX_ATTRIBS                              = MAX_VERTEX_ATTRIBS,
	MAX_VERTEX_UNIFORM_COMPONENTS                   = MAX_VERTEX_UNIFORM_COMPONENTS,
	MAX_VERTEX_UNIFORM_VECTORS                      = MAX_VERTEX_UNIFORM_VECTORS,
	MAX_VERTEX_UNIFORM_BLOCKS                       = MAX_VERTEX_UNIFORM_BLOCKS,
	MAX_VERTEX_OUTPUT_COMPONENTS                    = MAX_VERTEX_OUTPUT_COMPONENTS,
	MAX_VERTEX_TEXTURE_IMAGE_UNITS                  = MAX_VERTEX_TEXTURE_IMAGE_UNITS,
	MAX_VERTEX_ATOMIC_COUNTER_BUFFERS               = MAX_VERTEX_ATOMIC_COUNTER_BUFFERS,
	MAX_VERTEX_ATOMIC_COUNTERS                      = MAX_VERTEX_ATOMIC_COUNTERS,
	MAX_VERTEX_SHADER_STORAGE_BLOCKS                = MAX_VERTEX_SHADER_STORAGE_BLOCKS,
	MAX_TESS_GEN_LEVEL                              = MAX_TESS_GEN_LEVEL,
	MAX_PATCH_VERTICES                              = MAX_PATCH_VERTICES,
	MAX_TESS_CONTROL_UNIFORM_COMPONENTS             = MAX_TESS_CONTROL_UNIFORM_COMPONENTS,
	MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS            = MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS,
	MAX_TESS_CONTROL_OUTPUT_COMPONENTS              = MAX_TESS_CONTROL_OUTPUT_COMPONENTS,
	MAX_TESS_PATCH_COMPONENTS                       = MAX_TESS_PATCH_COMPONENTS,
	MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS        = MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS,
	MAX_TESS_CONTROL_INPUT_COMPONENTS               = MAX_TESS_CONTROL_INPUT_COMPONENTS,
	MAX_TESS_CONTROL_UNIFORM_BLOCKS                 = MAX_TESS_CONTROL_UNIFORM_BLOCKS,
	MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS         = MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS,
	MAX_TESS_CONTROL_ATOMIC_COUNTERS                = MAX_TESS_CONTROL_ATOMIC_COUNTERS,
	MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS          = MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS,
	MAX_TESS_EVALUATION_UNIFORM_COMPONENTS          = MAX_TESS_EVALUATION_UNIFORM_COMPONENTS,
	MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS         = MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS,
	MAX_TESS_EVALUATION_OUTPUT_COMPONENTS           = MAX_TESS_EVALUATION_OUTPUT_COMPONENTS,
	MAX_TESS_EVALUATION_INPUT_COMPONENTS            = MAX_TESS_EVALUATION_INPUT_COMPONENTS,
	MAX_TESS_EVALUATION_UNIFORM_BLOCKS              = MAX_TESS_EVALUATION_UNIFORM_BLOCKS,
	MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS      = MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS,
	MAX_TESS_EVALUATION_ATOMIC_COUNTERS             = MAX_TESS_EVALUATION_ATOMIC_COUNTERS,
	MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS       = MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS,
	MAX_GEOMETRY_UNIFORM_COMPONENTS                 = MAX_GEOMETRY_UNIFORM_COMPONENTS,
	MAX_GEOMETRY_UNIFORM_BLOCKS                     = MAX_GEOMETRY_UNIFORM_BLOCKS,
	MAX_GEOMETRY_INPUT_COMPONENTS                   = MAX_GEOMETRY_INPUT_COMPONENTS,
	MAX_GEOMETRY_OUTPUT_COMPONENTS                  = MAX_GEOMETRY_OUTPUT_COMPONENTS,
	MAX_GEOMETRY_OUTPUT_VERTICES                    = MAX_GEOMETRY_OUTPUT_VERTICES,
	MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS            = MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS,
	MAX_GEOMETRY_TEXTURE_IMAGE_UNITS                = MAX_GEOMETRY_TEXTURE_IMAGE_UNITS,
	MAX_GEOMETRY_SHADER_INVOCATIONS                 = MAX_GEOMETRY_SHADER_INVOCATIONS,
	MAX_VERTEX_STREAMS                              = MAX_VERTEX_STREAMS,
	MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS             = MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS,
	MAX_GEOMETRY_ATOMIC_COUNTERS                    = MAX_GEOMETRY_ATOMIC_COUNTERS,
	MAX_GEOMETRY_SHADER_STORAGE_BLOCKS              = MAX_GEOMETRY_SHADER_STORAGE_BLOCKS,
	MAX_FRAGMENT_UNIFORM_COMPONENTS                 = MAX_FRAGMENT_UNIFORM_COMPONENTS,
	MAX_FRAGMENT_UNIFORM_VECTORS                    = MAX_FRAGMENT_UNIFORM_VECTORS,
	MAX_FRAGMENT_UNIFORM_BLOCKS                     = MAX_FRAGMENT_UNIFORM_BLOCKS,
	MAX_FRAGMENT_INPUT_COMPONENTS                   = MAX_FRAGMENT_INPUT_COMPONENTS,
	MAX_TEXTURE_IMAGE_UNITS                         = MAX_TEXTURE_IMAGE_UNITS,
	MIN_PROGRAM_TEXTURE_GATHER_OFFSET               = MIN_PROGRAM_TEXTURE_GATHER_OFFSET,
	MAX_PROGRAM_TEXTURE_GATHER_OFFSET               = MAX_PROGRAM_TEXTURE_GATHER_OFFSET,
	MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS             = MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS,
	MAX_FRAGMENT_ATOMIC_COUNTERS                    = MAX_FRAGMENT_ATOMIC_COUNTERS,
	MAX_FRAGMENT_SHADER_STORAGE_BLOCKS              = MAX_FRAGMENT_SHADER_STORAGE_BLOCKS,
	MAX_COMPUTE_WORK_GROUP_INVOCATIONS              = MAX_COMPUTE_WORK_GROUP_INVOCATIONS,
	MAX_COMPUTE_UNIFORM_BLOCKS                      = MAX_COMPUTE_UNIFORM_BLOCKS,
	MAX_COMPUTE_TEXTURE_IMAGE_UNITS                 = MAX_COMPUTE_TEXTURE_IMAGE_UNITS,
	MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS              = MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS,
	MAX_COMPUTE_ATOMIC_COUNTERS                     = MAX_COMPUTE_ATOMIC_COUNTERS,
	MAX_COMPUTE_SHARED_MEMORY_SIZE                  = MAX_COMPUTE_SHARED_MEMORY_SIZE,
	MAX_COMPUTE_UNIFORM_COMPONENTS                  = MAX_COMPUTE_UNIFORM_COMPONENTS,
	MAX_COMPUTE_IMAGE_UNIFORMS                      = MAX_COMPUTE_IMAGE_UNIFORMS,
	MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS         = MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS,
	MAX_COMPUTE_SHADER_STORAGE_BLOCKS               = MAX_COMPUTE_SHADER_STORAGE_BLOCKS,
	MIN_PROGRAM_TEXEL_OFFSET                        = MIN_PROGRAM_TEXEL_OFFSET,
	MAX_PROGRAM_TEXEL_OFFSET                        = MAX_PROGRAM_TEXEL_OFFSET,
	MAX_UNIFORM_BLOCK_SIZE                          = MAX_UNIFORM_BLOCK_SIZE,
	UNIFORM_BUFFER_OFFSET_ALIGNMENT                 = UNIFORM_BUFFER_OFFSET_ALIGNMENT,
	MAX_COMBINED_UNIFORM_BLOCKS                     = MAX_COMBINED_UNIFORM_BLOCKS,
	MAX_VARYING_COMPONENTS                          = MAX_VARYING_COMPONENTS,
	MAX_VARYING_VECTORS                             = MAX_VARYING_VECTORS,
	MAX_COMBINED_TEXTURE_IMAGE_UNITS                = MAX_COMBINED_TEXTURE_IMAGE_UNITS,
	MAX_SUBROUTINES                                 = MAX_SUBROUTINES,
	MAX_SUBROUTINE_UNIFORM_LOCATIONS                = MAX_SUBROUTINE_UNIFORM_LOCATIONS,
	MAX_UNIFORM_LOCATIONS                           = MAX_UNIFORM_LOCATIONS,
	MAX_ATOMIC_COUNTER_BUFFER_BINDINGS              = MAX_ATOMIC_COUNTER_BUFFER_BINDINGS,
	MAX_ATOMIC_COUNTER_BUFFER_SIZE                  = MAX_ATOMIC_COUNTER_BUFFER_SIZE,
	MAX_COMBINED_ATOMIC_COUNTER_BUFFERS             = MAX_COMBINED_ATOMIC_COUNTER_BUFFERS,
	MAX_COMBINED_ATOMIC_COUNTERS                    = MAX_COMBINED_ATOMIC_COUNTERS,
	MAX_SHADER_STORAGE_BUFFER_BINDINGS              = MAX_SHADER_STORAGE_BUFFER_BINDINGS,
	MAX_COMBINED_SHADER_STORAGE_BLOCKS              = MAX_COMBINED_SHADER_STORAGE_BLOCKS,
	SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT          = SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT,
	MAX_IMAGE_UNITS                                 = MAX_IMAGE_UNITS,
	MAX_COMBINED_SHADER_OUTPUT_RESOURCES            = MAX_COMBINED_SHADER_OUTPUT_RESOURCES,
	MAX_IMAGE_SAMPLES                               = MAX_IMAGE_SAMPLES,
	MAX_VERTEX_IMAGE_UNIFORMS                       = MAX_VERTEX_IMAGE_UNIFORMS,
	MAX_TESS_CONTROL_IMAGE_UNIFORMS                 = MAX_TESS_CONTROL_IMAGE_UNIFORMS,
	MAX_TESS_EVALUATION_IMAGE_UNIFORMS              = MAX_TESS_EVALUATION_IMAGE_UNIFORMS,
	MAX_GEOMETRY_IMAGE_UNIFORMS                     = MAX_GEOMETRY_IMAGE_UNIFORMS,
	MAX_FRAGMENT_IMAGE_UNIFORMS                     = MAX_FRAGMENT_IMAGE_UNIFORMS,
	MAX_COMBINED_IMAGE_UNIFORMS                     = MAX_COMBINED_IMAGE_UNIFORMS,
	MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS          = MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS,
	MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS        = MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS,
	MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS    = MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS,
	MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS,
	MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS        = MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS,
	DEBUG_LOGGED_MESSAGES                           = DEBUG_LOGGED_MESSAGES,
	DEBUG_NEXT_LOGGED_MESSAGE_LENGTH                = DEBUG_NEXT_LOGGED_MESSAGE_LENGTH,
	DEBUG_GROUP_STACK_DEPTH                         = DEBUG_GROUP_STACK_DEPTH,
	MAX_DEBUG_MESSAGE_LENGTH                        = MAX_DEBUG_MESSAGE_LENGTH,
	MAX_DEBUG_LOGGED_MESSAGES                       = MAX_DEBUG_LOGGED_MESSAGES,
	MAX_DEBUG_GROUP_STACK_DEPTH                     = MAX_DEBUG_GROUP_STACK_DEPTH,
	MAX_LABEL_LENGTH                                = MAX_LABEL_LENGTH,
	MAX_FRAMEBUFFER_WIDTH                           = MAX_FRAMEBUFFER_WIDTH,
	MAX_FRAMEBUFFER_HEIGHT                          = MAX_FRAMEBUFFER_HEIGHT,
	MAX_FRAMEBUFFER_LAYERS                          = MAX_FRAMEBUFFER_LAYERS,
	MAX_FRAMEBUFFER_SAMPLES                         = MAX_FRAMEBUFFER_SAMPLES,
	MAX_SAMPLE_MASK_WORDS                           = MAX_SAMPLE_MASK_WORDS,
	MAX_SAMPLES                                     = MAX_SAMPLES,
	MAX_COLOR_TEXTURE_SAMPLES                       = MAX_COLOR_TEXTURE_SAMPLES,
	MAX_DEPTH_TEXTURE_SAMPLES                       = MAX_DEPTH_TEXTURE_SAMPLES,
	MAX_INTEGER_SAMPLES                             = MAX_INTEGER_SAMPLES,
	FRAGMENT_INTERPOLATION_OFFSET_BITS              = FRAGMENT_INTERPOLATION_OFFSET_BITS,
	MAX_DRAW_BUFFERS                                = MAX_DRAW_BUFFERS,
	MAX_DUAL_SOURCE_DRAW_BUFFERS                    = MAX_DUAL_SOURCE_DRAW_BUFFERS,
	MAX_COLOR_ATTACHMENTS                           = MAX_COLOR_ATTACHMENTS,
	MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS   = MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS,
	MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS         = MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS,
	MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS      = MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS,
	MAX_TRANSFORM_FEEDBACK_BUFFERS                  = MAX_TRANSFORM_FEEDBACK_BUFFERS,
	SAMPLE_BUFFERS                                  = SAMPLE_BUFFERS,
	SAMPLES                                         = SAMPLES,
	IMPLEMENTATION_COLOR_READ_FORMAT                = IMPLEMENTATION_COLOR_READ_FORMAT,
	IMPLEMENTATION_COLOR_READ_TYPE                  = IMPLEMENTATION_COLOR_READ_TYPE,
	COPY_READ_BUFFER_BINDING                        = COPY_READ_BUFFER_BINDING,
	COPY_WRITE_BUFFER_BINDING                       = COPY_WRITE_BUFFER_BINDING,
	RESET_NOTIFICATION_STRATEGY                     = RESET_NOTIFICATION_STRATEGY,
	TEXTURE_BUFFER_BINDING                          = TEXTURE_BUFFER_BINDING,
}

/* void GetInteger64v(enum pname, int64 *data); */
Get_Integer64_V_Parameter :: enum u32 {
	MAX_ELEMENT_INDEX             = MAX_ELEMENT_INDEX,
	MAX_SHADER_STORAGE_BLOCK_SIZE = MAX_SHADER_STORAGE_BLOCK_SIZE,
	MAX_SERVER_WAIT_TIMEOUT       = MAX_SERVER_WAIT_TIMEOUT,
}

/* void GetFloatv(enum pname, float *data); */
Get_Float_V_Parameter :: enum u32 {
	POINT_SIZE                        = POINT_SIZE,
	POINT_FADE_THRESHOLD_SIZE         = POINT_FADE_THRESHOLD_SIZE,
	LINE_WIDTH                        = LINE_WIDTH,
	POLYGON_OFFSET_CLAMP              = POLYGON_OFFSET_CLAMP,
	POLYGON_OFFSET_FACTOR             = POLYGON_OFFSET_FACTOR,
	POLYGON_OFFSET_UNITS              = POLYGON_OFFSET_UNITS,
	SAMPLE_COVERAGE_VALUE             = SAMPLE_COVERAGE_VALUE,
	MIN_SAMPLE_SHADING_VALUE          = MIN_SAMPLE_SHADING_VALUE,
	BLEND_COLOR                       = BLEND_COLOR,
	COLOR_CLEAR_VALUE                 = COLOR_CLEAR_VALUE,
	DEPTH_CLEAR_VALUE                 = DEPTH_CLEAR_VALUE,
	MAX_TEXTURE_LOD_BIAS              = MAX_TEXTURE_LOD_BIAS,
	MAX_TEXTURE_MAX_ANISOTROPY        = MAX_TEXTURE_MAX_ANISOTROPY,
	MAX_VIEWPORT_DIMS                 = MAX_VIEWPORT_DIMS,
	VIEWPORT_BOUNDS_RANGE             = VIEWPORT_BOUNDS_RANGE,
	POINT_SIZE_RANGE                  = POINT_SIZE_RANGE,
	POINT_SIZE_GRANULARITY            = POINT_SIZE_GRANULARITY,
	ALIASED_LINE_WIDTH_RANGE          = ALIASED_LINE_WIDTH_RANGE,
	SMOOTH_LINE_WIDTH_RANGE           = SMOOTH_LINE_WIDTH_RANGE,
	SMOOTH_LINE_WIDTH_GRANULARITY     = SMOOTH_LINE_WIDTH_GRANULARITY,
	MIN_FRAGMENT_INTERPOLATION_OFFSET = MIN_FRAGMENT_INTERPOLATION_OFFSET,
	MAX_FRAGMENT_INTERPOLATION_OFFSET = MAX_FRAGMENT_INTERPOLATION_OFFSET,
}

/* void GetDoublev(enum pname, double *data); */
Get_Double_V_Parameter :: enum u32 {
	/* empty */
}

/* void GetDoublei_v(enum target, uint index, double *data); */
Get_Doublei_V_Target :: enum u32 {
	DEPTH_RANGE = DEPTH_RANGE,
}

/* void GetBooleani_v(enum target, uint index, boolean *data); */
Get_Booleani_V_Target :: enum u32 {
	COLOR_WRITEMASK = COLOR_WRITEMASK,
	IMAGE_BINDING_LAYERED = IMAGE_BINDING_LAYERED,
}

/* void GetIntegeri_v(enum target, uint index, int *data); */
Get_Integeri_V_Target :: enum u32 {
	VERTEX_BINDING_STRIDE             = VERTEX_BINDING_STRIDE,
	VERTEX_BINDING_DIVISOR            = VERTEX_BINDING_DIVISOR,
	VERTEX_BINDING_BUFFER             = VERTEX_BINDING_BUFFER,
	SAMPLE_MASK_VALUE                 = SAMPLE_MASK_VALUE,
	SCISSOR_BOX                       = SCISSOR_BOX,
	BLEND_SRC_RGB                     = BLEND_SRC_RGB,
	BLEND_SRC_ALPHA                   = BLEND_SRC_ALPHA,
	BLEND_DST_RGB                     = BLEND_DST_RGB,
	BLEND_DST_ALPHA                   = BLEND_DST_ALPHA,
	BLEND_EQUATION_RGB                = BLEND_EQUATION_RGB,
	BLEND_EQUATION_ALPHA              = BLEND_EQUATION_ALPHA,
	IMAGE_BINDING_NAME                = IMAGE_BINDING_NAME,
	IMAGE_BINDING_LEVEL               = IMAGE_BINDING_LEVEL,
	IMAGE_BINDING_LAYER               = IMAGE_BINDING_LAYER,
	IMAGE_BINDING_ACCESS              = IMAGE_BINDING_ACCESS,
	IMAGE_BINDING_FORMAT              = IMAGE_BINDING_FORMAT,
	ATOMIC_COUNTER_BUFFER_BINDING     = ATOMIC_COUNTER_BUFFER_BINDING,
	SHADER_STORAGE_BUFFER_BINDING     = SHADER_STORAGE_BUFFER_BINDING,
	TRANSFORM_FEEDBACK_BUFFER_BINDING = TRANSFORM_FEEDBACK_BUFFER_BINDING,
	UNIFORM_BUFFER_BINDING            = UNIFORM_BUFFER_BINDING,
	MAX_COMPUTE_WORK_GROUP_COUNT      = MAX_COMPUTE_WORK_GROUP_COUNT,
	MAX_COMPUTE_WORK_GROUP_SIZE       = MAX_COMPUTE_WORK_GROUP_SIZE,
	QUERY_BUFFER_BINDING              = QUERY_BUFFER_BINDING,
}

/* void GetFloati_v(enum target, uint index, float *data); */
Get_Floati_V_Target :: enum u32 {
	VIEWPORT = VIEWPORT,
}

/* void GetInteger64i_v(enum target, uint index, int64 *data); */
Get_Integeri64_V_Target :: enum u32 {
	VERTEX_BINDING_OFFSET          = VERTEX_BINDING_OFFSET,
	ATOMIC_COUNTER_BUFFER_START    = ATOMIC_COUNTER_BUFFER_START,
	ATOMIC_COUNTER_BUFFER_SIZE     = ATOMIC_COUNTER_BUFFER_SIZE,
	SHADER_STORAGE_BUFFER_START    = SHADER_STORAGE_BUFFER_START,
	SHADER_STORAGE_BUFFER_SIZE     = SHADER_STORAGE_BUFFER_SIZE,
	TRANSFORM_FEEDBACK_BUFFER_START= TRANSFORM_FEEDBACK_BUFFER_START,
	TRANSFORM_FEEDBACK_BUFFER_SIZE = TRANSFORM_FEEDBACK_BUFFER_SIZE,
	UNIFORM_BUFFER_START           = UNIFORM_BUFFER_START,
	UNIFORM_BUFFER_SIZE            = UNIFORM_BUFFER_SIZE,
}

/* boolean IsEnabled(enum cap); */
Is_Enabled_Cap :: enum u32 {
	PRIMITIVE_RESTART             = PRIMITIVE_RESTART,
	PRIMITIVE_RESTART_FIXED_INDEX = PRIMITIVE_RESTART_FIXED_INDEX,
	CLIP_DISTANCE0                = CLIP_DISTANCE0,
	CLIP_DISTANCE1                = CLIP_DISTANCE1,
	CLIP_DISTANCE2                = CLIP_DISTANCE2,
	CLIP_DISTANCE3                = CLIP_DISTANCE3,
	CLIP_DISTANCE4                = CLIP_DISTANCE4,
	CLIP_DISTANCE5                = CLIP_DISTANCE5,
	CLIP_DISTANCE6                = CLIP_DISTANCE6,
	CLIP_DISTANCE7                = CLIP_DISTANCE7,
	DEPTH_CLAMP                   = DEPTH_CLAMP,
	RASTERIZER_DISCARD            = RASTERIZER_DISCARD,
	LINE_SMOOTH                   = LINE_SMOOTH,
	CULL_FACE                     = CULL_FACE,
	POLYGON_SMOOTH                = POLYGON_SMOOTH,
	POLYGON_OFFSET_POINT          = POLYGON_OFFSET_POINT,
	POLYGON_OFFSET_LINE           = POLYGON_OFFSET_LINE,
	POLYGON_OFFSET_FILL           = POLYGON_OFFSET_FILL,
	MULTISAMPLE                   = MULTISAMPLE,
	SAMPLE_ALPHA_TO_COVERAGE      = SAMPLE_ALPHA_TO_COVERAGE,
	SAMPLE_ALPHA_TO_ONE           = SAMPLE_ALPHA_TO_ONE,
	SAMPLE_COVERAGE               = SAMPLE_COVERAGE,
	SAMPLE_SHADING                = SAMPLE_SHADING,
	SAMPLE_MASK                   = SAMPLE_MASK,
	STENCIL_TEST                  = STENCIL_TEST,
	DEPTH_TEST                    = DEPTH_TEST,
	FRAMEBUFFER_SRGB              = FRAMEBUFFER_SRGB,
	DITHER                        = DITHER,
	COLOR_LOGIC_OP                = COLOR_LOGIC_OP,
	PROGRAM_POINT_SIZE            = PROGRAM_POINT_SIZE,
	DEBUG_OUTPUT_SYNCHRONOUS      = DEBUG_OUTPUT_SYNCHRONOUS,
	DEBUG_OUTPUT                  = DEBUG_OUTPUT,
	TEXTURE_CUBE_MAP_SEAMLESS     = TEXTURE_CUBE_MAP_SEAMLESS,
}

/* boolean IsEnabledi(enum target, uint index); */
Is_Enabledi_Target :: enum u32 {
	SCISSOR_TEST = SCISSOR_TEST,
	BLEND        = BLEND,
}


/* String Queries [22.2] */

/* void GetPointerv(enum pname, void **params); */
Get_Pointerv_Parameter :: enum u32 {
	DEBUG_CALLBACK_FUNCTION,
	DEBUG_CALLBACK_USER_PARAM,
}

/* ubyte *GetString(enum name); */
Get_String_Name :: enum u32 {
	RENDERER                 = RENDERER,
	VENDOR                   = VENDOR,
	VERSION                  = VERSION,
	SHADING_LANGUAGE_VERSION = SHADING_LANGUAGE_VERSION,
}

/* ubyte *GetStringi(enum name, uint index); */
Get_Stringi_Name :: enum u32 {
	EXTENSIONS               = EXTENSIONS,
	SHADING_LANGUAGE_VERSION = SHADING_LANGUAGE_VERSION,
	SPIR_V_EXTENSIONS        = SPIR_V_EXTENSIONS,
}


/* Internal Format Queries [22.3] */

/* void GetInternalformativ(enum target, enum internalformat, enum pname, sizei bufSize, int *params); */
Get_Internalformativ_Target         :: Get_Internalformati64v_Target
Get_Internalformativ_Internalformat :: Get_Internalformati64v_Internalformat
Get_Internalformativ_Parameter      :: Get_Internalformati64v_Parameter

/* void GetInternalformati64v(enum target, enum internalformat, enum pname, sizei bufSize, int64 *params); */
Get_Internalformati64v_Target :: enum u32 {
	TEXTURE_1D                   = TEXTURE_1D,
	TEXTURE_2D                   = TEXTURE_2D,
	TEXTURE_3D                   = TEXTURE_3D,
	TEXTURE_CUBE_MAP             = TEXTURE_CUBE_MAP,
	TEXTURE_CUBE_MAP_ARRAY       = TEXTURE_CUBE_MAP_ARRAY,
	TEXTURE_2D_MULTISAMPLE       = TEXTURE_2D_MULTISAMPLE,
	TEXTURE_2D_MULTISAMPLE_ARRAY = TEXTURE_2D_MULTISAMPLE_ARRAY,
	TEXTURE_BUFFER               = TEXTURE_BUFFER,
	TEXTURE_RECTANGLE            = TEXTURE_RECTANGLE,
	RENDERBUFFER                 = RENDERBUFFER,
}

Get_Internalformati64v_Internalformat :: GL_Enum

Get_Internalformati64v_Parameter :: enum u32 {
	CLEAR_BUFFER                           = CLEAR_BUFFER,
	CLEAR_TEXTURE                          = CLEAR_TEXTURE,
	COLOR_ENCODING                         = COLOR_ENCODING,
	COLOR_COMPONENTS                       = COLOR_COMPONENTS,
	COLOR_RENDERABLE                       = COLOR_RENDERABLE,
	COMPUTE_TEXTURE                        = COMPUTE_TEXTURE,
	DEPTH_COMPONENTS                       = DEPTH_COMPONENTS,
	DEPTH_RENDERABLE                       = DEPTH_RENDERABLE,
	FILTER                                 = FILTER,
	FRAMEBUFFER_BLEND                      = FRAMEBUFFER_BLEND,
	FRAMEBUFFER_RENDERABLE                 = FRAMEBUFFER_RENDERABLE,
	FRAMEBUFFER_RENDERABLE_LAYERED         = FRAMEBUFFER_RENDERABLE_LAYERED,
	FRAGMENT_TEXTURE                       = FRAGMENT_TEXTURE,
	GEOMETRY_TEXTURE                       = GEOMETRY_TEXTURE,
	GET_TEXTURE_IMAGE_FORMAT               = GET_TEXTURE_IMAGE_FORMAT,
	GET_TEXTURE_IMAGE_TYPE                 = GET_TEXTURE_IMAGE_TYPE,
	IMAGE_COMPATIBILITY_CLASS              = IMAGE_COMPATIBILITY_CLASS,
	IMAGE_PIXEL_FORMAT                     = IMAGE_PIXEL_FORMAT,
	IMAGE_PIXEL_TYPE                       = IMAGE_PIXEL_TYPE,
	IMAGE_FORMAT_COMPATIBILITY_TYPE        = IMAGE_FORMAT_COMPATIBILITY_TYPE,
	IMAGE_TEXEL_SIZE                       = IMAGE_TEXEL_SIZE,
	INTERNALFORMAT_PREFERRED               = INTERNALFORMAT_PREFERRED,
	INTERNALFORMAT_SUPPORTED               = INTERNALFORMAT_SUPPORTED,
	INTERNALFORMAT_RED_SIZE                = INTERNALFORMAT_RED_SIZE,
	INTERNALFORMAT_GREEN_SIZE              = INTERNALFORMAT_GREEN_SIZE,
	INTERNALFORMAT_BLUE_SIZE               = INTERNALFORMAT_BLUE_SIZE,
	INTERNALFORMAT_DEPTH_SIZE              = INTERNALFORMAT_DEPTH_SIZE,
	INTERNALFORMAT_STENCIL_SIZE            = INTERNALFORMAT_STENCIL_SIZE,
	INTERNALFORMAT_BLUE_TYPE               = INTERNALFORMAT_BLUE_TYPE,
	INTERNALFORMAT_ALPHA_TYPE              = INTERNALFORMAT_ALPHA_TYPE,
	INTERNALFORMAT_DEPTH_TYPE              = INTERNALFORMAT_DEPTH_TYPE,
	INTERNALFORMAT_STENCIL_TYPE            = INTERNALFORMAT_STENCIL_TYPE,
	MIPMAP                                 = MIPMAP,
	MANUAL_GENERATE_MIPMAP                 = MANUAL_GENERATE_MIPMAP,
	MAX_COMBINED_DIMENSIONS                = MAX_COMBINED_DIMENSIONS,
	MAX_WIDTH                              = MAX_WIDTH,
	MAX_HEIGHT                             = MAX_HEIGHT,
	MAX_DEPTH                              = MAX_DEPTH,
	MAX_LAYERS                             = MAX_LAYERS,
	NUM_SAMPLE_COUNTS                      = NUM_SAMPLE_COUNTS,
	READ_PIXELS                            = READ_PIXELS,
	READ_PIXELS_FORMAT                     = READ_PIXELS_FORMAT,
	READ_PIXELS_TYPE                       = READ_PIXELS_TYPE,
	SAMPLES                                = SAMPLES,
	SHADER_IMAGE_ATOMIC                    = SHADER_IMAGE_ATOMIC,
	SHADER_IMAGE_LOAD                      = SHADER_IMAGE_LOAD,
	SHADER_IMAGE_STORE                     = SHADER_IMAGE_STORE,
	SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST    = SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST,
	SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE   = SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE,
	SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST  = SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST,
	SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE,
	SRGB_READ                              = SRGB_READ,
	SRGB_WRITE                             = SRGB_WRITE,
	STENCIL_COMPONENTS                     = STENCIL_COMPONENTS,
	STENCIL_RENDERABLE                     = STENCIL_RENDERABLE,
	TESS_CONTROL_TEXTURE                   = TESS_CONTROL_TEXTURE,
	TESS_EVALUATION_TEXTURE                = TESS_EVALUATION_TEXTURE,
	TEXTURE_COMPRESSED                     = TEXTURE_COMPRESSED,
	TEXTURE_COMPRESSED_BLOCK_SIZE          = TEXTURE_COMPRESSED_BLOCK_SIZE,
	TEXTURE_COMPRESSED_BLOCK_HEIGHT        = TEXTURE_COMPRESSED_BLOCK_HEIGHT,
	TEXTURE_COMPRESSED_BLOCK_WIDTH         = TEXTURE_COMPRESSED_BLOCK_WIDTH,
	TEXTURE_GATHER                         = TEXTURE_GATHER,
	TEXTURE_GATHER_SHADOW                  = TEXTURE_GATHER_SHADOW,
	TEXTURE_IMAGE_FORMAT                   = TEXTURE_IMAGE_FORMAT,
	TEXTURE_IMAGE_TYPE                     = TEXTURE_IMAGE_TYPE,
	TEXTURE_SHADOW                         = TEXTURE_SHADOW,
	TEXTURE_VIEW                           = TEXTURE_VIEW,
	VERTEX_TEXTURE                         = VERTEX_TEXTURE,
	VIEW_COMPATIBILITY_CLASS               = VIEW_COMPATIBILITY_CLASS,
}


/* TransformFeedback Queries [22.4] */

/* void GetTransformFeedbackiv(uint xfb, enum pname, int *param); */
Get_Transform_Feedbackiv_Parameter :: enum u32 {
	TRANSFORM_FEEDBACK_PAUSED,
	TRANSFORM_FEEDBACK_ACTIVE,
}

/* void GetTransformFeedbacki_v(uint xfb, enum pname, uint index, int *param); */
Get_Transform_Feedbacki_v_Parameter :: enum u32 {
	TRANSFORM_FEEDBACK_BUFFER_BINDING = TRANSFORM_FEEDBACK_BUFFER_BINDING,
}

Get_Transform_Feedbacki64_v_Parameter :: enum u32 {
	TRANSFORM_FEEDBACK_BUFFER_START = TRANSFORM_FEEDBACK_BUFFER_START,
	TRANSFORM_FEEDBACK_BUFFER_SIZE  = TRANSFORM_FEEDBACK_BUFFER_SIZE,
}
