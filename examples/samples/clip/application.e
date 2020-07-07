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
			surface: CAIRO_SURFACE_STRUCT_API
			cr: CAIRO_STRUCT_API
			res: INTEGER
			xc, yc, radius, angle1, angle2: REAL_64
		do
				-- The cairo context is tied to an image surface of dimension 256 x 256 and 32 bits per pixel to store RGB and Alpha information
			surface := {CAIRO_FUNCTIONS}.cairo_image_surface_create ({CAIRO_FORMAT_ENUM_API}.CAIRO_FORMAT_ARGB32, 256, 256)
			if
				{CAIRO_FUNCTIONS}.cairo_surface_status (surface) = {CAIRO_STATUS_ENUM_API}.cairo_status_success
			then
				cr := {CAIRO_FUNCTIONS}.cairo_create (surface)

				if {CAIRO_FUNCTIONS}.cairo_status (cr) = {CAIRO_STATUS_ENUM_API}.cairo_status_success then

					{CAIRO_FUNCTIONS}.cairo_arc (cr, 128.0, 128.0, 76.8, 0, 2 * {MATH_CONST}.pi)
					{CAIRO_FUNCTIONS}.cairo_clip (cr);

						-- Current path is not consumed by cairo clip
					{CAIRO_FUNCTIONS}.cairo_new_path (cr)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 256, 256)
					{CAIRO_FUNCTIONS}.cairo_fill (cr)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 1, 0)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr, 0, 0)
					{CAIRO_FUNCTIONS}.cairo_line_to (cr, 256, 256)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr, 256, 0)
					{CAIRO_FUNCTIONS}.cairo_line_to (cr, 0, 256);
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 10.0)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)

						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "clip.png")
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
