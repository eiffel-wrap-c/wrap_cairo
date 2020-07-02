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
						-- The cairo_paint() operation uses a mask that transfers the entire source to the destination.
						-- Some people consider this an infinitely large mask, and others consider it no mask; the result is the same.
						-- The related operation cairo_paint_with_alpha() similarly allows transfer of the full source to destination, but it transfers only the provided percentage of the color.	

					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0.0, 0.0, 0.0)
					{CAIRO_FUNCTIONS}.cairo_paint_with_alpha (cr, 0.5)

						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "paint.png")
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
