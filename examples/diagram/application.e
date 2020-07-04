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
			alpha: ARRAY [REAL_64]
		do
			alpha := {ARRAY [REAL_64]}<<1.0, 0.15, 0.15>>
			diagram ("destination", alpha)

			alpha := {ARRAY [REAL_64]}<<0.15, 1.0, 0.15>>
			diagram ("the-mask", alpha);

			alpha := {ARRAY [REAL_64]}<<0.15, 0.15, 1.0>>
			diagram ("source", alpha);

			alpha := {ARRAY [REAL_64]}<<1.0, 0.8, 0.4>>
			diagram ("stroke", alpha);

			alpha := {ARRAY [REAL_64]}<<1.0, 0.8, 0.4>>
			diagram ("fill", alpha);

			alpha := {ARRAY [REAL_64]}<<1.0, 0.8, 0.4>>
			diagram ("showtext", alpha);

			alpha := {ARRAY [REAL_64]}<<1.0, 0.8, 0.4>>
			diagram ("paint", alpha);

			alpha := {ARRAY [REAL_64]}<<1.0, 0.8, 0.4>>;
			diagram ("mask", alpha);

		end

	diagram (name: STRING_8; alpha: ARRAY [REAL_64])
		local
			surface: CAIRO_SURFACE_STRUCT_API
			cr: CAIRO_STRUCT_API
			matrix: CAIRO_MATRIX_STRUCT_API
			width, height: REAL_64
			ux, uy: REAL_64
			svg_filename, png_filename: STRING
			res: INTEGER
		do
			width  := 160
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
						-- show layers separately on the right
					{CAIRO_FUNCTIONS}.cairo_save (cr)
					{CAIRO_FUNCTIONS}.cairo_scale (cr, height/3, height/3)
					{CAIRO_FUNCTIONS}.cairo_translate (cr, 3 *width/height-1, 0)

						-- source
					{CAIRO_FUNCTIONS}.cairo_save (cr)
					{CAIRO_FUNCTIONS}.cairo_push_group (cr)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_clip (cr)
					draw_source (name, cr)
					{CAIRO_FUNCTIONS}.cairo_pop_group_to_source (cr)
					{CAIRO_FUNCTIONS}.cairo_paint (cr)
					{CAIRO_FUNCTIONS}.cairo_restore (cr)

						-- mask
					{CAIRO_FUNCTIONS}.cairo_translate (cr, 0, 1)
					{CAIRO_FUNCTIONS}.cairo_save (cr)
					{CAIRO_FUNCTIONS}.cairo_push_group (cr)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_clip (cr)
					draw_mask (name, cr)
					{CAIRO_FUNCTIONS}.cairo_pop_group_to_source (cr)
					{CAIRO_FUNCTIONS}.cairo_paint (cr)
					{CAIRO_FUNCTIONS}.cairo_restore (cr)
						-- destination
					{CAIRO_FUNCTIONS}.cairo_translate (cr, 0, 1)
					{CAIRO_FUNCTIONS}.cairo_save (cr)
					{CAIRO_FUNCTIONS}.cairo_push_group (cr)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_clip (cr)
					draw_dest (name, cr)
					{CAIRO_FUNCTIONS}.cairo_pop_group_to_source (cr)
					{CAIRO_FUNCTIONS}.cairo_paint (cr)
					{CAIRO_FUNCTIONS}.cairo_restore (cr)
					{CAIRO_FUNCTIONS}.cairo_restore (cr)

						--	draw a border around the layers
					{CAIRO_FUNCTIONS}.cairo_save (cr)
					{CAIRO_FUNCTIONS}.cairo_scale (cr, height/3, height/3)
					{CAIRO_FUNCTIONS}.cairo_translate (cr, 3*width/height-1, 0)
					{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $ux, $uy)
					if ux < uy then
						ux := uy
					end
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, ux)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 3)
					{CAIRO_FUNCTIONS}.cairo_clip_preserve (cr)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 1, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)
					{CAIRO_FUNCTIONS}.cairo_restore (cr)

						-- layer diagram on the left
						-- destination layer
					{CAIRO_FUNCTIONS}.cairo_save (cr)
					{CAIRO_FUNCTIONS}.cairo_scale (cr, width-height/3, height)
					create matrix.make
					{CAIRO_FUNCTIONS}.cairo_matrix_init (matrix, 0.6, 0, 1.0/3, 0.5, 0.02, 0.45)
					{CAIRO_FUNCTIONS}.cairo_transform (cr, matrix)
					{CAIRO_FUNCTIONS}.cairo_push_group (cr)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_clip (cr)
					draw_dest (name, cr);
						-- this layer gets a black border
					{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0);
					ux := 2; uy := 2;
					{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $ux, $uy)
					if ux < uy then
						ux := uy
					end
					{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, ux)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_stroke (cr)
					{CAIRO_FUNCTIONS}.cairo_pop_group_to_source (cr)
					{CAIRO_FUNCTIONS}.cairo_paint_with_alpha (cr, alpha[1])
					{CAIRO_FUNCTIONS}.cairo_restore (cr)

						-- mask layer
					{CAIRO_FUNCTIONS}.cairo_save (cr);
					{CAIRO_FUNCTIONS}.cairo_scale (cr, width-height/3, height)
					{CAIRO_FUNCTIONS}.cairo_matrix_init (matrix, 0.6, 0, 1.0/3, 0.5, 0.04, 0.25)
					{CAIRO_FUNCTIONS}.cairo_transform (cr, matrix)
					{CAIRO_FUNCTIONS}.cairo_push_group (cr)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_clip (cr)
					draw_mask (name, cr)
					{CAIRO_FUNCTIONS}.cairo_pop_group_to_source (cr);
					{CAIRO_FUNCTIONS}.cairo_paint_with_alpha (cr, alpha[2])
					{CAIRO_FUNCTIONS}.cairo_restore (cr)

						-- source layer
					{CAIRO_FUNCTIONS}.cairo_save (cr)
					{CAIRO_FUNCTIONS}.cairo_scale (cr, width-height/3, height)
					{CAIRO_FUNCTIONS}.cairo_matrix_init (matrix, 0.6, 0, 1.0/3, 0.5, 0.06, 0.05)
					{CAIRO_FUNCTIONS}.cairo_transform (cr, matrix)
					{CAIRO_FUNCTIONS}.cairo_push_group (cr)
					{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
					{CAIRO_FUNCTIONS}.cairo_clip (cr);
					draw_source (name, cr);
					{CAIRO_FUNCTIONS}.cairo_pop_group_to_source (cr)
					{CAIRO_FUNCTIONS}.cairo_paint_with_alpha (cr, alpha[3])
					{CAIRO_FUNCTIONS}.cairo_restore (cr)

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



	draw_source (name: STRING_8; cr: CAIRO_STRUCT_API)
		do
			if name.same_string_general ("paint") then
				paint_draw_source (cr)
			elseif name.same_string_general ("mask") then
				mask_draw_source (cr)
			else
				diagram_draw_source (cr)
			end
		end

	draw_mask (name: STRING_8; cr: CAIRO_STRUCT_API)
		do
			if name.same_string_general ("stroke") then
				stroke_draw_mask (cr)
			elseif name.same_string_general ("fill") then
				fill_draw_mask (cr)
			elseif name.same_string_general ("showtext") then
				showtext_draw_mask (cr)
			elseif name.same_string_general ("paint") then
			elseif name.same_string_general ("mask") then
				mask_draw_mask (cr)
			else
				diagram_draw_mask (cr)
			end
		end

	draw_dest (name: STRING_8; cr: CAIRO_STRUCT_API)
		do
			if name.same_string_general ("stroke") then
				stroke_draw_dest (cr)
			elseif name.same_string_general ("fill") then
				fill_draw_dest (cr)
			elseif name.same_string_general ("showtext") then
				showtext_draw_dest (cr)
			elseif name.same_string_general ("paint") then
				paint_draw_dest (cr)
			elseif name.same_string_general ("mask") then
				mask_draw_dest (cr)
			else
				diagram_draw_dest (cr)
			end
		end

	diagram_draw_source (cr: CAIRO_STRUCT_API)
		do
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)
		end


	diagram_draw_mask (cr: CAIRO_STRUCT_API)
		do
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 1, 0.9, 0.6)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)
		end

	diagram_draw_mask_pattern (cr: CAIRO_STRUCT_API; pat: CAIRO_PATTERN_STRUCT_API)
		do
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 1, 0.9, 0.6)
			{CAIRO_FUNCTIONS}.cairo_mask (cr, pat)
		end

	diagram_draw_dest (cr: CAIRO_STRUCT_API)
		do
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 1, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)
		end

	stroke_draw_mask (cr: CAIRO_STRUCT_API)
		local
			px, py: REAL_64
		do
			{CAIRO_FUNCTIONS}.cairo_push_group (cr)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.20, 0.20, 0.6, 0.6)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.30, 0.30, 0.4, 0.4)
			{CAIRO_FUNCTIONS}.cairo_set_fill_rule (cr, {CAIRO_FILL_RULE_ENUM_API}.CAIRO_FILL_RULE_EVEN_ODD)
			{CAIRO_FUNCTIONS}.cairo_fill (cr);
			{CAIRO_FUNCTIONS}.cairo_set_fill_rule (cr, {CAIRO_FILL_RULE_ENUM_API}.CAIRO_FILL_RULE_WINDING);

			if attached {CAIRO_PATTERN_STRUCT_API} {CAIRO_FUNCTIONS}.cairo_pop_group (cr) as pat then

				diagram_draw_mask_pattern (cr, pat)

				{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.25, 0.25, 0.5, 0.5)
				{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0.6, 0)

				{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $px, $py)
				if px < py then
					px := py
				end
				{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, px)
				{CAIRO_FUNCTIONS}.cairo_stroke (cr)
			else
				print ("cairo_pop_group returns null%N")
			end
		end


	stroke_draw_dest (cr: CAIRO_STRUCT_API)
		do
			diagram_draw_dest (cr)

			{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, 0.1)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.25, 0.25, 0.5, 0.5)
			{CAIRO_FUNCTIONS}.cairo_stroke (cr)
		end

	fill_draw_mask (cr: CAIRO_STRUCT_API)
		local
			px, py: REAL_64
		do
			{CAIRO_FUNCTIONS}.cairo_push_group (cr)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1);
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.25, 0.25, 0.5, 0.5);
			{CAIRO_FUNCTIONS}.cairo_set_fill_rule (cr, {CAIRO_FILL_RULE_ENUM_API}.CAIRO_FILL_RULE_EVEN_ODD);
			{CAIRO_FUNCTIONS}.cairo_fill (cr);
			{CAIRO_FUNCTIONS}.cairo_set_fill_rule (cr, {CAIRO_FILL_RULE_ENUM_API}.CAIRO_FILL_RULE_WINDING);

			if attached {CAIRO_PATTERN_STRUCT_API} {CAIRO_FUNCTIONS}.cairo_pop_group (cr) as pat then

				diagram_draw_mask_pattern (cr, pat);

				{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.25, 0.25, 0.5, 0.5)
				{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0.6, 0)
				{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $px, $py)
				if  px < py then
					px := py
				end
				{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, px)
				{CAIRO_FUNCTIONS}.cairo_stroke (cr)
			else
				print ("cairo_pop_group returns null%N")
			end
		end

	fill_draw_dest (cr: CAIRO_STRUCT_API)
		do
			diagram_draw_dest (cr)

			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0.25, 0.25, 0.5, 0.5)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)
		end

	showtext_draw_mask (cr: CAIRO_STRUCT_API)
		local
			ux, uy: REAL_64
			te: CAIRO_TEXT_EXTENTS_T_STRUCT_API
		do
			ux := 1
			uy := 1
				--	yellow mask color
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 1, 0.9, 0.6)

				--	rectangle with an "a"-shaped hole
			{CAIRO_FUNCTIONS}.cairo_select_font_face (cr, "Georgia", {CAIRO_FONT_SLANT_ENUM_API}.CAIRO_FONT_SLANT_NORMAL, {CAIRO_FONT_WEIGHT_ENUM_API}.CAIRO_FONT_WEIGHT_BOLD)
			{CAIRO_FUNCTIONS}.cairo_set_font_size (cr, 1.2)
			create te.make
			{CAIRO_FUNCTIONS}.cairo_text_extents (cr, "a", te)

			{CAIRO_FUNCTIONS}.cairo_push_group (cr)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1);
			{CAIRO_FUNCTIONS}.cairo_move_to (cr, 0.5 - te.width / 2 - te.x_bearing, 0.5 - te.height / 2 - te.y_bearing)
			{CAIRO_FUNCTIONS}.cairo_text_path (cr, "a")
			{CAIRO_FUNCTIONS}.cairo_set_fill_rule (cr, {CAIRO_FILL_RULE_ENUM_API}.CAIRO_FILL_RULE_EVEN_ODD)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)
			{CAIRO_FUNCTIONS}.cairo_set_fill_rule (cr, {CAIRO_FILL_RULE_ENUM_API}.CAIRO_FILL_RULE_WINDING)
			{CAIRO_FUNCTIONS}.cairo_pop_group_to_source (cr)
			{CAIRO_FUNCTIONS}.cairo_paint (cr)

				--	show the outline of the glyph with a green line
			{CAIRO_FUNCTIONS}.cairo_move_to (cr, 0.5 - te.width / 2 - te.x_bearing,0.5 - te.height / 2 - te.y_bearing)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0.6, 0);

			{CAIRO_FUNCTIONS}.cairo_device_to_user_distance (cr, $ux, $uy)
			if ux < uy then
				ux := uy
			end
			{CAIRO_FUNCTIONS}.cairo_set_line_width (cr, ux)

			{CAIRO_FUNCTIONS}.cairo_text_path (cr, "a")
			{CAIRO_FUNCTIONS}.cairo_stroke (cr)
		end

	showtext_draw_dest (cr: CAIRO_STRUCT_API)
		local
			te: CAIRO_TEXT_EXTENTS_T_STRUCT_API
		do
				--	white background
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 1, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)

				--	black letter "a"
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0.0, 0.0, 0.0)
			{CAIRO_FUNCTIONS}.cairo_select_font_face (cr, "Georgia", {CAIRO_FONT_SLANT_ENUM_API}.CAIRO_FONT_SLANT_NORMAL, {CAIRO_FONT_WEIGHT_ENUM_API}.CAIRO_FONT_WEIGHT_BOLD)
			{CAIRO_FUNCTIONS}.cairo_set_font_size (cr, 1.2)
			create te.make
			{CAIRO_FUNCTIONS}.cairo_text_extents (cr, "a", te)
			{CAIRO_FUNCTIONS}.cairo_move_to (cr, 0.5 - te.width / 2 - te.x_bearing, 0.5 - te.height / 2 - te.y_bearing)
			{CAIRO_FUNCTIONS}.cairo_show_text (cr, "a")
		end

	paint_draw_source (cr: CAIRO_STRUCT_API)
		do
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)
		end

	paint_draw_dest (cr: CAIRO_STRUCT_API)
		do
			diagram_draw_dest (cr)
			{CAIRO_FUNCTIONS}.cairo_set_source_rgb (cr, 0, 0, 0)
			{CAIRO_FUNCTIONS}.cairo_paint_with_alpha (cr, 0.5)
		end

	mask_draw_source (cr: CAIRO_STRUCT_API)
		local
			linpat:  CAIRO_PATTERN_STRUCT_API
		do
			linpat := {CAIRO_FUNCTIONS}.cairo_pattern_create_linear (0, 0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgb (linpat, 0, 0, 0.3, 0.8)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgb (linpat, 1, 0, 0.8, 0.3)

			{CAIRO_FUNCTIONS}.cairo_set_source (cr, linpat)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_fill (cr)
		end


	mask_draw_mask (cr: CAIRO_STRUCT_API)
		local
			radialinv: CAIRO_PATTERN_STRUCT_API
		do
			radialinv := {CAIRO_FUNCTIONS}.cairo_pattern_create_radial (0.5, 0.5, 0.25, 0.5, 0.5, 0.75)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (radialinv, 0, 0, 0, 0, 0)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (radialinv, 0.5, 0, 0, 0, 1)

			{CAIRO_FUNCTIONS}.cairo_save (cr)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_clip (cr)
			diagram_draw_mask_pattern (cr, radialinv)
			{CAIRO_FUNCTIONS}.cairo_restore (cr)
		end

	mask_draw_dest (cr: CAIRO_STRUCT_API)
		local
			linpat, radpat: CAIRO_PATTERN_STRUCT_API
		do
			linpat := {CAIRO_FUNCTIONS}.cairo_pattern_create_linear (0, 0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgb (linpat, 0, 0, 0.3, 0.8)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgb (linpat, 1, 0, 0.8, 0.3)

			radpat := {CAIRO_FUNCTIONS}.cairo_pattern_create_radial (0.5, 0.5, 0.25, 0.5, 0.5, 0.75)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (radpat, 0, 0, 0, 0, 1)
			{CAIRO_FUNCTIONS}.cairo_pattern_add_color_stop_rgba (radpat, 0.5, 0, 0, 0, 0)

			diagram_draw_dest (cr)
			{CAIRO_FUNCTIONS}.cairo_save (cr)
			{CAIRO_FUNCTIONS}.cairo_rectangle (cr, 0, 0, 1, 1)
			{CAIRO_FUNCTIONS}.cairo_clip (cr);
			{CAIRO_FUNCTIONS}.cairo_set_source (cr, linpat)
			{CAIRO_FUNCTIONS}.cairo_mask (cr, radpat)
			{CAIRO_FUNCTIONS}.cairo_restore (cr)
		end

end
