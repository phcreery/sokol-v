// machine generated, do not edit

module svgl
import svg as sg

// helper functions
// helper function to convert a C string to a Zig string slice
fn vstring_to_cstring(v_str string) &u8 {
    return v_str.str
}
pub enum LogItem as u32 {
    ok
    malloc_failed
    make_pipeline_failed
    pipeline_pool_exhausted
    add_commit_listener_failed
    context_pool_exhausted
    cannot_destroy_default_context
}
pub struct C.sgl_logger_t {
pub mut:
    func  fn (&u8, u32, u32, &u8, u32, &u8, voidptr)  = unsafe { nil }
    user_data  voidptr
}
pub type Logger = C.sgl_logger_t

pub struct C.sgl_pipeline {
pub mut:
    id u32
}
pub type Pipeline = C.sgl_pipeline

pub struct C.sgl_context {
pub mut:
    id u32
}
pub type Context = C.sgl_context

pub struct C.sgl_error_t {
pub mut:
    any bool
    vertices_full bool
    uniforms_full bool
    commands_full bool
    stack_overflow bool
    stack_underflow bool
    no_context bool
}
pub type Error = C.sgl_error_t

pub struct C.sgl_context_desc_t {
pub mut:
    max_vertices int
    max_commands int
    color_format sg.PixelFormat = .default
    depth_format sg.PixelFormat = .default
    sample_count int
}
pub type ContextDesc = C.sgl_context_desc_t

pub struct C.sgl_allocator_t {
pub mut:
    alloc_fn  fn (usize, voidptr) voidptr = unsafe { nil }
    free_fn  fn (voidptr, voidptr)  = unsafe { nil }
    user_data  voidptr
}
pub type Allocator = C.sgl_allocator_t

pub struct C.sgl_desc_t {
pub mut:
    max_vertices int
    max_commands int
    context_pool_size int
    pipeline_pool_size int
    color_format sg.PixelFormat = .default
    depth_format sg.PixelFormat = .default
    sample_count int
    face_winding sg.FaceWinding = .default
    allocator Allocator
    logger Logger
}
pub type Desc = C.sgl_desc_t

