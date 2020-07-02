-- enum wrapper
class CAIRO_LINE_JOIN_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_line_join_miter or a_value = cairo_line_join_round or a_value = cairo_line_join_bevel
		end

	cairo_line_join_miter: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_LINE_JOIN_MITER"
		end

	cairo_line_join_round: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_LINE_JOIN_ROUND"
		end

	cairo_line_join_bevel: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_LINE_JOIN_BEVEL"
		end

end
