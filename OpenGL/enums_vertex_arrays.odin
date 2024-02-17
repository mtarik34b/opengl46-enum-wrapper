package vendor_gl

/* Vertex Array Objects [10.3.1] */
/**/


/* Generic Vertex Attribute Arrays [10.3.2] */

/* void VertexAttribFormat(uint attribindex, int size, enum type, boolean normalized, unit relativeoffset); */
Vertex_Attrib_Format_Type :: enum u32 {
	BYTE                         = BYTE,
	UNSIGNED_BYTE                = UNSIGNED_BYTE,
	SHORT                        = SHORT,
	UNSIGNED_SHORT               = UNSIGNED_SHORT,
	INT                          = INT,
	UNSIGNED_INT                 = UNSIGNED_INT,
	FLOAT                        = FLOAT,
	HALF_FLOAT                   = HALF_FLOAT,
	DOUBLE                       = DOUBLE,
	FIXED                        = FIXED,
	INT_2_10_10_10_REV           = INT_2_10_10_10_REV,
	UNSIGNED_INT_2_10_10_10_REV  = UNSIGNED_INT_2_10_10_10_REV,
	UNSIGNED_INT_10F_11F_11F_REV = UNSIGNED_INT_10F_11F_11F_REV,
}

/* void VertexAttribIFormat(uint attribindex, int size, enum type, unit relativeoffset); */
Vertex_AttribI_Format_Type :: enum u32 {
	BYTE           = BYTE,
	UNSIGNED_BYTE  = UNSIGNED_BYTE,
	SHORT          = SHORT,
	UNSIGNED_SHORT = UNSIGNED_SHORT,
	INT            = INT,
	UNSIGNED_INT   = UNSIGNED_INT,
}

/* void VertexAttribLFormat(uint attribindex, int size, enum type, unit relativeoffset); */
Vertex_AttribL_Format_Type :: enum u32 {
	DOUBLE = DOUBLE,
}

/* void VertexArrayAttribFormat(uint vaobj, uint attribindex, int size, enum type, boolean normalized, uint relativeoffset); */
// type: Vertex_Attrib_Format_Type

/* void VertexArrayAttribIFormat(uint vaobj, uint attribindex, int size, enum type, uint relativeoffset); */
// type: Vertex_AttribI_Format_Type

/* void VertexArrayAttribLFormat(uint vaobj, uint attribindex, int size, enum type, uint relativeoffset); */
// type: Vertex_AttribL_Format_Type

/* void VertexAttribPointer(uint index, int size, enum type, boolean normalized, sizei stride, const void *pointer); */
// type: Vertex_Attrib_Format_Type

/* void VertexAttribIPointer(uint index, int size, enum type, sizei stride, const void *pointer); */
// type: Vertex_AttribI_Format_Type

/* void VertexAttribLPointer(uint index, int size, enum type, sizei stride, const void*pointer); */
// type: Vertex_AttribL_Format_Type


/* Vertex Attribute Divisors [10.3.4] */


/* Primitive Restart [10.3.6] */


/* Drawing Commands [10.4] */

/* void DrawArrays(enum mode, int first, sizei count); */
Draw_Mode :: enum u32 {
	POINTS                   = POINTS,
	LINE_STRIP               = LINE_STRIP,
	LINE_LOOP                = LINE_LOOP,
	LINES                    = LINES,
	TRIANGLE_STRIP           = TRIANGLE_STRIP,
	TRIANGLE_FAN             = TRIANGLE_FAN,
	TRIANGLES                = TRIANGLES,
	LINES_ADJACENCY          = LINES_ADJACENCY,
	LINE_STRIP_ADJACENCY     = LINE_STRIP_ADJACENCY,
	TRIANGLES_ADJACENCY      = TRIANGLES_ADJACENCY,
	TRIANGLE_STRIP_ADJACENCY = TRIANGLE_STRIP_ADJACENCY,
	PATCHES                  = PATCHES,
}

Draw_Type :: enum u32 {
	UNSIGNED_BYTE  = UNSIGNED_BYTE,
	UNSIGNED_SHORT = UNSIGNED_SHORT,
	UNSIGNED_INT   = UNSIGNED_INT,
}

/* void DrawArraysInstancedBaseInstance(enum mode, int first, sizei count, sizei instancecount, uint baseinstance); */
// mode: Draw_Mode

