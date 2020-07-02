-- enum wrapper
class CAIRO_FONT_WEIGHT_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_font_weight_normal or a_value = cairo_font_weight_bold
		end

	cairo_font_weight_normal: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FONT_WEIGHT_NORMAL"
		end

	cairo_font_weight_bold: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FONT_WEIGHT_BOLD"
		end

end
