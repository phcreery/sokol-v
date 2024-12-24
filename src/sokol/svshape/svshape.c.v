// machine generated, do not edit

module svshape
import svg as sg

// helper functions
// helper function to convert a C string to a Zig string slice
fn vstring_to_cstring(v_str string) &u8 {
    return v_str.str
}
pub struct Range {
pub mut:
    ptr  voidptr
    size usize = 0
}
pub struct Mat4 {
pub mut:
    m [4][4]f32 = [4][4]f32{init: [4]f32{init: 0.0}}
}
pub struct Vertex {
pub mut:
    x f32 = 0.0
    y f32 = 0.0
    z f32 = 0.0
    normal u32 = 0
    u u16 = 0
    v u16 = 0
    color u32 = 0
}
pub struct ElementRange {
pub mut:
    base_element u32 = 0
    num_elements u32 = 0
}
pub struct SizesItem {
pub mut:
    num u32 = 0
    size u32 = 0
}
pub struct Sizes {
pub mut:
    vertices SizesItem
    indices SizesItem
}
pub struct BufferItem {
pub mut:
    buffer Range
    data_size usize = 0
    shape_offset usize = 0
}
pub struct Buffer {
pub mut:
    valid bool = false
    vertices BufferItem
    indices BufferItem
}
pub struct Plane {
pub mut:
    width f32 = 0.0
    depth f32 = 0.0
    tiles u16 = 0
    color u32 = 0
    random_colors bool = false
    merge bool = false
    transform Mat4
}
pub struct Box {
pub mut:
    width f32 = 0.0
    height f32 = 0.0
    depth f32 = 0.0
    tiles u16 = 0
    color u32 = 0
    random_colors bool = false
    merge bool = false
    transform Mat4
}
pub struct Sphere {
pub mut:
    radius f32 = 0.0
    slices u16 = 0
    stacks u16 = 0
    color u32 = 0
    random_colors bool = false
    merge bool = false
    transform Mat4
}
pub struct Cylinder {
pub mut:
    radius f32 = 0.0
    height f32 = 0.0
    slices u16 = 0
    stacks u16 = 0
    color u32 = 0
    random_colors bool = false
    merge bool = false
    transform Mat4
}
pub struct Torus {
pub mut:
    radius f32 = 0.0
    ring_radius f32 = 0.0
    sides u16 = 0
    rings u16 = 0
    color u32 = 0
    random_colors bool = false
    merge bool = false
    transform Mat4
}
fn C.sshape_build_plane(&Buffer, &Plane) Buffer
pub fn build_plane(buf &Buffer, params &Plane) Buffer {
    return C.sshape_build_plane(buf, params)
}
fn C.sshape_build_box(&Buffer, &Box) Buffer
pub fn build_box(buf &Buffer, params &Box) Buffer {
    return C.sshape_build_box(buf, params)
}
fn C.sshape_build_sphere(&Buffer, &Sphere) Buffer
pub fn build_sphere(buf &Buffer, params &Sphere) Buffer {
    return C.sshape_build_sphere(buf, params)
}
fn C.sshape_build_cylinder(&Buffer, &Cylinder) Buffer
pub fn build_cylinder(buf &Buffer, params &Cylinder) Buffer {
    return C.sshape_build_cylinder(buf, params)
}
fn C.sshape_build_torus(&Buffer, &Torus) Buffer
pub fn build_torus(buf &Buffer, params &Torus) Buffer {
    return C.sshape_build_torus(buf, params)
}
fn C.sshape_plane_sizes(u32) Sizes
pub fn plane_sizes(tiles u32) Sizes {
    return C.sshape_plane_sizes(tiles)
}
fn C.sshape_box_sizes(u32) Sizes
pub fn box_sizes(tiles u32) Sizes {
    return C.sshape_box_sizes(tiles)
}
fn C.sshape_sphere_sizes(u32, u32) Sizes
pub fn sphere_sizes(slices u32, stacks u32) Sizes {
    return C.sshape_sphere_sizes(slices, stacks)
}
fn C.sshape_cylinder_sizes(u32, u32) Sizes
pub fn cylinder_sizes(slices u32, stacks u32) Sizes {
    return C.sshape_cylinder_sizes(slices, stacks)
}
fn C.sshape_torus_sizes(u32, u32) Sizes
pub fn torus_sizes(sides u32, rings u32) Sizes {
    return C.sshape_torus_sizes(sides, rings)
}
fn C.sshape_element_range(&Buffer) ElementRange
pub fn element_range(buf &Buffer) ElementRange {
    return C.sshape_element_range(buf)
}
fn C.sshape_vertex_buffer_desc(&Buffer) sg.BufferDesc
pub fn vertex_buffer_desc(buf &Buffer) sg.BufferDesc {
    return C.sshape_vertex_buffer_desc(buf)
}
fn C.sshape_index_buffer_desc(&Buffer) sg.BufferDesc
pub fn index_buffer_desc(buf &Buffer) sg.BufferDesc {
    return C.sshape_index_buffer_desc(buf)
}
fn C.sshape_vertex_buffer_layout_state() sg.VertexBufferLayoutState
pub fn vertex_buffer_layout_state() sg.VertexBufferLayoutState {
    return C.sshape_vertex_buffer_layout_state()
}
fn C.sshape_position_vertex_attr_state() sg.VertexAttrState
pub fn position_vertex_attr_state() sg.VertexAttrState {
    return C.sshape_position_vertex_attr_state()
}
fn C.sshape_normal_vertex_attr_state() sg.VertexAttrState
pub fn normal_vertex_attr_state() sg.VertexAttrState {
    return C.sshape_normal_vertex_attr_state()
}
fn C.sshape_texcoord_vertex_attr_state() sg.VertexAttrState
pub fn texcoord_vertex_attr_state() sg.VertexAttrState {
    return C.sshape_texcoord_vertex_attr_state()
}
fn C.sshape_color_vertex_attr_state() sg.VertexAttrState
pub fn color_vertex_attr_state() sg.VertexAttrState {
    return C.sshape_color_vertex_attr_state()
}
fn C.sshape_color_4f(f32, f32, f32, f32) u32
pub fn color_4f(r f32, g f32, b f32, a f32) u32 {
    return C.sshape_color_4f(r, g, b, a)
}
fn C.sshape_color_3f(f32, f32, f32) u32
pub fn color_3f(r f32, g f32, b f32) u32 {
    return C.sshape_color_3f(r, g, b)
}
fn C.sshape_color_4b(u8, u8, u8, u8) u32
pub fn color_4b(r u8, g u8, b u8, a u8) u32 {
    return C.sshape_color_4b(r, g, b, a)
}
fn C.sshape_color_3b(u8, u8, u8) u32
pub fn color_3b(r u8, g u8, b u8) u32 {
    return C.sshape_color_3b(r, g, b)
}
fn C.sshape_mat4(&f32) Mat4
pub fn mat4(m &f32) Mat4 {
    return C.sshape_mat4(m)
}
fn C.sshape_mat4_transpose(&f32) Mat4
pub fn mat4_transpose(m &f32) Mat4 {
    return C.sshape_mat4_transpose(m)
}
