#include <ewg_eiffel.h>
#include <ewg_cairo_callback_c_glue_code.h>

#ifdef _MSC_VER
#pragma warning (disable:4715) // Not all control paths return a value
#endif
void* cairo_destroy_func_t_object =  NULL;
cairo_destroy_func_t_eiffel_feature cairo_destroy_func_t_address_1 = NULL;
cairo_destroy_func_t_eiffel_feature cairo_destroy_func_t_address_2 = NULL;
cairo_destroy_func_t_eiffel_feature cairo_destroy_func_t_address_3 = NULL;

void set_cairo_destroy_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_destroy_func_t_object = eif_protect(a_object);
	} else { 
		cairo_destroy_func_t_object = NULL;
	}
}

void release_cairo_destroy_func_t_object ()
{
	eif_wean (cairo_destroy_func_t_object);
}

void cairo_destroy_func_t_stub_1 (void *data)
{
	if (cairo_destroy_func_t_object != NULL && cairo_destroy_func_t_address_1 != NULL)
	{
		cairo_destroy_func_t_address_1 (eif_access(cairo_destroy_func_t_object), data);
	}
}

void cairo_destroy_func_t_stub_2 (void *data)
{
	if (cairo_destroy_func_t_object != NULL && cairo_destroy_func_t_address_2 != NULL)
	{
		cairo_destroy_func_t_address_2 (eif_access(cairo_destroy_func_t_object), data);
	}
}

void cairo_destroy_func_t_stub_3 (void *data)
{
	if (cairo_destroy_func_t_object != NULL && cairo_destroy_func_t_address_3 != NULL)
	{
		cairo_destroy_func_t_address_3 (eif_access(cairo_destroy_func_t_object), data);
	}
}

void set_cairo_destroy_func_t_entry_1 (void* a_feature){
	cairo_destroy_func_t_address_1 = (cairo_destroy_func_t_eiffel_feature) a_feature;
}

void set_cairo_destroy_func_t_entry_2 (void* a_feature){
	cairo_destroy_func_t_address_2 = (cairo_destroy_func_t_eiffel_feature) a_feature;
}

void set_cairo_destroy_func_t_entry_3 (void* a_feature){
	cairo_destroy_func_t_address_3 = (cairo_destroy_func_t_eiffel_feature) a_feature;
}

void* get_cairo_destroy_func_t_stub_1 (){
	return (void*) cairo_destroy_func_t_stub_1;
}

void* get_cairo_destroy_func_t_stub_2 (){
	return (void*) cairo_destroy_func_t_stub_2;
}

void* get_cairo_destroy_func_t_stub_3 (){
	return (void*) cairo_destroy_func_t_stub_3;
}

void call_cairo_destroy_func_t (void *a_function, void *data)
{
	((void (*) (void *data))a_function) (data);
}

void* cairo_user_scaled_font_init_func_t_object =  NULL;
cairo_user_scaled_font_init_func_t_eiffel_feature cairo_user_scaled_font_init_func_t_address_1 = NULL;
cairo_user_scaled_font_init_func_t_eiffel_feature cairo_user_scaled_font_init_func_t_address_2 = NULL;
cairo_user_scaled_font_init_func_t_eiffel_feature cairo_user_scaled_font_init_func_t_address_3 = NULL;

void set_cairo_user_scaled_font_init_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_user_scaled_font_init_func_t_object = eif_protect(a_object);
	} else { 
		cairo_user_scaled_font_init_func_t_object = NULL;
	}
}

void release_cairo_user_scaled_font_init_func_t_object ()
{
	eif_wean (cairo_user_scaled_font_init_func_t_object);
}

cairo_status_t cairo_user_scaled_font_init_func_t_stub_1 (cairo_scaled_font_t *scaled_font, cairo_t *cr, cairo_font_extents_t *extents)
{
	if (cairo_user_scaled_font_init_func_t_object != NULL && cairo_user_scaled_font_init_func_t_address_1 != NULL)
	{
		return cairo_user_scaled_font_init_func_t_address_1 (eif_access(cairo_user_scaled_font_init_func_t_object), scaled_font, cr, extents);
	}
}

cairo_status_t cairo_user_scaled_font_init_func_t_stub_2 (cairo_scaled_font_t *scaled_font, cairo_t *cr, cairo_font_extents_t *extents)
{
	if (cairo_user_scaled_font_init_func_t_object != NULL && cairo_user_scaled_font_init_func_t_address_2 != NULL)
	{
		return cairo_user_scaled_font_init_func_t_address_2 (eif_access(cairo_user_scaled_font_init_func_t_object), scaled_font, cr, extents);
	}
}

cairo_status_t cairo_user_scaled_font_init_func_t_stub_3 (cairo_scaled_font_t *scaled_font, cairo_t *cr, cairo_font_extents_t *extents)
{
	if (cairo_user_scaled_font_init_func_t_object != NULL && cairo_user_scaled_font_init_func_t_address_3 != NULL)
	{
		return cairo_user_scaled_font_init_func_t_address_3 (eif_access(cairo_user_scaled_font_init_func_t_object), scaled_font, cr, extents);
	}
}

void set_cairo_user_scaled_font_init_func_t_entry_1 (void* a_feature){
	cairo_user_scaled_font_init_func_t_address_1 = (cairo_user_scaled_font_init_func_t_eiffel_feature) a_feature;
}

void set_cairo_user_scaled_font_init_func_t_entry_2 (void* a_feature){
	cairo_user_scaled_font_init_func_t_address_2 = (cairo_user_scaled_font_init_func_t_eiffel_feature) a_feature;
}

void set_cairo_user_scaled_font_init_func_t_entry_3 (void* a_feature){
	cairo_user_scaled_font_init_func_t_address_3 = (cairo_user_scaled_font_init_func_t_eiffel_feature) a_feature;
}

void* get_cairo_user_scaled_font_init_func_t_stub_1 (){
	return (void*) cairo_user_scaled_font_init_func_t_stub_1;
}

