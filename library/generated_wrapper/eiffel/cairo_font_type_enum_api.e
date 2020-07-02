-- enum wrapper
class CAIRO_FONT_TYPE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_font_type_toy or a_value = cairo_font_type_ft or a_value = cairo_font_type_win32 or a_value = cairo_font_type_quartz or a_value = cairo_font_type_user
		end

	cairo_font_type_toy: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FONT_TYPE_TOY"
		end

	cairo_font_type_ft: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FONT_TYPE_FT"
		end

	cairo_font_type_win32: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FONT_TYPE_WIN32"
		end

	cairo_font_type_quartz: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FONT_TYPE_QUARTZ"
		end

	cairo_font_type_user: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FONT_TYPE_USER"
		end

end
