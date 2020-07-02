-- enum wrapper
class CAIRO_OPERATOR_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_operator_clear or a_value = cairo_operator_source or a_value = cairo_operator_over or a_value = cairo_operator_in or a_value = cairo_operator_out or a_value = cairo_operator_atop or a_value = cairo_operator_dest or a_value = cairo_operator_dest_over or a_value = cairo_operator_dest_in or a_value = cairo_operator_dest_out or a_value = cairo_operator_dest_atop or a_value = cairo_operator_xor or a_value = cairo_operator_add or a_value = cairo_operator_saturate or a_value = cairo_operator_multiply or a_value = cairo_operator_screen or a_value = cairo_operator_overlay or a_value = cairo_operator_darken or a_value = cairo_operator_lighten or a_value = cairo_operator_color_dodge or a_value = cairo_operator_color_burn or a_value = cairo_operator_hard_light or a_value = cairo_operator_soft_light or a_value = cairo_operator_difference or a_value = cairo_operator_exclusion or a_value = cairo_operator_hsl_hue or a_value = cairo_operator_hsl_saturation or a_value = cairo_operator_hsl_color or a_value = cairo_operator_hsl_luminosity
		end

	cairo_operator_clear: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_CLEAR"
		end

	cairo_operator_source: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_SOURCE"
		end

	cairo_operator_over: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_OVER"
		end

	cairo_operator_in: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_IN"
		end

	cairo_operator_out: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_OUT"
		end

	cairo_operator_atop: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_ATOP"
		end

	cairo_operator_dest: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_DEST"
		end

	cairo_operator_dest_over: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_DEST_OVER"
		end

	cairo_operator_dest_in: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_DEST_IN"
		end

	cairo_operator_dest_out: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_DEST_OUT"
		end

	cairo_operator_dest_atop: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_DEST_ATOP"
		end

	cairo_operator_xor: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_XOR"
		end

	cairo_operator_add: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_ADD"
		end

	cairo_operator_saturate: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_SATURATE"
		end

	cairo_operator_multiply: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_MULTIPLY"
		end

	cairo_operator_screen: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_SCREEN"
		end

	cairo_operator_overlay: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_OVERLAY"
		end

	cairo_operator_darken: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_DARKEN"
		end

	cairo_operator_lighten: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_LIGHTEN"
		end

	cairo_operator_color_dodge: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_COLOR_DODGE"
		end

	cairo_operator_color_burn: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_COLOR_BURN"
		end

	cairo_operator_hard_light: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_HARD_LIGHT"
		end

	cairo_operator_soft_light: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_SOFT_LIGHT"
		end

	cairo_operator_difference: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_DIFFERENCE"
		end

	cairo_operator_exclusion: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_EXCLUSION"
		end

	cairo_operator_hsl_hue: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_HSL_HUE"
		end

	cairo_operator_hsl_saturation: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_HSL_SATURATION"
		end

	cairo_operator_hsl_color: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_HSL_COLOR"
		end

	cairo_operator_hsl_luminosity: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_OPERATOR_HSL_LUMINOSITY"
		end

end
