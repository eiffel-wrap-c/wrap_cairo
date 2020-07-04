-- enum wrapper
class CAIRO_ANTIALIAS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_antialias_default or a_value = cairo_antialias_none or a_value = cairo_antialias_gray or a_value = cairo_antialias_subpixel or a_value = cairo_antialias_fast or a_value = cairo_antialias_good or a_value = cairo_antialias_best
		end

	cairo_antialias_default: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_ANTIALIAS_DEFAULT"
		end

	cairo_antialias_none: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_ANTIALIAS_NONE"
		end

	cairo_antialias_gray: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_ANTIALIAS_GRAY"
		end

	cairo_antialias_subpixel: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_ANTIALIAS_SUBPIXEL"
		end

	cairo_antialias_fast: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_ANTIALIAS_FAST"
		end

	cairo_antialias_good: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_ANTIALIAS_GOOD"
		end

	cairo_antialias_best: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_ANTIALIAS_BEST"
		end

end
