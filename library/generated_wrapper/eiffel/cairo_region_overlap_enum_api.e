-- enum wrapper
class CAIRO_REGION_OVERLAP_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_region_overlap_in or a_value = cairo_region_overlap_out or a_value = cairo_region_overlap_part
		end

	cairo_region_overlap_in: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_REGION_OVERLAP_IN"
		end

	cairo_region_overlap_out: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_REGION_OVERLAP_OUT"
		end

	cairo_region_overlap_part: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_REGION_OVERLAP_PART"
		end

end
