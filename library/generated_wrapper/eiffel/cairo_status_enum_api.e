-- enum wrapper
class CAIRO_STATUS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_status_success or a_value = cairo_status_no_memory or a_value = cairo_status_invalid_restore or a_value = cairo_status_invalid_pop_group or a_value = cairo_status_no_current_point or a_value = cairo_status_invalid_matrix or a_value = cairo_status_invalid_status or a_value = cairo_status_null_pointer or a_value = cairo_status_invalid_string or a_value = cairo_status_invalid_path_data or a_value = cairo_status_read_error or a_value = cairo_status_write_error or a_value = cairo_status_surface_finished or a_value = cairo_status_surface_type_mismatch or a_value = cairo_status_pattern_type_mismatch or a_value = cairo_status_invalid_content or a_value = cairo_status_invalid_format or a_value = cairo_status_invalid_visual or a_value = cairo_status_file_not_found or a_value = cairo_status_invalid_dash or a_value = cairo_status_invalid_dsc_comment or a_value = cairo_status_invalid_index or a_value = cairo_status_clip_not_representable or a_value = cairo_status_temp_file_error or a_value = cairo_status_invalid_stride or a_value = cairo_status_font_type_mismatch or a_value = cairo_status_user_font_immutable or a_value = cairo_status_user_font_error or a_value = cairo_status_negative_count or a_value = cairo_status_invalid_clusters or a_value = cairo_status_invalid_slant or a_value = cairo_status_invalid_weight or a_value = cairo_status_invalid_size or a_value = cairo_status_user_font_not_implemented or a_value = cairo_status_device_type_mismatch or a_value = cairo_status_device_error or a_value = cairo_status_invalid_mesh_construction or a_value = cairo_status_device_finished or a_value = cairo_status_jbig2_global_missing or a_value = cairo_status_png_error or a_value = cairo_status_freetype_error or a_value = cairo_status_win32_gdi_error or a_value = cairo_status_tag_error or a_value = cairo_status_last_status
		end

	cairo_status_success: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_SUCCESS"
		end

	cairo_status_no_memory: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_NO_MEMORY"
		end

	cairo_status_invalid_restore: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_RESTORE"
		end

	cairo_status_invalid_pop_group: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_POP_GROUP"
		end

	cairo_status_no_current_point: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_NO_CURRENT_POINT"
		end

	cairo_status_invalid_matrix: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_MATRIX"
		end

	cairo_status_invalid_status: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_STATUS"
		end

	cairo_status_null_pointer: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_NULL_POINTER"
		end

	cairo_status_invalid_string: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_STRING"
		end

	cairo_status_invalid_path_data: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_PATH_DATA"
		end

	cairo_status_read_error: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_READ_ERROR"
		end

	cairo_status_write_error: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_WRITE_ERROR"
		end

	cairo_status_surface_finished: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_SURFACE_FINISHED"
		end

	cairo_status_surface_type_mismatch: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_SURFACE_TYPE_MISMATCH"
		end

	cairo_status_pattern_type_mismatch: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_PATTERN_TYPE_MISMATCH"
		end

	cairo_status_invalid_content: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_CONTENT"
		end

	cairo_status_invalid_format: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_FORMAT"
		end

	cairo_status_invalid_visual: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_VISUAL"
		end

	cairo_status_file_not_found: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_FILE_NOT_FOUND"
		end

	cairo_status_invalid_dash: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_DASH"
		end

	cairo_status_invalid_dsc_comment: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_DSC_COMMENT"
		end

	cairo_status_invalid_index: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_INDEX"
		end

	cairo_status_clip_not_representable: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_CLIP_NOT_REPRESENTABLE"
		end

	cairo_status_temp_file_error: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_TEMP_FILE_ERROR"
		end

	cairo_status_invalid_stride: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_STRIDE"
		end

	cairo_status_font_type_mismatch: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_FONT_TYPE_MISMATCH"
		end

	cairo_status_user_font_immutable: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_USER_FONT_IMMUTABLE"
		end

	cairo_status_user_font_error: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_USER_FONT_ERROR"
		end

	cairo_status_negative_count: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_NEGATIVE_COUNT"
		end

	cairo_status_invalid_clusters: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_CLUSTERS"
		end

	cairo_status_invalid_slant: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_SLANT"
		end

	cairo_status_invalid_weight: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_WEIGHT"
		end

	cairo_status_invalid_size: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_SIZE"
		end

	cairo_status_user_font_not_implemented: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED"
		end

	cairo_status_device_type_mismatch: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_DEVICE_TYPE_MISMATCH"
		end

	cairo_status_device_error: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_DEVICE_ERROR"
		end

	cairo_status_invalid_mesh_construction: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_INVALID_MESH_CONSTRUCTION"
		end

	cairo_status_device_finished: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_DEVICE_FINISHED"
		end

	cairo_status_jbig2_global_missing: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_JBIG2_GLOBAL_MISSING"
		end

	cairo_status_png_error: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_PNG_ERROR"
		end

	cairo_status_freetype_error: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_FREETYPE_ERROR"
		end

	cairo_status_win32_gdi_error: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_WIN32_GDI_ERROR"
		end

	cairo_status_tag_error: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_TAG_ERROR"
		end

	cairo_status_last_status: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_STATUS_LAST_STATUS"
		end

end
