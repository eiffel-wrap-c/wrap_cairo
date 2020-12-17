-- enum wrapper
class CAIRO_PDF_OUTLINE_FLAGS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_pdf_outline_flag_open or a_value = cairo_pdf_outline_flag_bold or a_value = cairo_pdf_outline_flag_italic
		end

	cairo_pdf_outline_flag_open: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_OUTLINE_FLAG_OPEN"
		end

	cairo_pdf_outline_flag_bold: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_OUTLINE_FLAG_BOLD"
		end

	cairo_pdf_outline_flag_italic: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_OUTLINE_FLAG_ITALIC"
		end

end
