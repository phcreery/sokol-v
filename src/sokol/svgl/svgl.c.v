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
pub struct Logger {
    func  fn (&u8, u32, u32, &u8, u32, &u8, voidptr) voidptr = unsafe { nil }
    user_data  voidptr
}
pub struct Pipeline {
    id u32 = 0
}
pub struct Context {
    id u32 = 0
}
pub struct Error {
    any bool = false
    vertices_full bool = false
    uniforms_full bool = false
    commands_full bool = false
    stack_overflow bool = false
    stack_underflow bool = false
    no_context bool = false
}
pub struct ContextDesc {
    max_vertices int = 0
    max_commands int = 0
    color_format sg.PixelFormat = .default
    depth_format sg.PixelFormat = .default
    sample_count int = 0
}
pub struct Allocator {
    alloc_fn  fn (usize, voidptr) voidptr = unsafe { nil }
    free_fn  fn (voidptr, voidptr) voidptr = unsafe { nil }
    user_data  voidptr
}
pub struct Desc {
    max_vertices int = 0
    max_commands int = 0
    context_pool_size int = 0
    pipeline_pool_size int = 0
    color_format sg.PixelFormat = .default
    depth_format sg.PixelFormat = .default
    sample_count int = 0
    face_winding sg.FaceWinding = .default
    allocator Allocator
    logger Logger
}
fn C.sgl_setup(&Desc) voidptr
pub fn setup(desc Desc) voidptr {
    return C.sgl_setup(&desc)
}
fn C.sgl_shutdown() voidptr
pub fn shutdown() voidptr {
    return C.sgl_shutdown()
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
pub fn make_context(desc ContextDesc) Context {
    return C.sgl_make_context(&desc)
}
fn C.sgl_destroy_context(Context) voidptr
pub fn destroy_context(ctx Context) voidptr {
    return C.sgl_destroy_context(ctx)
}
fn C.sgl_set_context(Context) voidptr
pub fn set_context(ctx Context) voidptr {
    return C.sgl_set_context(ctx)
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
fn C.sgl_draw() voidptr
pub fn draw() voidptr {
    return C.sgl_draw()
}
fn C.sgl_context_draw(Context) voidptr
pub fn context_draw(ctx Context) voidptr {
    return C.sgl_context_draw(ctx)
}
fn C.sgl_draw_layer(int) voidptr
pub fn draw_layer(layer_id int) voidptr {
    return C.sgl_draw_layer(layer_id)
}
fn C.sgl_context_draw_layer(Context, int) voidptr
pub fn context_draw_layer(ctx Context, layer_id int) voidptr {
    return C.sgl_context_draw_layer(ctx, layer_id)
}
fn C.sgl_make_pipeline(&sg.PipelineDesc) Pipeline
pub fn make_pipeline(desc sg.PipelineDesc) Pipeline {
    return C.sgl_make_pipeline(&desc)
}
fn C.sgl_context_make_pipeline(Context, &sg.PipelineDesc) Pipeline
pub fn context_make_pipeline(ctx Context, desc sg.PipelineDesc) Pipeline {
    return C.sgl_context_make_pipeline(ctx, &desc)
}
fn C.sgl_destroy_pipeline(Pipeline) voidptr
pub fn destroy_pipeline(pip Pipeline) voidptr {
    return C.sgl_destroy_pipeline(pip)
}
fn C.sgl_defaults() voidptr
pub fn defaults() voidptr {
    return C.sgl_defaults()
}
fn C.sgl_viewport(int, int, int, int, bool) voidptr
pub fn viewport(x int, y int, w int, h int, origin_top_left bool) voidptr {
    return C.sgl_viewport(x, y, w, h, origin_top_left)
}
fn C.sgl_viewportf(f32, f32, f32, f32, bool) voidptr
pub fn viewportf(x f32, y f32, w f32, h f32, origin_top_left bool) voidptr {
    return C.sgl_viewportf(x, y, w, h, origin_top_left)
}
fn C.sgl_scissor_rect(int, int, int, int, bool) voidptr
pub fn scissor_rect(x int, y int, w int, h int, origin_top_left bool) voidptr {
    return C.sgl_scissor_rect(x, y, w, h, origin_top_left)
}
fn C.sgl_scissor_rectf(f32, f32, f32, f32, bool) voidptr
pub fn scissor_rectf(x f32, y f32, w f32, h f32, origin_top_left bool) voidptr {
    return C.sgl_scissor_rectf(x, y, w, h, origin_top_left)
}
fn C.sgl_enable_texture() voidptr
pub fn enable_texture() voidptr {
    return C.sgl_enable_texture()
}
fn C.sgl_disable_texture() voidptr
pub fn disable_texture() voidptr {
    return C.sgl_disable_texture()
}
fn C.sgl_texture(sg.Image, sg.Sampler) voidptr
pub fn texture(img sg.Image, smp sg.Sampler) voidptr {
    return C.sgl_texture(img, smp)
}
fn C.sgl_layer(int) voidptr
pub fn layer(layer_id int) voidptr {
    return C.sgl_layer(layer_id)
}
fn C.sgl_load_default_pipeline() voidptr
pub fn load_default_pipeline() voidptr {
    return C.sgl_load_default_pipeline()
}
fn C.sgl_load_pipeline(Pipeline) voidptr
pub fn load_pipeline(pip Pipeline) voidptr {
    return C.sgl_load_pipeline(pip)
}
fn C.sgl_push_pipeline() voidptr
pub fn push_pipeline() voidptr {
    return C.sgl_push_pipeline()
}
fn C.sgl_pop_pipeline() voidptr
pub fn pop_pipeline() voidptr {
    return C.sgl_pop_pipeline()
}
fn C.sgl_matrix_mode_modelview() voidptr
pub fn matrix_mode_modelview() voidptr {
    return C.sgl_matrix_mode_modelview()
}
fn C.sgl_matrix_mode_projection() voidptr
pub fn matrix_mode_projection() voidptr {
    return C.sgl_matrix_mode_projection()
}
fn C.sgl_matrix_mode_texture() voidptr
pub fn matrix_mode_texture() voidptr {
    return C.sgl_matrix_mode_texture()
}
fn C.sgl_load_identity() voidptr
pub fn load_identity() voidptr {
    return C.sgl_load_identity()
}
fn C.sgl_load_matrix(&f32) voidptr
pub fn load_matrix(m &f32) voidptr {
    return C.sgl_load_matrix(m)
}
fn C.sgl_load_transpose_matrix(&f32) voidptr
pub fn load_transpose_matrix(m &f32) voidptr {
    return C.sgl_load_transpose_matrix(m)
}
fn C.sgl_mult_matrix(&f32) voidptr
pub fn mult_matrix(m &f32) voidptr {
    return C.sgl_mult_matrix(m)
}
fn C.sgl_mult_transpose_matrix(&f32) voidptr
pub fn mult_transpose_matrix(m &f32) voidptr {
    return C.sgl_mult_transpose_matrix(m)
}
fn C.sgl_rotate(f32, f32, f32, f32) voidptr
pub fn rotate(angle_rad f32, x f32, y f32, z f32) voidptr {
    return C.sgl_rotate(angle_rad, x, y, z)
}
fn C.sgl_scale(f32, f32, f32) voidptr
pub fn scale(x f32, y f32, z f32) voidptr {
    return C.sgl_scale(x, y, z)
}
fn C.sgl_translate(f32, f32, f32) voidptr
pub fn translate(x f32, y f32, z f32) voidptr {
    return C.sgl_translate(x, y, z)
}
fn C.sgl_frustum(f32, f32, f32, f32, f32, f32) voidptr
pub fn frustum(l f32, r f32, b f32, t f32, n f32, f f32) voidptr {
    return C.sgl_frustum(l, r, b, t, n, f)
}
fn C.sgl_ortho(f32, f32, f32, f32, f32, f32) voidptr
pub fn ortho(l f32, r f32, b f32, t f32, n f32, f f32) voidptr {
    return C.sgl_ortho(l, r, b, t, n, f)
}
fn C.sgl_perspective(f32, f32, f32, f32) voidptr
pub fn perspective(fov_y f32, aspect f32, z_near f32, z_far f32) voidptr {
    return C.sgl_perspective(fov_y, aspect, z_near, z_far)
}
fn C.sgl_lookat(f32, f32, f32, f32, f32, f32, f32, f32, f32) voidptr
pub fn lookat(eye_x f32, eye_y f32, eye_z f32, center_x f32, center_y f32, center_z f32, up_x f32, up_y f32, up_z f32) voidptr {
    return C.sgl_lookat(eye_x, eye_y, eye_z, center_x, center_y, center_z, up_x, up_y, up_z)
}
fn C.sgl_push_matrix() voidptr
pub fn push_matrix() voidptr {
    return C.sgl_push_matrix()
}
fn C.sgl_pop_matrix() voidptr
pub fn pop_matrix() voidptr {
    return C.sgl_pop_matrix()
}
fn C.sgl_t2f(f32, f32) voidptr
pub fn t2f(u f32, v f32) voidptr {
    return C.sgl_t2f(u, v)
}
fn C.sgl_c3f(f32, f32, f32) voidptr
pub fn c3f(r f32, g f32, b f32) voidptr {
    return C.sgl_c3f(r, g, b)
}
fn C.sgl_c4f(f32, f32, f32, f32) voidptr
pub fn c4f(r f32, g f32, b f32, a f32) voidptr {
    return C.sgl_c4f(r, g, b, a)
}
fn C.sgl_c3b(u8, u8, u8) voidptr
pub fn c3b(r u8, g u8, b u8) voidptr {
    return C.sgl_c3b(r, g, b)
}
fn C.sgl_c4b(u8, u8, u8, u8) voidptr
pub fn c4b(r u8, g u8, b u8, a u8) voidptr {
    return C.sgl_c4b(r, g, b, a)
}
fn C.sgl_c1i(u32) voidptr
pub fn c1i(rgba u32) voidptr {
    return C.sgl_c1i(rgba)
}
fn C.sgl_point_size(f32) voidptr
pub fn point_size(s f32) voidptr {
    return C.sgl_point_size(s)
}
fn C.sgl_begin_points() voidptr
pub fn begin_points() voidptr {
    return C.sgl_begin_points()
}
fn C.sgl_begin_lines() voidptr
pub fn begin_lines() voidptr {
    return C.sgl_begin_lines()
}
fn C.sgl_begin_line_strip() voidptr
pub fn begin_line_strip() voidptr {
    return C.sgl_begin_line_strip()
}
fn C.sgl_begin_triangles() voidptr
pub fn begin_triangles() voidptr {
    return C.sgl_begin_triangles()
}
fn C.sgl_begin_triangle_strip() voidptr
pub fn begin_triangle_strip() voidptr {
    return C.sgl_begin_triangle_strip()
}
fn C.sgl_begin_quads() voidptr
pub fn begin_quads() voidptr {
    return C.sgl_begin_quads()
}
fn C.sgl_v2f(f32, f32) voidptr
pub fn v2f(x f32, y f32) voidptr {
    return C.sgl_v2f(x, y)
}
fn C.sgl_v3f(f32, f32, f32) voidptr
pub fn v3f(x f32, y f32, z f32) voidptr {
    return C.sgl_v3f(x, y, z)
}
fn C.sgl_v2f_t2f(f32, f32, f32, f32) voidptr
pub fn v2f_t2f(x f32, y f32, u f32, v f32) voidptr {
    return C.sgl_v2f_t2f(x, y, u, v)
}
fn C.sgl_v3f_t2f(f32, f32, f32, f32, f32) voidptr
pub fn v3f_t2f(x f32, y f32, z f32, u f32, v f32) voidptr {
    return C.sgl_v3f_t2f(x, y, z, u, v)
}
fn C.sgl_v2f_c3f(f32, f32, f32, f32, f32) voidptr
pub fn v2f_c3f(x f32, y f32, r f32, g f32, b f32) voidptr {
    return C.sgl_v2f_c3f(x, y, r, g, b)
}
fn C.sgl_v2f_c3b(f32, f32, u8, u8, u8) voidptr
pub fn v2f_c3b(x f32, y f32, r u8, g u8, b u8) voidptr {
    return C.sgl_v2f_c3b(x, y, r, g, b)
}
fn C.sgl_v2f_c4f(f32, f32, f32, f32, f32, f32) voidptr
pub fn v2f_c4f(x f32, y f32, r f32, g f32, b f32, a f32) voidptr {
    return C.sgl_v2f_c4f(x, y, r, g, b, a)
}
fn C.sgl_v2f_c4b(f32, f32, u8, u8, u8, u8) voidptr
pub fn v2f_c4b(x f32, y f32, r u8, g u8, b u8, a u8) voidptr {
    return C.sgl_v2f_c4b(x, y, r, g, b, a)
}
fn C.sgl_v2f_c1i(f32, f32, u32) voidptr
pub fn v2f_c1i(x f32, y f32, rgba u32) voidptr {
    return C.sgl_v2f_c1i(x, y, rgba)
}
fn C.sgl_v3f_c3f(f32, f32, f32, f32, f32, f32) voidptr
pub fn v3f_c3f(x f32, y f32, z f32, r f32, g f32, b f32) voidptr {
    return C.sgl_v3f_c3f(x, y, z, r, g, b)
}
fn C.sgl_v3f_c3b(f32, f32, f32, u8, u8, u8) voidptr
pub fn v3f_c3b(x f32, y f32, z f32, r u8, g u8, b u8) voidptr {
    return C.sgl_v3f_c3b(x, y, z, r, g, b)
}
fn C.sgl_v3f_c4f(f32, f32, f32, f32, f32, f32, f32) voidptr
pub fn v3f_c4f(x f32, y f32, z f32, r f32, g f32, b f32, a f32) voidptr {
    return C.sgl_v3f_c4f(x, y, z, r, g, b, a)
}
fn C.sgl_v3f_c4b(f32, f32, f32, u8, u8, u8, u8) voidptr
pub fn v3f_c4b(x f32, y f32, z f32, r u8, g u8, b u8, a u8) voidptr {
    return C.sgl_v3f_c4b(x, y, z, r, g, b, a)
}
fn C.sgl_v3f_c1i(f32, f32, f32, u32) voidptr
pub fn v3f_c1i(x f32, y f32, z f32, rgba u32) voidptr {
    return C.sgl_v3f_c1i(x, y, z, rgba)
}
fn C.sgl_v2f_t2f_c3f(f32, f32, f32, f32, f32, f32, f32) voidptr
pub fn v2f_t2f_c3f(x f32, y f32, u f32, v f32, r f32, g f32, b f32) voidptr {
    return C.sgl_v2f_t2f_c3f(x, y, u, v, r, g, b)
}
fn C.sgl_v2f_t2f_c3b(f32, f32, f32, f32, u8, u8, u8) voidptr
pub fn v2f_t2f_c3b(x f32, y f32, u f32, v f32, r u8, g u8, b u8) voidptr {
    return C.sgl_v2f_t2f_c3b(x, y, u, v, r, g, b)
}
fn C.sgl_v2f_t2f_c4f(f32, f32, f32, f32, f32, f32, f32, f32) voidptr
pub fn v2f_t2f_c4f(x f32, y f32, u f32, v f32, r f32, g f32, b f32, a f32) voidptr {
    return C.sgl_v2f_t2f_c4f(x, y, u, v, r, g, b, a)
}
fn C.sgl_v2f_t2f_c4b(f32, f32, f32, f32, u8, u8, u8, u8) voidptr
pub fn v2f_t2f_c4b(x f32, y f32, u f32, v f32, r u8, g u8, b u8, a u8) voidptr {
    return C.sgl_v2f_t2f_c4b(x, y, u, v, r, g, b, a)
}
fn C.sgl_v2f_t2f_c1i(f32, f32, f32, f32, u32) voidptr
pub fn v2f_t2f_c1i(x f32, y f32, u f32, v f32, rgba u32) voidptr {
    return C.sgl_v2f_t2f_c1i(x, y, u, v, rgba)
}
fn C.sgl_v3f_t2f_c3f(f32, f32, f32, f32, f32, f32, f32, f32) voidptr
pub fn v3f_t2f_c3f(x f32, y f32, z f32, u f32, v f32, r f32, g f32, b f32) voidptr {
    return C.sgl_v3f_t2f_c3f(x, y, z, u, v, r, g, b)
}
fn C.sgl_v3f_t2f_c3b(f32, f32, f32, f32, f32, u8, u8, u8) voidptr
pub fn v3f_t2f_c3b(x f32, y f32, z f32, u f32, v f32, r u8, g u8, b u8) voidptr {
    return C.sgl_v3f_t2f_c3b(x, y, z, u, v, r, g, b)
}
fn C.sgl_v3f_t2f_c4f(f32, f32, f32, f32, f32, f32, f32, f32, f32) voidptr
pub fn v3f_t2f_c4f(x f32, y f32, z f32, u f32, v f32, r f32, g f32, b f32, a f32) voidptr {
    return C.sgl_v3f_t2f_c4f(x, y, z, u, v, r, g, b, a)
}
fn C.sgl_v3f_t2f_c4b(f32, f32, f32, f32, f32, u8, u8, u8, u8) voidptr
pub fn v3f_t2f_c4b(x f32, y f32, z f32, u f32, v f32, r u8, g u8, b u8, a u8) voidptr {
    return C.sgl_v3f_t2f_c4b(x, y, z, u, v, r, g, b, a)
}
fn C.sgl_v3f_t2f_c1i(f32, f32, f32, f32, f32, u32) voidptr
pub fn v3f_t2f_c1i(x f32, y f32, z f32, u f32, v f32, rgba u32) voidptr {
    return C.sgl_v3f_t2f_c1i(x, y, z, u, v, rgba)
}
fn C.sgl_end() voidptr
pub fn end() voidptr {
    return C.sgl_end()
}
