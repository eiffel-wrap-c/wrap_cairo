note
	description: "Cairo Samples"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Tutorial", "src=https://www.cairographics.org/samples/curve_rectangle/", "protocol=uri"

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
			x0,y0,rect_width, rect_height,radius : REAL_64
			x1, y1: REAL_64
		do
				-- The cairo context is tied to an image surface of dimension 256 x 256 and 32 bits per pixel to store RGB and Alpha information
			surface := {CAIRO_FUNCTIONS}.cairo_image_surface_create ({CAIRO_FORMAT_ENUM_API}.CAIRO_FORMAT_ARGB32, 256, 256)
			if
				{CAIRO_FUNCTIONS}.cairo_surface_status (surface) = {CAIRO_STATUS_ENUM_API}.cairo_status_success
			then
				cr := {CAIRO_FUNCTIONS}.cairo_create (surface)

				if {CAIRO_FUNCTIONS}.cairo_status (cr) = {CAIRO_STATUS_ENUM_API}.cairo_status_success then

						--  custom shape that could be wrapped in a function and an approximate curvature radius
					x0 := 25.6
					y0 := 25.6
					rect_width  := 204.8
					rect_height := 204.8
					radius := 102.4


					x1 := x0 + rect_width
					y1 := y0 + rect_height
					if rect_width / 2 <radius then
					    if  rect_height / 2 < radius then
					        {CAIRO_FUNCTIONS}.cairo_move_to  (cr, x0, (y0 + y1)/2)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x0 ,y0, x0, y0, (x0 + x1)/2, y0)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x1, y0, x1, y0, x1, (y0 + y1)/2)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x1, y1, x1, y1, (x1 + x0)/2, y1)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x0, y1, x0, y1, x0, (y0 + y1)/2)
					    else
					        {CAIRO_FUNCTIONS}.cairo_move_to  (cr, x0, y0 + radius)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x0 ,y0, x0, y0, (x0 + x1)/2, y0)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x1, y0, x1, y0, x1, y0 + radius)
					        {CAIRO_FUNCTIONS}.cairo_line_to (cr, x1 , y1 - radius)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x1, y1, x1, y1, (x1 + x0)/2, y1)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x0, y1, x0, y1, x0, y1- radius)
					   end
					else
					    if rect_height / 2 < radius then
					        {CAIRO_FUNCTIONS}.cairo_move_to  (cr, x0, (y0 + y1)/2)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x0 , y0, x0 , y0, x0 + radius, y0)
					        {CAIRO_FUNCTIONS}.cairo_line_to (cr, x1 - radius, y0)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x1, y0, x1, y0, x1, (y0 + y1)/2)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x1, y1, x1, y1, x1 - radius, y1)
					        {CAIRO_FUNCTIONS}.cairo_line_to (cr, x0 + radius, y1)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x0, y1, x0, y1, x0, (y0 + y1)/2)
					    else
					        {CAIRO_FUNCTIONS}.cairo_move_to  (cr, x0, y0 + radius)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x0 , y0, x0 , y0, x0 + radius, y0)
					        {CAIRO_FUNCTIONS}.cairo_line_to (cr, x1 - radius, y0)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x1, y0, x1, y0, x1, y0 + radius)
					        {CAIRO_FUNCTIONS}.cairo_line_to (cr, x1 , y1 - radius)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x1, y1, x1, y1, x1 - radius, y1)
					        {CAIRO_FUNCTIONS}.cairo_line_to (cr, x0 + radius, y1)
					        {CAIRO_FUNCTIONS}.cairo_curve_to (cr, x0, y1, x0, y1, x0, y1- radius)
					    end
					end
					{CAIRO_FUNCTIONS}.cairo_close_path (cr);

					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0.5, 0.5, 1)
					{CAIRO_FUNCTIONS}.cairo_fill_preserve (cr)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0.5, 0, 0, 0.5)
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 10.0)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)


						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "curve_rectangle.png")
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