void* get_cairo_user_scaled_font_init_func_t_stub_2 (){
	return (void*) cairo_user_scaled_font_init_func_t_stub_2;
}

void* get_cairo_user_scaled_font_init_func_t_stub_3 (){
	return (void*) cairo_user_scaled_font_init_func_t_stub_3;
}

cairo_status_t call_cairo_user_scaled_font_init_func_t (void *a_function, cairo_scaled_font_t *scaled_font, cairo_t *cr, cairo_font_extents_t *extents)
{
	return ((cairo_status_t (*) (cairo_scaled_font_t *scaled_font, cairo_t *cr, cairo_font_extents_t *extents))a_function) (scaled_font, cr, extents);
}

void* cairo_user_scaled_font_render_glyph_func_t_object =  NULL;
cairo_user_scaled_font_render_glyph_func_t_eiffel_feature cairo_user_scaled_font_render_glyph_func_t_address_1 = NULL;
cairo_user_scaled_font_render_glyph_func_t_eiffel_feature cairo_user_scaled_font_render_glyph_func_t_address_2 = NULL;
cairo_user_scaled_font_render_glyph_func_t_eiffel_feature cairo_user_scaled_font_render_glyph_func_t_address_3 = NULL;

void set_cairo_user_scaled_font_render_glyph_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_user_scaled_font_render_glyph_func_t_object = eif_protect(a_object);
	} else { 
		cairo_user_scaled_font_render_glyph_func_t_object = NULL;
	}
}

void release_cairo_user_scaled_font_render_glyph_func_t_object ()
{
	eif_wean (cairo_user_scaled_font_render_glyph_func_t_object);
}

cairo_status_t cairo_user_scaled_font_render_glyph_func_t_stub_1 (cairo_scaled_font_t *scaled_font, unsigned long glyph, cairo_t *cr, cairo_text_extents_t *extents)
{
	if (cairo_user_scaled_font_render_glyph_func_t_object != NULL && cairo_user_scaled_font_render_glyph_func_t_address_1 != NULL)
	{
		return cairo_user_scaled_font_render_glyph_func_t_address_1 (eif_access(cairo_user_scaled_font_render_glyph_func_t_object), scaled_font, glyph, cr, extents);
	}
}

cairo_status_t cairo_user_scaled_font_render_glyph_func_t_stub_2 (cairo_scaled_font_t *scaled_font, unsigned long glyph, cairo_t *cr, cairo_text_extents_t *extents)
{
	if (cairo_user_scaled_font_render_glyph_func_t_object != NULL && cairo_user_scaled_font_render_glyph_func_t_address_2 != NULL)
	{
		return cairo_user_scaled_font_render_glyph_func_t_address_2 (eif_access(cairo_user_scaled_font_render_glyph_func_t_object), scaled_font, glyph, cr, extents);
	}
}

cairo_status_t cairo_user_scaled_font_render_glyph_func_t_stub_3 (cairo_scaled_font_t *scaled_font, unsigned long glyph, cairo_t *cr, cairo_text_extents_t *extents)
{
	if (cairo_user_scaled_font_render_glyph_func_t_object != NULL && cairo_user_scaled_font_render_glyph_func_t_address_3 != NULL)
	{
		return cairo_user_scaled_font_render_glyph_func_t_address_3 (eif_access(cairo_user_scaled_font_render_glyph_func_t_object), scaled_font, glyph, cr, extents);
	}
}

void set_cairo_user_scaled_font_render_glyph_func_t_entry_1 (void* a_feature){
	cairo_user_scaled_font_render_glyph_func_t_address_1 = (cairo_user_scaled_font_render_glyph_func_t_eiffel_feature) a_feature;
}

void set_cairo_user_scaled_font_render_glyph_func_t_entry_2 (void* a_feature){
	cairo_user_scaled_font_render_glyph_func_t_address_2 = (cairo_user_scaled_font_render_glyph_func_t_eiffel_feature) a_feature;
}

void set_cairo_user_scaled_font_render_glyph_func_t_entry_3 (void* a_feature){
	cairo_user_scaled_font_render_glyph_func_t_address_3 = (cairo_user_scaled_font_render_glyph_func_t_eiffel_feature) a_feature;
}

void* get_cairo_user_scaled_font_render_glyph_func_t_stub_1 (){
	return (void*) cairo_user_scaled_font_render_glyph_func_t_stub_1;
}

void* get_cairo_user_scaled_font_render_glyph_func_t_stub_2 (){
	return (void*) cairo_user_scaled_font_render_glyph_func_t_stub_2;
}

void* get_cairo_user_scaled_font_render_glyph_func_t_stub_3 (){
	return (void*) cairo_user_scaled_font_render_glyph_func_t_stub_3;
}

cairo_status_t call_cairo_user_scaled_font_render_glyph_func_t (void *a_function, cairo_scaled_font_t *scaled_font, unsigned long glyph, cairo_t *cr, cairo_text_extents_t *extents)
{
	return ((cairo_status_t (*) (cairo_scaled_font_t *scaled_font, unsigned long glyph, cairo_t *cr, cairo_text_extents_t *extents))a_function) (scaled_font, glyph, cr, extents);
}

void* cairo_user_scaled_font_text_to_glyphs_func_t_object =  NULL;
cairo_user_scaled_font_text_to_glyphs_func_t_eiffel_feature cairo_user_scaled_font_text_to_glyphs_func_t_address_1 = NULL;
cairo_user_scaled_font_text_to_glyphs_func_t_eiffel_feature cairo_user_scaled_font_text_to_glyphs_func_t_address_2 = NULL;
cairo_user_scaled_font_text_to_glyphs_func_t_eiffel_feature cairo_user_scaled_font_text_to_glyphs_func_t_address_3 = NULL;

void set_cairo_user_scaled_font_text_to_glyphs_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_user_scaled_font_text_to_glyphs_func_t_object = eif_protect(a_object);
	} else { 
		cairo_user_scaled_font_text_to_glyphs_func_t_object = NULL;
	}
}

