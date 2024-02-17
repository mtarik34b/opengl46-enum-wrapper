package vendor_gl

/* Binding and Managing [9.2] */

/* void BindFramebuffer(enum target, uint framebuffer); */
Framebuffer_Target :: enum u32 {
	DRAW_FRAMEBUFFER = DRAW_FRAMEBUFFER,
	READ_FRAMEBUFFER = READ_FRAMEBUFFER,
	FRAMEBUFFER      = FRAMEBUFFER,
}


/* Framebuffer Object Parameters [9.2.1] */

/* void FramebufferParameteri(enum target, enum pname, int param); */
// target: Framebuffer_Target

Framebuffer_Parameteri :: enum u32 {
	FRAMEBUFFER_DEFAULT_WIDTH                  = FRAMEBUFFER_DEFAULT_WIDTH,
	FRAMEBUFFER_DEFAULT_HEIGHT                 = FRAMEBUFFER_DEFAULT_HEIGHT,
	FRAMEBUFFER_DEFAULT_LAYERS                 = FRAMEBUFFER_DEFAULT_LAYERS,
	FRAMEBUFFER_DEFAULT_SAMPLES                = FRAMEBUFFER_DEFAULT_SAMPLES,
	FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS,
}

/* void NamedFramebufferParameteri(uint framebuffer, enum pname, int param); */
// pname: Framebuffer_Parameteri


/* Framebuffer Object Queries [9.2.3] */

/* void GetFramebufferParameteriv(enum target, enum pname, int *params); */
// target: Framebuffer_Target

Framebuffer_Parameteriv :: enum u32 {
	FRAMEBUFFER_DEFAULT_WIDTH                  = FRAMEBUFFER_DEFAULT_WIDTH,
	FRAMEBUFFER_DEFAULT_HEIGHT                 = FRAMEBUFFER_DEFAULT_HEIGHT,
	FRAMEBUFFER_DEFAULT_LAYERS                 = FRAMEBUFFER_DEFAULT_LAYERS,
	FRAMEBUFFER_DEFAULT_SAMPLES                = FRAMEBUFFER_DEFAULT_SAMPLES,
	FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS,

	DOUBLEBUFFER                               = DOUBLEBUFFER,
	IMPLEMENTATION_COLOR_READ_FORMAT           = IMPLEMENTATION_COLOR_READ_FORMAT,
	IMPLEMENTATION_COLOR_READ_TYPE             = IMPLEMENTATION_COLOR_READ_TYPE,
	SAMPLES                                    = SAMPLES,
	SAMPLE_BUFFERS                             = SAMPLE_BUFFERS,
	STEREO                                     = STEREO,
}

/* void GetNamedFramebufferParameteriv(uint framebuffer, enum pname, int *params); */
// pname: Framebuffer_Parameteriv

/* void GetFramebufferAttachmentParameteriv(enum target, enum attachment, enum pname, int *params); */
// target: Framebuffer_Target

