-- enum wrapper
class CAIRO_FILTER_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_filter_fast or a_value = cairo_filter_good or a_value = cairo_filter_best or a_value = cairo_filter_nearest or a_value = cairo_filter_bilinear or a_value = cairo_filter_gaussian
		end

	cairo_filter_fast: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FILTER_FAST"
		end

	cairo_filter_good: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FILTER_GOOD"
		end

	cairo_filter_best: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FILTER_BEST"
		end

	cairo_filter_nearest: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FILTER_NEAREST"
		end

	cairo_filter_bilinear: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FILTER_BILINEAR"
		end

	cairo_filter_gaussian: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_FILTER_GAUSSIAN"
		end

end