void release_cairo_user_scaled_font_text_to_glyphs_func_t_object ()
{
	eif_wean (cairo_user_scaled_font_text_to_glyphs_func_t_object);
}

cairo_status_t cairo_user_scaled_font_text_to_glyphs_func_t_stub_1 (cairo_scaled_font_t *scaled_font, char const *utf8, int utf8_len, cairo_glyph_t **glyphs, int *num_glyphs, cairo_text_cluster_t **clusters, int *num_clusters, cairo_text_cluster_flags_t *cluster_flags)
{
	if (cairo_user_scaled_font_text_to_glyphs_func_t_object != NULL && cairo_user_scaled_font_text_to_glyphs_func_t_address_1 != NULL)
	{
		return cairo_user_scaled_font_text_to_glyphs_func_t_address_1 (eif_access(cairo_user_scaled_font_text_to_glyphs_func_t_object), scaled_font, utf8, utf8_len, glyphs, num_glyphs, clusters, num_clusters, cluster_flags);
	}
}

cairo_status_t cairo_user_scaled_font_text_to_glyphs_func_t_stub_2 (cairo_scaled_font_t *scaled_font, char const *utf8, int utf8_len, cairo_glyph_t **glyphs, int *num_glyphs, cairo_text_cluster_t **clusters, int *num_clusters, cairo_text_cluster_flags_t *cluster_flags)
{
	if (cairo_user_scaled_font_text_to_glyphs_func_t_object != NULL && cairo_user_scaled_font_text_to_glyphs_func_t_address_2 != NULL)
	{
		return cairo_user_scaled_font_text_to_glyphs_func_t_address_2 (eif_access(cairo_user_scaled_font_text_to_glyphs_func_t_object), scaled_font, utf8, utf8_len, glyphs, num_glyphs, clusters, num_clusters, cluster_flags);
	}
}

cairo_status_t cairo_user_scaled_font_text_to_glyphs_func_t_stub_3 (cairo_scaled_font_t *scaled_font, char const *utf8, int utf8_len, cairo_glyph_t **glyphs, int *num_glyphs, cairo_text_cluster_t **clusters, int *num_clusters, cairo_text_cluster_flags_t *cluster_flags)
{
	if (cairo_user_scaled_font_text_to_glyphs_func_t_object != NULL && cairo_user_scaled_font_text_to_glyphs_func_t_address_3 != NULL)
	{
		return cairo_user_scaled_font_text_to_glyphs_func_t_address_3 (eif_access(cairo_user_scaled_font_text_to_glyphs_func_t_object), scaled_font, utf8, utf8_len, glyphs, num_glyphs, clusters, num_clusters, cluster_flags);
	}
}

void set_cairo_user_scaled_font_text_to_glyphs_func_t_entry_1 (void* a_feature){
	cairo_user_scaled_font_text_to_glyphs_func_t_address_1 = (cairo_user_scaled_font_text_to_glyphs_func_t_eiffel_feature) a_feature;
}

void set_cairo_user_scaled_font_text_to_glyphs_func_t_entry_2 (void* a_feature){
	cairo_user_scaled_font_text_to_glyphs_func_t_address_2 = (cairo_user_scaled_font_text_to_glyphs_func_t_eiffel_feature) a_feature;
}

void set_cairo_user_scaled_font_text_to_glyphs_func_t_entry_3 (void* a_feature){
	cairo_user_scaled_font_text_to_glyphs_func_t_address_3 = (cairo_user_scaled_font_text_to_glyphs_func_t_eiffel_feature) a_feature;
}

void* get_cairo_user_scaled_font_text_to_glyphs_func_t_stub_1 (){
	return (void*) cairo_user_scaled_font_text_to_glyphs_func_t_stub_1;
}

void* get_cairo_user_scaled_font_text_to_glyphs_func_t_stub_2 (){
	return (void*) cairo_user_scaled_font_text_to_glyphs_func_t_stub_2;
}

void* get_cairo_user_scaled_font_text_to_glyphs_func_t_stub_3 (){
	return (void*) cairo_user_scaled_font_text_to_glyphs_func_t_stub_3;
}

cairo_status_t call_cairo_user_scaled_font_text_to_glyphs_func_t (void *a_function, cairo_scaled_font_t *scaled_font, char const *utf8, int utf8_len, cairo_glyph_t **glyphs, int *num_glyphs, cairo_text_cluster_t **clusters, int *num_clusters, cairo_text_cluster_flags_t *cluster_flags)
{
	return ((cairo_status_t (*) (cairo_scaled_font_t *scaled_font, char const *utf8, int utf8_len, cairo_glyph_t **glyphs, int *num_glyphs, cairo_text_cluster_t **clusters, int *num_clusters, cairo_text_cluster_flags_t *cluster_flags))a_function) (scaled_font, utf8, utf8_len, glyphs, num_glyphs, clusters, num_clusters, cluster_flags);
}

void* cairo_user_scaled_font_unicode_to_glyph_func_t_object =  NULL;
cairo_user_scaled_font_unicode_to_glyph_func_t_eiffel_feature cairo_user_scaled_font_unicode_to_glyph_func_t_address_1 = NULL;
cairo_user_scaled_font_unicode_to_glyph_func_t_eiffel_feature cairo_user_scaled_font_unicode_to_glyph_func_t_address_2 = NULL;
cairo_user_scaled_font_unicode_to_glyph_func_t_eiffel_feature cairo_user_scaled_font_unicode_to_glyph_func_t_address_3 = NULL;

void set_cairo_user_scaled_font_unicode_to_glyph_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_user_scaled_font_unicode_to_glyph_func_t_object = eif_protect(a_object);
	} else { 
		cairo_user_scaled_font_unicode_to_glyph_func_t_object = NULL;
	}
}

void release_cairo_user_scaled_font_unicode_to_glyph_func_t_object ()
{
	eif_wean (cairo_user_scaled_font_unicode_to_glyph_func_t_object);
}

