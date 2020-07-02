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
			linpat, radpat: CAIRO_PATTERN_STRUCT_API
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
						-- The cairo_mask() and cairo_mask_surface() operations allow transfer according to the transparency/opacity of a second source pattern or surface.
						-- Where the pattern or surface is opaque, the current source is transferred to the destination. Where the pattern or surface is transparent, nothing is transferred.
					linpat := {CAIRO_FUNCTIONS}.cairo_pattern_create_linear (0, 0, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgb (linpat, 0, 0, 0.3, 0.8)
					{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgb (linpat, 1, 0, 0.8, 0.3)

					radpat := {CAIRO_FUNCTIONS}.cairo_pattern_create_radial (0.5, 0.5, 0.25, 0.5, 0.5, 0.75);
					{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (radpat, 0, 0, 0, 0, 1)
					{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (radpat, 0.5, 0, 0, 0, 0)

					{CAIRO_FUNCTIONS}.cairo_set_source (cr, linpat)
					{CAIRO_FUNCTIONS}.cairo_pattern_destroy (linpat)

					{CAIRO_FUNCTIONS}.cairo_mask (cr, radpat)
					{CAIRO_FUNCTIONS}.cairo_pattern_destroy (radpat)

						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "mask.png")
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
