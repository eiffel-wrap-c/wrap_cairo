-- enum wrapper
class CAIRO_CONTENT_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_content_color or a_value = cairo_content_alpha or a_value = cairo_content_color_alpha
		end

	cairo_content_color: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_CONTENT_COLOR"
		end

	cairo_content_alpha: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_CONTENT_ALPHA"
		end

	cairo_content_color_alpha: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_CONTENT_COLOR_ALPHA"
		end

end
