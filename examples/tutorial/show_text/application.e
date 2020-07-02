note
	description: "Cairo Tutorial"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Tutorial", "src=https://www.cairographics.org/tutorial/", "protocol=uri"

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
			surface: CAIRO_SURFACE_STRUCT_API
			cr: CAIRO_STRUCT_API
			te:	CAIRO_TEXT_EXTENTS_T_STRUCT_API
			res: INTEGER
		do
				-- The cairo context is tied to an image surface of dimension 120 x 120 and 32 bits per pixel to store RGB and Alpha information
			surface := {CAIRO_FUNCTIONS}.cairo_image_surface_create ({CAIRO_FORMAT_ENUM_API}.CAIRO_FORMAT_ARGB32, 120, 120)
			if
				{CAIRO_FUNCTIONS}.cairo_surface_status (surface) = {CAIRO_STATUS_ENUM_API}.cairo_status_success
			then
				cr := {CAIRO_FUNCTIONS}.cairo_create (surface)

				if {CAIRO_FUNCTIONS}.cairo_status (cr) = {CAIRO_STATUS_ENUM_API}.cairo_status_success then

						-- Examples are in 1.0 x 1.0 coordinate space
					{CAIRO_FUNCTIONS}.cairo_scale (cr, 120, 120)

						-- Drawing code goes here
						-- The cairo_show_text() operation forms the mask from text.
						-- It may be easier to think of cairo_show_text() as a shortcut for creating a path with cairo_text_path() and then using cairo_fill() to transfer it.
						-- Be aware cairo_show_text() caches glyphs so is much more efficient if you work with a lot of text.
					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
					{CAIRO_FUNCTIONS}.cairo_select_font_face (cr, "Georgia", {CAIRO_FONT_SLANT_ENUM_API}.CAIRO_FONT_SLANT_NORMAL, {CAIRO_FONT_WEIGHT_ENUM_API}.CAIRO_FONT_WEIGHT_BOLD)
					{CAIRO_FUNCTIONS}.cairo_set_font_size (cr, 1.2)
					create te.make
					{CAIRO_FUNCTIONS}.cairo_text_extents (cr, "a", te)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr, 0.5 - te.width / 2 - te.x_bearing,	0.5 - te.height / 2 - te.y_bearing);
					{CAIRO_FUNCTIONS}.cairo_show_text (cr, "a");


						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "show_text.png")
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

		end

end
