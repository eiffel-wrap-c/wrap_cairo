-- enum wrapper
class CAIRO_DEVICE_TYPE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_device_type_drm or a_value = cairo_device_type_gl or a_value = cairo_device_type_script or a_value = cairo_device_type_xcb or a_value = cairo_device_type_xlib or a_value = cairo_device_type_xml or a_value = cairo_device_type_cogl or a_value = cairo_device_type_win32 or a_value = cairo_device_type_invalid
		end

	cairo_device_type_drm: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_DEVICE_TYPE_DRM"
		end

	cairo_device_type_gl: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_DEVICE_TYPE_GL"
		end

	cairo_device_type_script: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_DEVICE_TYPE_SCRIPT"
		end

	cairo_device_type_xcb: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_DEVICE_TYPE_XCB"
		end

	cairo_device_type_xlib: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_DEVICE_TYPE_XLIB"
		end

	cairo_device_type_xml: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_DEVICE_TYPE_XML"
		end

	cairo_device_type_cogl: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_DEVICE_TYPE_COGL"
		end

	cairo_device_type_win32: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_DEVICE_TYPE_WIN32"
		end

	cairo_device_type_invalid: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_DEVICE_TYPE_INVALID"
		end

end