cairo_status_t cairo_user_scaled_font_unicode_to_glyph_func_t_stub_1 (cairo_scaled_font_t *scaled_font, unsigned long unicode, unsigned long *glyph_index)
{
	if (cairo_user_scaled_font_unicode_to_glyph_func_t_object != NULL && cairo_user_scaled_font_unicode_to_glyph_func_t_address_1 != NULL)
	{
		return cairo_user_scaled_font_unicode_to_glyph_func_t_address_1 (eif_access(cairo_user_scaled_font_unicode_to_glyph_func_t_object), scaled_font, unicode, glyph_index);
	}
}

cairo_status_t cairo_user_scaled_font_unicode_to_glyph_func_t_stub_2 (cairo_scaled_font_t *scaled_font, unsigned long unicode, unsigned long *glyph_index)
{
	if (cairo_user_scaled_font_unicode_to_glyph_func_t_object != NULL && cairo_user_scaled_font_unicode_to_glyph_func_t_address_2 != NULL)
	{
		return cairo_user_scaled_font_unicode_to_glyph_func_t_address_2 (eif_access(cairo_user_scaled_font_unicode_to_glyph_func_t_object), scaled_font, unicode, glyph_index);
	}
}

cairo_status_t cairo_user_scaled_font_unicode_to_glyph_func_t_stub_3 (cairo_scaled_font_t *scaled_font, unsigned long unicode, unsigned long *glyph_index)
{
	if (cairo_user_scaled_font_unicode_to_glyph_func_t_object != NULL && cairo_user_scaled_font_unicode_to_glyph_func_t_address_3 != NULL)
	{
		return cairo_user_scaled_font_unicode_to_glyph_func_t_address_3 (eif_access(cairo_user_scaled_font_unicode_to_glyph_func_t_object), scaled_font, unicode, glyph_index);
	}
}

void set_cairo_user_scaled_font_unicode_to_glyph_func_t_entry_1 (void* a_feature){
	cairo_user_scaled_font_unicode_to_glyph_func_t_address_1 = (cairo_user_scaled_font_unicode_to_glyph_func_t_eiffel_feature) a_feature;
}

void set_cairo_user_scaled_font_unicode_to_glyph_func_t_entry_2 (void* a_feature){
	cairo_user_scaled_font_unicode_to_glyph_func_t_address_2 = (cairo_user_scaled_font_unicode_to_glyph_func_t_eiffel_feature) a_feature;
}

void set_cairo_user_scaled_font_unicode_to_glyph_func_t_entry_3 (void* a_feature){
	cairo_user_scaled_font_unicode_to_glyph_func_t_address_3 = (cairo_user_scaled_font_unicode_to_glyph_func_t_eiffel_feature) a_feature;
}

void* get_cairo_user_scaled_font_unicode_to_glyph_func_t_stub_1 (){
	return (void*) cairo_user_scaled_font_unicode_to_glyph_func_t_stub_1;
}

void* get_cairo_user_scaled_font_unicode_to_glyph_func_t_stub_2 (){
	return (void*) cairo_user_scaled_font_unicode_to_glyph_func_t_stub_2;
}

void* get_cairo_user_scaled_font_unicode_to_glyph_func_t_stub_3 (){
	return (void*) cairo_user_scaled_font_unicode_to_glyph_func_t_stub_3;
}

cairo_status_t call_cairo_user_scaled_font_unicode_to_glyph_func_t (void *a_function, cairo_scaled_font_t *scaled_font, unsigned long unicode, unsigned long *glyph_index)
{
	return ((cairo_status_t (*) (cairo_scaled_font_t *scaled_font, unsigned long unicode, unsigned long *glyph_index))a_function) (scaled_font, unicode, glyph_index);
}

void* cairo_surface_observer_callback_t_object =  NULL;
cairo_surface_observer_callback_t_eiffel_feature cairo_surface_observer_callback_t_address_1 = NULL;
cairo_surface_observer_callback_t_eiffel_feature cairo_surface_observer_callback_t_address_2 = NULL;
cairo_surface_observer_callback_t_eiffel_feature cairo_surface_observer_callback_t_address_3 = NULL;

void set_cairo_surface_observer_callback_t_object (void* a_object)
{
	if (a_object) {
		cairo_surface_observer_callback_t_object = eif_protect(a_object);
	} else { 
		cairo_surface_observer_callback_t_object = NULL;
	}
}

void release_cairo_surface_observer_callback_t_object ()
{
	eif_wean (cairo_surface_observer_callback_t_object);
}

void cairo_surface_observer_callback_t_stub_1 (cairo_surface_t *observer, cairo_surface_t *target, void *data)
{
	if (cairo_surface_observer_callback_t_object != NULL && cairo_surface_observer_callback_t_address_1 != NULL)
	{
		cairo_surface_observer_callback_t_address_1 (eif_access(cairo_surface_observer_callback_t_object), observer, target, data);
	}
}

void cairo_surface_observer_callback_t_stub_2 (cairo_surface_t *observer, cairo_surface_t *target, void *data)
{
	if (cairo_surface_observer_callback_t_object != NULL && cairo_surface_observer_callback_t_address_2 != NULL)
	{
		cairo_surface_observer_callback_t_address_2 (eif_access(cairo_surface_observer_callback_t_object), observer, target, data);
	}
}

void cairo_surface_observer_callback_t_stub_3 (cairo_surface_t *observer, cairo_surface_t *target, void *data)
{
	if (cairo_surface_observer_callback_t_object != NULL && cairo_surface_observer_callback_t_address_3 != NULL)
	{
		cairo_surface_observer_callback_t_address_3 (eif_access(cairo_surface_observer_callback_t_object), observer, target, data);
	}
}

void set_cairo_surface_observer_callback_t_entry_1 (void* a_feature){
	cairo_surface_observer_callback_t_address_1 = (cairo_surface_observer_callback_t_eiffel_feature) a_feature;
}

void set_cairo_surface_observer_callback_t_entry_2 (void* a_feature){
	cairo_surface_observer_callback_t_address_2 = (cairo_surface_observer_callback_t_eiffel_feature) a_feature;
}

