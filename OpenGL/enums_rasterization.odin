package vendor_gl

/* Multisampling [14.3.1] */

/* void GetMultisamplefv(enum pname, uint index, float *val); */
Multisample_Parameter :: enum u32 {
	SAMPLE_POSITION = SAMPLE_POSITION,
}


/* Points [14.4] */

/* void PointParameteri(enum pname, T param); */
Point_Parameter :: enum u32 {
	POINT_FADE_THRESHOLD_SIZE = POINT_FADE_THRESHOLD_SIZE,
	POINT_SPRITE_COORD_ORIGIN = POINT_SPRITE_COORD_ORIGIN,
}

/* void PointParameterf(enum pname, T param); */
// pname: Point_Parameter

/* void PointParameteriv(enum pname, const T *params); */
// pname: Point_Parameter

/* void PointParameterfv(enum pname, const T *params); */
// pname: Point_Parameter


/* Polygons [14.6, 14.6.1] */

/* void FrontFace(enum dir); */
Front_Face_Direction :: enum u32 {
	CW  = CW,
	CCW = CCW,
}

/* void CullFace(enum mode); */
Cull_Face_Mode :: enum u32 {
	FRONT          = FRONT,
	BACK           = BACK,
	FRONT_AND_BACK = FRONT_AND_BACK,
}


/* Polygon Rast. & Depth Offset [14.6.4-5] */

/* void PolygonMode(enum face, enum mode); */
Polygon_Mode_Face :: enum u32 {
	FRONT_AND_BACK = FRONT_AND_BACK,
}

Polygon_Mode :: enum u32 {
	POINT = POINT,
	LINE  = LINE,
	FILL  = FILL,
}