Framebuffer_Attachment :: enum u32 {
	FRONT                    = FRONT,
	FRONT_LEFT               = FRONT_LEFT,
	FRONT_RIGHT              = FRONT_RIGHT,
	BACK                     = BACK,
	BACK_LEFT                = BACK_LEFT,
	BACK_RIGHT               = BACK_RIGHT,
	DEPTH                    = DEPTH,
	STENCIL                  = STENCIL,

	COLOR_ATTACHMENT0        = COLOR_ATTACHMENT0,
	COLOR_ATTACHMENT1        = COLOR_ATTACHMENT1,
	COLOR_ATTACHMENT2        = COLOR_ATTACHMENT2,
	COLOR_ATTACHMENT3        = COLOR_ATTACHMENT3,
	COLOR_ATTACHMENT4        = COLOR_ATTACHMENT4,
	COLOR_ATTACHMENT5        = COLOR_ATTACHMENT5,
	COLOR_ATTACHMENT6        = COLOR_ATTACHMENT6,
	COLOR_ATTACHMENT7        = COLOR_ATTACHMENT7,
	COLOR_ATTACHMENT8        = COLOR_ATTACHMENT8,
	COLOR_ATTACHMENT9        = COLOR_ATTACHMENT9,
	COLOR_ATTACHMENT10       = COLOR_ATTACHMENT10,
	COLOR_ATTACHMENT11       = COLOR_ATTACHMENT11,
	COLOR_ATTACHMENT12       = COLOR_ATTACHMENT12,
	COLOR_ATTACHMENT13       = COLOR_ATTACHMENT13,
	COLOR_ATTACHMENT14       = COLOR_ATTACHMENT14,
	COLOR_ATTACHMENT15       = COLOR_ATTACHMENT15,
	COLOR_ATTACHMENT16       = COLOR_ATTACHMENT16,
	COLOR_ATTACHMENT17       = COLOR_ATTACHMENT17,
	COLOR_ATTACHMENT18       = COLOR_ATTACHMENT18,
	COLOR_ATTACHMENT19       = COLOR_ATTACHMENT19,
	COLOR_ATTACHMENT20       = COLOR_ATTACHMENT20,
	COLOR_ATTACHMENT21       = COLOR_ATTACHMENT21,
	COLOR_ATTACHMENT22       = COLOR_ATTACHMENT22,
	COLOR_ATTACHMENT23       = COLOR_ATTACHMENT23,
	COLOR_ATTACHMENT24       = COLOR_ATTACHMENT24,
	COLOR_ATTACHMENT25       = COLOR_ATTACHMENT25,
	COLOR_ATTACHMENT26       = COLOR_ATTACHMENT26,
	COLOR_ATTACHMENT27       = COLOR_ATTACHMENT27,
	COLOR_ATTACHMENT28       = COLOR_ATTACHMENT28,
	COLOR_ATTACHMENT29       = COLOR_ATTACHMENT29,
	COLOR_ATTACHMENT30       = COLOR_ATTACHMENT30,
	COLOR_ATTACHMENT31       = COLOR_ATTACHMENT31,
	DEPTH_ATTACHMENT         = DEPTH_ATTACHMENT,
	STENCIL_ATTACHMENT       = STENCIL_ATTACHMENT,
	DEPTH_STENCIL_ATTACHMENT = DEPTH_STENCIL_ATTACHMENT,
}

Framebuffer_Attachment_Parameter :: enum u32 {
	FRAMEBUFFER_ATTACHMENT_RED_SIZE              = FRAMEBUFFER_ATTACHMENT_RED_SIZE,
	FRAMEBUFFER_ATTACHMENT_GREEN_SIZE            = FRAMEBUFFER_ATTACHMENT_GREEN_SIZE,
	FRAMEBUFFER_ATTACHMENT_BLUE_SIZE             = FRAMEBUFFER_ATTACHMENT_BLUE_SIZE,
	FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE            = FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE,
	FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE            = FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE,
	FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE          = FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE,
	FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE        = FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE,
	FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING        = FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING,
	FRAMEBUFFER_ATTACHMENT_OBJECT_NAME           = FRAMEBUFFER_ATTACHMENT_OBJECT_NAME,
	FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE           = FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE,
	FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL         = FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL,
	FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE,
	FRAMEBUFFER_ATTACHMENT_LAYERED               = FRAMEBUFFER_ATTACHMENT_LAYERED,
	FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER         = FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,
}

/* void GetNamedFramebufferAttachmentParameteriv(uint framebuffer, enum attachment, enum pname, int *params); */
// attachment: Framebuffer_Attachment
// pname:      Framebuffer_Attachment_Parameter


/* Renderbuffer Objects [9.2.4] */

/* void BindRenderbuffer(enum target, uint renderbuffer); */
Renderbuffer_Target :: enum u32 {
	RENDERBUFFER = RENDERBUFFER,
}

/* void RenderbufferStorageMultisample(enum target, sizei samples, enum internalformat, sizei width, sizei height); */
// target:         Renderbuffer_Target
// internalformat: Color_Depth_Stencil_Renderable_Format (from other file)

/* void NamedRenderbufferStorageMultisample(uint renderbuffer, sizei samples, enum internalformat, sizei width, sizei height); */
// internalformat: Color_Depth_Stencil_Renderable_Format (from other file)

/* void RenderbufferStorage(enum target, enum internalformat, sizei width, sizei height); */
// target:         Renderbuffer_Target
// internalformat: Color_Depth_Stencil_Renderable_Format (from other file)

/* void NamedRenderbufferStorage(uint renderbuffer, enum internalformat, sizei width, sizei height); */
// internalformat: Color_Depth_Stencil_Renderable_Format (from other file)


