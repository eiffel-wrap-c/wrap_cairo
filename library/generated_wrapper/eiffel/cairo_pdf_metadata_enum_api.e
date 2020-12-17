-- enum wrapper
class CAIRO_PDF_METADATA_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_pdf_metadata_title or a_value = cairo_pdf_metadata_author or a_value = cairo_pdf_metadata_subject or a_value = cairo_pdf_metadata_keywords or a_value = cairo_pdf_metadata_creator or a_value = cairo_pdf_metadata_create_date or a_value = cairo_pdf_metadata_mod_date
		end

	cairo_pdf_metadata_title: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_METADATA_TITLE"
		end

	cairo_pdf_metadata_author: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_METADATA_AUTHOR"
		end

	cairo_pdf_metadata_subject: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_METADATA_SUBJECT"
		end

	cairo_pdf_metadata_keywords: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_METADATA_KEYWORDS"
		end

	cairo_pdf_metadata_creator: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_METADATA_CREATOR"
		end

	cairo_pdf_metadata_create_date: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_METADATA_CREATE_DATE"
		end

	cairo_pdf_metadata_mod_date: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"CAIRO_PDF_METADATA_MOD_DATE"
		end

end