void set_cairo_surface_observer_callback_t_entry_3 (void* a_feature){
	cairo_surface_observer_callback_t_address_3 = (cairo_surface_observer_callback_t_eiffel_feature) a_feature;
}

void* get_cairo_surface_observer_callback_t_stub_1 (){
	return (void*) cairo_surface_observer_callback_t_stub_1;
}

void* get_cairo_surface_observer_callback_t_stub_2 (){
	return (void*) cairo_surface_observer_callback_t_stub_2;
}

void* get_cairo_surface_observer_callback_t_stub_3 (){
	return (void*) cairo_surface_observer_callback_t_stub_3;
}

void call_cairo_surface_observer_callback_t (void *a_function, cairo_surface_t *observer, cairo_surface_t *target, void *data)
{
	((void (*) (cairo_surface_t *observer, cairo_surface_t *target, void *data))a_function) (observer, target, data);
}

void* cairo_write_func_t_object =  NULL;
cairo_write_func_t_eiffel_feature cairo_write_func_t_address_1 = NULL;
cairo_write_func_t_eiffel_feature cairo_write_func_t_address_2 = NULL;
cairo_write_func_t_eiffel_feature cairo_write_func_t_address_3 = NULL;

void set_cairo_write_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_write_func_t_object = eif_protect(a_object);
	} else { 
		cairo_write_func_t_object = NULL;
	}
}

void release_cairo_write_func_t_object ()
{
	eif_wean (cairo_write_func_t_object);
}

cairo_status_t cairo_write_func_t_stub_1 (void *closure, unsigned char const *data, unsigned int length)
{
	if (cairo_write_func_t_object != NULL && cairo_write_func_t_address_1 != NULL)
	{
		return cairo_write_func_t_address_1 (eif_access(cairo_write_func_t_object), closure, data, length);
	}
}

cairo_status_t cairo_write_func_t_stub_2 (void *closure, unsigned char const *data, unsigned int length)
{
	if (cairo_write_func_t_object != NULL && cairo_write_func_t_address_2 != NULL)
	{
		return cairo_write_func_t_address_2 (eif_access(cairo_write_func_t_object), closure, data, length);
	}
}

cairo_status_t cairo_write_func_t_stub_3 (void *closure, unsigned char const *data, unsigned int length)
{
	if (cairo_write_func_t_object != NULL && cairo_write_func_t_address_3 != NULL)
	{
		return cairo_write_func_t_address_3 (eif_access(cairo_write_func_t_object), closure, data, length);
	}
}

void set_cairo_write_func_t_entry_1 (void* a_feature){
	cairo_write_func_t_address_1 = (cairo_write_func_t_eiffel_feature) a_feature;
}

void set_cairo_write_func_t_entry_2 (void* a_feature){
	cairo_write_func_t_address_2 = (cairo_write_func_t_eiffel_feature) a_feature;
}

void set_cairo_write_func_t_entry_3 (void* a_feature){
	cairo_write_func_t_address_3 = (cairo_write_func_t_eiffel_feature) a_feature;
}

void* get_cairo_write_func_t_stub_1 (){
	return (void*) cairo_write_func_t_stub_1;
}

void* get_cairo_write_func_t_stub_2 (){
	return (void*) cairo_write_func_t_stub_2;
}

void* get_cairo_write_func_t_stub_3 (){
	return (void*) cairo_write_func_t_stub_3;
}

cairo_status_t call_cairo_write_func_t (void *a_function, void *closure, unsigned char const *data, unsigned int length)
{
	return ((cairo_status_t (*) (void *closure, unsigned char const *data, unsigned int length))a_function) (closure, data, length);
}

void* cairo_read_func_t_object =  NULL;
cairo_read_func_t_eiffel_feature cairo_read_func_t_address_1 = NULL;
cairo_read_func_t_eiffel_feature cairo_read_func_t_address_2 = NULL;
cairo_read_func_t_eiffel_feature cairo_read_func_t_address_3 = NULL;

void set_cairo_read_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_read_func_t_object = eif_protect(a_object);
	} else { 
		cairo_read_func_t_object = NULL;
	}
}

void release_cairo_read_func_t_object ()
{
	eif_wean (cairo_read_func_t_object);
}

cairo_status_t cairo_read_func_t_stub_1 (void *closure, unsigned char *data, unsigned int length)
{
	if (cairo_read_func_t_object != NULL && cairo_read_func_t_address_1 != NULL)
	{
		return cairo_read_func_t_address_1 (eif_access(cairo_read_func_t_object), closure, data, length);
	}
}

cairo_status_t cairo_read_func_t_stub_2 (void *closure, unsigned char *data, unsigned int length)
{
	if (cairo_read_func_t_object != NULL && cairo_read_func_t_address_2 != NULL)
	{
		return cairo_read_func_t_address_2 (eif_access(cairo_read_func_t_object), closure, data, length);
	}
}

cairo_status_t cairo_read_func_t_stub_3 (void *closure, unsigned char *data, unsigned int length)
{
	if (cairo_read_func_t_object != NULL && cairo_read_func_t_address_3 != NULL)
	{
		return cairo_read_func_t_address_3 (eif_access(cairo_read_func_t_object), closure, data, length);
	}
}

void set_cairo_read_func_t_entry_1 (void* a_feature){
	cairo_read_func_t_address_1 = (cairo_read_func_t_eiffel_feature) a_feature;
}

void set_cairo_read_func_t_entry_2 (void* a_feature){
	cairo_read_func_t_address_2 = (cairo_read_func_t_eiffel_feature) a_feature;
}

void set_cairo_read_func_t_entry_3 (void* a_feature){
	cairo_read_func_t_address_3 = (cairo_read_func_t_eiffel_feature) a_feature;
}

void* get_cairo_read_func_t_stub_1 (){
	return (void*) cairo_read_func_t_stub_1;
}

void* get_cairo_read_func_t_stub_2 (){
	return (void*) cairo_read_func_t_stub_2;
}

void* get_cairo_read_func_t_stub_3 (){
	return (void*) cairo_read_func_t_stub_3;
}

