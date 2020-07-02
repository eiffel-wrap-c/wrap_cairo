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
						-- The cairo_fill() operation uses the path like the lines of a coloring book, and allows the source through the mask within the hole whose boundaries are the path.
						-- For complex paths (paths with multiple closed sub-paths—like a donut—or paths that self-intersect) this is influenced by the fill rule (https://www.cairographics.org/manual/cairo-cairo-t.html#cairo-set-fill-rule).
						-- Note that while stroking the path transfers the source for half of the line width on each side of the path, filling a path fills directly up to the edge of the path and no further.
					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.25, 0.25, 0.5, 0.5)
					{CAIRO_FUNCTIONS}.cairo_fill (cr)

						-- Write output and clean up
					res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, "fill.png")
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
