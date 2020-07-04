-- enum wrapper
class CAIRO_SURFACE_TYPE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_surface_type_image or a_value = cairo_surface_type_pdf or a_value = cairo_surface_type_ps or a_value = cairo_surface_type_xlib or a_value = cairo_surface_type_xcb or a_value = cairo_surface_type_glitz or a_value = cairo_surface_type_quartz or a_value = cairo_surface_type_win32 or a_value = cairo_surface_type_beos or a_value = cairo_surface_type_directfb or a_value = cairo_surface_type_svg or a_value = cairo_surface_type_os2 or a_value = cairo_surface_type_win32_printing or a_value = cairo_surface_type_quartz_image or a_value = cairo_surface_type_script or a_value = cairo_surface_type_qt or a_value = cairo_surface_type_recording or a_value = cairo_surface_type_vg or a_value = cairo_surface_type_gl or a_value = cairo_surface_type_drm or a_value = cairo_surface_type_tee or a_value = cairo_surface_type_xml or a_value = cairo_surface_type_skia or a_value = cairo_surface_type_subsurface or a_value = cairo_surface_type_cogl
		end

	cairo_surface_type_image: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_IMAGE"
		end

	cairo_surface_type_pdf: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_PDF"
		end

	cairo_surface_type_ps: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_PS"
		end

	cairo_surface_type_xlib: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_XLIB"
		end

	cairo_surface_type_xcb: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_XCB"
		end

	cairo_surface_type_glitz: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_GLITZ"
		end

	cairo_surface_type_quartz: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_QUARTZ"
		end

	cairo_surface_type_win32: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_WIN32"
		end

	cairo_surface_type_beos: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_BEOS"
		end

	cairo_surface_type_directfb: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_DIRECTFB"
		end

	cairo_surface_type_svg: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_SVG"
		end

	cairo_surface_type_os2: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_OS2"
		end

	cairo_surface_type_win32_printing: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_WIN32_PRINTING"
		end

	cairo_surface_type_quartz_image: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_QUARTZ_IMAGE"
		end

	cairo_surface_type_script: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_SCRIPT"
		end

	cairo_surface_type_qt: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_QT"
		end

	cairo_surface_type_recording: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_RECORDING"
		end

	cairo_surface_type_vg: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_VG"
		end

	cairo_surface_type_gl: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_GL"
		end

	cairo_surface_type_drm: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_DRM"
		end

	cairo_surface_type_tee: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_TEE"
		end

	cairo_surface_type_xml: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_XML"
		end

	cairo_surface_type_skia: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_SKIA"
		end

	cairo_surface_type_subsurface: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_SUBSURFACE"
		end

	cairo_surface_type_cogl: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SURFACE_TYPE_COGL"
		end

end
