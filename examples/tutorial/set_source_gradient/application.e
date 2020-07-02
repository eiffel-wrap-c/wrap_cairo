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
			radpat, linpat: CAIRO_PATTERN_STRUCT_API
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
						-- Gradients describe a progression of colors by setting a start and stop reference location and a series of "stops" along the way.
						-- Linear gradients are built from two points which pass through parallel lines to define the start and stop locations.
						-- Radial gradients are also built from two points, but each has an associated radius of the circle on which to define the start and stop locations.
						-- Stops are added to the gradient with cairo_add_color_stop_rgb() and cairo_add_color_stop_rgba() which take a color like cairo_set_source_rgb*(),
						-- as well as an offset to indicate where it lies between the reference locations.
						-- The colors between adjacent stops are averaged over space to form a smooth blend.
						-- Finally, the behavior beyond the reference locations can be controlled with cairo_set_extend().

					radpat := {CAIRO_FUNCTIONS}.cairo_pattern_create_radial (0.25, 0.25, 0.1, 0.5, 0.5, 0.5)
					{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgb (radpat, 0, 1.0, 0.8, 0.8)
					{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgb (radpat, 1, 0.9, 0.0, 0.0)

					across 1 |..| 9 as ic loop
						across 1 |..| 9 as jc loop
							{CAIRO_FUNCTIONS}.cairo_rectangle (cr, ic.item / 10.0 - 0.04, jc.item / 10.0 - 0.04, 0.08, 0.08)
						end
					end
					{CAIRO_FUNCTIONS}.cairo_set_source (cr, radpat)
					{CAIRO_FUNCTIONS}.cairo_fill (cr)

					linpat := {CAIRO_FUNCTIONS}.cairo_pattern_create_linear (0.25, 0.35, 0.75, 0.65)
					{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (linpat, 0.00, 1, 1, 1, 0)
					{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (linpat, 0.25, 0, 1, 0, 0.5)
					{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (linpat, 0.50, 1, 1, 1, 0)
					{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (linpat, 0.75, 0, 0, 1, 0.5)
					{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (linpat, 1.00, 1, 1, 1, 0)

					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.0, 0.0, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_set_source (cr, linpat)
					{CAIRO_FUNCTIONS}.cairo_fill (cr)

						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "set_source_gradient.png")
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
