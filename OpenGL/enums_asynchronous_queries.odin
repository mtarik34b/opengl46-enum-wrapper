package vendor_gl

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
