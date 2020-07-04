-- enum wrapper
class CAIRO_PATTERN_TYPE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_pattern_type_solid or a_value = cairo_pattern_type_surface or a_value = cairo_pattern_type_linear or a_value = cairo_pattern_type_radial or a_value = cairo_pattern_type_mesh or a_value = cairo_pattern_type_raster_source
		end

	cairo_pattern_type_solid: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PATTERN_TYPE_SOLID"
		end

	cairo_pattern_type_surface: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PATTERN_TYPE_SURFACE"
		end

	cairo_pattern_type_linear: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PATTERN_TYPE_LINEAR"
		end

	cairo_pattern_type_radial: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PATTERN_TYPE_RADIAL"
		end

	cairo_pattern_type_mesh: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PATTERN_TYPE_MESH"
		end

	cairo_pattern_type_raster_source: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PATTERN_TYPE_RASTER_SOURCE"
		end

end
