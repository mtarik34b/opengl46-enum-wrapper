package vendor_gl

/* Shader Objects [7.1-2] */

/* uint CreateShader(enum type); */
// NOTE(tarik): Since helpers.odin defined an own Shader_Type, this is unused.
_Shader_Type :: enum u32 {
	COMPUTE_SHADER         = COMPUTE_SHADER,
	FRAGMENT_SHADER        = FRAGMENT_SHADER,
	GEOMETRY_SHADER        = GEOMETRY_SHADER,
	VERTEX_SHADER          = VERTEX_SHADER,
	TESS_EVALUATION_SHADER = TESS_EVALUATION_SHADER,
	TESS_CONTROL_SHADER    = TESS_CONTROL_SHADER,
}

/* void ShaderBinary(sizei count, const uint *shaders, enum binaryformat, const void *binary, sizei length); */
Binaryformat :: enum u32 {
	SHADER_BINARY_FORMAT_SPIR_V = SHADER_BINARY_FORMAT_SPIR_V,
}


/* Program Objects [7.3] */

/* uint CreateShaderProgramv(enum type, sizei count, const char * const * strings); */

/* void ProgramParameteri(uint program, enum pname, int value); */
Program_Parameter :: enum u32 {
	PROGRAM_SEPARABLE               = PROGRAM_SEPARABLE,
	PROGRAM_BINARY_RETRIEVABLE_HINT = PROGRAM_BINARY_RETRIEVABLE_HINT,
}


/* Program Interfaces [7.3.1] */

/* void GetProgramInterfaceiv(uint program, enum programInterface, enum pname, int *params); */
Program_Interface :: enum u32 {
	UNIFORM                            = UNIFORM,
	UNIFORM_BLOCK                      = UNIFORM_BLOCK,
	ATOMIC_COUNTER_BUFFER              = ATOMIC_COUNTER_BUFFER,
	PROGRAM_INPUT                      = PROGRAM_INPUT,
	PROGRAM_OUTPUT                     = PROGRAM_OUTPUT,

	VERTEX_SUBROUTINE                  = VERTEX_SUBROUTINE,
	TESS_CONTROL_SUBROUTINE            = TESS_CONTROL_SUBROUTINE,
	TESS_EVALUATION_SUBROUTINE         = TESS_EVALUATION_SUBROUTINE,
	GEOMETRY_SUBROUTINE                = GEOMETRY_SUBROUTINE,
	FRAGMENT_SUBROUTINE                = FRAGMENT_SUBROUTINE,
	COMPUTE_SUBROUTINE                 = COMPUTE_SUBROUTINE,

	VERTEX_SUBROUTINE_UNIFORM          = VERTEX_SUBROUTINE_UNIFORM,
	TESS_CONTROL_SUBROUTINE_UNIFORM    = TESS_CONTROL_SUBROUTINE_UNIFORM,
	TESS_EVALUATION_SUBROUTINE_UNIFORM = TESS_EVALUATION_SUBROUTINE_UNIFORM,
	GEOMETRY_SUBROUTINE_UNIFORM        = GEOMETRY_SUBROUTINE_UNIFORM,
	FRAGMENT_SUBROUTINE_UNIFORM        = FRAGMENT_SUBROUTINE_UNIFORM,
	COMPUTE_SUBROUTINE_UNIFORM         = COMPUTE_SUBROUTINE_UNIFORM,

	TRANSFORM_FEEDBACK_VARYING         = TRANSFORM_FEEDBACK_VARYING,
	TRANSFORM_FEEDBACK_BUFFER          = TRANSFORM_FEEDBACK_BUFFER,
	BUFFER_VARIABLE                    = BUFFER_VARIABLE,
	SHADER_STORAGE_BLOCK               = SHADER_STORAGE_BLOCK,
}

Program_Interface_Parameter :: enum u32 {
	ACTIVE_RESOURCES               = ACTIVE_RESOURCES,
	MAX_NAME_LENGTH                = MAX_NAME_LENGTH,
	MAX_NUM_ACTIVE_VARIABLES       = MAX_NUM_ACTIVE_VARIABLES,
	MAX_NUM_COMPATIBLE_SUBROUTINES = MAX_NUM_COMPATIBLE_SUBROUTINES,
}