cairo_status_t call_cairo_read_func_t (void *a_function, void *closure, unsigned char *data, unsigned int length)
{
	return ((cairo_status_t (*) (void *closure, unsigned char *data, unsigned int length))a_function) (closure, data, length);
}

void* cairo_raster_source_acquire_func_t_object =  NULL;
cairo_raster_source_acquire_func_t_eiffel_feature cairo_raster_source_acquire_func_t_address_1 = NULL;
cairo_raster_source_acquire_func_t_eiffel_feature cairo_raster_source_acquire_func_t_address_2 = NULL;
cairo_raster_source_acquire_func_t_eiffel_feature cairo_raster_source_acquire_func_t_address_3 = NULL;

void set_cairo_raster_source_acquire_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_raster_source_acquire_func_t_object = eif_protect(a_object);
	} else { 
		cairo_raster_source_acquire_func_t_object = NULL;
	}
}

void release_cairo_raster_source_acquire_func_t_object ()
{
	eif_wean (cairo_raster_source_acquire_func_t_object);
}

cairo_surface_t *cairo_raster_source_acquire_func_t_stub_1 (cairo_pattern_t *pattern, void *callback_data, cairo_surface_t *target, cairo_rectangle_int_t const *extents)
{
	if (cairo_raster_source_acquire_func_t_object != NULL && cairo_raster_source_acquire_func_t_address_1 != NULL)
	{
		return cairo_raster_source_acquire_func_t_address_1 (eif_access(cairo_raster_source_acquire_func_t_object), pattern, callback_data, target, extents);
	}
}

cairo_surface_t *cairo_raster_source_acquire_func_t_stub_2 (cairo_pattern_t *pattern, void *callback_data, cairo_surface_t *target, cairo_rectangle_int_t const *extents)
{
	if (cairo_raster_source_acquire_func_t_object != NULL && cairo_raster_source_acquire_func_t_address_2 != NULL)
	{
		return cairo_raster_source_acquire_func_t_address_2 (eif_access(cairo_raster_source_acquire_func_t_object), pattern, callback_data, target, extents);
	}
}

cairo_surface_t *cairo_raster_source_acquire_func_t_stub_3 (cairo_pattern_t *pattern, void *callback_data, cairo_surface_t *target, cairo_rectangle_int_t const *extents)
{
	if (cairo_raster_source_acquire_func_t_object != NULL && cairo_raster_source_acquire_func_t_address_3 != NULL)
	{
		return cairo_raster_source_acquire_func_t_address_3 (eif_access(cairo_raster_source_acquire_func_t_object), pattern, callback_data, target, extents);
	}
}

void set_cairo_raster_source_acquire_func_t_entry_1 (void* a_feature){
	cairo_raster_source_acquire_func_t_address_1 = (cairo_raster_source_acquire_func_t_eiffel_feature) a_feature;
}

void set_cairo_raster_source_acquire_func_t_entry_2 (void* a_feature){
	cairo_raster_source_acquire_func_t_address_2 = (cairo_raster_source_acquire_func_t_eiffel_feature) a_feature;
}

void set_cairo_raster_source_acquire_func_t_entry_3 (void* a_feature){
	cairo_raster_source_acquire_func_t_address_3 = (cairo_raster_source_acquire_func_t_eiffel_feature) a_feature;
}

void* get_cairo_raster_source_acquire_func_t_stub_1 (){
	return (void*) cairo_raster_source_acquire_func_t_stub_1;
}

void* get_cairo_raster_source_acquire_func_t_stub_2 (){
	return (void*) cairo_raster_source_acquire_func_t_stub_2;
}

void* get_cairo_raster_source_acquire_func_t_stub_3 (){
	return (void*) cairo_raster_source_acquire_func_t_stub_3;
}

cairo_surface_t *call_cairo_raster_source_acquire_func_t (void *a_function, cairo_pattern_t *pattern, void *callback_data, cairo_surface_t *target, cairo_rectangle_int_t const *extents)
{
	return ((cairo_surface_t *(*) (cairo_pattern_t *pattern, void *callback_data, cairo_surface_t *target, cairo_rectangle_int_t const *extents))a_function) (pattern, callback_data, target, extents);
}

void* cairo_raster_source_release_func_t_object =  NULL;
cairo_raster_source_release_func_t_eiffel_feature cairo_raster_source_release_func_t_address_1 = NULL;
cairo_raster_source_release_func_t_eiffel_feature cairo_raster_source_release_func_t_address_2 = NULL;
cairo_raster_source_release_func_t_eiffel_feature cairo_raster_source_release_func_t_address_3 = NULL;

void set_cairo_raster_source_release_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_raster_source_release_func_t_object = eif_protect(a_object);
	} else { 
		cairo_raster_source_release_func_t_object = NULL;
	}
}

void release_cairo_raster_source_release_func_t_object ()
{
	eif_wean (cairo_raster_source_release_func_t_object);
}

void cairo_raster_source_release_func_t_stub_1 (cairo_pattern_t *pattern, void *callback_data, cairo_surface_t *surface)
{
	if (cairo_raster_source_release_func_t_object != NULL && cairo_raster_source_release_func_t_address_1 != NULL)
	{
		cairo_raster_source_release_func_t_address_1 (eif_access(cairo_raster_source_release_func_t_object), pattern, callback_data, surface);
	}
}

void cairo_raster_source_release_func_t_stub_2 (cairo_pattern_t *pattern, void *callback_data, cairo_surface_t *surface)
{
	if (cairo_raster_source_release_func_t_object != NULL && cairo_raster_source_release_func_t_address_2 != NULL)
	{
		cairo_raster_source_release_func_t_address_2 (eif_access(cairo_raster_source_release_func_t_object), pattern, callback_data, surface);
	}
}

void cairo_raster_source_release_func_t_stub_3 (cairo_pattern_t *pattern, void *callback_data, cairo_surface_t *surface)
{
	if (cairo_raster_source_release_func_t_object != NULL && cairo_raster_source_release_func_t_address_3 != NULL)
	{
		cairo_raster_source_release_func_t_address_3 (eif_access(cairo_raster_source_release_func_t_object), pattern, callback_data, surface);
	}
}