/* Renderbuffer Object Queries [9.2.6] */

/* void GetRenderbufferParameteriv(enum target, enum pname, int *params); */
// target:         Renderbuffer_Target
Renderbuffer_Parameter :: enum u32 {
	RENDERBUFFER_WIDTH           = RENDERBUFFER_WIDTH,
	RENDERBUFFER_HEIGHT          = RENDERBUFFER_HEIGHT,
	RENDERBUFFER_INTERNAL_FORMAT = RENDERBUFFER_INTERNAL_FORMAT,
	RENDERBUFFER_RED_SIZE        = RENDERBUFFER_RED_SIZE,
	RENDERBUFFER_GREEN_SIZE      = RENDERBUFFER_GREEN_SIZE,
	RENDERBUFFER_BLUE_SIZE       = RENDERBUFFER_BLUE_SIZE,
	RENDERBUFFER_ALPHA_SIZE      = RENDERBUFFER_ALPHA_SIZE,
	RENDERBUFFER_DEPTH_SIZE      = RENDERBUFFER_DEPTH_SIZE,
	RENDERBUFFER_STENCIL_SIZE    = RENDERBUFFER_STENCIL_SIZE,
	RENDERBUFFER_SAMPLES         = RENDERBUFFER_SAMPLES,
}

/* void GetNamedRenderbufferParameteriv(uint renderbuffer, enum pname, int *params); */
// pname: Renderbuffer_Parameter


/* Attaching Renderbuffer Images [9.2.7] */

/* void FramebufferRenderbuffer(enum target, enum attachment, enum renderbuffertarget, uint renderbuffer); */
// target:             Framebuffer_Target
// renderbuffertarget: Renderbuffer_Target

// TODO(tarik): Find better name
Framebuffer_Renderbuffer_Attachment :: enum u32 {
	COLOR_ATTACHMENT0        = COLOR_ATTACHMENT0,
	COLOR_ATTACHMENT1        = COLOR_ATTACHMENT1,
	COLOR_ATTACHMENT2        = COLOR_ATTACHMENT2,
	COLOR_ATTACHMENT3        = COLOR_ATTACHMENT3,
	COLOR_ATTACHMENT4        = COLOR_ATTACHMENT4,
	COLOR_ATTACHMENT5        = COLOR_ATTACHMENT5,
	COLOR_ATTACHMENT6        = COLOR_ATTACHMENT6,
	COLOR_ATTACHMENT7        = COLOR_ATTACHMENT7,
	COLOR_ATTACHMENT8        = COLOR_ATTACHMENT8,
	COLOR_ATTACHMENT9        = COLOR_ATTACHMENT9,
	COLOR_ATTACHMENT10       = COLOR_ATTACHMENT10,
	COLOR_ATTACHMENT11       = COLOR_ATTACHMENT11,
	COLOR_ATTACHMENT12       = COLOR_ATTACHMENT12,
	COLOR_ATTACHMENT13       = COLOR_ATTACHMENT13,
	COLOR_ATTACHMENT14       = COLOR_ATTACHMENT14,
	COLOR_ATTACHMENT15       = COLOR_ATTACHMENT15,
	COLOR_ATTACHMENT16       = COLOR_ATTACHMENT16,
	COLOR_ATTACHMENT17       = COLOR_ATTACHMENT17,
	COLOR_ATTACHMENT18       = COLOR_ATTACHMENT18,
	COLOR_ATTACHMENT19       = COLOR_ATTACHMENT19,
	COLOR_ATTACHMENT20       = COLOR_ATTACHMENT20,
	COLOR_ATTACHMENT21       = COLOR_ATTACHMENT21,
	COLOR_ATTACHMENT22       = COLOR_ATTACHMENT22,
	COLOR_ATTACHMENT23       = COLOR_ATTACHMENT23,
	COLOR_ATTACHMENT24       = COLOR_ATTACHMENT24,
	COLOR_ATTACHMENT25       = COLOR_ATTACHMENT25,
	COLOR_ATTACHMENT26       = COLOR_ATTACHMENT26,
	COLOR_ATTACHMENT27       = COLOR_ATTACHMENT27,
	COLOR_ATTACHMENT28       = COLOR_ATTACHMENT28,
	COLOR_ATTACHMENT29       = COLOR_ATTACHMENT29,
	COLOR_ATTACHMENT30       = COLOR_ATTACHMENT30,
	COLOR_ATTACHMENT31       = COLOR_ATTACHMENT31,
	DEPTH_ATTACHMENT         = DEPTH_ATTACHMENT,
	STENCIL_ATTACHMENT       = STENCIL_ATTACHMENT,
	DEPTH_STENCIL_ATTACHMENT = DEPTH_STENCIL_ATTACHMENT,
}