/* uint GetProgramResourceIndex(uint program, enum programInterface, const char *name); */
Program_Resource_Interface :: enum u32 {
	UNIFORM                            = UNIFORM,
	UNIFORM_BLOCK                      = UNIFORM_BLOCK,
	PROGRAM_INPUT                      = PROGRAM_INPUT,
	PROGRAM_OUTPUT                     = PROGRAM_OUTPUT,

	VERTEX_SUBROUTINE                  = VERTEX_SUBROUTINE,
	TESS_CONTROL_SUBROUTINE            = TESS_CONTROL_SUBROUTINE,
	TESS_EVALUATION_SUBROUTINE         = TESS_EVALUATION_SUBROUTINE,
	GEOMETRY_SUBROUTINE                = GEOMETRY_SUBROUTINE,
	FRAGMENT_SUBROUTINE                = FRAGMENT_SUBROUTINE,
	COMPUTE_SUBROUTINE                 = COMPUTE_SUBROUTINE,

	VERTEX_SUBROUTINE_UNIFORM          = VERTEX_SUBROUTINE_UNIFORM,
	TESS_CONTROL_SUBROUTINE_UNIFORM    = TESS_CONTROL_SUBROUTINE_UNIFORM,
	TESS_EVALUATION_SUBROUTINE_UNIFORM = TESS_EVALUATION_SUBROUTINE_UNIFORM,
	GEOMETRY_SUBROUTINE_UNIFORM        = GEOMETRY_SUBROUTINE_UNIFORM,
	FRAGMENT_SUBROUTINE_UNIFORM        = FRAGMENT_SUBROUTINE_UNIFORM,
	COMPUTE_SUBROUTINE_UNIFORM         = COMPUTE_SUBROUTINE_UNIFORM,

	TRANSFORM_FEEDBACK_VARYING         = TRANSFORM_FEEDBACK_VARYING,
	BUFFER_VARIABLE                    = BUFFER_VARIABLE,
	SHADER_STORAGE_BLOCK               = SHADER_STORAGE_BLOCK,
}

/* void GetProgramResourceName(uint program, enum programInterface, uint index, sizei bufSize, sizei *length, char *name); */
// programInterface: Program_Resource_Interface

/* void GetProgramResourceiv(uint program, enum programInterface, uint index, sizei propCount, const enum *props, sizei bufSize, sizei *length, int *params); */
// programInterface: Program_Interface

Program_Resource_Property :: enum u32 {
	ACTIVE_VARIABLES                     = ACTIVE_VARIABLES,
	BUFFER_BINDING                       = BUFFER_BINDING,
	NUM_ACTIVE_VARIABLES                 = NUM_ACTIVE_VARIABLES,
	ARRAY_SIZE                           = ARRAY_SIZE,
	ARRAY_STRIDE                         = ARRAY_STRIDE,
	BLOCK_INDEX                          = BLOCK_INDEX,
	IS_ROW_MAJOR                         = IS_ROW_MAJOR,
	MATRIX_STRIDE                        = MATRIX_STRIDE,
	ATOMIC_COUNTER_BUFFER_INDEX          = ATOMIC_COUNTER_BUFFER_INDEX,
	BUFFER_DATA_SIZE                     = BUFFER_DATA_SIZE,
	NUM_COMPATIBLE_SUBROUTINES           = NUM_COMPATIBLE_SUBROUTINES,
	COMPATIBLE_SUBROUTINES               = COMPATIBLE_SUBROUTINES,
	IS_PER_PATCH                         = IS_PER_PATCH,
	LOCATION                             = LOCATION,
	LOCATION_COMPONENT                   = LOCATION_COMPONENT,
	LOCATION_INDEX                       = LOCATION_INDEX,
	NAME_LENGTH                          = NAME_LENGTH,
	OFFSET                               = OFFSET,
	REFERENCED_BY_VERTEX_SHADER          = REFERENCED_BY_VERTEX_SHADER,
	REFERENCED_BY_TESS_CONTROL_SHADER    = REFERENCED_BY_TESS_CONTROL_SHADER,
	REFERENCED_BY_TESS_EVALUATION_SHADER = REFERENCED_BY_TESS_EVALUATION_SHADER,
	REFERENCED_BY_GEOMETRY_SHADER        = REFERENCED_BY_GEOMETRY_SHADER,
	REFERENCED_BY_FRAGMENT_SHADER        = REFERENCED_BY_FRAGMENT_SHADER,
	REFERENCED_BY_COMPUTE_SHADER         = REFERENCED_BY_COMPUTE_SHADER,
	TRANSFORM_FEEDBACK_BUFFER_INDEX      = TRANSFORM_FEEDBACK_BUFFER_INDEX,
	TRANSFORM_FEEDBACK_BUFFER_STRIDE     = TRANSFORM_FEEDBACK_BUFFER_STRIDE,
	TOP_LEVEL_ARRAY_SIZE                 = TOP_LEVEL_ARRAY_SIZE,
	TOP_LEVEL_ARRAY_STRIDE               = TOP_LEVEL_ARRAY_STRIDE,
	TYPE                                 = TYPE,
}

