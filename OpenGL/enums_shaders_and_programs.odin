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
Shader_Binary_Format :: enum u32 {
	SHADER_BINARY_FORMAT_SPIR_V = SHADER_BINARY_FORMAT_SPIR_V,
}


/* Program Objects [7.3] */

/* uint CreateShaderProgramv(enum type, sizei count, const char * const * strings); */
// type: Shader_Type

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
	Compute_Shader_Bit         = COMPUTE_SHADER_BIT,
	Vertex_Shader_Bit          = VERTEX_SHADER_BIT,
	Tess_Control_Shader_Bit    = TESS_CONTROL_SHADER_BIT,
	Tess_Evaluation_Shader_Bit = TESS_EVALUATION_SHADER_BIT,
	Geometry_Shader_Bit        = GEOMETRY_SHADER_BIT,
	Fragment_Shader_Bit        = FRAGMENT_SHADER_BIT,

	All_Shader_Bits            = ALL_SHADER_BITS,
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
	Float                                     = FLOAT,
	Float_Vec2                                = FLOAT_VEC2,
	Float_Vec3                                = FLOAT_VEC3,
	Float_Vec4                                = FLOAT_VEC4,

	Double                                    = DOUBLE,
	Double_Vec2                               = DOUBLE_VEC2,
	Double_Vec3                               = DOUBLE_VEC3,
	Double_Vec4                               = DOUBLE_VEC4,

	Int                                       = INT,
	Int_Vec2                                  = INT_VEC2,
	Int_Vec3                                  = INT_VEC3,
	Int_Vec4                                  = INT_VEC4,

	Unsigned_Int                              = UNSIGNED_INT,
	Unsigned_Int_Vec2                         = UNSIGNED_INT_VEC2,
	Unsigned_Int_Vec3                         = UNSIGNED_INT_VEC3,
	Unsigned_Int_Vec4                         = UNSIGNED_INT_VEC4,

	Bool                                      = BOOL,
	Bool_Vec2                                 = BOOL_VEC2,
	Bool_Vec3                                 = BOOL_VEC3,
	Bool_Vec4                                 = BOOL_VEC4,

	Float_Mat2                                = FLOAT_MAT2,
	Float_Mat3                                = FLOAT_MAT3,
	Float_Mat4                                = FLOAT_MAT4,
	Float_Mat2x3                              = FLOAT_MAT2x3,
	Float_Mat2x4                              = FLOAT_MAT2x4,
	Float_Mat3x2                              = FLOAT_MAT3x2,
	Float_Mat3x4                              = FLOAT_MAT3x4,
	Float_Mat4x2                              = FLOAT_MAT4x2,
	Float_Mat4x3                              = FLOAT_MAT4x3,

	Double_Mat2                               = DOUBLE_MAT2,
	Double_Mat3                               = DOUBLE_MAT3,
	Double_Mat4                               = DOUBLE_MAT4,
	Double_Mat2x3                             = DOUBLE_MAT2x3,
	Double_Mat2x4                             = DOUBLE_MAT2x4,
	Double_Mat3x2                             = DOUBLE_MAT3x2,
	Double_Mat3x4                             = DOUBLE_MAT3x4,
	Double_Mat4x2                             = DOUBLE_MAT4x2,
	Double_Mat4x3                             = DOUBLE_MAT4x3,

	Sampler_1D                                = SAMPLER_1D,
	Sampler_2D                                = SAMPLER_2D,
	Sampler_3D                                = SAMPLER_3D,
	Sampler_Cube                              = SAMPLER_CUBE,
	Sampler_1D_Shadow                         = SAMPLER_1D_SHADOW,
	Sampler_2D_Shadow                         = SAMPLER_2D_SHADOW,
	Sampler_1D_Array                          = SAMPLER_1D_ARRAY,
	Sampler_2D_Array                          = SAMPLER_2D_ARRAY,
	Sampler_1D_Array_Shadow                   = SAMPLER_1D_ARRAY_SHADOW,
	Sampler_2D_Array_Shadow                   = SAMPLER_2D_ARRAY_SHADOW,
	Sampler_2D_Multisample                    = SAMPLER_2D_MULTISAMPLE,
	Sampler_2D_Multisample_Array              = SAMPLER_2D_MULTISAMPLE_ARRAY,
	Sampler_Cube_Shadow                       = SAMPLER_CUBE_SHADOW,
	Sampler_Buffer                            = SAMPLER_BUFFER,
	Sampler_2D_Rect                           = SAMPLER_2D_RECT,
	Sampler_2D_Rect_Shadow                    = SAMPLER_2D_RECT_SHADOW,

	Int_Sampler_1D                            = INT_SAMPLER_1D,
	Int_Sampler_2D                            = INT_SAMPLER_2D,
	Int_Sampler_3D                            = INT_SAMPLER_3D,
	Int_Sampler_Cube                          = INT_SAMPLER_CUBE,
	Int_Sampler_1D_Array                      = INT_SAMPLER_1D_ARRAY,
	Int_Sampler_2D_Array                      = INT_SAMPLER_2D_ARRAY,
	Int_Sampler_2D_Multisample                = INT_SAMPLER_2D_MULTISAMPLE,
	Int_Sampler_2D_Multisample_Array          = INT_SAMPLER_2D_MULTISAMPLE_ARRAY,
	Int_Sampler_Buffer                        = INT_SAMPLER_BUFFER,
	Int_Sampler_2D_Rect                       = INT_SAMPLER_2D_RECT,

	Unsigned_Int_Sampler_1D                   = UNSIGNED_INT_SAMPLER_1D,
	Unsigned_Int_Sampler_2D                   = UNSIGNED_INT_SAMPLER_2D,
	Unsigned_Int_Sampler_3D                   = UNSIGNED_INT_SAMPLER_3D,
	Unsigned_Int_Sampler_Cube                 = UNSIGNED_INT_SAMPLER_CUBE,
	Unsigned_Int_Sampler_1D_Array             = UNSIGNED_INT_SAMPLER_1D_ARRAY,
	Unsigned_Int_Sampler_2D_Array             = UNSIGNED_INT_SAMPLER_2D_ARRAY,
	Unsigned_Int_Sampler_2D_Multisample       = UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE,
	Unsigned_Int_Sampler_2D_Multisample_Array = UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY,
	Unsigned_Int_Sampler_Buffer               = UNSIGNED_INT_SAMPLER_BUFFER,
	Unsigned_Int_Sampler_2D_Rect              = UNSIGNED_INT_SAMPLER_2D_RECT,

	Image_1D                                  = IMAGE_1D,
	Image_2D                                  = IMAGE_2D,
	Image_3D                                  = IMAGE_3D,
	Image_2D_Rect                             = IMAGE_2D_RECT,
	Image_Cube                                = IMAGE_CUBE,
	Image_Buffer                              = IMAGE_BUFFER,
	Image_1D_Array                            = IMAGE_1D_ARRAY,
	Image_2D_Array                            = IMAGE_2D_ARRAY,
	Image_2D_Multisample                      = IMAGE_2D_MULTISAMPLE,
	Image_2D_Multisample_Array                = IMAGE_2D_MULTISAMPLE_ARRAY,

	Int_Image_1D                              = INT_IMAGE_1D,
	Int_Image_2D                              = INT_IMAGE_2D,
	Int_Image_3D                              = INT_IMAGE_3D,
	Int_Image_2D_Rect                         = INT_IMAGE_2D_RECT,
	Int_Image_Cube                            = INT_IMAGE_CUBE,
	Int_Image_Buffer                          = INT_IMAGE_BUFFER,
	Int_Image_1D_Array                        = INT_IMAGE_1D_ARRAY,
	Int_Image_2D_Array                        = INT_IMAGE_2D_ARRAY,
	Int_Image_2D_Multisample                  = INT_IMAGE_2D_MULTISAMPLE,
	Int_Image_2D_Multisample_Array            = INT_IMAGE_2D_MULTISAMPLE_ARRAY,

	Unsigned_Int_Image_1D                     = UNSIGNED_INT_IMAGE_1D,
	Unsigned_Int_Image_2D                     = UNSIGNED_INT_IMAGE_2D,
	Unsigned_Int_Image_3D                     = UNSIGNED_INT_IMAGE_3D,
	Unsigned_Int_Image_2D_Rect                = UNSIGNED_INT_IMAGE_2D_RECT,
	Unsigned_Int_Image_Cube                   = UNSIGNED_INT_IMAGE_CUBE,
	Unsigned_Int_Image_Buffer                 = UNSIGNED_INT_IMAGE_BUFFER,
	Unsigned_Int_Image_1D_Array               = UNSIGNED_INT_IMAGE_1D_ARRAY,
	Unsigned_Int_Image_2D_Array               = UNSIGNED_INT_IMAGE_2D_ARRAY,
	Unsigned_Int_Image_2D_Multisample         = UNSIGNED_INT_IMAGE_2D_MULTISAMPLE,
	Unsigned_Int_Image_2D_Multisample_Array   = UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY,

	Unsigned_Int_Atomic_Counter               = UNSIGNED_INT_ATOMIC_COUNTER,
}