fn C.sgl_setup(&Desc) 
pub fn setup(desc &Desc) {
    C.sgl_setup(desc)
}
fn C.sgl_shutdown() 
pub fn shutdown() {
    C.sgl_shutdown()
}
fn C.sgl_rad(f32) f32
pub fn as_radians(deg f32) f32 {
    return C.sgl_rad(deg)
}
fn C.sgl_deg(f32) f32
pub fn as_degrees(rad f32) f32 {
    return C.sgl_deg(rad)
}
fn C.sgl_error() Error
pub fn get_error() Error {
    return C.sgl_error()
}
fn C.sgl_context_error(Context) Error
pub fn context_error(ctx Context) Error {
    return C.sgl_context_error(ctx)
}
fn C.sgl_make_context(&ContextDesc) Context
pub fn make_context(desc &ContextDesc) Context {
    return C.sgl_make_context(desc)
}
fn C.sgl_destroy_context(Context) 
pub fn destroy_context(ctx Context) {
    C.sgl_destroy_context(ctx)
}
fn C.sgl_set_context(Context) 
pub fn set_context(ctx Context) {
    C.sgl_set_context(ctx)
}
fn C.sgl_get_context() Context
pub fn get_context() Context {
    return C.sgl_get_context()
}
fn C.sgl_default_context() Context
pub fn default_context() Context {
    return C.sgl_default_context()
}
fn C.sgl_num_vertices() int
pub fn num_vertices() int {
    return C.sgl_num_vertices()
}
fn C.sgl_num_commands() int
pub fn num_commands() int {
    return C.sgl_num_commands()
}
fn C.sgl_draw() 
pub fn draw() {
    C.sgl_draw()
}
fn C.sgl_context_draw(Context) 
pub fn context_draw(ctx Context) {
    C.sgl_context_draw(ctx)
}
fn C.sgl_draw_layer(int) 
pub fn draw_layer(layer_id int) {
    C.sgl_draw_layer(layer_id)
}
fn C.sgl_context_draw_layer(Context, int) 
pub fn context_draw_layer(ctx Context, layer_id int) {
    C.sgl_context_draw_layer(ctx, layer_id)
}
fn C.sgl_make_pipeline(&sg.PipelineDesc) Pipeline
pub fn make_pipeline(desc &sg.PipelineDesc) Pipeline {
    return C.sgl_make_pipeline(desc)
}
fn C.sgl_context_make_pipeline(Context, &sg.PipelineDesc) Pipeline
pub fn context_make_pipeline(ctx Context, desc &sg.PipelineDesc) Pipeline {
    return C.sgl_context_make_pipeline(ctx, desc)
}
fn C.sgl_destroy_pipeline(Pipeline) 
pub fn destroy_pipeline(pip Pipeline) {
    C.sgl_destroy_pipeline(pip)
}
fn C.sgl_defaults() 
pub fn defaults() {
    C.sgl_defaults()
}
fn C.sgl_viewport(int, int, int, int, bool) 
pub fn viewport(x int, y int, w int, h int, origin_top_left bool) {
    C.sgl_viewport(x, y, w, h, origin_top_left)
}
fn C.sgl_viewportf(f32, f32, f32, f32, bool) 
pub fn viewportf(x f32, y f32, w f32, h f32, origin_top_left bool) {
    C.sgl_viewportf(x, y, w, h, origin_top_left)
}
fn C.sgl_scissor_rect(int, int, int, int, bool) 
pub fn scissor_rect(x int, y int, w int, h int, origin_top_left bool) {
    C.sgl_scissor_rect(x, y, w, h, origin_top_left)
}
fn C.sgl_scissor_rectf(f32, f32, f32, f32, bool) 
pub fn scissor_rectf(x f32, y f32, w f32, h f32, origin_top_left bool) {
    C.sgl_scissor_rectf(x, y, w, h, origin_top_left)
}
fn C.sgl_enable_texture() 
pub fn enable_texture() {
    C.sgl_enable_texture()
}
fn C.sgl_disable_texture() 
pub fn disable_texture() {
    C.sgl_disable_texture()
}
fn C.sgl_texture(sg.Image, sg.Sampler) 
pub fn texture(img sg.Image, smp sg.Sampler) {
    C.sgl_texture(img, smp)
}
fn C.sgl_layer(int) 
pub fn layer(layer_id int) {
    C.sgl_layer(layer_id)
}
fn C.sgl_load_default_pipeline() 
pub fn load_default_pipeline() {
    C.sgl_load_default_pipeline()
}
fn C.sgl_load_pipeline(Pipeline) 
pub fn load_pipeline(pip Pipeline) {
    C.sgl_load_pipeline(pip)
}
fn C.sgl_push_pipeline() 
pub fn push_pipeline() {
    C.sgl_push_pipeline()
}
fn C.sgl_pop_pipeline() 
pub fn pop_pipeline() {
    C.sgl_pop_pipeline()
}
fn C.sgl_matrix_mode_modelview() 
pub fn matrix_mode_modelview() {
    C.sgl_matrix_mode_modelview()
}
fn C.sgl_matrix_mode_projection() 
pub fn matrix_mode_projection() {
    C.sgl_matrix_mode_projection()
}
fn C.sgl_matrix_mode_texture() 
pub fn matrix_mode_texture() {
    C.sgl_matrix_mode_texture()
}
fn C.sgl_load_identity() 
pub fn load_identity() {
    C.sgl_load_identity()
}
fn C.sgl_load_matrix(&f32) 
pub fn load_matrix(m &f32) {
    C.sgl_load_matrix(m)
}
fn C.sgl_load_transpose_matrix(&f32) 
pub fn load_transpose_matrix(m &f32) {
    C.sgl_load_transpose_matrix(m)
}
fn C.sgl_mult_matrix(&f32) 
pub fn mult_matrix(m &f32) {
    C.sgl_mult_matrix(m)
}
fn C.sgl_mult_transpose_matrix(&f32) 
pub fn mult_transpose_matrix(m &f32) {
    C.sgl_mult_transpose_matrix(m)
}
fn C.sgl_rotate(f32, f32, f32, f32) 
pub fn rotate(angle_rad f32, x f32, y f32, z f32) {
    C.sgl_rotate(angle_rad, x, y, z)
}
fn C.sgl_scale(f32, f32, f32) 
pub fn scale(x f32, y f32, z f32) {
    C.sgl_scale(x, y, z)
}
fn C.sgl_translate(f32, f32, f32) 
pub fn translate(x f32, y f32, z f32) {
    C.sgl_translate(x, y, z)
}
fn C.sgl_frustum(f32, f32, f32, f32, f32, f32) 
pub fn frustum(l f32, r f32, b f32, t f32, n f32, f f32) {
    C.sgl_frustum(l, r, b, t, n, f)
}
fn C.sgl_ortho(f32, f32, f32, f32, f32, f32) 
pub fn ortho(l f32, r f32, b f32, t f32, n f32, f f32) {
    C.sgl_ortho(l, r, b, t, n, f)
}
fn C.sgl_perspective(f32, f32, f32, f32) 
pub fn perspective(fov_y f32, aspect f32, z_near f32, z_far f32) {
    C.sgl_perspective(fov_y, aspect, z_near, z_far)
}
fn C.sgl_lookat(f32, f32, f32, f32, f32, f32, f32, f32, f32) 
pub fn lookat(eye_x f32, eye_y f32, eye_z f32, center_x f32, center_y f32, center_z f32, up_x f32, up_y f32, up_z f32) {
    C.sgl_lookat(eye_x, eye_y, eye_z, center_x, center_y, center_z, up_x, up_y, up_z)
}
fn C.sgl_push_matrix() 
pub fn push_matrix() {
    C.sgl_push_matrix()
}
fn C.sgl_pop_matrix() 
pub fn pop_matrix() {
    C.sgl_pop_matrix()
}
fn C.sgl_t2f(f32, f32) 
pub fn t2f(u f32, v f32) {
    C.sgl_t2f(u, v)
}
fn C.sgl_c3f(f32, f32, f32) 
pub fn c3f(r f32, g f32, b f32) {
    C.sgl_c3f(r, g, b)
}
fn C.sgl_c4f(f32, f32, f32, f32) 
pub fn c4f(r f32, g f32, b f32, a f32) {
    C.sgl_c4f(r, g, b, a)
}
fn C.sgl_c3b(u8, u8, u8) 
pub fn c3b(r u8, g u8, b u8) {
    C.sgl_c3b(r, g, b)
}
fn C.sgl_c4b(u8, u8, u8, u8) 
pub fn c4b(r u8, g u8, b u8, a u8) {
    C.sgl_c4b(r, g, b, a)
}
fn C.sgl_c1i(u32) 
pub fn c1i(rgba u32) {
    C.sgl_c1i(rgba)
}
fn C.sgl_point_size(f32) 
pub fn point_size(s f32) {
    C.sgl_point_size(s)
}
fn C.sgl_begin_points() 
pub fn begin_points() {
    C.sgl_begin_points()
}
fn C.sgl_begin_lines() 
pub fn begin_lines() {
    C.sgl_begin_lines()
}
fn C.sgl_begin_line_strip() 
pub fn begin_line_strip() {
    C.sgl_begin_line_strip()
}
fn C.sgl_begin_triangles() 
pub fn begin_triangles() {
    C.sgl_begin_triangles()
}
fn C.sgl_begin_triangle_strip() 
pub fn begin_triangle_strip() {
    C.sgl_begin_triangle_strip()
}
fn C.sgl_begin_quads() 
pub fn begin_quads() {
    C.sgl_begin_quads()
}
fn C.sgl_v2f(f32, f32) 
pub fn v2f(x f32, y f32) {
    C.sgl_v2f(x, y)
}
fn C.sgl_v3f(f32, f32, f32) 
pub fn v3f(x f32, y f32, z f32) {
    C.sgl_v3f(x, y, z)
}
fn C.sgl_v2f_t2f(f32, f32, f32, f32) 
pub fn v2f_t2f(x f32, y f32, u f32, v f32) {
    C.sgl_v2f_t2f(x, y, u, v)
}
fn C.sgl_v3f_t2f(f32, f32, f32, f32, f32) 
pub fn v3f_t2f(x f32, y f32, z f32, u f32, v f32) {
    C.sgl_v3f_t2f(x, y, z, u, v)
}
fn C.sgl_v2f_c3f(f32, f32, f32, f32, f32) 
pub fn v2f_c3f(x f32, y f32, r f32, g f32, b f32) {
    C.sgl_v2f_c3f(x, y, r, g, b)
}
fn C.sgl_v2f_c3b(f32, f32, u8, u8, u8) 
pub fn v2f_c3b(x f32, y f32, r u8, g u8, b u8) {
    C.sgl_v2f_c3b(x, y, r, g, b)
}
fn C.sgl_v2f_c4f(f32, f32, f32, f32, f32, f32) 
pub fn v2f_c4f(x f32, y f32, r f32, g f32, b f32, a f32) {
    C.sgl_v2f_c4f(x, y, r, g, b, a)
}
fn C.sgl_v2f_c4b(f32, f32, u8, u8, u8, u8) 
pub fn v2f_c4b(x f32, y f32, r u8, g u8, b u8, a u8) {
    C.sgl_v2f_c4b(x, y, r, g, b, a)
}
fn C.sgl_v2f_c1i(f32, f32, u32) 
pub fn v2f_c1i(x f32, y f32, rgba u32) {
    C.sgl_v2f_c1i(x, y, rgba)
}
fn C.sgl_v3f_c3f(f32, f32, f32, f32, f32, f32) 
pub fn v3f_c3f(x f32, y f32, z f32, r f32, g f32, b f32) {
    C.sgl_v3f_c3f(x, y, z, r, g, b)
}
fn C.sgl_v3f_c3b(f32, f32, f32, u8, u8, u8) 
pub fn v3f_c3b(x f32, y f32, z f32, r u8, g u8, b u8) {
    C.sgl_v3f_c3b(x, y, z, r, g, b)
}
fn C.sgl_v3f_c4f(f32, f32, f32, f32, f32, f32, f32) 
pub fn v3f_c4f(x f32, y f32, z f32, r f32, g f32, b f32, a f32) {
    C.sgl_v3f_c4f(x, y, z, r, g, b, a)
}
fn C.sgl_v3f_c4b(f32, f32, f32, u8, u8, u8, u8) 
pub fn v3f_c4b(x f32, y f32, z f32, r u8, g u8, b u8, a u8) {
    C.sgl_v3f_c4b(x, y, z, r, g, b, a)
}
fn C.sgl_v3f_c1i(f32, f32, f32, u32) 
pub fn v3f_c1i(x f32, y f32, z f32, rgba u32) {
    C.sgl_v3f_c1i(x, y, z, rgba)
}
fn C.sgl_v2f_t2f_c3f(f32, f32, f32, f32, f32, f32, f32) 
pub fn v2f_t2f_c3f(x f32, y f32, u f32, v f32, r f32, g f32, b f32) {
    C.sgl_v2f_t2f_c3f(x, y, u, v, r, g, b)
}
fn C.sgl_v2f_t2f_c3b(f32, f32, f32, f32, u8, u8, u8) 
pub fn v2f_t2f_c3b(x f32, y f32, u f32, v f32, r u8, g u8, b u8) {
    C.sgl_v2f_t2f_c3b(x, y, u, v, r, g, b)
}
fn C.sgl_v2f_t2f_c4f(f32, f32, f32, f32, f32, f32, f32, f32) 
pub fn v2f_t2f_c4f(x f32, y f32, u f32, v f32, r f32, g f32, b f32, a f32) {
    C.sgl_v2f_t2f_c4f(x, y, u, v, r, g, b, a)
}
fn C.sgl_v2f_t2f_c4b(f32, f32, f32, f32, u8, u8, u8, u8) 
pub fn v2f_t2f_c4b(x f32, y f32, u f32, v f32, r u8, g u8, b u8, a u8) {
    C.sgl_v2f_t2f_c4b(x, y, u, v, r, g, b, a)
}
fn C.sgl_v2f_t2f_c1i(f32, f32, f32, f32, u32) 
pub fn v2f_t2f_c1i(x f32, y f32, u f32, v f32, rgba u32) {
    C.sgl_v2f_t2f_c1i(x, y, u, v, rgba)
}
fn C.sgl_v3f_t2f_c3f(f32, f32, f32, f32, f32, f32, f32, f32) 
pub fn v3f_t2f_c3f(x f32, y f32, z f32, u f32, v f32, r f32, g f32, b f32) {
    C.sgl_v3f_t2f_c3f(x, y, z, u, v, r, g, b)
}
fn C.sgl_v3f_t2f_c3b(f32, f32, f32, f32, f32, u8, u8, u8) 
pub fn v3f_t2f_c3b(x f32, y f32, z f32, u f32, v f32, r u8, g u8, b u8) {
    C.sgl_v3f_t2f_c3b(x, y, z, u, v, r, g, b)
}
fn C.sgl_v3f_t2f_c4f(f32, f32, f32, f32, f32, f32, f32, f32, f32) 
pub fn v3f_t2f_c4f(x f32, y f32, z f32, u f32, v f32, r f32, g f32, b f32, a f32) {
    C.sgl_v3f_t2f_c4f(x, y, z, u, v, r, g, b, a)
}
fn C.sgl_v3f_t2f_c4b(f32, f32, f32, f32, f32, u8, u8, u8, u8) 
pub fn v3f_t2f_c4b(x f32, y f32, z f32, u f32, v f32, r u8, g u8, b u8, a u8) {
    C.sgl_v3f_t2f_c4b(x, y, z, u, v, r, g, b, a)
}
fn C.sgl_v3f_t2f_c1i(f32, f32, f32, f32, f32, u32) 
pub fn v3f_t2f_c1i(x f32, y f32, z f32, u f32, v f32, rgba u32) {
    C.sgl_v3f_t2f_c1i(x, y, z, u, v, rgba)
}
fn C.sgl_end() 
pub fn end() {
    C.sgl_end()
}