/* int GetProgramResourceLocation(uint program, enum programInterface, const char *name); */

Program_Resource_Location :: enum u32 {
	UNIFORM                            = UNIFORM,
	PROGRAM_INPUT                      = PROGRAM_INPUT,
	PROGRAM_OUTPUT                     = PROGRAM_OUTPUT,
	VERTEX_SUBROUTINE_UNIFORM          = VERTEX_SUBROUTINE_UNIFORM,
	TESS_CONTROL_SUBROUTINE_UNIFORM    = TESS_CONTROL_SUBROUTINE_UNIFORM,
	TESS_EVALUATION_SUBROUTINE_UNIFORM = TESS_EVALUATION_SUBROUTINE_UNIFORM,
	GEOMETRY_SUBROUTINE_UNIFORM        = GEOMETRY_SUBROUTINE_UNIFORM,
	FRAGMENT_SUBROUTINE_UNIFORM        = FRAGMENT_SUBROUTINE_UNIFORM,
	COMPUTE_SUBROUTINE_UNIFORM         = COMPUTE_SUBROUTINE_UNIFORM,
}

/* int GetProgramResourceLocationIndex(uint program, enum programInterface, const char *name); */

Program_Resource_Location_Index :: enum u32 {
	PROGRAM_OUTPUT = PROGRAM_OUTPUT,
}


/* Program Pipeline Objects [7.4] */

/* void UseProgramStages(uint pipeline, bitfield stages, uint program); */

Program_Stages_Bits :: enum u32 {
	COMPUTE_SHADER_BIT         = COMPUTE_SHADER_BIT,
	VERTEX_SHADER_BIT          = VERTEX_SHADER_BIT,
	TESS_CONTROL_SHADER_BIT    = TESS_CONTROL_SHADER_BIT,
	TESS_EVALUATION_SHADER_BIT = TESS_EVALUATION_SHADER_BIT,
	GEOMETRY_SHADER_BIT        = GEOMETRY_SHADER_BIT,
	FRAGMENT_SHADER_BIT        = FRAGMENT_SHADER_BIT,

	ALL_SHADER_BITS            = ALL_SHADER_BITS,
}


/* Program Binaries [7.5] */

/* void GetProgramBinary(uint program, sizei bufSize, sizei *length, enum *binaryFormat, void *binary); */
Program_Binary_Format :: enum u32 {
	// TODO(tarik): Not sure if this is correct

	// "OpenGL defines no specific binary formats. Queries of
	// values NUM_PROGRAM_BINARY_FORMATS and PROGRAM_BINARY_FORMATS return
	// the number of program binary formats and the list of program binary
	// format values supported by an implementation. The binaryFormat
	// returned by GetProgramBinary must be present in this list."
}

/* void ProgramBinary(uint program, enum binaryFormat, const void *binary, sizei length); */
// TODO(tarik): Not sure if this is correct
// binaryFormat: Program_Binary_Format


/* Uniform Variables [7.6] */

