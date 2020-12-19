-- enum wrapper
class CAIRO_PDF_VERSION_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_pdf_version_1_4 or a_value = cairo_pdf_version_1_5
		end

	cairo_pdf_version_1_4: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_VERSION_1_4"
		end

	cairo_pdf_version_1_5: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_VERSION_1_5"
		end

end