/* void GetActiveUniformsiv(uint program, sizei uniformCount, const uint *uniformIndices, enum pname, int *params); */
Active_Uniform_Parameter :: enum u32 {
	Uniform_Type                        = UNIFORM_TYPE,
	Uniform_Size                        = UNIFORM_SIZE,
	Uniform_Name_Length                 = UNIFORM_NAME_LENGTH,
	Uniform_Block_Index                 = UNIFORM_BLOCK_INDEX,
	Uniform_Offset                      = UNIFORM_OFFSET,
	Uniform_Array_Stride                = UNIFORM_ARRAY_STRIDE,
	Uniform_Matrix_Stride               = UNIFORM_MATRIX_STRIDE,
	Uniform_Is_Row_Major                = UNIFORM_IS_ROW_MAJOR,
	Uniform_Atomic_Counter_Buffer_Index = UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX,
}

/* void GetActiveUniformBlockiv(uint program, uint uniformBlockIndex, enum pname, int *params); */
Active_Uniform_Block_Parameter :: enum u32 {
	Uniform_Block_Binding                              = UNIFORM_BLOCK_BINDING,
	Uniform_Block_Data_Size                            = UNIFORM_BLOCK_DATA_SIZE,
	Uniform_Block_Name_Length                          = UNIFORM_BLOCK_NAME_LENGTH,
	Uniform_Block_Active_Uniforms                      = UNIFORM_BLOCK_ACTIVE_UNIFORMS,
	Uniform_Block_Active_Uniform_Indices               = UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES,
	Uniform_Block_Referenced_By_Vertex_Shader          = UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER,
	Uniform_Block_Referenced_By_Tess_Control_Shader    = UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER,
	Uniform_Block_Referenced_By_Tess_Evaluation_Shader = UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER,
	Uniform_Block_Referenced_By_Geometry_Shader        = UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER,
	Uniform_Block_Referenced_By_Fragment_Shader        = UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER,
	Uniform_Block_Referenced_By_Compute_Shader         = UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER,
}

