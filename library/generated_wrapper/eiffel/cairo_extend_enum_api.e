-- enum wrapper
class CAIRO_EXTEND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_extend_none or a_value = cairo_extend_repeat or a_value = cairo_extend_reflect or a_value = cairo_extend_pad
		end

	cairo_extend_none: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_EXTEND_NONE"
		end

	cairo_extend_repeat: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_EXTEND_REPEAT"
		end

	cairo_extend_reflect: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_EXTEND_REFLECT"
		end

	cairo_extend_pad: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_EXTEND_PAD"
		end

end
