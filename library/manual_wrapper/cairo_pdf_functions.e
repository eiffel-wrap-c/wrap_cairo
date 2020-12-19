note
	description: "Object to work with PDF Surfaces — Rendering PDF documents"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name= PDF surfaces", "src=https://www.cairographics.org/manual/cairo-PDF-Surfaces.html"

class
	CAIRO_PDF_FUNCTIONS

inherit

	CAIRO_PDF_FUNCTIONS_API
		rename
			cairo_pdf_surface_create as cairo_pdf_surface_create_api
		end

feature -- Access

	cairo_pdf_surface_create (filename: detachable READABLE_STRING_GENERAL; width_in_points: REAL_64; height_in_points: REAL_64): CAIRO_SURFACE_STRUCT_API
			-- `filename`: for the PDF output (must be writable), NULL may be used to specify no output.
			-- 				This will generate a PDF surface that may be queried and used as a source, without generating a temporary file.
			-- `width_in_points`: width of the surface, in points (1 point == 1/72.0 inch)
			-- `height_in_points`: height of the surface, in points (1 point == 1/72.0 inch)
			--
			-- Returns
			-- a pointer to the newly created surface. The caller owns the surface and should call cairo_surface_destroy() when done with it.
			--  This function always returns a valid pointer, but it will return a pointer to a "nil" surface if an error such as out of memory occurs. You can use cairo_surface_status() to check for this.
		local
			l_filename: POINTER
		do
			if attached filename then
				if filename.is_string_32 then
					l_filename := (create {NATIVE_STRING}.make (filename)).item
				else
					l_filename := (create {C_STRING}.make (filename)).item
				end
			end
			create Result.make_by_pointer  (cairo_pdf_surface_create_api (l_filename, width_in_points, height_in_points))
		ensure
			instance_free: class
		end

end
