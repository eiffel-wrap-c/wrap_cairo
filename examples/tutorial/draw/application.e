note
	description: "Cairo Tutorial"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=drawing illustrations", "src=https://www.cairographics.org/tutorial/draw.c", "protocol=uri"

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
			alpha: ARRAY [REAL_64]
		do
			diagram ("setsourcergba")
			diagram ("setsourcegradient")
			diagram ("path-moveto")
			diagram ("path-lineto")
			diagram ("path-arcto")
			diagram ("path-curveto")
			diagram ("path-close")
			diagram ("textextents")
		end

	diagram (name: STRING_8)
		local
			surface: CAIRO_SURFACE_STRUCT_API
			cr: CAIRO_STRUCT_API
			matrix: CAIRO_MATRIX_STRUCT_API
			width, height: REAL_64
			ux, uy: REAL_64
			svg_filename, png_filename: STRING
			res: INTEGER
		do
			width  := 120
			height := 120
			ux := 2
			uy := 2

			create png_filename.make_from_string (name + ".png")
			create svg_filename.make_from_string (name + ".svg")

				-- The cairo context
			surface := {CAIRO_SVG_FUNCTIONS}.cairo_svg_surface_create (svg_filename, width, height)
			if
				{CAIRO_FUNCTIONS}.cairo_surface_status (surface) = {CAIRO_STATUS_ENUM_API}.cairo_status_success
			then
				cr := {CAIRO_FUNCTIONS}.cairo_create (surface)
				if {CAIRO_FUNCTIONS}.cairo_status (cr) = {CAIRO_STATUS_ENUM_API}.cairo_status_success then
					{CAIRO_FUNCTIONS}.cairo_scale (cr, width, height)
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 0.01)

					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 1, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_fill (cr)

					draw_diagram (name, cr)

					{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $ux, $uy)
					if ux < uy then
						ux := uy
					end
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, ux)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)

						--	write output and clean up
					res :={CAIRO_FUNCTIONS}.cairo_surface_write_to_png (surface, png_filename)
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

	draw_diagram (name: STRING_8; cr: CAIRO_STRUCT_API)
		do
			if name.same_string_general ("setsourcergba") then
				draw_setsourcergba (cr)
			elseif name.same_string_general ("setsourcegradient") then
				draw_setsourcegradient (cr)
			elseif name.same_string_general ("path-moveto") then
				draw_path_moveto (cr)
			elseif name.same_string_general ("path-lineto") then
				draw_path_lineto (cr)
			elseif name.same_string_general ("path-arcto") then
				draw_path_arcto (cr)
			elseif name.same_string_general ("path-curveto") then
				draw_path_arcto (cr)
			elseif name.same_string_general ("path-curveto") then
				draw_path_curveto_hints (cr)
				draw_path_curveto (cr)
			elseif name.same_string_general ("path-close") then
				draw_path_close (cr)
			elseif name.same_string_general ("textextents") then
				draw_textextents (cr)
			end
			if name.starts_with_general ("path-") then
				path_diagram (cr)
			end
		end


	draw_setsourcergba (cr: CAIRO_STRUCT_API)
		do
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
			{CAIRO_FUNCTIONS}.cairo_move_to (cr, 0, 0)
			{CAIRO_FUNCTIONS}.cairo_line_to (cr, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_move_to (cr, 1, 0)
			{CAIRO_FUNCTIONS}.cairo_line_to (cr, 0, 1)
			{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 0.2)
			{CAIRO_FUNCTIONS}.cairo_stroke (cr)

			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 0.5, 0.5)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 1, 0, 0, 0.80)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)

			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0.5, 0.5, 0.5)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 1, 0, 0.60)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)

			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.5, 0, 0.5, 0.5)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 0, 1, 0.40)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)
		end


	draw_setsourcegradient (cr: CAIRO_STRUCT_API)
		local
			radpat, linpat: CAIRO_PATTERN_STRUCT_API
		do
			radpat := {CAIRO_FUNCTIONS}.cairo_pattern_create_radial (0.25, 0.25, 0.1, 0.5, 0.5, 0.5)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgb (radpat, 0, 1.0, 0.8, 0.8)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgb (radpat, 1, 0.9, 0.0, 0.0)

			across 1 |..| 9 as ic loop
				across 1 |..| 9 as jc loop
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, ic.item / 10.0 - 0.04, jc.item / 10.0 - 0.04, 0.08, 0.08)
				end
			end

			{CAIRO_FUNCTIONS}.cairo_set_source (cr, radpat)
			{CAIRO_FUNCTIONS}.cairo_fill (cr);

			linpat := {CAIRO_FUNCTIONS}.cairo_pattern_create_linear (0.25, 0.35, 0.75, 0.65)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (linpat, 0.00, 1, 1, 1, 0)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (linpat, 0.25, 0, 1, 0, 0.5)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (linpat, 0.50, 1, 1, 1, 0)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (linpat, 0.75, 0, 0, 1, 0.5)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (linpat, 1.00, 1, 1, 1, 0)

			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.0, 0.0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_set_source (cr, linpat)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)
		end


	path_diagram (cr: CAIRO_STRUCT_API)
		local
			path: CAIRO_PATH_STRUCT_API
			data: CAIRO_PATH_DATA_T_UNION_API
			x, y, px, py: REAL_64
		do
			px := 3
			py := 3

			path := {CAIRO_FUNCTIONS}.cairo_copy_path_flat (cr)
			{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $px, $py)
			if px < py then
				px := py
			end
			{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, px)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0.6, 0)
			{CAIRO_FUNCTIONS}.cairo_stroke (cr)

			if path.num_data > 1 then
				--
				-- Draw markers at the first and the last point of the
				-- path, but only if the path is not closed.
				--
				-- If the last path manipulation was a cairo_close(),
				-- then we can detect this at the end of the path->data
				-- array. The CLOSE_PATH element will be followed by a
				-- MOVE_TO element (since cairo 1.2.4), so we need to
				-- check position path->num_data - 3.
				--
				-- More details can be found here:
				-- <http://cairographics.org/manual/cairo-Paths.html#cairo-close-path>
				-- <http://cairographics.org/manual/cairo-Paths.html#cairo-path-data-t>
				--
				if path.num_data > 2 and then path.data.at ((path.num_data - 3)+1).header_type /= {CAIRO_PATH_DATA_TYPE_ENUM_API}.CAIRO_PATH_CLOSE_PATH then
						-- Get the first point in the path
					data := path.data.at (1)
					x := data.point_x
					y := data.point_y

					px := 5
					py := 5
					{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $px, $py)
					if px < py then
						px := py
					end

					{CAIRO_FUNCTIONS}.cairo_arc (cr, x, y, px, 0, 2 * {MATH_CONST}.pi)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0.0, 0.6, 0.0, 0.5)
					{CAIRO_FUNCTIONS}.cairo_fill(cr)

						-- Because cairo_copy_path_flat() was used to
					 	-- retrieve this path, there is no CURVE_TO
					 	-- element, so the elements all have a length of
					 	-- 2. The index of the last element must be
					 	-- path->num_data - 2.

					data := path.data.at ((path.num_data - 2) + 1)
					x := data.point_x
					y := data.point_y
					{CAIRO_FUNCTIONS}.cairo_arc (cr, x, y, px, 0, 2 * {MATH_CONST}.pi)
					{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0.0, 0.0, 0.75, 0.5)
					{CAIRO_FUNCTIONS}.cairo_fill (cr)

				end
			end
			{CAIRO_FUNCTIONS}.cairo_path_destroy (path)
		end


	draw_path_curveto_hints (cr:  CAIRO_STRUCT_API)
		local
			px, py: REAL_64
		do
			px := 3
			py := 3
			{CAIRO_FUNCTIONS}.cairo_save (cr)
			{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $px, $py)
			if px < py then
				px := py
			end
			{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0.5, 0, 0, 0.5)

			{CAIRO_FUNCTIONS}.cairo_new_sub_path (cr)
			{CAIRO_FUNCTIONS}.cairo_arc (cr, 0.5, 0.625, px, 0, 2 * {MATH_CONST}.pi)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)
			{CAIRO_FUNCTIONS}.cairo_arc (cr, 0.5, 0.875, px, 0, 2 * {MATH_CONST}.pi)
			{CAIRO_FUNCTIONS}.cairo_fill (cr);

			px := 2
			py := 2
			{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $px, $py)
			if px < py then
				px := py
			end
			{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, px)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0.5, 0, 0, 0.25)

			{CAIRO_FUNCTIONS}.cairo_move_to (cr, 0.25, 0.75)
			{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, 0.25, 0.125)
			{CAIRO_FUNCTIONS}.cairo_stroke (cr)

			{CAIRO_FUNCTIONS}.cairo_move_to (cr, 0.75, 0.75)
			{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, -0.25, -0.125)
			{CAIRO_FUNCTIONS}.cairo_stroke (cr)

			{CAIRO_FUNCTIONS}.cairo_restore (cr)
		end

	draw_path_moveto (cr: CAIRO_STRUCT_API)
		do
			{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 0.1)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)

			{CAIRO_FUNCTIONS}.cairo_move_to (cr, 0.25, 0.25)
		end

	draw_path_lineto (cr: CAIRO_STRUCT_API)
		do
			draw_path_moveto (cr)

			{CAIRO_FUNCTIONS}.cairo_line_to (cr, 0.5, 0.375)
			{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, 0.25, -0.125)
		end

	draw_path_arcto (cr: CAIRO_STRUCT_API)
		do
			draw_path_lineto (cr)
			{CAIRO_FUNCTIONS}.cairo_arc (cr, 0.5, 0.5, 0.25 * {SINGLE_MATH}.sqrt(2), -0.25 * {MATH_CONST}.pi, 0.25 * {MATH_CONST}.pi)
		end

	draw_path_curveto (cr: CAIRO_STRUCT_API)
		do
			draw_path_arcto (cr)
			{CAIRO_FUNCTIONS}.cairo_rel_curve_to (cr, -0.25, -0.125, -0.25, 0.125, -0.5, 0)
		end

	draw_path_close (cr: CAIRO_STRUCT_API)
		do
			draw_path_curveto (cr)
			{CAIRO_FUNCTIONS}.cairo_close_path (cr)
		end

	draw_textextents (cr: CAIRO_STRUCT_API)
		local
			te:	CAIRO_TEXT_EXTENTS_T_STRUCT_API
			fe: CAIRO_FONT_EXTENTS_T_STRUCT_API

			text: STRING_8
			x, y, px, ux, uy, dashlength: REAL_64
		do
			ux := 1
			uy := 1
			text := "joy"
			{CAIRO_FUNCTIONS}.cairo_set_font_size (cr, 0.5)

			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0.0, 0.0, 0.0)
			{CAIRO_FUNCTIONS}.cairo_select_font_face (cr, "Georgia", {CAIRO_FONT_SLANT_ENUM_API}.CAIRO_FONT_SLANT_NORMAL, {CAIRO_FONT_WEIGHT_ENUM_API}.CAIRO_FONT_WEIGHT_BOLD)
			create fe.make
			{CAIRO_FUNCTIONS}.cairo_font_extents (cr, fe)
			{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $ux, $uy)

			px := if ux > uy then ux else uy end


			{CAIRO_FUNCTIONS}.cairo_font_extents (cr, fe)
			create te.make
			{CAIRO_FUNCTIONS}.cairo_text_extents (cr, text, te)
			x := 0.5 - te.x_bearing - te.width / 2
			y := 0.5 - fe.descent + fe.height / 2

				-- baseline, descent, ascent, height
			{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 4*px)
			dashlength := 9 * px
			{CAIRO_FUNCTIONS}.cairo_set_dash (cr, $dashlength, 1, 0)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 0.6, 0, 0.5)
			{CAIRO_FUNCTIONS}.cairo_move_to (cr, x + te.x_bearing, y)
			{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, te.width, 0)
			{CAIRO_FUNCTIONS}.cairo_move_to (cr, x + te.x_bearing, y + fe.descent)
			{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, te.width, 0)
			{CAIRO_FUNCTIONS}.cairo_move_to (cr, x + te.x_bearing, y - fe.ascent)
			{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, te.width, 0)
			{CAIRO_FUNCTIONS}.cairo_move_to (cr, x + te.x_bearing, y - fe.height)
			{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, te.width, 0)
			{CAIRO_FUNCTIONS}.cairo_stroke (cr)

				-- extents: width & height
			{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 0, 0.75, 0.5)
			{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, px)
			dashlength := 3 * px
			{CAIRO_FUNCTIONS}.cairo_set_dash (cr, $dashlength, 1, 0)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, x + te.x_bearing, y + te.y_bearing, te.width, te.height)
			{CAIRO_FUNCTIONS}.cairo_stroke (cr)

				-- text
			{CAIRO_FUNCTIONS}.cairo_move_to (cr, x, y)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
			{CAIRO_FUNCTIONS}.cairo_show_text (cr, text)

				-- bearing
			{CAIRO_FUNCTIONS}.cairo_set_dash (cr, default_pointer, 0, 0)
			{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 2 * px)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 0, 0.75, 0.5)
			{CAIRO_FUNCTIONS}.cairo_move_to (cr, x, y)
			{CAIRO_FUNCTIONS}.cairo_rel_line_to (cr, te.x_bearing, te.y_bearing)
			{CAIRO_FUNCTIONS}.cairo_stroke (cr)

				-- text's advance
			{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0, 0, 0.75, 0.5)
			{CAIRO_FUNCTIONS}.cairo_arc (cr, x + te.x_advance, y + te.y_advance, 5 * px, 0, 2 * {MATH_CONST}.pi)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)

				-- reference point
			{CAIRO_FUNCTIONS}.cairo_arc (cr, x, y, 5 * px, 0, 2 * {MATH_CONST}.pi)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgba (cr, 0.75, 0, 0, 0.5)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)
		end
end