/* void GetActiveUniform(uint program, uint index, sizei bufSize, sizei *length, int *size, enum *type, char *name); */
Uniform_Type :: enum u32 {
	FLOAT                                     = FLOAT,
	FLOAT_VEC2                                = FLOAT_VEC2,
	FLOAT_VEC3                                = FLOAT_VEC3,
	FLOAT_VEC4                                = FLOAT_VEC4,

	DOUBLE                                    = DOUBLE,
	DOUBLE_VEC2                               = DOUBLE_VEC2,
	DOUBLE_VEC3                               = DOUBLE_VEC3,
	DOUBLE_VEC4                               = DOUBLE_VEC4,

	INT                                       = INT,
	INT_VEC2                                  = INT_VEC2,
	INT_VEC3                                  = INT_VEC3,
	INT_VEC4                                  = INT_VEC4,

	UNSIGNED_INT                              = UNSIGNED_INT,
	UNSIGNED_INT_VEC2                         = UNSIGNED_INT_VEC2,
	UNSIGNED_INT_VEC3                         = UNSIGNED_INT_VEC3,
	UNSIGNED_INT_VEC4                         = UNSIGNED_INT_VEC4,

	BOOL                                      = BOOL,
	BOOL_VEC2                                 = BOOL_VEC2,
	BOOL_VEC3                                 = BOOL_VEC3,
	BOOL_VEC4                                 = BOOL_VEC4,

	FLOAT_MAT2                                = FLOAT_MAT2,
	FLOAT_MAT3                                = FLOAT_MAT3,
	FLOAT_MAT4                                = FLOAT_MAT4,
	FLOAT_MAT2x3                              = FLOAT_MAT2x3,
	FLOAT_MAT2x4                              = FLOAT_MAT2x4,
	FLOAT_MAT3x2                              = FLOAT_MAT3x2,
	FLOAT_MAT3x4                              = FLOAT_MAT3x4,
	FLOAT_MAT4x2                              = FLOAT_MAT4x2,
	FLOAT_MAT4x3                              = FLOAT_MAT4x3,

	DOUBLE_MAT2                               = DOUBLE_MAT2,
	DOUBLE_MAT3                               = DOUBLE_MAT3,
	DOUBLE_MAT4                               = DOUBLE_MAT4,
	DOUBLE_MAT2x3                             = DOUBLE_MAT2x3,
	DOUBLE_MAT2x4                             = DOUBLE_MAT2x4,
	DOUBLE_MAT3x2                             = DOUBLE_MAT3x2,
	DOUBLE_MAT3x4                             = DOUBLE_MAT3x4,
	DOUBLE_MAT4x2                             = DOUBLE_MAT4x2,
	DOUBLE_MAT4x3                             = DOUBLE_MAT4x3,

	SAMPLER_1D                                = SAMPLER_1D,
	SAMPLER_2D                                = SAMPLER_2D,
	SAMPLER_3D                                = SAMPLER_3D,
	SAMPLER_CUBE                              = SAMPLER_CUBE,
	SAMPLER_1D_SHADOW                         = SAMPLER_1D_SHADOW,
	SAMPLER_2D_SHADOW                         = SAMPLER_2D_SHADOW,
	SAMPLER_1D_ARRAY                          = SAMPLER_1D_ARRAY,
	SAMPLER_2D_ARRAY                          = SAMPLER_2D_ARRAY,
	SAMPLER_1D_ARRAY_SHADOW                   = SAMPLER_1D_ARRAY_SHADOW,
	SAMPLER_2D_ARRAY_SHADOW                   = SAMPLER_2D_ARRAY_SHADOW,
	SAMPLER_2D_MULTISAMPLE                    = SAMPLER_2D_MULTISAMPLE,
	SAMPLER_2D_MULTISAMPLE_ARRAY              = SAMPLER_2D_MULTISAMPLE_ARRAY,
	SAMPLER_CUBE_SHADOW                       = SAMPLER_CUBE_SHADOW,
	SAMPLER_BUFFER                            = SAMPLER_BUFFER,
	SAMPLER_2D_RECT                           = SAMPLER_2D_RECT,
	SAMPLER_2D_RECT_SHADOW                    = SAMPLER_2D_RECT_SHADOW,

	INT_SAMPLER_1D                            = INT_SAMPLER_1D,
	INT_SAMPLER_2D                            = INT_SAMPLER_2D,
	INT_SAMPLER_3D                            = INT_SAMPLER_3D,
	INT_SAMPLER_CUBE                          = INT_SAMPLER_CUBE,
	INT_SAMPLER_1D_ARRAY                      = INT_SAMPLER_1D_ARRAY,
	INT_SAMPLER_2D_ARRAY                      = INT_SAMPLER_2D_ARRAY,
	INT_SAMPLER_2D_MULTISAMPLE                = INT_SAMPLER_2D_MULTISAMPLE,
	INT_SAMPLER_2D_MULTISAMPLE_ARRAY          = INT_SAMPLER_2D_MULTISAMPLE_ARRAY,
	INT_SAMPLER_BUFFER                        = INT_SAMPLER_BUFFER,
	INT_SAMPLER_2D_RECT                       = INT_SAMPLER_2D_RECT,

	UNSIGNED_INT_SAMPLER_1D                   = UNSIGNED_INT_SAMPLER_1D,
	UNSIGNED_INT_SAMPLER_2D                   = UNSIGNED_INT_SAMPLER_2D,
	UNSIGNED_INT_SAMPLER_3D                   = UNSIGNED_INT_SAMPLER_3D,
	UNSIGNED_INT_SAMPLER_CUBE                 = UNSIGNED_INT_SAMPLER_CUBE,
	UNSIGNED_INT_SAMPLER_1D_ARRAY             = UNSIGNED_INT_SAMPLER_1D_ARRAY,
	UNSIGNED_INT_SAMPLER_2D_ARRAY             = UNSIGNED_INT_SAMPLER_2D_ARRAY,
	UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE       = UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE,
	UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY,
	UNSIGNED_INT_SAMPLER_BUFFER               = UNSIGNED_INT_SAMPLER_BUFFER,
	UNSIGNED_INT_SAMPLER_2D_RECT              = UNSIGNED_INT_SAMPLER_2D_RECT,

	IMAGE_1D                                  = IMAGE_1D,
	IMAGE_2D                                  = IMAGE_2D,
	IMAGE_3D                                  = IMAGE_3D,
	IMAGE_2D_RECT                             = IMAGE_2D_RECT,
	IMAGE_CUBE                                = IMAGE_CUBE,
	IMAGE_BUFFER                              = IMAGE_BUFFER,
	IMAGE_1D_ARRAY                            = IMAGE_1D_ARRAY,
	IMAGE_2D_ARRAY                            = IMAGE_2D_ARRAY,
	IMAGE_2D_MULTISAMPLE                      = IMAGE_2D_MULTISAMPLE,
	IMAGE_2D_MULTISAMPLE_ARRAY                = IMAGE_2D_MULTISAMPLE_ARRAY,

	INT_IMAGE_1D                              = INT_IMAGE_1D,
	INT_IMAGE_2D                              = INT_IMAGE_2D,
	INT_IMAGE_3D                              = INT_IMAGE_3D,
	INT_IMAGE_2D_RECT                         = INT_IMAGE_2D_RECT,
	INT_IMAGE_CUBE                            = INT_IMAGE_CUBE,
	INT_IMAGE_BUFFER                          = INT_IMAGE_BUFFER,
	INT_IMAGE_1D_ARRAY                        = INT_IMAGE_1D_ARRAY,
	INT_IMAGE_2D_ARRAY                        = INT_IMAGE_2D_ARRAY,
	INT_IMAGE_2D_MULTISAMPLE                  = INT_IMAGE_2D_MULTISAMPLE,
	INT_IMAGE_2D_MULTISAMPLE_ARRAY            = INT_IMAGE_2D_MULTISAMPLE_ARRAY,

	UNSIGNED_INT_IMAGE_1D                     = UNSIGNED_INT_IMAGE_1D,
	UNSIGNED_INT_IMAGE_2D                     = UNSIGNED_INT_IMAGE_2D,
	UNSIGNED_INT_IMAGE_3D                     = UNSIGNED_INT_IMAGE_3D,
	UNSIGNED_INT_IMAGE_2D_RECT                = UNSIGNED_INT_IMAGE_2D_RECT,
	UNSIGNED_INT_IMAGE_CUBE                   = UNSIGNED_INT_IMAGE_CUBE,
	UNSIGNED_INT_IMAGE_BUFFER                 = UNSIGNED_INT_IMAGE_BUFFER,
	UNSIGNED_INT_IMAGE_1D_ARRAY               = UNSIGNED_INT_IMAGE_1D_ARRAY,
	UNSIGNED_INT_IMAGE_2D_ARRAY               = UNSIGNED_INT_IMAGE_2D_ARRAY,
	UNSIGNED_INT_IMAGE_2D_MULTISAMPLE         = UNSIGNED_INT_IMAGE_2D_MULTISAMPLE,
	UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY   = UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY,

	UNSIGNED_INT_ATOMIC_COUNTER               = UNSIGNED_INT_ATOMIC_COUNTER,
}