/* void NamedFramebufferRenderbuffer(uint framebuffer, enum attachment, enum renderbuffertarget, uint renderbuffer); */
// attachment:         Framebuffer_Renderbuffer_Attachment
// renderbuffertarget: Renderbuffer_Target


/* Attaching Texture Images [9.2.8] */

/* void FramebufferTexture(enum target, enum attachment, uint texture, int level); */
// target:     Framebuffer_Target
// attachment: Framebuffer_Renderbuffer_Attachment

/* void NamedFramebufferTexture(uint framebuffer, enum attachment, uint texture, int level); */
// attachment: Framebuffer_Renderbuffer_Attachment

/* void FramebufferTexture1D(enum target, enum attachment, enum textarget, uint texture, int level); */
// target:     Framebuffer_Target
// attachment: Framebuffer_Renderbuffer_Attachment

Framebuffer_Texture_1D_Target :: enum u32 {
	TEXTURE_1D = TEXTURE_1D,
}

/* void FramebufferTexture2D(enum target, enum attachment, enum textarget, uint texture, int level); */
// target:     Framebuffer_Target
// attachment: Framebuffer_Renderbuffer_Attachment

Framebuffer_Texture_2D_Target :: enum u32 {
	TEXTURE_2D                  = TEXTURE_2D,
	TEXTURE_2D_MULTISAMPLE      = TEXTURE_2D_MULTISAMPLE,
	TEXTURE_RECTANGLE           = TEXTURE_RECTANGLE,
	TEXTURE_CUBE_MAP_POSITIVE_X = TEXTURE_CUBE_MAP_POSITIVE_X,
	TEXTURE_CUBE_MAP_POSITIVE_Y = TEXTURE_CUBE_MAP_POSITIVE_Y,
	TEXTURE_CUBE_MAP_POSITIVE_Z = TEXTURE_CUBE_MAP_POSITIVE_Z,
	TEXTURE_CUBE_MAP_NEGATIVE_X = TEXTURE_CUBE_MAP_NEGATIVE_X,
	TEXTURE_CUBE_MAP_NEGATIVE_Y = TEXTURE_CUBE_MAP_NEGATIVE_Y,
	TEXTURE_CUBE_MAP_NEGATIVE_Z = TEXTURE_CUBE_MAP_NEGATIVE_Z,
}

/* void FramebufferTexture3D(enum target, enum attachment, enum textarget, uint texture, int level, int layer); */
// target:     Framebuffer_Target
// attachment: Framebuffer_Renderbuffer_Attachment

Framebuffer_Texture_3D_Target :: enum u32 {
	TEXTURE_3D = TEXTURE_3D,
}

/* void FramebufferTextureLayer(enum target, enum attachment, uint texture, int level, int layer); */
// target:     Framebuffer_Target
// attachment: Framebuffer_Renderbuffer_Attachment

/* void NamedFramebufferTextureLayer(uint framebuffer, enum attachment, uint texture, int level, int layer); */
// attachment: Framebuffer_Renderbuffer_Attachment


/* Feedback Loops [9.3.1] */
/**/


/* Framebuffer Completeness [9.4.2] */

/* enum CheckFramebufferStatus(enum target); */
// target: Framebuffer_Target

Check_Framebuffer_Status :: enum u32 {
	FRAMEBUFFER_COMPLETE = FRAMEBUFFER_COMPLETE,
	FRAMEBUFFER_UNDEFINED,
	FRAMEBUFFER_INCOMPLETE_ATTACHMENT,
	FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT,
	FRAMEBUFFER_UNSUPPORTED,
	FRAMEBUFFER_INCOMPLETE_MULTISAMPLE,
	FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS,
}

/* enum CheckNamedFramebufferStatus(uint framebuffer, enum target); */
// target:  Framebuffer_Target
// returns: Check_Framebuffer_Status
