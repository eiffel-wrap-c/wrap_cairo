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
						-- There are three main kinds of sources in cairo: colors, gradients, and images.
						-- Colors are the simplest; they use a uniform hue and opacity for the entire source.
						-- You can select these without any preparation with cairo_set_source_rgb() and cairo_set_source_rgba().
						-- Using cairo_set_source_rgb (cr, r, g, b) is equivalent to using cairo_set_source_rgba (cr, r, g, b, 1.0), and it sets your source color to use full opacity.

					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr, 0, 0)
					{CAIRO_FUNCTIONS}.cairo_line_to (cr, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr, 1, 0)
					{CAIRO_FUNCTIONS}.cairo_line_to (cr, 0, 1)
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 0.2)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)

					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 0.5, 0.5)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 1, 0, 0, 0.80)
					{CAIRO_FUNCTIONS}.cairo_fill (cr)

					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0.5, 0.5, 0.5);
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 1, 0, 0.60);
					{CAIRO_FUNCTIONS}.cairo_fill (cr);

					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.5, 0, 0.5, 0.5);
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 0, 1, 0.40);
					{CAIRO_FUNCTIONS}.cairo_fill (cr);

						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "set_source_rgba.png")
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