/* void GetActiveUniformsiv(uint program, sizei uniformCount, const uint *uniformIndices, enum pname, int *params); */
Active_Uniform_Parameter :: enum u32 {
	UNIFORM_TYPE                        = UNIFORM_TYPE,
	UNIFORM_SIZE                        = UNIFORM_SIZE,
	UNIFORM_NAME_LENGTH                 = UNIFORM_NAME_LENGTH,
	UNIFORM_BLOCK_INDEX                 = UNIFORM_BLOCK_INDEX,
	UNIFORM_OFFSET                      = UNIFORM_OFFSET,
	UNIFORM_ARRAY_STRIDE                = UNIFORM_ARRAY_STRIDE,
	UNIFORM_MATRIX_STRIDE               = UNIFORM_MATRIX_STRIDE,
	UNIFORM_IS_ROW_MAJOR                = UNIFORM_IS_ROW_MAJOR,
	UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX,
}

/* void GetActiveUniformBlockiv(uint program, uint uniformBlockIndex, enum pname, int *params); */
Active_Uniform_Block_Parameter :: enum u32 {
	UNIFORM_BLOCK_BINDING                              = UNIFORM_BLOCK_BINDING,
	UNIFORM_BLOCK_DATA_SIZE                            = UNIFORM_BLOCK_DATA_SIZE,
	UNIFORM_BLOCK_NAME_LENGTH                          = UNIFORM_BLOCK_NAME_LENGTH,
	UNIFORM_BLOCK_ACTIVE_UNIFORMS                      = UNIFORM_BLOCK_ACTIVE_UNIFORMS,
	UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES               = UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES,
	UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER          = UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER,
	UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER    = UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER,
	UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER,
	UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER        = UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER,
	UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER        = UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER,
	UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER         = UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER,
}

