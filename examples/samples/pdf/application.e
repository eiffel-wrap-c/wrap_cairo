note
	description: "Cairo Samples"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Tutorial", "src=https://www.cairographics.org/samples/arc/", "protocol=uri"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			p_surface: POINTER
			surface: CAIRO_SURFACE_STRUCT_API
			cr: CAIRO_STRUCT_API
			res: INTEGER
		do
			p_surface := {CAIRO_PDF_FUNCTIONS_API}.cairo_pdf_surface_create((create {C_STRING}.make ("pdffile.pdf")).item, 504, 648);
			if p_surface /= default_pointer then
				create surface.make_by_pointer (p_surface)
				if
					{CAIRO_FUNCTIONS}.cairo_surface_status (surface) = {CAIRO_STATUS_ENUM_API}.cairo_status_success
				then
					cr := {CAIRO_FUNCTIONS}.cairo_create (surface)

					if {CAIRO_FUNCTIONS}.cairo_status (cr) = {CAIRO_STATUS_ENUM_API}.cairo_status_success then

						{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0,0,0)

						{CAIRO_FUNCTIONS}.cairo_select_font_face (cr, "Sans", {CAIRO_FONT_SLANT_ENUM_API}.CAIRO_FONT_SLANT_NORMAL, {CAIRO_FONT_WEIGHT_ENUM_API}.CAIRO_FONT_WEIGHT_NORMAL)
						{CAIRO_FUNCTIONS}.cairo_set_font_size (cr, 40.0)
						{CAIRO_FUNCTIONS}.cairo_move_to(cr, 10.0, 50.0)
						{CAIRO_FUNCTIONS}.cairo_show_text(cr, "WrapC cairo PDF example")

					    {CAIRO_FUNCTIONS}.cairo_show_page(cr)

						{CAIRO_FUNCTIONS}.cairo_destroy (cr)
						{CAIRO_FUNCTIONS}.cairo_surface_destroy (surface)
					else
							-- Display the error message
						print ({CAIRO_FUNCTIONS}.cairo_status_to_string_api ({CAIRO_FUNCTIONS}.cairo_status (cr)))
					end
				else
						-- Display the error message
					print ({CAIRO_FUNCTIONS}.cairo_status_to_string_api ({CAIRO_FUNCTIONS}.cairo_surface_status (surface)))
				end
			else
				print ("Can't create pdf surface")
			end

		end

end
