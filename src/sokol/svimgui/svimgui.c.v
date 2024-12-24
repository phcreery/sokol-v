// machine generated, do not edit

module svimgui
import svg as sg
import svapp as sapp

// helper functions
// helper function to convert a C string to a Zig string slice
fn vstring_to_cstring(v_str string) &u8 {
    return v_str.str
}
pub enum LogItem as u32 {
    ok
    malloc_failed
}
pub struct C.simgui_allocator_t {
pub mut:
    alloc_fn  fn (usize, voidptr) voidptr = unsafe { nil }
    free_fn  fn (voidptr, voidptr)  = unsafe { nil }
    user_data  voidptr
}
pub type Allocator = C.simgui_allocator_t

pub struct C.simgui_logger_t {
pub mut:
    func  fn (&u8, u32, u32, &u8, u32, &u8, voidptr)  = unsafe { nil }
    user_data  voidptr
}
pub type Logger = C.simgui_logger_t

pub struct C.simgui_desc_t {
pub mut:
    max_vertices int
    color_format sg.PixelFormat = .default
    depth_format sg.PixelFormat = .default
    sample_count int
    ini_filename &u8 = unsafe { nil }
    no_default_font bool
    disable_paste_override bool
    disable_set_mouse_cursor bool
    disable_windows_resize_from_edges bool
    write_alpha_channel bool
    allocator Allocator
    logger Logger
}
pub type Desc = C.simgui_desc_t

pub struct C.simgui_frame_desc_t {
pub mut:
    width int
    height int
    delta_time f64 = 0.0
    dpi_scale f32 = 0.0
}
pub type FrameDesc = C.simgui_frame_desc_t

pub struct C.simgui_font_tex_desc_t {
pub mut:
    min_filter sg.Filter = .default
    mag_filter sg.Filter = .default
}
pub type FontTexDesc = C.simgui_font_tex_desc_t

fn C.simgui_setup(&Desc) 
pub fn setup(desc &Desc) {
    C.simgui_setup(desc)
}
fn C.simgui_new_frame(&FrameDesc) 
pub fn new_frame(desc &FrameDesc) {
    C.simgui_new_frame(desc)
}
fn C.simgui_render() 
pub fn render() {
    C.simgui_render()
}
fn C.simgui_imtextureid(sg.Image) u64
pub fn imtextureid(img sg.Image) u64 {
    return C.simgui_imtextureid(img)
}
fn C.simgui_imtextureid_with_sampler(sg.Image, sg.Sampler) u64
pub fn imtextureid_with_sampler(img sg.Image, smp sg.Sampler) u64 {
    return C.simgui_imtextureid_with_sampler(img, smp)
}
fn C.simgui_image_from_imtextureid(u64) sg.Image
pub fn image_from_imtextureid(imtex_id u64) sg.Image {
    return C.simgui_image_from_imtextureid(imtex_id)
}
fn C.simgui_sampler_from_imtextureid(u64) sg.Sampler
pub fn sampler_from_imtextureid(imtex_id u64) sg.Sampler {
    return C.simgui_sampler_from_imtextureid(imtex_id)
}
fn C.simgui_add_focus_event(bool) 
pub fn add_focus_event(focus bool) {
    C.simgui_add_focus_event(focus)
}
fn C.simgui_add_mouse_pos_event(f32, f32) 
pub fn add_mouse_pos_event(x f32, y f32) {
    C.simgui_add_mouse_pos_event(x, y)
}
fn C.simgui_add_touch_pos_event(f32, f32) 
pub fn add_touch_pos_event(x f32, y f32) {
    C.simgui_add_touch_pos_event(x, y)
}
fn C.simgui_add_mouse_button_event(int, bool) 
pub fn add_mouse_button_event(mouse_button int, down bool) {
    C.simgui_add_mouse_button_event(mouse_button, down)
}
fn C.simgui_add_mouse_wheel_event(f32, f32) 
pub fn add_mouse_wheel_event(wheel_x f32, wheel_y f32) {
    C.simgui_add_mouse_wheel_event(wheel_x, wheel_y)
}
fn C.simgui_add_key_event(int, bool) 
pub fn add_key_event(imgui_key int, down bool) {
    C.simgui_add_key_event(imgui_key, down)
}
fn C.simgui_add_input_character(u32) 
pub fn add_input_character(c u32) {
    C.simgui_add_input_character(c)
}
fn C.simgui_add_input_characters_utf8(&u8) 
pub fn add_input_characters_utf8(c string) {
    C.simgui_add_input_characters_utf8(vstring_to_cstring(c))
}
fn C.simgui_add_touch_button_event(int, bool) 
pub fn add_touch_button_event(mouse_button int, down bool) {
    C.simgui_add_touch_button_event(mouse_button, down)
}
fn C.simgui_handle_event(&sapp.Event) bool
pub fn handle_event(ev &sapp.Event) bool {
    return C.simgui_handle_event(ev)
}
fn C.simgui_map_keycode(sapp.Keycode) int
pub fn map_keycode(keycode sapp.Keycode) int {
    return C.simgui_map_keycode(keycode)
}
fn C.simgui_shutdown() 
pub fn shutdown() {
    C.simgui_shutdown()
}
fn C.simgui_create_fonts_texture(&FontTexDesc) 
pub fn create_fonts_texture(desc &FontTexDesc) {
    C.simgui_create_fonts_texture(desc)
}
fn C.simgui_destroy_fonts_texture() 
pub fn destroy_fonts_texture() {
    C.simgui_destroy_fonts_texture()
}