/* void DrawArraysInstanced(enum mode, int first, sizei count, sizei instancecount); */
// mode: Draw_Mode

/* void DrawArraysIndirect(enum mode, const void *indirect); */
// mode: Draw_Mode

/* void MultiDrawArrays(enum mode, const int *first, const sizei *count, sizei drawcount); */
// mode: Draw_Mode

/* void MultiDrawArraysIndirect(enum mode, const void *indirect, sizei drawcount, sizei stride); */
// mode: Draw_Mode

/* void MultiDrawArraysIndirectCount(enum mode, const void *indirect, intptr drawcount, intptr maxdrawcount, sizei stride); */
// mode: Draw_Mode

/* void DrawElements(enum mode, sizei count, enum type, const void *indices); */
// mode: Draw_Mode
// type: Draw_Type

/* void DrawElementsInstancedBaseInstance(enum mode, sizei count, enum type, const void *indices, sizei instancecount, uint baseinstance); */
// mode: Draw_Mode
// type: Draw_Type

/* void DrawElementsInstanced(enum mode, sizei count, enum type, const void *indices, sizei instancecount); */
// mode: Draw_Mode
// type: Draw_Type

/* void MultiDrawElements(enum mode, const sizei *count, enum type, const void * const *indices, sizei drawcount); */
// mode: Draw_Mode
// type: Draw_Type

/* void DrawRangeElements(enum mode, uint start, uint end, sizei count, enum type, const void *indices); */
// mode: Draw_Mode
// type: Draw_Type

/* void DrawElementsBaseVertex(enum mode, sizei count, enum type, const void *indices, int basevertex); */
// mode: Draw_Mode
// type: Draw_Type

/* void DrawRangeElementsBaseVertex(enum mode, uint start, uint end, sizei count, enum type, const void *indices, int basevertex); */
// mode: Draw_Mode
// type: Draw_Type

/* void DrawElementsInstancedBaseVertex(enum mode, sizei count, enum type, const void *indices, sizei instancecount, int basevertex); */
// mode: Draw_Mode
// type: Draw_Type

/* void DrawElementsInstancedBaseVertexBaseInstance(enum mode, sizei count, enum type, const void *indices, sizei instancecount, int basevertex, uint baseinstance); */
// mode: Draw_Mode
// type: Draw_Type

/* void DrawElementsIndirect(enum mode, enum type, const void *indirect); */
// mode: Draw_Mode
// type: Draw_Type

/* void MultiDrawElementsIndirect(enum mode, enum type, const void *indirect, sizei drawcount, sizei stride); */
// mode: Draw_Mode
// type: Draw_Type

/* void MultiDrawElementsIndirectCount(enum mode, enum type, const void *indirect, intptr drawcount, sizei maxdrawcount, sizei stride); */
// mode: Draw_Mode
// type: Draw_Type

/* void MultiDrawElementsBaseVertex(enum mode, const sizei *count, enum type, const void *const *indices, sizei drawcount, const int *basevertex); */
// mode: Draw_Mode
// type: Draw_Type


/* Vertex Array Queries [10.5] */

/* void GetVertexArrayiv(uint vaobj, enum pname, int *param); */
GetVertexArrayiv_Parameter :: enum u32 {
	ELEMENT_ARRAY_BUFFER_BINDING = ELEMENT_ARRAY_BUFFER_BINDING,
}

/* void GetVertexArrayIndexediv(uint vaobj, uint index, enum pname, int *param); */
Vertex_Array_Indexediv_Parameter :: enum u32 {
	VERTEX_ATTRIB_ARRAY_ENABLED        = VERTEX_ATTRIB_ARRAY_ENABLED,
	VERTEX_ATTRIB_ARRAY_SIZE           = VERTEX_ATTRIB_ARRAY_SIZE,
	VERTEX_ATTRIB_ARRAY_STRIDE         = VERTEX_ATTRIB_ARRAY_STRIDE,
	VERTEX_ATTRIB_ARRAY_TYPE           = VERTEX_ATTRIB_ARRAY_TYPE,
	VERTEX_ATTRIB_ARRAY_NORMALIZED     = VERTEX_ATTRIB_ARRAY_NORMALIZED,
	VERTEX_ATTRIB_ARRAY_INTEGER        = VERTEX_ATTRIB_ARRAY_INTEGER,
	VERTEX_ATTRIB_ARRAY_LONG           = VERTEX_ATTRIB_ARRAY_LONG,
	VERTEX_ATTRIB_ARRAY_DIVISOR        = VERTEX_ATTRIB_ARRAY_DIVISOR,
	VERTEX_ATTRIB_RELATIVE_OFFSET      = VERTEX_ATTRIB_RELATIVE_OFFSET,
	VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = VERTEX_ATTRIB_ARRAY_BUFFER_BINDING,
	VERTEX_BINDING_STRIDE              = VERTEX_BINDING_STRIDE,
	VERTEX_BINDING_DIVISOR             = VERTEX_BINDING_DIVISOR,
	VERTEX_BINDING_BUFFER              = VERTEX_BINDING_BUFFER,
}

