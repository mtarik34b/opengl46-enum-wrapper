package vendor_gl

/* Transform Feedback [13.2] */

/* void BindTransformFeedback(enum target, uint id); */
Transform_Feedback_Target :: enum u32 {
	TRANSFORM_FEEDBACK = TRANSFORM_FEEDBACK,
}

/* void BeginTransformFeedback(enum primitiveMode); */
Transform_Feedback_Primitive_Mode :: enum u32 {
	TRIANGLES = TRIANGLES,
	LINES     = LINES,
	POINTS    = POINTS,
}


/* Transform Feedback Drawing [13.2.3] */

/* void DrawTransformFeedback(enum mode, uint id); */
// mode: Draw_Mode (from other file)

/* void DrawTransformFeedbackInstanced(enum mode, uint id, sizei instancecount); */
// mode: Draw_Mode (from other file)

/* void DrawTransformFeedbackStream(enum mode, uint id, uint stream); */
// mode: Draw_Mode (from other file)

/* DrawTransformFeedbackStreamInstanced(enum mode, uint id, uint stream, sizei instancecount); */
// mode: Draw_Mode (from other file)


/* Flatshading [13.4] */

/* void ProvokingVertex(enum provokeMode); */
Provoking_Vertex_Mode :: enum u32 {
	FIRST_VERTEX_CONVENTION = FIRST_VERTEX_CONVENTION,
	LAST_VERTEX_CONVENTION  = LAST_VERTEX_CONVENTION,
}


/* Primitive Clipping [13.5] */

/* void ClipControl(enum origin, enum depth); */
Clip_Control_Origin :: enum u32 {
	LOWER_LEFT = LOWER_LEFT,
	UPPER_LEFT = UPPER_LEFT,
}

Clip_Control_Depth :: enum u32 {
	NEGATIVE_ONE_TO_ONE = NEGATIVE_ONE_TO_ONE,
	ZERO_TO_ONE         = ZERO_TO_ONE,
}

/* Controlling Viewport [13.6.1] */
/**/
