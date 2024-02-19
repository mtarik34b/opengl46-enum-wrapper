package vendor_gl

/* Debug Message Callback [20.2] */

/* void DebugMessageCallback(DEBUGPROC callback, const void *userParam); */
Debug_Proc_T :: #type proc "c" (source: Debug_Source, type: Debug_Type, id: u32, severity: Debug_Severity, length: i32, message: cstring, userParam: rawptr)

Debug_Source :: enum u32 {
	DEBUG_SOURCE_API             = DEBUG_SOURCE_API,
	DEBUG_SOURCE_SHADER_COMPILER = DEBUG_SOURCE_SHADER_COMPILER,
	DEBUG_SOURCE_WINDOW_SYSTEM   = DEBUG_SOURCE_WINDOW_SYSTEM,
	DEBUG_SOURCE_THIRD_PARTY     = DEBUG_SOURCE_THIRD_PARTY,
	DEBUG_SOURCE_APPLICATION     = DEBUG_SOURCE_APPLICATION,
	DEBUG_SOURCE_OTHER           = DEBUG_SOURCE_OTHER,
	DONT_CARE                    = DONT_CARE,
}

Debug_Type :: enum u32 {
	DEBUG_TYPE_ERROR               = DEBUG_TYPE_ERROR,
	DEBUG_TYPE_DEPRECATED_BEHAVIOR = DEBUG_TYPE_DEPRECATED_BEHAVIOR,
	DEBUG_TYPE_UNDEFINED_BEHAVIOR  = DEBUG_TYPE_UNDEFINED_BEHAVIOR,
	DEBUG_TYPE_PERFORMANCE         = DEBUG_TYPE_PERFORMANCE,
	DEBUG_TYPE_PORTABILITY         = DEBUG_TYPE_PORTABILITY,
	DEBUG_TYPE_MARKER              = DEBUG_TYPE_MARKER,
	DEBUG_TYPE_PUSH_GROUP          = DEBUG_TYPE_PUSH_GROUP,
	DEBUG_TYPE_POP_GROUP           = DEBUG_TYPE_POP_GROUP,
	DEBUG_TYPE_OTHER               = DEBUG_TYPE_OTHER,
	DONT_CARE                      = DONT_CARE,
}

Debug_Severity :: enum u32 {
	DEBUG_SEVERITY_HIGH         = DEBUG_SEVERITY_HIGH,
	DEBUG_SEVERITY_MEDIUM       = DEBUG_SEVERITY_MEDIUM,
	DEBUG_SEVERITY_LOW          = DEBUG_SEVERITY_LOW,
	DEBUG_SEVERITY_NOTIFICATION = DEBUG_SEVERITY_NOTIFICATION,
	DONT_CARE                   = DONT_CARE,
}


/* Controlling Debug Messages [20.4] */

/* void DebugMessageControl(enum source, enum type, enum severity, sizei count, const uint *ids, boolean enabled); */
// source:   Debug_Source
// type:     Debug_Type
// severity: Debug_Severity


/* Externally Generated Messages [20.5] */

/* void DebugMessageInsert(enum source, enum type, uint id, enum severity, int length, const char *buf); */
Debug_Insert_Source :: enum u32 {
	DEBUG_SOURCE_APPLICATION = DEBUG_SOURCE_APPLICATION,
	DEBUG_SOURCE_THIRD_PARTY = DEBUG_SOURCE_THIRD_PARTY,
}

Debug_Insert_Type :: enum u32 {
	DEBUG_TYPE_ERROR               = DEBUG_TYPE_ERROR,
	DEBUG_TYPE_DEPRECATED_BEHAVIOR = DEBUG_TYPE_DEPRECATED_BEHAVIOR,
	DEBUG_TYPE_UNDEFINED_BEHAVIOR  = DEBUG_TYPE_UNDEFINED_BEHAVIOR,
	DEBUG_TYPE_PERFORMANCE         = DEBUG_TYPE_PERFORMANCE,
	DEBUG_TYPE_PORTABILITY         = DEBUG_TYPE_PORTABILITY,
	DEBUG_TYPE_MARKER              = DEBUG_TYPE_MARKER,
	DEBUG_TYPE_PUSH_GROUP          = DEBUG_TYPE_PUSH_GROUP,
	DEBUG_TYPE_POP_GROUP           = DEBUG_TYPE_POP_GROUP,
	DEBUG_TYPE_OTHER               = DEBUG_TYPE_OTHER,
}

Debug_Insert_Severity :: enum u32 {
	DEBUG_SEVERITY_HIGH         = DEBUG_SEVERITY_HIGH,
	DEBUG_SEVERITY_MEDIUM       = DEBUG_SEVERITY_MEDIUM,
	DEBUG_SEVERITY_LOW          = DEBUG_SEVERITY_LOW,
	DEBUG_SEVERITY_NOTIFICATION = DEBUG_SEVERITY_NOTIFICATION,
}


/* Debug Groups [20.6] */

/* void PushDebugGroup(enum source, uint id, sizei length, const char *message); */
Push_Debug_Group_Source :: Debug_Insert_Source

/* Debug Labels [20.7] */

/* void ObjectLabel(enum identifier, uint name, sizei length, const char *label); */
Object_Label_Identifier :: enum u32 {
	BUFFER             = BUFFER,
	FRAMEBUFFER        = FRAMEBUFFER,
	PROGRAM_PIPELINE   = PROGRAM_PIPELINE,
	PROGRAM            = PROGRAM,
	QUERY              = QUERY,
	RENDERBUFFER       = RENDERBUFFER,
	SAMPLER            = SAMPLER,
	SHADER             = SHADER,
	TEXTURE            = TEXTURE,
	TRANSFORM_FEEDBACK = TRANSFORM_FEEDBACK,
	VERTEX_ARRAY       = VERTEX_ARRAY,
}


/* Debug Output Queries [20.9] */

/* uint GetDebugMessageLog(uint count, sizei bufSize, enum *sources, enum *types, uint *ids, enum *severities, sizei lengths, char *messageLog); */
Debug_Log_Source   :: Debug_Insert_Source
Debug_Log_Type     :: Debug_Insert_Type
Debug_Log_Severity :: Debug_Insert_Severity

/* void GetObjectLabel(enum identifier, uint name, sizei bufSize, sizei *length, char *label); */
// identifier: Object_Label_Identifier
