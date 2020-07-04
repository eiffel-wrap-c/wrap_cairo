-- enum wrapper
class CAIRO_HINT_METRICS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_hint_metrics_default or a_value = cairo_hint_metrics_off or a_value = cairo_hint_metrics_on
		end

	cairo_hint_metrics_default: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_HINT_METRICS_DEFAULT"
		end

	cairo_hint_metrics_off: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_HINT_METRICS_OFF"
		end

	cairo_hint_metrics_on: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_HINT_METRICS_ON"
		end

end