/* void GetActiveAtomicCounterBufferiv(uint program, uint bufferIndex, enum pname, int *params); */
Active_Atomic_Counter_Buffer_Parameter :: enum u32 {
	Atomic_Counter_Buffer_Binding                              = ATOMIC_COUNTER_BUFFER_BINDING,
	Atomic_Counter_Buffer_Data_Size                            = ATOMIC_COUNTER_BUFFER_DATA_SIZE,
	Atomic_Counter_Buffer_Active_Atomic_Counters               = ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS,
	Atomic_Counter_Buffer_Active_Atomic_Counter_Indices        = ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES,
	Atomic_Counter_Buffer_Referenced_By_Vertex_Shader          = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER,
	Atomic_Counter_Buffer_Referenced_By_Tess_Control_Shader    = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER,
	Atomic_Counter_Buffer_Referenced_By_Tess_Evaluation_Shader = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER,
	Atomic_Counter_Buffer_Referenced_By_Geometry_Shader        = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER,
	Atomic_Counter_Buffer_Referenced_By_Fragment_Shader        = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER,
	Atomic_Counter_Buffer_Referenced_By_Compute_Shader         = ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER,
}


/* Subroutine Uniform Variables [7.9] */

/* int GetSubroutineUniformLocation(uint program, enum shadertype, const char *name); */
// TODO(tarik): See comment on _Shader_Type. Probably should be using Shader_Type from helpers.odin here.
Subroutine_Uniform_Shader_Type :: enum u32 {
	Compute_Shader         = COMPUTE_SHADER,
	Fragment_Shader        = FRAGMENT_SHADER,
	Geometry_Shader        = GEOMETRY_SHADER,
	Vertex_Shader          = VERTEX_SHADER,
	Tess_Evaluation_Shader = TESS_EVALUATION_SHADER,
	Tess_Control_Shader    = TESS_CONTROL_SHADER,
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
	Compatible_Subroutines     = COMPATIBLE_SUBROUTINES,
	Num_Compatible_Subroutines = NUM_COMPATIBLE_SUBROUTINES,

	// NOTE(tarik): These shouldn't exist according to Quick Reference Card
	//              or the specification on page 156, but should exist
	//              according to page 620 of specification.
	Uniform_Size        = UNIFORM_SIZE,
	Uniform_Name_Length = UNIFORM_NAME_LENGTH,

}

