// machine generated, do not edit

module svdtx
import svg as sg

// helper functions
// helper function to convert a C string to a Zig string slice
fn vstring_to_cstring(v_str string) &u8 {
    return v_str.str
}
pub enum LogItem as u32 {
    ok
    malloc_failed
    add_commit_listener_failed
    command_buffer_full
    context_pool_exhausted
    cannot_destroy_default_context
}
pub struct Logger {
pub mut:
    func  fn (&u8, u32, u32, &u8, u32, &u8, voidptr) voidptr = unsafe { nil }
    user_data  voidptr
}
pub struct Context {
pub mut:
    id u32 = 0
}
pub struct Range {
pub mut:
    ptr  voidptr
    size usize = 0
}
pub struct FontDesc {
pub mut:
    data Range
    first_char u8 = 0
    last_char u8 = 0
}
pub struct ContextDesc {
pub mut:
    max_commands int = 0
    char_buf_size int = 0
    canvas_width f32 = 0.0
    canvas_height f32 = 0.0
    tab_width int = 0
    color_format sg.PixelFormat = .default
    depth_format sg.PixelFormat = .default
    sample_count int = 0
}
pub struct Allocator {
pub mut:
    alloc_fn  fn (usize, voidptr) voidptr = unsafe { nil }
    free_fn  fn (voidptr, voidptr) voidptr = unsafe { nil }
    user_data  voidptr
}
pub struct Desc {
pub mut:
    context_pool_size int = 0
    printf_buf_size int = 0
    fonts [8]FontDesc = [8]FontDesc{}
    context ContextDesc
    allocator Allocator
    logger Logger
}
fn C.sdtx_setup(&Desc) voidptr
pub fn setup(desc &Desc) voidptr {
    return C.sdtx_setup(desc)
}
fn C.sdtx_shutdown() voidptr
pub fn shutdown() voidptr {
    return C.sdtx_shutdown()
}
fn C.sdtx_font_kc853() FontDesc
pub fn font_kc853() FontDesc {
    return C.sdtx_font_kc853()
}
fn C.sdtx_font_kc854() FontDesc
pub fn font_kc854() FontDesc {
    return C.sdtx_font_kc854()
}
fn C.sdtx_font_z1013() FontDesc
pub fn font_z1013() FontDesc {
    return C.sdtx_font_z1013()
}
fn C.sdtx_font_cpc() FontDesc
pub fn font_cpc() FontDesc {
    return C.sdtx_font_cpc()
}
fn C.sdtx_font_c64() FontDesc
pub fn font_c64() FontDesc {
    return C.sdtx_font_c64()
}
fn C.sdtx_font_oric() FontDesc
pub fn font_oric() FontDesc {
    return C.sdtx_font_oric()
}
fn C.sdtx_make_context(&ContextDesc) Context
pub fn make_context(desc &ContextDesc) Context {
    return C.sdtx_make_context(desc)
}
fn C.sdtx_destroy_context(Context) voidptr
pub fn destroy_context(ctx Context) voidptr {
    return C.sdtx_destroy_context(ctx)
}
fn C.sdtx_set_context(Context) voidptr
pub fn set_context(ctx Context) voidptr {
    return C.sdtx_set_context(ctx)
}
fn C.sdtx_get_context() Context
pub fn get_context() Context {
    return C.sdtx_get_context()
}
fn C.sdtx_default_context() Context
pub fn default_context() Context {
    return C.sdtx_default_context()
}
fn C.sdtx_draw() voidptr
pub fn draw() voidptr {
    return C.sdtx_draw()
}
fn C.sdtx_context_draw(Context) voidptr
pub fn context_draw(ctx Context) voidptr {
    return C.sdtx_context_draw(ctx)
}
fn C.sdtx_draw_layer(int) voidptr
pub fn draw_layer(layer_id int) voidptr {
    return C.sdtx_draw_layer(layer_id)
}
fn C.sdtx_context_draw_layer(Context, int) voidptr
pub fn context_draw_layer(ctx Context, layer_id int) voidptr {
    return C.sdtx_context_draw_layer(ctx, layer_id)
}
fn C.sdtx_layer(int) voidptr
pub fn layer(layer_id int) voidptr {
    return C.sdtx_layer(layer_id)
}
fn C.sdtx_font(u32) voidptr
pub fn font(font_index u32) voidptr {
    return C.sdtx_font(font_index)
}
fn C.sdtx_canvas(f32, f32) voidptr
pub fn canvas(w f32, h f32) voidptr {
    return C.sdtx_canvas(w, h)
}
fn C.sdtx_origin(f32, f32) voidptr
pub fn origin(x f32, y f32) voidptr {
    return C.sdtx_origin(x, y)
}
fn C.sdtx_home() voidptr
pub fn home() voidptr {
    return C.sdtx_home()
}
fn C.sdtx_pos(f32, f32) voidptr
pub fn pos(x f32, y f32) voidptr {
    return C.sdtx_pos(x, y)
}
fn C.sdtx_pos_x(f32) voidptr
pub fn pos_x(x f32) voidptr {
    return C.sdtx_pos_x(x)
}
fn C.sdtx_pos_y(f32) voidptr
pub fn pos_y(y f32) voidptr {
    return C.sdtx_pos_y(y)
}
fn C.sdtx_move(f32, f32) voidptr
pub fn move(dx f32, dy f32) voidptr {
    return C.sdtx_move(dx, dy)
}
fn C.sdtx_move_x(f32) voidptr
pub fn move_x(dx f32) voidptr {
    return C.sdtx_move_x(dx)
}
fn C.sdtx_move_y(f32) voidptr
pub fn move_y(dy f32) voidptr {
    return C.sdtx_move_y(dy)
}
fn C.sdtx_crlf() voidptr
pub fn crlf() voidptr {
    return C.sdtx_crlf()
}
fn C.sdtx_color3b(u8, u8, u8) voidptr
pub fn color3b(r u8, g u8, b u8) voidptr {
    return C.sdtx_color3b(r, g, b)
}
fn C.sdtx_color3f(f32, f32, f32) voidptr
pub fn color3f(r f32, g f32, b f32) voidptr {
    return C.sdtx_color3f(r, g, b)
}
fn C.sdtx_color4b(u8, u8, u8, u8) voidptr
pub fn color4b(r u8, g u8, b u8, a u8) voidptr {
    return C.sdtx_color4b(r, g, b, a)
}
fn C.sdtx_color4f(f32, f32, f32, f32) voidptr
pub fn color4f(r f32, g f32, b f32, a f32) voidptr {
    return C.sdtx_color4f(r, g, b, a)
}
fn C.sdtx_color1i(u32) voidptr
pub fn color1i(rgba u32) voidptr {
    return C.sdtx_color1i(rgba)
}
fn C.sdtx_putc(u8) voidptr
pub fn putc(c u8) voidptr {
    return C.sdtx_putc(c)
}
fn C.sdtx_puts(&u8) voidptr
pub fn puts(str string) voidptr {
    return C.sdtx_puts(vstring_to_cstring(str))
}
fn C.sdtx_putr(&u8, int) voidptr
pub fn putr(str string, len int) voidptr {
    return C.sdtx_putr(vstring_to_cstring(str), len)
}
