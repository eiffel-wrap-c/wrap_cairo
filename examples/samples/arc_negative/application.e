note
	description: "Cairo Samples"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Tutorial", "src=https://www.cairographics.org/samples/arc_negative/", "protocol=uri"

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
				-- The cairo context is tied to an image surface of dimension 400 x 400 and 32 bits per pixel to store RGB and Alpha information
			surface := {CAIRO_FUNCTIONS}.cairo_image_surface_create ({CAIRO_FORMAT_ENUM_API}.CAIRO_FORMAT_ARGB32, 400, 400)
			if
				{CAIRO_FUNCTIONS}.cairo_surface_status (surface) = {CAIRO_STATUS_ENUM_API}.cairo_status_success
			then
				cr := {CAIRO_FUNCTIONS}.cairo_create (surface)

				if {CAIRO_FUNCTIONS}.cairo_status (cr) = {CAIRO_STATUS_ENUM_API}.cairo_status_success then

					xc := 128.0
					yc := 128.0
					radius := 100.0
						-- angles are specified in radians
					angle1 := 45.0  * ({MATH_CONST}.pi/180.0)
					angle2 := 180.0 * ({MATH_CONST}.pi/180.0)

					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 10.0);
					{CAIRO_FUNCTIONS}.cairo_arc_negative (cr, xc, yc, radius, angle1, angle2);
					{CAIRO_FUNCTIONS}.cairo_stroke (cr);

						--  draw helping lines
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 1, 0.2, 0.2, 0.6);
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 6.0);

					{CAIRO_FUNCTIONS}.cairo_arc (cr, xc, yc, 10.0, 0, 2*{MATH_CONST}.pi);
					{CAIRO_FUNCTIONS}.cairo_fill (cr);

					{CAIRO_FUNCTIONS}.cairo_arc (cr, xc, yc, radius, angle1, angle1);
					{CAIRO_FUNCTIONS}.cairo_line_to (cr, xc, yc);
					{CAIRO_FUNCTIONS}.cairo_arc (cr, xc, yc, radius, angle2, angle2);
					{CAIRO_FUNCTIONS}.cairo_line_to (cr, xc, yc);
					{CAIRO_FUNCTIONS}.cairo_stroke (cr);


						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "arc_negative.png")
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