/* void UniformSubroutinesuiv(enum shadertype, sizei count, const uint *indices); */
// shadertype: Subroutine_Uniform_Shader_Type


/* Shader Memory Access [7.12.2] */

/* void MemoryBarrier(bitfield barriers); */
Memory_Barrier_Bits :: enum u32 {
	Vertex_Attrib_Array_Barrier_Bit  = VERTEX_ATTRIB_ARRAY_BARRIER_BIT,
	Element_Array_Barrier_Bit        = ELEMENT_ARRAY_BARRIER_BIT,
	Uniform_Barrier_Bit              = UNIFORM_BARRIER_BIT,
	Texture_Fetch_Barrier_Bit        = TEXTURE_FETCH_BARRIER_BIT,
	Shader_Image_Access_Barrier_Bit  = SHADER_IMAGE_ACCESS_BARRIER_BIT,
	Command_Barrier_Bit              = COMMAND_BARRIER_BIT,
	Pixel_Buffer_Barrier_Bit         = PIXEL_BUFFER_BARRIER_BIT,
	Texture_Update_Barrier_Bit       = TEXTURE_UPDATE_BARRIER_BIT,
	Buffer_Update_Barrier_Bit        = BUFFER_UPDATE_BARRIER_BIT,
	Client_Mapped_Buffer_Barrier_Bit = CLIENT_MAPPED_BUFFER_BARRIER_BIT,
	Query_Buffer_Barrier_Bit         = QUERY_BUFFER_BARRIER_BIT,
	Framebuffer_Barrier_Bit          = FRAMEBUFFER_BARRIER_BIT,
	Transform_Feedback_Barrier_Bit   = TRANSFORM_FEEDBACK_BARRIER_BIT,
	Atomic_Counter_Barrier_Bit       = ATOMIC_COUNTER_BARRIER_BIT,
	Shader_Storage_Barrier_Bit       = SHADER_STORAGE_BARRIER_BIT,

	All_Barrier_Bits                 = ALL_BARRIER_BITS,
}

/* void MemoryBarrierByRegion(bitfield barriers); */
Memory_Barrier_By_Region_Bits :: enum u32 {
	Atomic_Counter_Barrier_Bit      = ATOMIC_COUNTER_BARRIER_BIT,
	Framebuffer_Barrier_Bit         = FRAMEBUFFER_BARRIER_BIT,
	Shader_Image_Access_Barrier_Bit = SHADER_IMAGE_ACCESS_BARRIER_BIT,
	Shader_Storage_Barrier_Bit      = SHADER_STORAGE_BARRIER_BIT,
	Texture_Fetch_Barrier_Bit       = TEXTURE_FETCH_BARRIER_BIT,
	Uniform_Barrier_Bit             = UNIFORM_BARRIER_BIT,

	All_Barrier_Bits                = ALL_BARRIER_BITS,
}


/* Shader and Program Queries [7.13] */

/* void GetShaderiv(uint shader, enum pname, int *params); */
Get_Shader_Parameter :: enum u32 {
	Shader_Type          = SHADER_TYPE,
	Delete_Status        = DELETE_STATUS,
	Compile_Status       = COMPILE_STATUS,
	Info_Log_Length      = INFO_LOG_LENGTH,
	Shader_Source_Length = SHADER_SOURCE_LENGTH,
	SPIR_V_Binary        = SPIR_V_BINARY,

	// TODO(tarik): Exists on Quick Reference Card, but not Specification.
	//              See pages 167, 612.
	// Compute_Shader       = COMPUTE_SHADER,
}

