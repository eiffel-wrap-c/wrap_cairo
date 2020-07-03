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
			fe: CAIRO_FONT_EXTENTS_T_STRUCT_API
			res: INTEGER
			text: STRING_8
			x, y, px, ux, uy, dashlength: REAL_64
		do
			ux := 1
			uy := 1
			text := "joy"
				-- The cairo context is tied to an image surface of dimension 120 x 120 and 32 bits per pixel to store RGB and Alpha information
				-- Prepare drawing area.
			surface := {CAIRO_FUNCTIONS}.cairo_image_surface_create ({CAIRO_FORMAT_ENUM_API}.CAIRO_FORMAT_ARGB32, 600, 600)
			if
				{CAIRO_FUNCTIONS}.cairo_surface_status (surface) = {CAIRO_STATUS_ENUM_API}.cairo_status_success
			then
				cr := {CAIRO_FUNCTIONS}.cairo_create (surface)

				if {CAIRO_FUNCTIONS}.cairo_status (cr) = {CAIRO_STATUS_ENUM_API}.cairo_status_success then

						-- Example is in 26.0 x 1.0 coordinate space */
					{CAIRO_FUNCTIONS}.cairo_scale (cr, 600, 600)
					{CAIRO_FUNCTIONS}.cairo_set_font_size (cr, 0.5)

					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0.0, 0.0, 0.0)
					{CAIRO_FUNCTIONS}.cairo_select_font_face (cr, "Georgia", {CAIRO_FONT_SLANT_ENUM_API}.CAIRO_FONT_SLANT_NORMAL, {CAIRO_FONT_WEIGHT_ENUM_API}.CAIRO_FONT_WEIGHT_BOLD)
					create fe.make
					{CAIRO_FUNCTIONS}.cairo_font_extents (cr, fe)
					{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $ux, $uy)

					px := if ux > uy then ux else uy end


					{CAIRO_FUNCTIONS}.cairo_font_extents (cr, fe)
					create te.make
					{CAIRO_FUNCTIONS}.cairo_text_extents (cr, text, te)
					x := 0.5 - te.x_bearing - te.width / 2
					y := 0.5 - fe.descent + fe.height / 2

						-- baseline, descent, ascent, height
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 4*px)
					dashlength := 9 * px
					{CAIRO_FUNCTIONS}.cairo_set_dash (cr, $dashlength, 1, 0)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 0.6, 0, 0.5)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr, x + te.x_bearing, y)
					{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, te.width, 0)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr, x + te.x_bearing, y + fe.descent)
					{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, te.width, 0)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr, x + te.x_bearing, y - fe.ascent)
					{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, te.width, 0)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr, x + te.x_bearing, y - fe.height)
					{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, te.width, 0)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)

						-- extents: width & height
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 0, 0.75, 0.5)
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, px)
					dashlength := 3 * px
					{CAIRO_FUNCTIONS}.cairo_set_dash (cr, $dashlength, 1, 0)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, x + te.x_bearing, y + te.y_bearing, te.width, te.height)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)

						-- text
					{CAIRO_FUNCTIONS}.cairo_move_to (cr, x, y)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
					{CAIRO_FUNCTIONS}.cairo_show_text (cr, text)

						-- bearing
					{CAIRO_FUNCTIONS}.cairo_set_dash (cr, default_pointer, 0, 0)
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 2 * px)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 0, 0.75, 0.5)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr, x, y)
					{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, te.x_bearing, te.y_bearing)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)

						-- text's advance
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 0, 0.75, 0.5)
					{CAIRO_FUNCTIONS}.cairo_arc (cr, x + te.x_advance, y + te.y_advance, 5 * px, 0, 2 * {MATH_CONST}.pi)
					{CAIRO_FUNCTIONS}.cairo_fill (cr)

						-- reference point
					{CAIRO_FUNCTIONS}.cairo_arc (cr, x, y, 5 * px, 0, 2 * {MATH_CONST}.pi)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0.75, 0, 0, 0.5)
					{CAIRO_FUNCTIONS}.cairo_fill (cr)


						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "text_extents.png")
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
