-- enum wrapper
class CAIRO_FORMAT_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_format_invalid or a_value = cairo_format_argb32 or a_value = cairo_format_rgb24 or a_value = cairo_format_a8 or a_value = cairo_format_a1 or a_value = cairo_format_rgb16_565 or a_value = cairo_format_rgb30
		end

	cairo_format_invalid: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FORMAT_INVALID"
		end

	cairo_format_argb32: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FORMAT_ARGB32"
		end

	cairo_format_rgb24: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FORMAT_RGB24"
		end

	cairo_format_a8: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FORMAT_A8"
		end

	cairo_format_a1: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FORMAT_A1"
		end

	cairo_format_rgb16_565: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FORMAT_RGB16_565"
		end

	cairo_format_rgb30: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FORMAT_RGB30"
		end

end
