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
pub struct Allocator {
pub mut:
    alloc_fn  fn (usize, voidptr) voidptr = unsafe { nil }
    free_fn  fn (voidptr, voidptr) voidptr = unsafe { nil }
    user_data  voidptr
}
pub struct Logger {
pub mut:
    func  fn (&u8, u32, u32, &u8, u32, &u8, voidptr) voidptr = unsafe { nil }
    user_data  voidptr
}
pub struct Desc {
pub mut:
    max_vertices int = 0
    color_format sg.PixelFormat = .default
    depth_format sg.PixelFormat = .default
    sample_count int = 0
    ini_filename &u8
    no_default_font bool = false
    disable_paste_override bool = false
    disable_set_mouse_cursor bool = false
    disable_windows_resize_from_edges bool = false
    write_alpha_channel bool = false
    allocator Allocator
    logger Logger
}
pub struct FrameDesc {
pub mut:
    width int = 0
    height int = 0
    delta_time f64 = 0.0
    dpi_scale f32 = 0.0
}
pub struct FontTexDesc {
pub mut:
    min_filter sg.Filter = .default
    mag_filter sg.Filter = .default
}
fn C.simgui_setup(&Desc) voidptr
pub fn setup(desc &Desc) voidptr {
    return C.simgui_setup(desc)
}
fn C.simgui_new_frame(&FrameDesc) voidptr
pub fn new_frame(desc &FrameDesc) voidptr {
    return C.simgui_new_frame(desc)
}
fn C.simgui_render() voidptr
pub fn render() voidptr {
    return C.simgui_render()
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
fn C.simgui_add_focus_event(bool) voidptr
pub fn add_focus_event(focus bool) voidptr {
    return C.simgui_add_focus_event(focus)
}
fn C.simgui_add_mouse_pos_event(f32, f32) voidptr
pub fn add_mouse_pos_event(x f32, y f32) voidptr {
    return C.simgui_add_mouse_pos_event(x, y)
}
fn C.simgui_add_touch_pos_event(f32, f32) voidptr
pub fn add_touch_pos_event(x f32, y f32) voidptr {
    return C.simgui_add_touch_pos_event(x, y)
}
fn C.simgui_add_mouse_button_event(int, bool) voidptr
pub fn add_mouse_button_event(mouse_button int, down bool) voidptr {
    return C.simgui_add_mouse_button_event(mouse_button, down)
}
fn C.simgui_add_mouse_wheel_event(f32, f32) voidptr
pub fn add_mouse_wheel_event(wheel_x f32, wheel_y f32) voidptr {
    return C.simgui_add_mouse_wheel_event(wheel_x, wheel_y)
}
fn C.simgui_add_key_event(int, bool) voidptr
pub fn add_key_event(imgui_key int, down bool) voidptr {
    return C.simgui_add_key_event(imgui_key, down)
}
fn C.simgui_add_input_character(u32) voidptr
pub fn add_input_character(c u32) voidptr {
    return C.simgui_add_input_character(c)
}
fn C.simgui_add_input_characters_utf8(&u8) voidptr
pub fn add_input_characters_utf8(c string) voidptr {
    return C.simgui_add_input_characters_utf8(vstring_to_cstring(c))
}
fn C.simgui_add_touch_button_event(int, bool) voidptr
pub fn add_touch_button_event(mouse_button int, down bool) voidptr {
    return C.simgui_add_touch_button_event(mouse_button, down)
}
fn C.simgui_handle_event(&sapp.Event) bool
pub fn handle_event(ev &sapp.Event) bool {
    return C.simgui_handle_event(ev)
}
fn C.simgui_map_keycode(sapp.Keycode) int
pub fn map_keycode(keycode sapp.Keycode) int {
    return C.simgui_map_keycode(keycode)
}
fn C.simgui_shutdown() voidptr
pub fn shutdown() voidptr {
    return C.simgui_shutdown()
}
fn C.simgui_create_fonts_texture(&FontTexDesc) voidptr
pub fn create_fonts_texture(desc &FontTexDesc) voidptr {
    return C.simgui_create_fonts_texture(desc)
}
fn C.simgui_destroy_fonts_texture() voidptr
pub fn destroy_fonts_texture() voidptr {
    return C.simgui_destroy_fonts_texture()
}
