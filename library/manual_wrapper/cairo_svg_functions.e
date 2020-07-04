note
	description: "Summary description for {CAIRO_SVG_FUNCTIONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CAIRO_SVG_FUNCTIONS

inherit

	CAIRO_SVG_FUNCTIONS_API
		rename
			cairo_svg_surface_create as cairo_svg_surface_create_api
		end

feature	-- Access

	cairo_svg_surface_create (filename: STRING_8; width_in_points: REAL_64; height_in_points: REAL_64): CAIRO_SURFACE_STRUCT_API
			-- https://developer.gnome.org/cairo/stable/cairo-SVG-Surfaces.html#cairo-svg-surface-create
		local
			c_filename: C_STRING
		do
			create c_filename.make (filename)
			create Result.make_by_pointer (cairo_svg_surface_create_api (c_filename.item, width_in_points, height_in_points))
		ensure
			instance_free: class
		end


end