/* void GetProgramiv(uint program, enum pname, int *params); */
Get_Program_Parameter :: enum u32 {
	Delete_Status                         = DELETE_STATUS,
	Link_Status                           = LINK_STATUS,
	Validate_Status                       = VALIDATE_STATUS,
	Info_Log_Length                       = INFO_LOG_LENGTH,
	Attached_Shaders                      = ATTACHED_SHADERS,
	Active_Attributes                     = ACTIVE_ATTRIBUTES,
	Active_Attribute_Max_Length           = ACTIVE_ATTRIBUTE_MAX_LENGTH,
	Active_Uniforms                       = ACTIVE_UNIFORMS,
	Active_Uniform_Max_Length             = ACTIVE_UNIFORM_MAX_LENGTH,
	Transform_Feedback_Buffer_Mode        = TRANSFORM_FEEDBACK_BUFFER_MODE,
	Transform_Feedback_Varyings           = TRANSFORM_FEEDBACK_VARYINGS,
	Transform_Feedback_Varying_Max_Length = TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH,
	Active_Uniform_Blocks                 = ACTIVE_UNIFORM_BLOCKS,
	Active_Uniform_Block_Max_Name_Length  = ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH,
	Geometry_Vertices_Out                 = GEOMETRY_VERTICES_OUT,
	Geometry_Input_Type                   = GEOMETRY_INPUT_TYPE,
	Geometry_Output_Type                  = GEOMETRY_OUTPUT_TYPE,
	Geometry_Shader_Invocations           = GEOMETRY_SHADER_INVOCATIONS,
	Tess_Control_Output_Vertices          = TESS_CONTROL_OUTPUT_VERTICES,
	Tess_Gen_Mode                         = TESS_GEN_MODE,
	Tess_Gen_Spacing                      = TESS_GEN_SPACING,
	Tess_Gen_Vertex_Order                 = TESS_GEN_VERTEX_ORDER,
	Tess_Gen_Point_Mode                   = TESS_GEN_POINT_MODE,
	Compute_Work_Group_Size               = COMPUTE_WORK_GROUP_SIZE,
	Program_Separable                     = PROGRAM_SEPARABLE,
	Program_Binary_Retrievable_Hint       = PROGRAM_BINARY_RETRIEVABLE_HINT,
	Active_Atomic_Counter_Buffers         = ACTIVE_ATOMIC_COUNTER_BUFFERS,

	// NOTE(tarik): This was not listed under the command description.
	// However at other places, this usage was shown (p. 131 of specification).
	Program_Binary_Length                 = PROGRAM_BINARY_LENGTH,
}

/* void GetProgramPipelineiv(uint pipeline, enum pname, int *params); */
Program_Pipeline_Parameter :: enum u32 {
	Active_Program         = ACTIVE_PROGRAM,
	Vertex_Shader          = VERTEX_SHADER,
	Tess_Control_Shader    = TESS_CONTROL_SHADER,
	Tess_Evaluation_Shader = TESS_EVALUATION_SHADER,
	Geometry_Shader        = GEOMETRY_SHADER,
	Fragment_Shader        = FRAGMENT_SHADER,
	Compute_Shader         = COMPUTE_SHADER,
	Validate_Status        = VALIDATE_STATUS,
	Info_Log_Length        = INFO_LOG_LENGTH,
}

/* void GetShaderPrecisionFormat(enum shadertype, enum precisiontype, int *range, int *precision); */
Shader_Precision_Format_Shader_Type :: enum u32 {
	Vertex_Shader   = VERTEX_SHADER,
	Fragment_Shader = FRAGMENT_SHADER,
}

Shader_Precision_Type :: enum u32 {
	Low_Float    = LOW_FLOAT,
	Medium_Float = MEDIUM_FLOAT,
	High_Float   = HIGH_FLOAT,
	Low_Int      = LOW_INT,
	Medium_Int   = MEDIUM_INT,
	High_Int     = HIGH_INT,
}

/* void GetUniformSubroutineuiv(enum shadertype, int location, uint *params); */
// shadertype: Subroutine_Uniform_Shader_Type

/* GetProgramStageiv(uint program, enum shadertype, enum pname, int *values); */
// shadertype: Subroutine_Uniform_Shader_Type

Program_Stage_Parameter :: enum u32 {
	Active_Subroutine_Uniform_Locations  = ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS,
	Active_Subroutine_Uniforms           = ACTIVE_SUBROUTINE_UNIFORMS,
	Active_Subroutines                   = ACTIVE_SUBROUTINES,
	Active_Subroutine_Uniform_Max_Length = ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH,
	Active_Subroutine_Max_Length         = ACTIVE_SUBROUTINE_MAX_LENGTH,
}
