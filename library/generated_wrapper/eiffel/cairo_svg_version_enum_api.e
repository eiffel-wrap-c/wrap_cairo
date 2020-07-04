-- enum wrapper
class CAIRO_SVG_VERSION_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_svg_version_1_1 or a_value = cairo_svg_version_1_2
		end

	cairo_svg_version_1_1: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_VERSION_1_1"
		end

	cairo_svg_version_1_2: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_VERSION_1_2"
		end

end