void set_cairo_raster_source_release_func_t_entry_1 (void* a_feature){
	cairo_raster_source_release_func_t_address_1 = (cairo_raster_source_release_func_t_eiffel_feature) a_feature;
}

void set_cairo_raster_source_release_func_t_entry_2 (void* a_feature){
	cairo_raster_source_release_func_t_address_2 = (cairo_raster_source_release_func_t_eiffel_feature) a_feature;
}

void set_cairo_raster_source_release_func_t_entry_3 (void* a_feature){
	cairo_raster_source_release_func_t_address_3 = (cairo_raster_source_release_func_t_eiffel_feature) a_feature;
}

void* get_cairo_raster_source_release_func_t_stub_1 (){
	return (void*) cairo_raster_source_release_func_t_stub_1;
}

void* get_cairo_raster_source_release_func_t_stub_2 (){
	return (void*) cairo_raster_source_release_func_t_stub_2;
}

void* get_cairo_raster_source_release_func_t_stub_3 (){
	return (void*) cairo_raster_source_release_func_t_stub_3;
}

void call_cairo_raster_source_release_func_t (void *a_function, cairo_pattern_t *pattern, void *callback_data, cairo_surface_t *surface)
{
	((void (*) (cairo_pattern_t *pattern, void *callback_data, cairo_surface_t *surface))a_function) (pattern, callback_data, surface);
}

void* cairo_raster_source_snapshot_func_t_object =  NULL;
cairo_raster_source_snapshot_func_t_eiffel_feature cairo_raster_source_snapshot_func_t_address_1 = NULL;
cairo_raster_source_snapshot_func_t_eiffel_feature cairo_raster_source_snapshot_func_t_address_2 = NULL;
cairo_raster_source_snapshot_func_t_eiffel_feature cairo_raster_source_snapshot_func_t_address_3 = NULL;

void set_cairo_raster_source_snapshot_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_raster_source_snapshot_func_t_object = eif_protect(a_object);
	} else { 
		cairo_raster_source_snapshot_func_t_object = NULL;
	}
}

void release_cairo_raster_source_snapshot_func_t_object ()
{
	eif_wean (cairo_raster_source_snapshot_func_t_object);
}

cairo_status_t cairo_raster_source_snapshot_func_t_stub_1 (cairo_pattern_t *pattern, void *callback_data)
{
	if (cairo_raster_source_snapshot_func_t_object != NULL && cairo_raster_source_snapshot_func_t_address_1 != NULL)
	{
		return cairo_raster_source_snapshot_func_t_address_1 (eif_access(cairo_raster_source_snapshot_func_t_object), pattern, callback_data);
	}
}

cairo_status_t cairo_raster_source_snapshot_func_t_stub_2 (cairo_pattern_t *pattern, void *callback_data)
{
	if (cairo_raster_source_snapshot_func_t_object != NULL && cairo_raster_source_snapshot_func_t_address_2 != NULL)
	{
		return cairo_raster_source_snapshot_func_t_address_2 (eif_access(cairo_raster_source_snapshot_func_t_object), pattern, callback_data);
	}
}

cairo_status_t cairo_raster_source_snapshot_func_t_stub_3 (cairo_pattern_t *pattern, void *callback_data)
{
	if (cairo_raster_source_snapshot_func_t_object != NULL && cairo_raster_source_snapshot_func_t_address_3 != NULL)
	{
		return cairo_raster_source_snapshot_func_t_address_3 (eif_access(cairo_raster_source_snapshot_func_t_object), pattern, callback_data);
	}
}

void set_cairo_raster_source_snapshot_func_t_entry_1 (void* a_feature){
	cairo_raster_source_snapshot_func_t_address_1 = (cairo_raster_source_snapshot_func_t_eiffel_feature) a_feature;
}

void set_cairo_raster_source_snapshot_func_t_entry_2 (void* a_feature){
	cairo_raster_source_snapshot_func_t_address_2 = (cairo_raster_source_snapshot_func_t_eiffel_feature) a_feature;
}

void set_cairo_raster_source_snapshot_func_t_entry_3 (void* a_feature){
	cairo_raster_source_snapshot_func_t_address_3 = (cairo_raster_source_snapshot_func_t_eiffel_feature) a_feature;
}

void* get_cairo_raster_source_snapshot_func_t_stub_1 (){
	return (void*) cairo_raster_source_snapshot_func_t_stub_1;
}

void* get_cairo_raster_source_snapshot_func_t_stub_2 (){
	return (void*) cairo_raster_source_snapshot_func_t_stub_2;
}

void* get_cairo_raster_source_snapshot_func_t_stub_3 (){
	return (void*) cairo_raster_source_snapshot_func_t_stub_3;
}

cairo_status_t call_cairo_raster_source_snapshot_func_t (void *a_function, cairo_pattern_t *pattern, void *callback_data)
{
	return ((cairo_status_t (*) (cairo_pattern_t *pattern, void *callback_data))a_function) (pattern, callback_data);
}

void* cairo_raster_source_copy_func_t_object =  NULL;
cairo_raster_source_copy_func_t_eiffel_feature cairo_raster_source_copy_func_t_address_1 = NULL;
cairo_raster_source_copy_func_t_eiffel_feature cairo_raster_source_copy_func_t_address_2 = NULL;
cairo_raster_source_copy_func_t_eiffel_feature cairo_raster_source_copy_func_t_address_3 = NULL;

void set_cairo_raster_source_copy_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_raster_source_copy_func_t_object = eif_protect(a_object);
	} else { 
		cairo_raster_source_copy_func_t_object = NULL;
	}
}

void release_cairo_raster_source_copy_func_t_object ()
{
	eif_wean (cairo_raster_source_copy_func_t_object);
}

