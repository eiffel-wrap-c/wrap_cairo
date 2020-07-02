-- enum wrapper
class CAIRO_SURFACE_OBSERVER_MODE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_surface_observer_normal or a_value = cairo_surface_observer_record_operations
		end

	cairo_surface_observer_normal: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_SURFACE_OBSERVER_NORMAL"
		end

	cairo_surface_observer_record_operations: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_SURFACE_OBSERVER_RECORD_OPERATIONS"
		end

end
