package vendor_gl

/* void GetActiveAttrib(uint program, uint index, sizei bufSize, sizei *length, int *size, enum *type, char *name); */
Attribute_Type :: enum u32 {
	NONE              = NONE, // NOTE(tarik): Only according to Ref. Card.
	FLOAT             = FLOAT,
	FLOAT_VEC2        = FLOAT_VEC2,
	FLOAT_VEC3        = FLOAT_VEC3,
	FLOAT_VEC4        = FLOAT_VEC4,
	FLOAT_MAT2        = FLOAT_MAT2,
	FLOAT_MAT3        = FLOAT_MAT3,
	FLOAT_MAT4        = FLOAT_MAT4,
	FLOAT_MAT2x3      = FLOAT_MAT2x3,
	FLOAT_MAT2x4      = FLOAT_MAT2x4,
	FLOAT_MAT3x2      = FLOAT_MAT3x2,
	FLOAT_MAT3x4      = FLOAT_MAT3x4,
	FLOAT_MAT4x2      = FLOAT_MAT4x2,
	FLOAT_MAT4x3      = FLOAT_MAT4x3,

	INT               = INT,
	INT_VEC2          = INT_VEC2,
	INT_VEC3          = INT_VEC3,
	INT_VEC4          = INT_VEC4,

	UNSIGNED_INT      = UNSIGNED_INT,
	UNSIGNED_INT_VEC2 = UNSIGNED_INT_VEC2,
	UNSIGNED_INT_VEC3 = UNSIGNED_INT_VEC3,
	UNSIGNED_INT_VEC4 = UNSIGNED_INT_VEC4,

	DOUBLE            = DOUBLE,
	DOUBLE_VEC2       = DOUBLE_VEC2,
	DOUBLE_VEC3       = DOUBLE_VEC3,
	DOUBLE_VEC4       = DOUBLE_VEC4,
	DOUBLE_MAT2       = DOUBLE_MAT2,
	DOUBLE_MAT3       = DOUBLE_MAT3,
	DOUBLE_MAT4       = DOUBLE_MAT4,
	DOUBLE_MAT2x3     = DOUBLE_MAT2x3,
	DOUBLE_MAT2x4     = DOUBLE_MAT2x4,
	DOUBLE_MAT3x2     = DOUBLE_MAT3x2,
	DOUBLE_MAT3x4     = DOUBLE_MAT3x4,
	DOUBLE_MAT4x2     = DOUBLE_MAT4x2,
	DOUBLE_MAT4x3     = DOUBLE_MAT4x3,
}


/* Transform Feedback Variables [11.1.2] */

/* void TransformFeedbackVaryings(uint program, sizei count, const char * const *varyings, enum bufferMode); */
Transform_Feedback_Buffer_Mode :: enum u32 {
	INTERLEAVED_ATTRIBS = INTERLEAVED_ATTRIBS,
	SEPARATE_ATTRIBS    = SEPARATE_ATTRIBS,
}

/* void GetTransformFeedbackVarying(uint program, uint index, sizei bufSize, sizei *length, sizei *size, enum *type, char *name); */
// type: Attribute_Type


/* Tessellation Prim. Generation [11.2.2] */

/* void PatchParameterfv(enum pname, const float *values); */
Patch_Parameterfv :: enum u32 {
	PATCH_DEFAULT_OUTER_LEVEL = PATCH_DEFAULT_OUTER_LEVEL,
	PATCH_DEFAULT_INNER_LEVEL = PATCH_DEFAULT_INNER_LEVEL,
}
