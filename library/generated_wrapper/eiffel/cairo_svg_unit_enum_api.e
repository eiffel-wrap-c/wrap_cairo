-- enum wrapper
class CAIRO_SVG_UNIT_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_svg_unit_user or a_value = cairo_svg_unit_em or a_value = cairo_svg_unit_ex or a_value = cairo_svg_unit_px or a_value = cairo_svg_unit_in or a_value = cairo_svg_unit_cm or a_value = cairo_svg_unit_mm or a_value = cairo_svg_unit_pt or a_value = cairo_svg_unit_pc or a_value = cairo_svg_unit_percent
		end

	cairo_svg_unit_user: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_UNIT_USER"
		end

	cairo_svg_unit_em: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_UNIT_EM"
		end

	cairo_svg_unit_ex: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_UNIT_EX"
		end

	cairo_svg_unit_px: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_UNIT_PX"
		end

	cairo_svg_unit_in: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_UNIT_IN"
		end

	cairo_svg_unit_cm: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_UNIT_CM"
		end

	cairo_svg_unit_mm: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_UNIT_MM"
		end

	cairo_svg_unit_pt: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_UNIT_PT"
		end

	cairo_svg_unit_pc: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_UNIT_PC"
		end

	cairo_svg_unit_percent: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_SVG_UNIT_PERCENT"
		end

end
