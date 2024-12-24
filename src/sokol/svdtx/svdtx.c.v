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
pub struct C.sdtx_logger_t {
pub mut:
    func  fn (&u8, u32, u32, &u8, u32, &u8, voidptr)  = unsafe { nil }
    user_data  voidptr
}
pub type Logger = C.sdtx_logger_t

pub struct C.sdtx_context {
pub mut:
    id u32 = 0
}
pub type Context = C.sdtx_context

pub struct C.sdtx_range {
pub mut:
    ptr  voidptr
    size usize = 0
}
pub type Range = C.sdtx_range

pub struct C.sdtx_font_desc_t {
pub mut:
    data Range
    first_char u8 = 0
    last_char u8 = 0
}
pub type FontDesc = C.sdtx_font_desc_t

pub struct C.sdtx_context_desc_t {
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
pub type ContextDesc = C.sdtx_context_desc_t

pub struct C.sdtx_allocator_t {
pub mut:
    alloc_fn  fn (usize, voidptr) voidptr = unsafe { nil }
    free_fn  fn (voidptr, voidptr)  = unsafe { nil }
    user_data  voidptr
}
pub type Allocator = C.sdtx_allocator_t

pub struct C.sdtx_desc_t {
pub mut:
    context_pool_size int = 0
    printf_buf_size int = 0
    fonts [8]FontDesc = [8]FontDesc{}
    context ContextDesc
    allocator Allocator
    logger Logger
}
pub type Desc = C.sdtx_desc_t

fn C.sdtx_setup(&Desc) 
pub fn setup(desc &Desc) {
    C.sdtx_setup(desc)
}
fn C.sdtx_shutdown() 
pub fn shutdown() {
    C.sdtx_shutdown()
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
fn C.sdtx_destroy_context(Context) 
pub fn destroy_context(ctx Context) {
    C.sdtx_destroy_context(ctx)
}
fn C.sdtx_set_context(Context) 
pub fn set_context(ctx Context) {
    C.sdtx_set_context(ctx)
}
fn C.sdtx_get_context() Context
pub fn get_context() Context {
    return C.sdtx_get_context()
}
fn C.sdtx_default_context() Context
pub fn default_context() Context {
    return C.sdtx_default_context()
}
fn C.sdtx_draw() 
pub fn draw() {
    C.sdtx_draw()
}
fn C.sdtx_context_draw(Context) 
pub fn context_draw(ctx Context) {
    C.sdtx_context_draw(ctx)
}
fn C.sdtx_draw_layer(int) 
pub fn draw_layer(layer_id int) {
    C.sdtx_draw_layer(layer_id)
}
fn C.sdtx_context_draw_layer(Context, int) 
pub fn context_draw_layer(ctx Context, layer_id int) {
    C.sdtx_context_draw_layer(ctx, layer_id)
}
fn C.sdtx_layer(int) 
pub fn layer(layer_id int) {
    C.sdtx_layer(layer_id)
}
fn C.sdtx_font(u32) 
pub fn font(font_index u32) {
    C.sdtx_font(font_index)
}
fn C.sdtx_canvas(f32, f32) 
pub fn canvas(w f32, h f32) {
    C.sdtx_canvas(w, h)
}
fn C.sdtx_origin(f32, f32) 
pub fn origin(x f32, y f32) {
    C.sdtx_origin(x, y)
}
fn C.sdtx_home() 
pub fn home() {
    C.sdtx_home()
}
fn C.sdtx_pos(f32, f32) 
pub fn pos(x f32, y f32) {
    C.sdtx_pos(x, y)
}
fn C.sdtx_pos_x(f32) 
pub fn pos_x(x f32) {
    C.sdtx_pos_x(x)
}
fn C.sdtx_pos_y(f32) 
pub fn pos_y(y f32) {
    C.sdtx_pos_y(y)
}
fn C.sdtx_move(f32, f32) 
pub fn move(dx f32, dy f32) {
    C.sdtx_move(dx, dy)
}
fn C.sdtx_move_x(f32) 
pub fn move_x(dx f32) {
    C.sdtx_move_x(dx)
}
fn C.sdtx_move_y(f32) 
pub fn move_y(dy f32) {
    C.sdtx_move_y(dy)
}
fn C.sdtx_crlf() 
pub fn crlf() {
    C.sdtx_crlf()
}
fn C.sdtx_color3b(u8, u8, u8) 
pub fn color3b(r u8, g u8, b u8) {
    C.sdtx_color3b(r, g, b)
}
fn C.sdtx_color3f(f32, f32, f32) 
pub fn color3f(r f32, g f32, b f32) {
    C.sdtx_color3f(r, g, b)
}
fn C.sdtx_color4b(u8, u8, u8, u8) 
pub fn color4b(r u8, g u8, b u8, a u8) {
    C.sdtx_color4b(r, g, b, a)
}
fn C.sdtx_color4f(f32, f32, f32, f32) 
pub fn color4f(r f32, g f32, b f32, a f32) {
    C.sdtx_color4f(r, g, b, a)
}
fn C.sdtx_color1i(u32) 
pub fn color1i(rgba u32) {
    C.sdtx_color1i(rgba)
}
fn C.sdtx_putc(u8) 
pub fn putc(c u8) {
    C.sdtx_putc(c)
}
fn C.sdtx_puts(&u8) 
pub fn puts(str string) {
    C.sdtx_puts(vstring_to_cstring(str))
}
fn C.sdtx_putr(&u8, int) 
pub fn putr(str string, len int) {
    C.sdtx_putr(vstring_to_cstring(str), len)
}
