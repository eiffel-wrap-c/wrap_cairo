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

					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 0.1)

					{CAIRO_FUNCTIONS}.cairo_save (cr)
					{CAIRO_FUNCTIONS}.cairo_scale (cr, 0.5, 1)
					{CAIRO_FUNCTIONS}.cairo_arc (cr, 0.5, 0.5, 0.40, 0, 2 * {MATH_CONST}.pi)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)

					{CAIRO_FUNCTIONS}.cairo_translate (cr, 1, 0);
					{CAIRO_FUNCTIONS}.cairo_arc (cr, 0.5, 0.5, 0.40, 0, 2 * {MATH_CONST}.pi)
					{CAIRO_FUNCTIONS}.cairo_restore (cr)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)

						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "tips_ellipse.png")
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
