-- enum wrapper
class CAIRO_PATH_DATA_TYPE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_path_move_to or a_value = cairo_path_line_to or a_value = cairo_path_curve_to or a_value = cairo_path_close_path
		end

	cairo_path_move_to: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_PATH_MOVE_TO"
		end

	cairo_path_line_to: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_PATH_LINE_TO"
		end

	cairo_path_curve_to: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_PATH_CURVE_TO"
		end

	cairo_path_close_path: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_PATH_CLOSE_PATH"
		end

end