/* void GetActiveAtomicCounterBufferiv(uint program, uint bufferIndex, enum pname, int *params); */
Active_Atomic_Counter_Buffer_Parameter :: enum u32 {
	ATOMIC_COUNTER_BUFFER_BINDING                              = ATOMIC_COUNTER_BUFFER_BINDING,
	ATOMIC_COUNTER_BUFFER_DATA_SIZE                            = ATOMIC_COUNTER_BUFFER_DATA_SIZE,
	ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS               = ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS,
	ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES        = ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES,
	ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER          = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER,
	ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER    = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER,
	ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER,
	ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER        = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER,
	ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER        = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER,
	ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER         = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER,
}


/* Subroutine Uniform Variables [7.9] */

/* int GetSubroutineUniformLocation(uint program, enum shadertype, const char *name); */
// TODO(tarik): See comment on _Shader_Type. Probably should be using Shader_Type from helpers.odin here.
Subroutine_Uniform_Shader_Type :: enum u32 {
	COMPUTE_SHADER         = COMPUTE_SHADER,
	FRAGMENT_SHADER        = FRAGMENT_SHADER,
	GEOMETRY_SHADER        = GEOMETRY_SHADER,
	VERTEX_SHADER          = VERTEX_SHADER,
	TESS_EVALUATION_SHADER = TESS_EVALUATION_SHADER,
	TESS_CONTROL_SHADER    = TESS_CONTROL_SHADER,
}

/* uint GetSubroutineIndex(uint program, enum shadertype, const char *name); */
// TODO(tarik): See comment on _Shader_Type. Probably should be using Shader_Type from helpers.odin here.
// shadertype: Subroutine_Uniform_Shader_Type

/* void GetActiveSubroutineName(uint program, enum shadertype, uint index, sizei bufsize, sizei *length, char *name); */
// TODO(tarik): See comment on _Shader_Type. Probably should be using Shader_Type from helpers.odin here.
// shadertype: Subroutine_Uniform_Shader_Type

/* void GetActiveSubroutineUniformName(uint program, enum shadertype, uint index, sizei bufsize, sizei *length, char *name); */
// TODO(tarik): See comment on _Shader_Type. Probably should be using Shader_Type from helpers.odin here.
// shadertype: Subroutine_Uniform_Shader_Type

/* void GetActiveSubroutineUniformiv(uint program, enum shadertype, uint index, enum pname, int *values); */
// TODO(tarik): See comment on _Shader_Type. Probably should be using Shader_Type from helpers.odin here.
// shadertype: Subroutine_Uniform_Shader_Type

Active_Subroutine_Uniform_Parameter :: enum u32 {
	COMPATIBLE_SUBROUTINES     = COMPATIBLE_SUBROUTINES,
	NUM_COMPATIBLE_SUBROUTINES = NUM_COMPATIBLE_SUBROUTINES,

	// NOTE(tarik): These shouldn't exist according to Quick Reference Card
	//              or the specification on page 156, but should exist
	//              according to page 620 of specification.
	UNIFORM_SIZE        = UNIFORM_SIZE,
	UNIFORM_NAME_LENGTH = UNIFORM_NAME_LENGTH,

}

