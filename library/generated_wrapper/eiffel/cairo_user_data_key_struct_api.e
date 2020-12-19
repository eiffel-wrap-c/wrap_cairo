note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class CAIRO_USER_DATA_KEY_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	unused: INTEGER
			-- Access member `unused`
		require
			exists: exists
		do
			Result := c_unused (item)
		ensure
			result_correct: Result = c_unused (item)
		end

	set_unused (a_value: INTEGER) 
			-- Change the value of member `unused` to `a_value`.
		require
			exists: exists
		do
			set_c_unused (item, a_value)
		ensure
			unused_set: a_value = unused
		end

feature {NONE} -- Implementation wrapper for struct struct _cairo_user_data_key

	sizeof_external: INTEGER 
		external
			"C inline use <eif_cairo.h>"
		alias
			"sizeof(struct _cairo_user_data_key)"
		end

	c_unused (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_cairo.h>"
		alias
			"[
				((struct _cairo_user_data_key*)$an_item)->unused
			]"
		end

	set_c_unused (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_cairo.h>"
		alias
			"[
				((struct _cairo_user_data_key*)$an_item)->unused =  (int)$a_value
			]"
		ensure
			unused_set: a_value = c_unused (an_item)
		end

end
