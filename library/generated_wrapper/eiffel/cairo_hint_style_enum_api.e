-- enum wrapper
class CAIRO_HINT_STYLE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_hint_style_default or a_value = cairo_hint_style_none or a_value = cairo_hint_style_slight or a_value = cairo_hint_style_medium or a_value = cairo_hint_style_full
		end

	cairo_hint_style_default: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_HINT_STYLE_DEFAULT"
		end

	cairo_hint_style_none: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_HINT_STYLE_NONE"
		end

	cairo_hint_style_slight: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_HINT_STYLE_SLIGHT"
		end

	cairo_hint_style_medium: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_HINT_STYLE_MEDIUM"
		end

	cairo_hint_style_full: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_HINT_STYLE_FULL"
		end

end