cairo_status_t cairo_raster_source_copy_func_t_stub_1 (cairo_pattern_t *pattern, void *callback_data, cairo_pattern_t const *other)
{
	if (cairo_raster_source_copy_func_t_object != NULL && cairo_raster_source_copy_func_t_address_1 != NULL)
	{
		return cairo_raster_source_copy_func_t_address_1 (eif_access(cairo_raster_source_copy_func_t_object), pattern, callback_data, other);
	}
}

cairo_status_t cairo_raster_source_copy_func_t_stub_2 (cairo_pattern_t *pattern, void *callback_data, cairo_pattern_t const *other)
{
	if (cairo_raster_source_copy_func_t_object != NULL && cairo_raster_source_copy_func_t_address_2 != NULL)
	{
		return cairo_raster_source_copy_func_t_address_2 (eif_access(cairo_raster_source_copy_func_t_object), pattern, callback_data, other);
	}
}

cairo_status_t cairo_raster_source_copy_func_t_stub_3 (cairo_pattern_t *pattern, void *callback_data, cairo_pattern_t const *other)
{
	if (cairo_raster_source_copy_func_t_object != NULL && cairo_raster_source_copy_func_t_address_3 != NULL)
	{
		return cairo_raster_source_copy_func_t_address_3 (eif_access(cairo_raster_source_copy_func_t_object), pattern, callback_data, other);
	}
}

void set_cairo_raster_source_copy_func_t_entry_1 (void* a_feature){
	cairo_raster_source_copy_func_t_address_1 = (cairo_raster_source_copy_func_t_eiffel_feature) a_feature;
}

void set_cairo_raster_source_copy_func_t_entry_2 (void* a_feature){
	cairo_raster_source_copy_func_t_address_2 = (cairo_raster_source_copy_func_t_eiffel_feature) a_feature;
}

void set_cairo_raster_source_copy_func_t_entry_3 (void* a_feature){
	cairo_raster_source_copy_func_t_address_3 = (cairo_raster_source_copy_func_t_eiffel_feature) a_feature;
}

void* get_cairo_raster_source_copy_func_t_stub_1 (){
	return (void*) cairo_raster_source_copy_func_t_stub_1;
}

void* get_cairo_raster_source_copy_func_t_stub_2 (){
	return (void*) cairo_raster_source_copy_func_t_stub_2;
}

void* get_cairo_raster_source_copy_func_t_stub_3 (){
	return (void*) cairo_raster_source_copy_func_t_stub_3;
}

cairo_status_t call_cairo_raster_source_copy_func_t (void *a_function, cairo_pattern_t *pattern, void *callback_data, cairo_pattern_t const *other)
{
	return ((cairo_status_t (*) (cairo_pattern_t *pattern, void *callback_data, cairo_pattern_t const *other))a_function) (pattern, callback_data, other);
}

void* cairo_raster_source_finish_func_t_object =  NULL;
cairo_raster_source_finish_func_t_eiffel_feature cairo_raster_source_finish_func_t_address_1 = NULL;
cairo_raster_source_finish_func_t_eiffel_feature cairo_raster_source_finish_func_t_address_2 = NULL;
cairo_raster_source_finish_func_t_eiffel_feature cairo_raster_source_finish_func_t_address_3 = NULL;

void set_cairo_raster_source_finish_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_raster_source_finish_func_t_object = eif_protect(a_object);
	} else { 
		cairo_raster_source_finish_func_t_object = NULL;
	}
}

void release_cairo_raster_source_finish_func_t_object ()
{
	eif_wean (cairo_raster_source_finish_func_t_object);
}

void cairo_raster_source_finish_func_t_stub_1 (cairo_pattern_t *pattern, void *callback_data)
{
	if (cairo_raster_source_finish_func_t_object != NULL && cairo_raster_source_finish_func_t_address_1 != NULL)
	{
		cairo_raster_source_finish_func_t_address_1 (eif_access(cairo_raster_source_finish_func_t_object), pattern, callback_data);
	}
}

void cairo_raster_source_finish_func_t_stub_2 (cairo_pattern_t *pattern, void *callback_data)
{
	if (cairo_raster_source_finish_func_t_object != NULL && cairo_raster_source_finish_func_t_address_2 != NULL)
	{
		cairo_raster_source_finish_func_t_address_2 (eif_access(cairo_raster_source_finish_func_t_object), pattern, callback_data);
	}
}

void cairo_raster_source_finish_func_t_stub_3 (cairo_pattern_t *pattern, void *callback_data)
{
	if (cairo_raster_source_finish_func_t_object != NULL && cairo_raster_source_finish_func_t_address_3 != NULL)
	{
		cairo_raster_source_finish_func_t_address_3 (eif_access(cairo_raster_source_finish_func_t_object), pattern, callback_data);
	}
}

void set_cairo_raster_source_finish_func_t_entry_1 (void* a_feature){
	cairo_raster_source_finish_func_t_address_1 = (cairo_raster_source_finish_func_t_eiffel_feature) a_feature;
}

void set_cairo_raster_source_finish_func_t_entry_2 (void* a_feature){
	cairo_raster_source_finish_func_t_address_2 = (cairo_raster_source_finish_func_t_eiffel_feature) a_feature;
}

void set_cairo_raster_source_finish_func_t_entry_3 (void* a_feature){
	cairo_raster_source_finish_func_t_address_3 = (cairo_raster_source_finish_func_t_eiffel_feature) a_feature;
}

void* get_cairo_raster_source_finish_func_t_stub_1 (){
	return (void*) cairo_raster_source_finish_func_t_stub_1;
}

void* get_cairo_raster_source_finish_func_t_stub_2 (){
	return (void*) cairo_raster_source_finish_func_t_stub_2;
}

void* get_cairo_raster_source_finish_func_t_stub_3 (){
	return (void*) cairo_raster_source_finish_func_t_stub_3;
}

void call_cairo_raster_source_finish_func_t (void *a_function, cairo_pattern_t *pattern, void *callback_data)
{
	((void (*) (cairo_pattern_t *pattern, void *callback_data))a_function) (pattern, callback_data);
}