/* void GetVertexArrayIndexed64iv(uint vaobj, uint index, enum pname, int64 *param); */
Vertex_Array_Indexed64iv_Parameter :: enum u32 {
	VERTEX_BINDING_OFFSET = VERTEX_BINDING_OFFSET,
}

/* void GetVertexAttribdv(uint index, enum pname, T *params); */
Vertex_Attrib_Parameter :: enum u32 {
	VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = VERTEX_ATTRIB_ARRAY_BUFFER_BINDING,
	VERTEX_ATTRIB_ARRAY_ENABLED        = VERTEX_ATTRIB_ARRAY_ENABLED,
	VERTEX_ATTRIB_ARRAY_SIZE           = VERTEX_ATTRIB_ARRAY_SIZE,
	VERTEX_ATTRIB_ARRAY_STRIDE         = VERTEX_ATTRIB_ARRAY_STRIDE,
	VERTEX_ATTRIB_ARRAY_TYPE           = VERTEX_ATTRIB_ARRAY_TYPE,
	VERTEX_ATTRIB_ARRAY_NORMALIZED     = VERTEX_ATTRIB_ARRAY_NORMALIZED,
	VERTEX_ATTRIB_ARRAY_INTEGER        = VERTEX_ATTRIB_ARRAY_INTEGER,
	VERTEX_ATTRIB_ARRAY_LONG           = VERTEX_ATTRIB_ARRAY_LONG,
	VERTEX_ATTRIB_ARRAY_DIVISOR        = VERTEX_ATTRIB_ARRAY_DIVISOR,
	VERTEX_ATTRIB_BINDING              = VERTEX_ATTRIB_BINDING,
	VERTEX_ATTRIB_RELATIVE_OFFSET      = VERTEX_ATTRIB_RELATIVE_OFFSET,
	CURRENT_VERTEX_ATTRIB              = CURRENT_VERTEX_ATTRIB,
}

/* void GetVertexAttribfv(uint index, enum pname, T *params); */
// pname: Vertex_Attrib_Parameter

/* void GetVertexAttribiv(uint index, enum pname, T *params); */
// pname: Vertex_Attrib_Parameter

/* void GetVertexAttribIiv(uint index, enum pname, T *params); */
// pname: Vertex_Attrib_Parameter

/* void GetVertexAttribIuiv(uint index, enum pname, T *params); */
// pname: Vertex_Attrib_Parameter

/* void GetVertexAttribLdv(uint index, enum pname, double *params); */
// pname: Vertex_Attrib_Parameter

/* void GetVertexAttribPointerv(uint index, enum pname, const void **pointer); */
Vertex_Attrib_Pointer_Parameter :: enum u32 {
	VERTEX_ATTRIB_ARRAY_POINTER = VERTEX_ATTRIB_ARRAY_POINTER,
}


/* Conditional Rendering [10.9] */

/* void BeginConditionalRender(uint id, enum mode); */
Conditional_Render_Mode :: enum u32 {
	QUERY_WAIT                       = QUERY_WAIT,
	QUERY_NO_WAIT                    = QUERY_NO_WAIT,
	QUERY_BY_REGION_WAIT             = QUERY_BY_REGION_WAIT,
	QUERY_BY_REGION_NO_WAIT          = QUERY_BY_REGION_NO_WAIT,
	QUERY_WAIT_INVERTED              = QUERY_WAIT_INVERTED,
	QUERY_NO_WAIT_INVERTED           = QUERY_NO_WAIT_INVERTED,
	QUERY_BY_REGION_WAIT_INVERTED    = QUERY_BY_REGION_WAIT_INVERTED,
	QUERY_BY_REGION_NO_WAIT_INVERTED = QUERY_BY_REGION_NO_WAIT_INVERTED,
}
