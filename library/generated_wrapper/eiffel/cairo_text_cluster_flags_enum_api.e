-- enum wrapper
class CAIRO_TEXT_CLUSTER_FLAGS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_text_cluster_flag_backward
		end

	cairo_text_cluster_flag_backward: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_TEXT_CLUSTER_FLAG_BACKWARD"
		end

end
