note
	description: "Summary description for {CAIRO_FUNCTIONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CAIRO_FUNCTIONS

inherit

	CAIRO_FUNCTIONS_API
		rename
			cairo_status_to_string as cairo_status_to_string_api,
			cairo_pattern_create_linear as cairo_pattern_create_linear_api,
			cairo_pattern_create_radial as cairo_pattern_create_radial_api,
			cairo_image_surface_create_from_png as cairo_image_surface_create_from_png_api
		redefine
			cairo_image_surface_create,
			cairo_create,
			cairo_copy_path_flat
		end


feature -- Access

	cairo_create (target: CAIRO_SURFACE_STRUCT_API): CAIRO_STRUCT_API
			-- https://www.cairographics.org/manual/cairo-cairo-t.html#cairo-create
		do
			create Result.make_by_pointer ( c_cairo_create (target.item) )
		end

	cairo_image_surface_create (format: INTEGER; width: INTEGER; height: INTEGER): CAIRO_SURFACE_STRUCT_API
			-- https://www.cairographics.org/manual/cairo-Image-Surfaces.html#cairo-image-surface-create
		do
			create Result.make_by_pointer ( c_cairo_image_surface_create (format, width, height) )
		end

	cairo_status_to_string (status: INTEGER): STRING_8
			-- https://www.cairographics.org/manual/cairo-Error-handling.html#cairo-status-to-string
		local
			l_ptr: POINTER
		do
			Result := "Unkown"
			l_ptr := c_cairo_status_to_string (status)
			if l_ptr /= default_pointer then
				create Result.make_from_c (l_ptr)
			end
		end

	cairo_pattern_create_linear (x0: REAL_64; y0: REAL_64; x1: REAL_64; y1: REAL_64): CAIRO_PATTERN_STRUCT_API
			-- https://cairographics.org/manual/cairo-cairo-pattern-t.html#cairo-pattern-create-linear
		do
			create Result.make_by_pointer (cairo_pattern_create_linear_api (x0, y0, x1, y1))
		ensure
			instance_free: class
		end


	cairo_pattern_create_radial (cx0: REAL_64; cy0: REAL_64; radius0: REAL_64; cx1: REAL_64; cy1: REAL_64; radius1: REAL_64): CAIRO_PATTERN_STRUCT_API
			-- https://cairographics.org/manual/cairo-cairo-pattern-t.html#cairo-pattern-create-radial
		do
			create Result.make_by_pointer (cairo_pattern_create_radial_api (cx0, cy0, radius0, cx1, cy1, radius1))
		ensure
			instance_free: class
		end

	cairo_copy_path_flat (cr: CAIRO_STRUCT_API): CAIRO_PATH_STRUCT_API
			-- https://www.cairographics.org/manual/cairo-Paths.html#cairo-copy-path-flat
		do
			create Result.make_by_pointer ( c_cairo_copy_path_flat (cr.item) )
		end


	cairo_image_surface_create_from_png (filename: STRING_8): CAIRO_SURFACE_STRUCT_API
			-- https://www.cairographics.org/manual/cairo-PNG-Support.html#cairo-image-surface-create-from-png
		local
			c_str: C_STRING
		do
			create c_str.make (filename)
			create Result.make_by_pointer (cairo_image_surface_create_from_png_api (c_str.item))
		ensure
			instance_free: class
		end

end
