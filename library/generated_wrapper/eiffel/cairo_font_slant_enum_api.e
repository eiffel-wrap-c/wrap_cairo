-- enum wrapper
class CAIRO_FONT_SLANT_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_font_slant_normal or a_value = cairo_font_slant_italic or a_value = cairo_font_slant_oblique
		end

	cairo_font_slant_normal: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FONT_SLANT_NORMAL"
		end

	cairo_font_slant_italic: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FONT_SLANT_ITALIC"
		end

	cairo_font_slant_oblique: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FONT_SLANT_OBLIQUE"
		end

end
