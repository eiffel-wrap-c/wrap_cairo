note
	description: "Cairo Samples"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Tutorial", "src=https://www.cairographics.org/samples/clip_image/", "protocol=uri"

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
			w, h: INTEGER
			image: CAIRO_SURFACE_STRUCT_API
		do
				-- The cairo context is tied to an image surface of dimension 256 x 256 and 32 bits per pixel to store RGB and Alpha information
			surface := {CAIRO_FUNCTIONS}.cairo_image_surface_create ({CAIRO_FORMAT_ENUM_API}.CAIRO_FORMAT_ARGB32, 400, 400)
			if
				{CAIRO_FUNCTIONS}.cairo_surface_status (surface) = {CAIRO_STATUS_ENUM_API}.cairo_status_success
			then
				cr := {CAIRO_FUNCTIONS}.cairo_create (surface)

				if {CAIRO_FUNCTIONS}.cairo_status (cr) = {CAIRO_STATUS_ENUM_API}.cairo_status_success then

					{CAIRO_FUNCTIONS}.cairo_arc (cr, 128.0, 128.0, 76.8, 0, 2*{MATH_CONST}.pi)
					{CAIRO_FUNCTIONS}.cairo_clip (cr)
						-- path not consumed by clip
					{CAIRO_FUNCTIONS}.cairo_new_path (cr)

					image := {CAIRO_FUNCTIONS}.cairo_image_surface_create_from_png ("image.png")
					w := {CAIRO_FUNCTIONS}.cairo_image_surface_get_width (image)
					h := {CAIRO_FUNCTIONS}.cairo_image_surface_get_height (image)

					{CAIRO_FUNCTIONS}.cairo_scale (cr, 256.0/w, 256.0/h)

					{CAIRO_FUNCTIONS}.cairo_set_source_surface (cr, image, 0, 0)
					{CAIRO_FUNCTIONS}.cairo_paint (cr)
						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "clip_image.png")
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
