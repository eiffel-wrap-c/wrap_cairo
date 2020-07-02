-- enum wrapper
class CAIRO_FILL_RULE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_fill_rule_winding or a_value = cairo_fill_rule_even_odd
		end

	cairo_fill_rule_winding: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FILL_RULE_WINDING"
		end

	cairo_fill_rule_even_odd: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_FILL_RULE_EVEN_ODD"
		end

end
