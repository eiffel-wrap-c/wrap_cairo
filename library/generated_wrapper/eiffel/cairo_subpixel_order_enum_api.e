-- enum wrapper
class CAIRO_SUBPIXEL_ORDER_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cairo_subpixel_order_default or a_value = cairo_subpixel_order_rgb or a_value = cairo_subpixel_order_bgr or a_value = cairo_subpixel_order_vrgb or a_value = cairo_subpixel_order_vbgr
		end

	cairo_subpixel_order_default: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_SUBPIXEL_ORDER_DEFAULT"
		end

	cairo_subpixel_order_rgb: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_SUBPIXEL_ORDER_RGB"
		end

	cairo_subpixel_order_bgr: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_SUBPIXEL_ORDER_BGR"
		end

	cairo_subpixel_order_vrgb: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_SUBPIXEL_ORDER_VRGB"
		end

	cairo_subpixel_order_vbgr: INTEGER 
		external
			"C inline use <cairo.h>"
		alias
			"CAIRO_SUBPIXEL_ORDER_VBGR"
		end

end
