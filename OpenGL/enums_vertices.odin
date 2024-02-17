package vendor_gl

/* Separate Patches [10.1.15] */

/* void PatchParameteri(enum pname, int value); */
Patch_Parameteri :: enum u32 {
	PATCH_VERTICES = PATCH_VERTICES,
}

/* Current Vertex Attribute Values [10.2] */

/* void VertexAttribP1ui(uint index, enum type, boolean normalized, uint value); */
Vertex_AttribP123_Type :: enum u32 {
	INT_2_10_10_10_REV           = INT_2_10_10_10_REV,
	UNSIGNED_INT_2_10_10_10_REV  = UNSIGNED_INT_2_10_10_10_REV,
	UNSIGNED_INT_10F_11F_11F_REV = UNSIGNED_INT_10F_11F_11F_REV,
}
/* void VertexAttribP2ui(uint index, enum type, boolean normalized, uint value); */
// type: Vertex_AttribP123_Type

/* void VertexAttribP3ui(uint index, enum type, boolean normalized, uint value); */
// type: Vertex_AttribP123_Type

/* void VertexAttribP4ui(uint index, enum type, boolean normalized, uint value); */
Vertex_AttribP4_Type :: enum u32 {
	INT_2_10_10_10_REV           = INT_2_10_10_10_REV,
	UNSIGNED_INT_2_10_10_10_REV  = UNSIGNED_INT_2_10_10_10_REV,
}

// void VertexAttribP1uiv(uint index, enum type, boolean normalized, const uint *value);
// type: Vertex_AttribP123_Type

// void VertexAttribP2uiv(uint index, enum type, boolean normalized, const uint *value);
// type: Vertex_AttribP123_Type

// void VertexAttribP3uiv(uint index, enum type, boolean normalized, const uint *value);
// type: Vertex_AttribP123_Type

// void VertexAttribP4uiv(uint index, enum type, boolean normalized, const uint *value);
// type: Vertex_AttribP4_Type
