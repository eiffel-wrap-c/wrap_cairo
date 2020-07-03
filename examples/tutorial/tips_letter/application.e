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
			res: INTEGER
			te: CAIRO_TEXT_EXTENTS_T_STRUCT_API
			alphabet: READABLE_STRING_8
			letter: STRING_8
			iter: STRING_8_ITERATION_CURSOR
		do
			alphabet := "AbCdEfGhIjKlMnOpQrStUvWxYz"

				-- The cairo context is tied to an image surface of dimension 120 x 120 and 32 bits per pixel to store RGB and Alpha information
			surface := {CAIRO_FUNCTIONS}.cairo_image_surface_create ({CAIRO_FORMAT_ENUM_API}.CAIRO_FORMAT_ARGB32, 780, 30)
			if
				{CAIRO_FUNCTIONS}.cairo_surface_status (surface) = {CAIRO_STATUS_ENUM_API}.cairo_status_success
			then
				cr := {CAIRO_FUNCTIONS}.cairo_create (surface)

				if {CAIRO_FUNCTIONS}.cairo_status (cr) = {CAIRO_STATUS_ENUM_API}.cairo_status_success then
						-- Example is in 26.0 x 1.0 coordinate space
					{CAIRO_FUNCTIONS}.cairo_scale (cr, 30, 30)
					{CAIRO_FUNCTIONS}.cairo_set_font_size (cr, 0.8)

						-- Drawing goes here
					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0.0, 0.0, 0.0);
					{CAIRO_FUNCTIONS}.cairo_select_font_face (cr, "Georgia", {CAIRO_FONT_SLANT_ENUM_API}.CAIRO_FONT_SLANT_NORMAL, {CAIRO_FONT_WEIGHT_ENUM_API}.CAIRO_FONT_WEIGHT_BOLD);

					iter := alphabet.new_cursor
					across iter as ic loop
						letter := ic.item.out
						create te.make
						{CAIRO_FUNCTIONS}.cairo_text_extents (cr, letter, te)
						{CAIRO_FUNCTIONS}.cairo_move_to (cr, ic.target_index - 1 + 0.5 - te.x_bearing - te.width / 2,	0.5 - te.y_bearing - te.height / 2)
						{CAIRO_FUNCTIONS}.cairo_show_text (cr, letter)
					end


						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "tips_letter.png")
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
