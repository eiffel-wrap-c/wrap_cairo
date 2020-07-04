-- enum wrapper
class CAIRO_LINE_CAP_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_line_cap_butt or a_value = cairo_line_cap_round or a_value = cairo_line_cap_square
		end

	cairo_line_cap_butt: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_LINE_CAP_BUTT"
		end

	cairo_line_cap_round: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_LINE_CAP_ROUND"
		end

	cairo_line_cap_square: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_LINE_CAP_SQUARE"
		end

end
