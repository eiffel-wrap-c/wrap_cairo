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

						-- Cairo always has an active path. If you call cairo_stroke() it will draw the path with your line settings.
						-- If you call cairo_fill() it will fill the inside of the path. But as often as not, the path is empty, and both calls will result in no change to your destination.
						-- Why is it empty so often? For one, it starts that way; but more importantly after each cairo_stroke() or cairo_fill() it is emptied again to let you start building your next path.

						-- What if you want to do multiple things with the same path? For instance to draw a red rectangle with a black border, you would want to fill the rectangle path with a red source, then stroke the same path with a black source.
						-- A rectangle path is easy to create multiple times, but a lot of paths are more complex.

						-- Cairo supports easily reusing paths by having alternate versions of its operations. Both draw the same thing, but the alternate doesn't reset the path.
						-- For stroking, alongside cairo_stroke() there is cairo_stroke_preserve(); for filling, cairo_fill_preserve() joins cairo_fill().
						-- Even setting the clip has a preserve variant. Apart from choosing when to preserve your path, there are only a couple common operations.

						-- Drawing code goes here
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 0.1)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)

						-- Moving
						-- Cairo uses a connect-the-dots style system when creating paths. Start at 1, draw a line to 2, then 3, and so forth.
						-- When you start a path, or when you need to start a new sub-path, you want it to be like point 1: it has nothing connecting to it.
						-- For this, use cairo_move_to(). This sets the current reference point without making the path connect the previous point to it.
						-- There is also a relative coordinate variant, cairo_rel_move_to(), which sets the new reference a specified distance away from the current reference instead.
						-- After setting your first reference point, use the other path operations which both update the reference point and connect to it in some way.

					{CAIRO_FUNCTIONS}.cairo_move_to (cr, 0.25, 0.25)

						-- Straight Lines
						-- Whether with absolute coordinates cairo_line_to() (extend the path from the reference to this point), or relative coordinates cairo_rel_line_to() (extend the path from the reference this far in this direction),
						-- the path connection will be a straight line. The new reference point will be at the other end of the line.

					{CAIRO_FUNCTIONS}.cairo_line_to (cr, 0.5, 0.375)
					{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, 0.25, -0.125)

						-- Arcs
						-- Arcs are parts of the outside of a circle. Unlike straight lines, the point you directly specify is not on the path.
						-- Instead it is the center of the circle that makes up the addition to the path.
						-- Both a starting and ending point on the circle must be specified, and these points are connected either clockwise by cairo_arc() or counter-clockwise by cairo_arc_negative().
						-- If the previous reference point is not on this new curve, a straight line is added from it to where the arc begins.
						-- The reference point is then updated to where the arc ends. There are only absolute versions.
					{CAIRO_FUNCTIONS}.cairo_arc (cr, 0.5, 0.5, 0.25 * {SINGLE_MATH}.sqrt (2), -0.25 * {MATH_CONST}.PI, 0.25 * {MATH_CONST}.PI)

						-- Curves
						-- Curves in cairo are cubic Bézier splines. They start at the current reference point and smoothly follow the direction of two other points (without going through them) to get to a third specified point.
						--  Like lines, there are both absolute (cairo_curve_to()) and relative (cairo_rel_curve_to()) versions.
						-- Note that the relative variant specifies all points relative to the previous reference point, rather than each relative to the preceding control point of the curve.					
					{CAIRO_FUNCTIONS}.cairo_rel_curve_to (cr, -0.25, -0.125, -0.25, 0.125, -0.5, 0)


						-- Close the path
						-- Cairo can also close the path by drawing a straight line to the beginning of the current sub-path.
						-- This straight line can be useful for the last edge of a polygon, but is not directly useful for curve-based shapes.
						-- A closed path is fundamentally different from an open path: it's one continuous path and has no start or end. A closed path has no line caps for there is no place to put them.					
					{CAIRO_FUNCTIONS}.cairo_close_path (cr)

					{CAIRO_FUNCTIONS}.cairo_stroke (cr)

						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "path_close.png")
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
