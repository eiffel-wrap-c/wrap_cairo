note
	description: "Cairo Samples"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Tutorial", "src=https://www.cairographics.org/samples/curve_to/", "protocol=uri"

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
			x,y, x1,y1, x2, y2, x3, y3: REAL_64
		do
				-- The cairo context is tied to an image surface of dimension 256 x 256 and 32 bits per pixel to store RGB and Alpha information
			surface := {CAIRO_FUNCTIONS}.cairo_image_surface_create ({CAIRO_FORMAT_ENUM_API}.CAIRO_FORMAT_ARGB32, 256, 256)
			if
				{CAIRO_FUNCTIONS}.cairo_surface_status (surface) = {CAIRO_STATUS_ENUM_API}.cairo_status_success
			then
				cr := {CAIRO_FUNCTIONS}.cairo_create (surface)

				if {CAIRO_FUNCTIONS}.cairo_status (cr) = {CAIRO_STATUS_ENUM_API}.cairo_status_success then

					x := 25.6
					y := 128.0
					x1 := 102.4
					y1 := 230.4
      				x2 := 153.6
      				y2 := 25.6
       				x3 := 230.4
       				y3 :=128.0

					{CAIRO_FUNCTIONS}.cairo_move_to (cr, x, y)
					{CAIRO_FUNCTIONS}.cairo_curve_to (cr, x1, y1, x2, y2, x3, y3)

					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 10.0)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)

					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 1, 0.2, 0.2, 0.6)
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 6.0)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr,x,y)
					{CAIRO_FUNCTIONS}.cairo_line_to (cr,x1,y1)
					{CAIRO_FUNCTIONS}.cairo_move_to (cr,x2,y2)
					{CAIRO_FUNCTIONS}.cairo_line_to (cr,x3,y3)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)

						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "curve_to.png")
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