/* void UniformSubroutinesuiv(enum shadertype, sizei count, const uint *indices); */
// shadertype: Subroutine_Uniform_Shader_Type


/* Shader Memory Access [7.12.2] */

/* void MemoryBarrier(bitfield barriers); */
Memory_Barrier_Bits :: enum u32 {
	VERTEX_ATTRIB_ARRAY_BARRIER_BIT  = VERTEX_ATTRIB_ARRAY_BARRIER_BIT,
	ELEMENT_ARRAY_BARRIER_BIT        = ELEMENT_ARRAY_BARRIER_BIT,
	UNIFORM_BARRIER_BIT              = UNIFORM_BARRIER_BIT,
	TEXTURE_FETCH_BARRIER_BIT        = TEXTURE_FETCH_BARRIER_BIT,
	SHADER_IMAGE_ACCESS_BARRIER_BIT  = SHADER_IMAGE_ACCESS_BARRIER_BIT,
	COMMAND_BARRIER_BIT              = COMMAND_BARRIER_BIT,
	PIXEL_BUFFER_BARRIER_BIT         = PIXEL_BUFFER_BARRIER_BIT,
	TEXTURE_UPDATE_BARRIER_BIT       = TEXTURE_UPDATE_BARRIER_BIT,
	BUFFER_UPDATE_BARRIER_BIT        = BUFFER_UPDATE_BARRIER_BIT,
	CLIENT_MAPPED_BUFFER_BARRIER_BIT = CLIENT_MAPPED_BUFFER_BARRIER_BIT,
	QUERY_BUFFER_BARRIER_BIT         = QUERY_BUFFER_BARRIER_BIT,
	FRAMEBUFFER_BARRIER_BIT          = FRAMEBUFFER_BARRIER_BIT,
	TRANSFORM_FEEDBACK_BARRIER_BIT   = TRANSFORM_FEEDBACK_BARRIER_BIT,
	ATOMIC_COUNTER_BARRIER_BIT       = ATOMIC_COUNTER_BARRIER_BIT,
	SHADER_STORAGE_BARRIER_BIT       = SHADER_STORAGE_BARRIER_BIT,

	ALL_BARRIER_BITS                 = ALL_BARRIER_BITS,
}

/* void MemoryBarrierByRegion(bitfield barriers); */
Memory_Barrier_By_Region_Bits :: enum u32 {
	ATOMIC_COUNTER_BARRIER_BIT      = ATOMIC_COUNTER_BARRIER_BIT,
	FRAMEBUFFER_BARRIER_BIT         = FRAMEBUFFER_BARRIER_BIT,
	SHADER_IMAGE_ACCESS_BARRIER_BIT = SHADER_IMAGE_ACCESS_BARRIER_BIT,
	SHADER_STORAGE_BARRIER_BIT      = SHADER_STORAGE_BARRIER_BIT,
	TEXTURE_FETCH_BARRIER_BIT       = TEXTURE_FETCH_BARRIER_BIT,
	UNIFORM_BARRIER_BIT             = UNIFORM_BARRIER_BIT,

	ALL_BARRIER_BITS                = ALL_BARRIER_BITS,
}


/* Shader and Program Queries [7.13] */

/* void GetShaderiv(uint shader, enum pname, int *params); */
Get_Shader_Parameter :: enum u32 {
	SHADER_TYPE          = SHADER_TYPE,
	DELETE_STATUS        = DELETE_STATUS,
	COMPILE_STATUS       = COMPILE_STATUS,
	INFO_LOG_LENGTH      = INFO_LOG_LENGTH,
	SHADER_SOURCE_LENGTH = SHADER_SOURCE_LENGTH,
	SPIR_V_BINARY        = SPIR_V_BINARY,

	// NOTE(tarik): Exists on Quick Reference Card, but not Specification.
	//              See pages 167, 612.
	COMPUTE_SHADER       = COMPUTE_SHADER,
}

/* void GetProgramiv(uint program, enum pname, int *params); */
Get_Program_Parameter :: enum u32 {
	DELETE_STATUS                         = DELETE_STATUS,
	LINK_STATUS                           = LINK_STATUS,
	VALIDATE_STATUS                       = VALIDATE_STATUS,
	INFO_LOG_LENGTH                       = INFO_LOG_LENGTH,
	ATTACHED_SHADERS                      = ATTACHED_SHADERS,
	ACTIVE_ATTRIBUTES                     = ACTIVE_ATTRIBUTES,
	ACTIVE_ATTRIBUTE_MAX_LENGTH           = ACTIVE_ATTRIBUTE_MAX_LENGTH,
	ACTIVE_UNIFORMS                       = ACTIVE_UNIFORMS,
	ACTIVE_UNIFORM_MAX_LENGTH             = ACTIVE_UNIFORM_MAX_LENGTH,
	TRANSFORM_FEEDBACK_BUFFER_MODE        = TRANSFORM_FEEDBACK_BUFFER_MODE,
	TRANSFORM_FEEDBACK_VARYINGS           = TRANSFORM_FEEDBACK_VARYINGS,
	TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH,
	ACTIVE_UNIFORM_BLOCKS                 = ACTIVE_UNIFORM_BLOCKS,
	ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH  = ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH,
	GEOMETRY_VERTICES_OUT                 = GEOMETRY_VERTICES_OUT,
	GEOMETRY_INPUT_TYPE                   = GEOMETRY_INPUT_TYPE,
	GEOMETRY_OUTPUT_TYPE                  = GEOMETRY_OUTPUT_TYPE,
	GEOMETRY_SHADER_INVOCATIONS           = GEOMETRY_SHADER_INVOCATIONS,
	TESS_CONTROL_OUTPUT_VERTICES          = TESS_CONTROL_OUTPUT_VERTICES,
	TESS_GEN_MODE                         = TESS_GEN_MODE,
	TESS_GEN_SPACING                      = TESS_GEN_SPACING,
	TESS_GEN_VERTEX_ORDER                 = TESS_GEN_VERTEX_ORDER,
	TESS_GEN_POINT_MODE                   = TESS_GEN_POINT_MODE,
	COMPUTE_WORK_GROUP_SIZE               = COMPUTE_WORK_GROUP_SIZE,
	PROGRAM_SEPARABLE                     = PROGRAM_SEPARABLE,
	PROGRAM_BINARY_RETRIEVABLE_HINT       = PROGRAM_BINARY_RETRIEVABLE_HINT,
	ACTIVE_ATOMIC_COUNTER_BUFFERS         = ACTIVE_ATOMIC_COUNTER_BUFFERS,

	// NOTE(tarik): This was not listed under the command description.
	// However at other places, this usage was shown (p. 131 of specification).
	PROGRAM_BINARY_LENGTH                 = PROGRAM_BINARY_LENGTH,
}

/* void GetProgramPipelineiv(uint pipeline, enum pname, int *params); */
Program_Pipeline_Parameter :: enum u32 {
	ACTIVE_PROGRAM         = ACTIVE_PROGRAM,
	VERTEX_SHADER          = VERTEX_SHADER,
	TESS_CONTROL_SHADER    = TESS_CONTROL_SHADER,
	TESS_EVALUATION_SHADER = TESS_EVALUATION_SHADER,
	GEOMETRY_SHADER        = GEOMETRY_SHADER,
	FRAGMENT_SHADER        = FRAGMENT_SHADER,
	COMPUTE_SHADER         = COMPUTE_SHADER,
	VALIDATE_STATUS        = VALIDATE_STATUS,
	INFO_LOG_LENGTH        = INFO_LOG_LENGTH,
}

/* void GetShaderPrecisionFormat(enum shadertype, enum precisiontype, int *range, int *precision); */
Shader_Precision_Format_Shader_Type :: enum u32 {
	VERTEX_SHADER   = VERTEX_SHADER,
	FRAGMENT_SHADER = FRAGMENT_SHADER,
}

/* void GetUniformSubroutineuiv(enum shadertype, int location, uint *params); */
// shadertype: Subroutine_Uniform_Shader_Type

/* GetProgramStageiv(uint program, enum shadertype, enum pname, int *values); */
// shadertype: Subroutine_Uniform_Shader_Type

Get_Program_Stageiv_Parameter :: enum u32 {
	ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS  = ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS,
	ACTIVE_SUBROUTINE_UNIFORMS           = ACTIVE_SUBROUTINE_UNIFORMS,
	ACTIVE_SUBROUTINES                   = ACTIVE_SUBROUTINES,
	ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH,
	ACTIVE_SUBROUTINE_MAX_LENGTH         = ACTIVE_SUBROUTINE_MAX_LENGTH,
}
