// machine generated, do not edit

module svg

// helper functions
// helper function to convert a C string to a Zig string slice
fn vstring_to_cstring(v_str string) &u8 {
    return v_str.str
}
pub struct C.sg_buffer {
pub mut:
    id u32 = 0
}
pub type Buffer = C.sg_buffer

pub struct C.sg_image {
pub mut:
    id u32 = 0
}
pub type Image = C.sg_image

pub struct C.sg_sampler {
pub mut:
    id u32 = 0
}
pub type Sampler = C.sg_sampler

pub struct C.sg_shader {
pub mut:
    id u32 = 0
}
pub type Shader = C.sg_shader

pub struct C.sg_pipeline {
pub mut:
    id u32 = 0
}
pub type Pipeline = C.sg_pipeline

pub struct C.sg_attachments {
pub mut:
    id u32 = 0
}
pub type Attachments = C.sg_attachments

pub struct C.sg_range {
pub mut:
    ptr  voidptr
    size usize = 0
}
pub type Range = C.sg_range

pub const invalid_id = 0
pub const num_inflight_frames = 2
pub const max_color_attachments = 4
pub const max_uniformblock_members = 16
pub const max_vertex_attributes = 16
pub const max_mipmaps = 16
pub const max_texturearray_layers = 128
pub const max_uniformblock_bindslots = 8
pub const max_vertexbuffer_bindslots = 8
pub const max_image_bindslots = 16
pub const max_sampler_bindslots = 16
pub const max_storagebuffer_bindslots = 8
pub const max_image_sampler_pairs = 16
pub struct C.sg_color {
pub mut:
    r f32 = 0.0
    g f32 = 0.0
    b f32 = 0.0
    a f32 = 0.0
}
pub type Color = C.sg_color

pub enum Backend as u32 {
    glcore
    gles3
    d3d11
    metal_ios
    metal_macos
    metal_simulator
    wgpu
    dummy
}
pub enum PixelFormat as u32 {
    default
    none
    r8
    r8sn
    r8ui
    r8si
    r16
    r16sn
    r16ui
    r16si
    r16f
    rg8
    rg8sn
    rg8ui
    rg8si
    r32ui
    r32si
    r32f
    rg16
    rg16sn
    rg16ui
    rg16si
    rg16f
    rgba8
    srgb8a8
    rgba8sn
    rgba8ui
    rgba8si
    bgra8
    rgb10a2
    rg11b10f
    rgb9e5
    rg32ui
    rg32si
    rg32f
    rgba16
    rgba16sn
    rgba16ui
    rgba16si
    rgba16f
    rgba32ui
    rgba32si
    rgba32f
    depth
    depth_stencil
    bc1_rgba
    bc2_rgba
    bc3_rgba
    bc3_srgba
    bc4_r
    bc4_rsn
    bc5_rg
    bc5_rgsn
    bc6h_rgbf
    bc6h_rgbuf
    bc7_rgba
    bc7_srgba
    pvrtc_rgb_2bpp
    pvrtc_rgb_4bpp
    pvrtc_rgba_2bpp
    pvrtc_rgba_4bpp
    etc2_rgb8
    etc2_srgb8
    etc2_rgb8a1
    etc2_rgba8
    etc2_srgb8a8
    eac_r11
    eac_r11sn
    eac_rg11
    eac_rg11sn
    astc_4x4_rgba
    astc_4x4_srgba
    num
}
pub struct C.sg_pixelformat_info {
pub mut:
    sample bool = false
    filter bool = false
    render bool = false
    blend bool = false
    msaa bool = false
    depth bool = false
    compressed bool = false
    bytes_per_pixel int = 0
}
pub type PixelformatInfo = C.sg_pixelformat_info

pub struct C.sg_features {
pub mut:
    origin_top_left bool = false
    image_clamp_to_border bool = false
    mrt_independent_blend_state bool = false
    mrt_independent_write_mask bool = false
    storage_buffer bool = false
    msaa_image_bindings bool = false
}
pub type Features = C.sg_features

pub struct C.sg_limits {
pub mut:
    max_image_size_2d int = 0
    max_image_size_cube int = 0
    max_image_size_3d int = 0
    max_image_size_array int = 0
    max_image_array_layers int = 0
    max_vertex_attrs int = 0
    gl_max_vertex_uniform_components int = 0
    gl_max_combined_texture_image_units int = 0
}
pub type Limits = C.sg_limits

pub enum ResourceState as u32 {
    initial
    alloc
    valid
    failed
    invalid
}
pub enum Usage as u32 {
    default
    immutable
    dynamic
    stream
    num
}
pub enum BufferType as u32 {
    default
    vertexbuffer
    indexbuffer
    storagebuffer
    num
}
pub enum IndexType as u32 {
    default
    none
    uint16
    uint32
    num
}
pub enum ImageType as u32 {
    default
    _2d
    cube
    _3d
    array
    num
}
pub enum ImageSampleType as u32 {
    default
    float
    depth
    sint
    uint
    unfilterable_float
    num
}
pub enum SamplerType as u32 {
    default
    filtering
    nonfiltering
    comparison
    num
}
pub enum CubeFace as u32 {
    pos_x
    neg_x
    pos_y
    neg_y
    pos_z
    neg_z
    num
}
pub enum PrimitiveType as u32 {
    default
    points
    lines
    line_strip
    triangles
    triangle_strip
    num
}
pub enum Filter as u32 {
    default
    nearest
    linear
    num
}
pub enum Wrap as u32 {
    default
    repeat
    clamp_to_edge
    clamp_to_border
    mirrored_repeat
    num
}
pub enum BorderColor as u32 {
    default
    transparent_black
    opaque_black
    opaque_white
    num
}
pub enum VertexFormat as u32 {
    invalid
    float
    float2
    float3
    float4
    byte4
    byte4n
    ubyte4
    ubyte4n
    short2
    short2n
    ushort2n
    short4
    short4n
    ushort4n
    uint10_n2
    half2
    half4
    num
}
pub enum VertexStep as u32 {
    default
    per_vertex
    per_instance
    num
}
pub enum UniformType as u32 {
    invalid
    float
    float2
    float3
    float4
    int
    int2
    int3
    int4
    mat4
    num
}
pub enum UniformLayout as u32 {
    default
    native
    std140
    num
}
pub enum CullMode as u32 {
    default
    none
    front
    back
    num
}
pub enum FaceWinding as u32 {
    default
    ccw
    cw
    num
}
pub enum CompareFunc as u32 {
    default
    never
    less
    equal
    less_equal
    greater
    not_equal
    greater_equal
    always
    num
}
pub enum StencilOp as u32 {
    default
    keep
    zero
    replace
    incr_clamp
    decr_clamp
    invert
    incr_wrap
    decr_wrap
    num
}
pub enum BlendFactor as u32 {
    default
    zero
    one
    src_color
    one_minus_src_color
    src_alpha
    one_minus_src_alpha
    dst_color
    one_minus_dst_color
    dst_alpha
    one_minus_dst_alpha
    src_alpha_saturated
    blend_color
    one_minus_blend_color
    blend_alpha
    one_minus_blend_alpha
    num
}
pub enum BlendOp as u32 {
    default
    add
    subtract
    reverse_subtract
    num
}
pub enum ColorMask as u32 {
    default = 0
    none = 16
    r = 1
    g = 2
    rg = 3
    b = 4
    rb = 5
    gb = 6
    rgb = 7
    a = 8
    ra = 9
    ga = 10
    rga = 11
    ba = 12
    rba = 13
    gba = 14
    rgba = 15
}
pub enum LoadAction as u32 {
    default
    clear
    load
    dontcare
}
pub enum StoreAction as u32 {
    default
    store
    dontcare
}
pub struct C.sg_color_attachment_action {
pub mut:
    load_action LoadAction = .default
    store_action StoreAction = .default
    clear_value Color
}
pub type ColorAttachmentAction = C.sg_color_attachment_action

pub struct C.sg_depth_attachment_action {
pub mut:
    load_action LoadAction = .default
    store_action StoreAction = .default
    clear_value f32 = 0.0
}
pub type DepthAttachmentAction = C.sg_depth_attachment_action

pub struct C.sg_stencil_attachment_action {
pub mut:
    load_action LoadAction = .default
    store_action StoreAction = .default
    clear_value u8 = 0
}
pub type StencilAttachmentAction = C.sg_stencil_attachment_action

pub struct C.sg_pass_action {
pub mut:
    colors [4]ColorAttachmentAction = [4]ColorAttachmentAction{}
    depth DepthAttachmentAction
    stencil StencilAttachmentAction
}
pub type PassAction = C.sg_pass_action

pub struct C.sg_metal_swapchain {
pub mut:
    current_drawable  voidptr
    depth_stencil_texture  voidptr
    msaa_color_texture  voidptr
}
pub type MetalSwapchain = C.sg_metal_swapchain

pub struct C.sg_d3d11_swapchain {
pub mut:
    render_view  voidptr
    resolve_view  voidptr
    depth_stencil_view  voidptr
}
pub type D3d11Swapchain = C.sg_d3d11_swapchain

pub struct C.sg_wgpu_swapchain {
pub mut:
    render_view  voidptr
    resolve_view  voidptr
    depth_stencil_view  voidptr
}
pub type WgpuSwapchain = C.sg_wgpu_swapchain

pub struct C.sg_gl_swapchain {
pub mut:
    framebuffer u32 = 0
}
pub type GlSwapchain = C.sg_gl_swapchain

pub struct C.sg_swapchain {
pub mut:
    width int = 0
    height int = 0
    sample_count int = 0
    color_format PixelFormat = .default
    depth_format PixelFormat = .default
    metal MetalSwapchain
    d3d11 D3d11Swapchain
    wgpu WgpuSwapchain
    gl GlSwapchain
}
pub type Swapchain = C.sg_swapchain

pub struct C.sg_pass {
pub mut:
    action PassAction
    attachments Attachments
    swapchain Swapchain
    label &u8 = unsafe { nil }
}
pub type Pass = C.sg_pass

pub struct C.sg_bindings {
pub mut:
    vertex_buffers [8]Buffer = [8]Buffer{}
    vertex_buffer_offsets [8]int = [8]int{}
    index_buffer Buffer
    index_buffer_offset int = 0
    images [16]Image = [16]Image{}
    samplers [16]Sampler = [16]Sampler{}
    storage_buffers [8]Buffer = [8]Buffer{}
}
pub type Bindings = C.sg_bindings

pub struct C.sg_buffer_desc {
pub mut:
    size usize = 0
    type BufferType = .default
    usage Usage = .default
    data Range
    label &u8 = unsafe { nil }
    gl_buffers [2]u32 = [2]u32{}
    mtl_buffers [2]voidptr = [2]voidptr{}
    d3d11_buffer  voidptr
    wgpu_buffer  voidptr
}
pub type BufferDesc = C.sg_buffer_desc

pub struct C.sg_image_data {
pub mut:
    subimage [6][16]Range = [6][16]Range{init: [16]Range{init: Range{}}}
}
pub type ImageData = C.sg_image_data

pub struct C.sg_image_desc {
pub mut:
    type ImageType = .default
    render_target bool = false
    width int = 0
    height int = 0
    num_slices int = 0
    num_mipmaps int = 0
    usage Usage = .default
    pixel_format PixelFormat = .default
    sample_count int = 0
    data ImageData
    label &u8 = unsafe { nil }
    gl_textures [2]u32 = [2]u32{}
    gl_texture_target u32 = 0
    mtl_textures [2]voidptr = [2]voidptr{}
    d3d11_texture  voidptr
    d3d11_shader_resource_view  voidptr
    wgpu_texture  voidptr
    wgpu_texture_view  voidptr
}
pub type ImageDesc = C.sg_image_desc

pub struct C.sg_sampler_desc {
pub mut:
    min_filter Filter = .default
    mag_filter Filter = .default
    mipmap_filter Filter = .default
    wrap_u Wrap = .default
    wrap_v Wrap = .default
    wrap_w Wrap = .default
    min_lod f32 = 0.0
    max_lod f32 = 0.0
    border_color BorderColor = .default
    compare CompareFunc = .default
    max_anisotropy u32 = 0
    label &u8 = unsafe { nil }
    gl_sampler u32 = 0
    mtl_sampler  voidptr
    d3d11_sampler  voidptr
    wgpu_sampler  voidptr
}
pub type SamplerDesc = C.sg_sampler_desc

pub enum ShaderStage as u32 {
    none
    vertex
    fragment
}
pub struct C.sg_shader_function {
pub mut:
    source &u8 = unsafe { nil }
    bytecode Range
    entry &u8 = unsafe { nil }
    d3d11_target &u8 = unsafe { nil }
}
pub type ShaderFunction = C.sg_shader_function

pub struct C.sg_shader_vertex_attr {
pub mut:
    glsl_name &u8 = unsafe { nil }
    hlsl_sem_name &u8 = unsafe { nil }
    hlsl_sem_index u8 = 0
}
pub type ShaderVertexAttr = C.sg_shader_vertex_attr

pub struct C.sg_glsl_shader_uniform {
pub mut:
    type UniformType = .invalid
    array_count u16 = 0
    glsl_name &u8 = unsafe { nil }
}
pub type GlslShaderUniform = C.sg_glsl_shader_uniform

pub struct C.sg_shader_uniform_block {
pub mut:
    stage ShaderStage = .none
    size u32 = 0
    hlsl_register_b_n u8 = 0
    msl_buffer_n u8 = 0
    wgsl_group0_binding_n u8 = 0
    layout UniformLayout = .default
    glsl_uniforms [16]GlslShaderUniform = [16]GlslShaderUniform{}
}
pub type ShaderUniformBlock = C.sg_shader_uniform_block

pub struct C.sg_shader_image {
pub mut:
    stage ShaderStage = .none
    image_type ImageType = .default
    sample_type ImageSampleType = .default
    multisampled bool = false
    hlsl_register_t_n u8 = 0
    msl_texture_n u8 = 0
    wgsl_group1_binding_n u8 = 0
}
pub type ShaderImage = C.sg_shader_image

pub struct C.sg_shader_sampler {
pub mut:
    stage ShaderStage = .none
    sampler_type SamplerType = .default
    hlsl_register_s_n u8 = 0
    msl_sampler_n u8 = 0
    wgsl_group1_binding_n u8 = 0
}
pub type ShaderSampler = C.sg_shader_sampler

pub struct C.sg_shader_storage_buffer {
pub mut:
    stage ShaderStage = .none
    readonly bool = false
    hlsl_register_t_n u8 = 0
    msl_buffer_n u8 = 0
    wgsl_group1_binding_n u8 = 0
    glsl_binding_n u8 = 0
}
pub type ShaderStorageBuffer = C.sg_shader_storage_buffer

pub struct C.sg_shader_image_sampler_pair {
pub mut:
    stage ShaderStage = .none
    image_slot u8 = 0
    sampler_slot u8 = 0
    glsl_name &u8 = unsafe { nil }
}
pub type ShaderImageSamplerPair = C.sg_shader_image_sampler_pair

pub struct C.sg_shader_desc {
pub mut:
    vertex_func ShaderFunction
    fragment_func ShaderFunction
    attrs [16]ShaderVertexAttr = [16]ShaderVertexAttr{}
    uniform_blocks [8]ShaderUniformBlock = [8]ShaderUniformBlock{}
    storage_buffers [8]ShaderStorageBuffer = [8]ShaderStorageBuffer{}
    images [16]ShaderImage = [16]ShaderImage{}
    samplers [16]ShaderSampler = [16]ShaderSampler{}
    image_sampler_pairs [16]ShaderImageSamplerPair = [16]ShaderImageSamplerPair{}
    label &u8 = unsafe { nil }
}
pub type ShaderDesc = C.sg_shader_desc

pub struct C.sg_vertex_buffer_layout_state {
pub mut:
    stride int = 0
    step_func VertexStep = .default
    step_rate int = 0
}
pub type VertexBufferLayoutState = C.sg_vertex_buffer_layout_state

pub struct C.sg_vertex_attr_state {
pub mut:
    buffer_index int = 0
    offset int = 0
    format VertexFormat = .invalid
}
pub type VertexAttrState = C.sg_vertex_attr_state

pub struct C.sg_vertex_layout_state {
pub mut:
    buffers [8]VertexBufferLayoutState = [8]VertexBufferLayoutState{}
    attrs [16]VertexAttrState = [16]VertexAttrState{}
}
pub type VertexLayoutState = C.sg_vertex_layout_state

pub struct C.sg_stencil_face_state {
pub mut:
    compare CompareFunc = .default
    fail_op StencilOp = .default
    depth_fail_op StencilOp = .default
    pass_op StencilOp = .default
}
pub type StencilFaceState = C.sg_stencil_face_state

pub struct C.sg_stencil_state {
pub mut:
    enabled bool = false
    front StencilFaceState
    back StencilFaceState
    read_mask u8 = 0
    write_mask u8 = 0
    ref u8 = 0
}
pub type StencilState = C.sg_stencil_state

pub struct C.sg_depth_state {
pub mut:
    pixel_format PixelFormat = .default
    compare CompareFunc = .default
    write_enabled bool = false
    bias f32 = 0.0
    bias_slope_scale f32 = 0.0
    bias_clamp f32 = 0.0
}
pub type DepthState = C.sg_depth_state

pub struct C.sg_blend_state {
pub mut:
    enabled bool = false
    src_factor_rgb BlendFactor = .default
    dst_factor_rgb BlendFactor = .default
    op_rgb BlendOp = .default
    src_factor_alpha BlendFactor = .default
    dst_factor_alpha BlendFactor = .default
    op_alpha BlendOp = .default
}
pub type BlendState = C.sg_blend_state

pub struct C.sg_color_target_state {
pub mut:
    pixel_format PixelFormat = .default
    write_mask ColorMask = .default
    blend BlendState
}
pub type ColorTargetState = C.sg_color_target_state

pub struct C.sg_pipeline_desc {
pub mut:
    shader Shader
    layout VertexLayoutState
    depth DepthState
    stencil StencilState
    color_count int = 0
    colors [4]ColorTargetState = [4]ColorTargetState{}
    primitive_type PrimitiveType = .default
    index_type IndexType = .default
    cull_mode CullMode = .default
    face_winding FaceWinding = .default
    sample_count int = 0
    blend_color Color
    alpha_to_coverage_enabled bool = false
    label &u8 = unsafe { nil }
}
pub type PipelineDesc = C.sg_pipeline_desc

pub struct C.sg_attachment_desc {
pub mut:
    image Image
    mip_level int = 0
    slice int = 0
}
pub type AttachmentDesc = C.sg_attachment_desc

pub struct C.sg_attachments_desc {
pub mut:
    colors [4]AttachmentDesc = [4]AttachmentDesc{}
    resolves [4]AttachmentDesc = [4]AttachmentDesc{}
    depth_stencil AttachmentDesc
    label &u8 = unsafe { nil }
}
pub type AttachmentsDesc = C.sg_attachments_desc

pub struct C.sg_slot_info {
pub mut:
    state ResourceState = .initial
    res_id u32 = 0
}
pub type SlotInfo = C.sg_slot_info

pub struct C.sg_buffer_info {
pub mut:
    slot SlotInfo
    update_frame_index u32 = 0
    append_frame_index u32 = 0
    append_pos int = 0
    append_overflow bool = false
    num_slots int = 0
    active_slot int = 0
}
pub type BufferInfo = C.sg_buffer_info

pub struct C.sg_image_info {
pub mut:
    slot SlotInfo
    upd_frame_index u32 = 0
    num_slots int = 0
    active_slot int = 0
}
pub type ImageInfo = C.sg_image_info

pub struct C.sg_sampler_info {
pub mut:
    slot SlotInfo
}
pub type SamplerInfo = C.sg_sampler_info

pub struct C.sg_shader_info {
pub mut:
    slot SlotInfo
}
pub type ShaderInfo = C.sg_shader_info

pub struct C.sg_pipeline_info {
pub mut:
    slot SlotInfo
}
pub type PipelineInfo = C.sg_pipeline_info

pub struct C.sg_attachments_info {
pub mut:
    slot SlotInfo
}
pub type AttachmentsInfo = C.sg_attachments_info

pub struct C.sg_frame_stats_gl {
pub mut:
    num_bind_buffer u32 = 0
    num_active_texture u32 = 0
    num_bind_texture u32 = 0
    num_bind_sampler u32 = 0
    num_use_program u32 = 0
    num_render_state u32 = 0
    num_vertex_attrib_pointer u32 = 0
    num_vertex_attrib_divisor u32 = 0
    num_enable_vertex_attrib_array u32 = 0
    num_disable_vertex_attrib_array u32 = 0
    num_uniform u32 = 0
}
pub type FrameStatsGl = C.sg_frame_stats_gl

pub struct C.sg_frame_stats_d3d11_pass {
pub mut:
    num_om_set_render_targets u32 = 0
    num_clear_render_target_view u32 = 0
    num_clear_depth_stencil_view u32 = 0
    num_resolve_subresource u32 = 0
}
pub type FrameStatsD3d11Pass = C.sg_frame_stats_d3d11_pass

pub struct C.sg_frame_stats_d3d11_pipeline {
pub mut:
    num_rs_set_state u32 = 0
    num_om_set_depth_stencil_state u32 = 0
    num_om_set_blend_state u32 = 0
    num_ia_set_primitive_topology u32 = 0
    num_ia_set_input_layout u32 = 0
    num_vs_set_shader u32 = 0
    num_vs_set_constant_buffers u32 = 0
    num_ps_set_shader u32 = 0
    num_ps_set_constant_buffers u32 = 0
}
pub type FrameStatsD3d11Pipeline = C.sg_frame_stats_d3d11_pipeline

pub struct C.sg_frame_stats_d3d11_bindings {
pub mut:
    num_ia_set_vertex_buffers u32 = 0
    num_ia_set_index_buffer u32 = 0
    num_vs_set_shader_resources u32 = 0
    num_ps_set_shader_resources u32 = 0
    num_vs_set_samplers u32 = 0
    num_ps_set_samplers u32 = 0
}
pub type FrameStatsD3d11Bindings = C.sg_frame_stats_d3d11_bindings

pub struct C.sg_frame_stats_d3d11_uniforms {
pub mut:
    num_update_subresource u32 = 0
}
pub type FrameStatsD3d11Uniforms = C.sg_frame_stats_d3d11_uniforms

pub struct C.sg_frame_stats_d3d11_draw {
pub mut:
    num_draw_indexed_instanced u32 = 0
    num_draw_indexed u32 = 0
    num_draw_instanced u32 = 0
    num_draw u32 = 0
}
pub type FrameStatsD3d11Draw = C.sg_frame_stats_d3d11_draw

pub struct C.sg_frame_stats_d3d11 {
pub mut:
    pass FrameStatsD3d11Pass
    pipeline FrameStatsD3d11Pipeline
    bindings FrameStatsD3d11Bindings
    uniforms FrameStatsD3d11Uniforms
    draw FrameStatsD3d11Draw
    num_map u32 = 0
    num_unmap u32 = 0
}
pub type FrameStatsD3d11 = C.sg_frame_stats_d3d11

pub struct C.sg_frame_stats_metal_idpool {
pub mut:
    num_added u32 = 0
    num_released u32 = 0
    num_garbage_collected u32 = 0
}
pub type FrameStatsMetalIdpool = C.sg_frame_stats_metal_idpool

pub struct C.sg_frame_stats_metal_pipeline {
pub mut:
    num_set_blend_color u32 = 0
    num_set_cull_mode u32 = 0
    num_set_front_facing_winding u32 = 0
    num_set_stencil_reference_value u32 = 0
    num_set_depth_bias u32 = 0
    num_set_render_pipeline_state u32 = 0
    num_set_depth_stencil_state u32 = 0
}
pub type FrameStatsMetalPipeline = C.sg_frame_stats_metal_pipeline

pub struct C.sg_frame_stats_metal_bindings {
pub mut:
    num_set_vertex_buffer u32 = 0
    num_set_vertex_texture u32 = 0
    num_set_vertex_sampler_state u32 = 0
    num_set_fragment_buffer u32 = 0
    num_set_fragment_texture u32 = 0
    num_set_fragment_sampler_state u32 = 0
}
pub type FrameStatsMetalBindings = C.sg_frame_stats_metal_bindings

pub struct C.sg_frame_stats_metal_uniforms {
pub mut:
    num_set_vertex_buffer_offset u32 = 0
    num_set_fragment_buffer_offset u32 = 0
}
pub type FrameStatsMetalUniforms = C.sg_frame_stats_metal_uniforms

pub struct C.sg_frame_stats_metal {
pub mut:
    idpool FrameStatsMetalIdpool
    pipeline FrameStatsMetalPipeline
    bindings FrameStatsMetalBindings
    uniforms FrameStatsMetalUniforms
}
pub type FrameStatsMetal = C.sg_frame_stats_metal

pub struct C.sg_frame_stats_wgpu_uniforms {
pub mut:
    num_set_bindgroup u32 = 0
    size_write_buffer u32 = 0
}
pub type FrameStatsWgpuUniforms = C.sg_frame_stats_wgpu_uniforms

pub struct C.sg_frame_stats_wgpu_bindings {
pub mut:
    num_set_vertex_buffer u32 = 0
    num_skip_redundant_vertex_buffer u32 = 0
    num_set_index_buffer u32 = 0
    num_skip_redundant_index_buffer u32 = 0
    num_create_bindgroup u32 = 0
    num_discard_bindgroup u32 = 0
    num_set_bindgroup u32 = 0
    num_skip_redundant_bindgroup u32 = 0
    num_bindgroup_cache_hits u32 = 0
    num_bindgroup_cache_misses u32 = 0
    num_bindgroup_cache_collisions u32 = 0
    num_bindgroup_cache_invalidates u32 = 0
    num_bindgroup_cache_hash_vs_key_mismatch u32 = 0
}
pub type FrameStatsWgpuBindings = C.sg_frame_stats_wgpu_bindings

pub struct C.sg_frame_stats_wgpu {
pub mut:
    uniforms FrameStatsWgpuUniforms
    bindings FrameStatsWgpuBindings
}
pub type FrameStatsWgpu = C.sg_frame_stats_wgpu

pub struct C.sg_frame_stats {
pub mut:
    frame_index u32 = 0
    num_passes u32 = 0
    num_apply_viewport u32 = 0
    num_apply_scissor_rect u32 = 0
    num_apply_pipeline u32 = 0
    num_apply_bindings u32 = 0
    num_apply_uniforms u32 = 0
    num_draw u32 = 0
    num_update_buffer u32 = 0
    num_append_buffer u32 = 0
    num_update_image u32 = 0
    size_apply_uniforms u32 = 0
    size_update_buffer u32 = 0
    size_append_buffer u32 = 0
    size_update_image u32 = 0
    gl FrameStatsGl
    d3d11 FrameStatsD3d11
    metal FrameStatsMetal
    wgpu FrameStatsWgpu
}
pub type FrameStats = C.sg_frame_stats

pub enum LogItem as u32 {
    ok
    malloc_failed
    gl_texture_format_not_supported
    gl_3d_textures_not_supported
    gl_array_textures_not_supported
    gl_shader_compilation_failed
    gl_shader_linking_failed
    gl_vertex_attribute_not_found_in_shader
    gl_image_sampler_name_not_found_in_shader
    gl_framebuffer_status_undefined
    gl_framebuffer_status_incomplete_attachment
    gl_framebuffer_status_incomplete_missing_attachment
    gl_framebuffer_status_unsupported
    gl_framebuffer_status_incomplete_multisample
    gl_framebuffer_status_unknown
    d3d11_create_buffer_failed
    d3d11_create_buffer_srv_failed
    d3d11_create_depth_texture_unsupported_pixel_format
    d3d11_create_depth_texture_failed
    d3d11_create_2d_texture_unsupported_pixel_format
    d3d11_create_2d_texture_failed
    d3d11_create_2d_srv_failed
    d3d11_create_3d_texture_unsupported_pixel_format
    d3d11_create_3d_texture_failed
    d3d11_create_3d_srv_failed
    d3d11_create_msaa_texture_failed
    d3d11_create_sampler_state_failed
    d3d11_load_d3dcompiler_47_dll_failed
    d3d11_shader_compilation_failed
    d3d11_shader_compilation_output
    d3d11_create_constant_buffer_failed
    d3d11_create_input_layout_failed
    d3d11_create_rasterizer_state_failed
    d3d11_create_depth_stencil_state_failed
    d3d11_create_blend_state_failed
    d3d11_create_rtv_failed
    d3d11_create_dsv_failed
    d3d11_map_for_update_buffer_failed
    d3d11_map_for_append_buffer_failed
    d3d11_map_for_update_image_failed
    metal_create_buffer_failed
    metal_texture_format_not_supported
    metal_create_texture_failed
    metal_create_sampler_failed
    metal_shader_compilation_failed
    metal_shader_creation_failed
    metal_shader_compilation_output
    metal_shader_entry_not_found
    metal_create_rps_failed
    metal_create_rps_output
    metal_create_dss_failed
    wgpu_bindgroups_pool_exhausted
    wgpu_bindgroupscache_size_greater_one
    wgpu_bindgroupscache_size_pow2
    wgpu_createbindgroup_failed
    wgpu_create_buffer_failed
    wgpu_create_texture_failed
    wgpu_create_texture_view_failed
    wgpu_create_sampler_failed
    wgpu_create_shader_module_failed
    wgpu_shader_create_bindgroup_layout_failed
    wgpu_create_pipeline_layout_failed
    wgpu_create_render_pipeline_failed
    wgpu_attachments_create_texture_view_failed
    draw_required_bindings_or_uniforms_missing
    identical_commit_listener
    commit_listener_array_full
    trace_hooks_not_enabled
    dealloc_buffer_invalid_state
    dealloc_image_invalid_state
    dealloc_sampler_invalid_state
    dealloc_shader_invalid_state
    dealloc_pipeline_invalid_state
    dealloc_attachments_invalid_state
    init_buffer_invalid_state
    init_image_invalid_state
    init_sampler_invalid_state
    init_shader_invalid_state
    init_pipeline_invalid_state
    init_attachments_invalid_state
    uninit_buffer_invalid_state
    uninit_image_invalid_state
    uninit_sampler_invalid_state
    uninit_shader_invalid_state
    uninit_pipeline_invalid_state
    uninit_attachments_invalid_state
    fail_buffer_invalid_state
    fail_image_invalid_state
    fail_sampler_invalid_state
    fail_shader_invalid_state
    fail_pipeline_invalid_state
    fail_attachments_invalid_state
    buffer_pool_exhausted
    image_pool_exhausted
    sampler_pool_exhausted
    shader_pool_exhausted
    pipeline_pool_exhausted
    pass_pool_exhausted
    beginpass_attachment_invalid
    draw_without_bindings
    validate_bufferdesc_canary
    validate_bufferdesc_size
    validate_bufferdesc_data
    validate_bufferdesc_data_size
    validate_bufferdesc_no_data
    validate_bufferdesc_storagebuffer_supported
    validate_bufferdesc_storagebuffer_size_multiple_4
    validate_imagedata_nodata
    validate_imagedata_data_size
    validate_imagedesc_canary
    validate_imagedesc_width
    validate_imagedesc_height
    validate_imagedesc_rt_pixelformat
    validate_imagedesc_nonrt_pixelformat
    validate_imagedesc_msaa_but_no_rt
    validate_imagedesc_no_msaa_rt_support
    validate_imagedesc_msaa_num_mipmaps
    validate_imagedesc_msaa_3d_image
    validate_imagedesc_msaa_cube_image
    validate_imagedesc_depth_3d_image
    validate_imagedesc_rt_immutable
    validate_imagedesc_rt_no_data
    validate_imagedesc_injected_no_data
    validate_imagedesc_dynamic_no_data
    validate_imagedesc_compressed_immutable
    validate_samplerdesc_canary
    validate_samplerdesc_anistropic_requires_linear_filtering
    validate_shaderdesc_canary
    validate_shaderdesc_source
    validate_shaderdesc_bytecode
    validate_shaderdesc_source_or_bytecode
    validate_shaderdesc_no_bytecode_size
    validate_shaderdesc_no_cont_ub_members
    validate_shaderdesc_ub_size_is_zero
    validate_shaderdesc_ub_metal_buffer_slot_out_of_range
    validate_shaderdesc_ub_metal_buffer_slot_collision
    validate_shaderdesc_ub_hlsl_register_b_out_of_range
    validate_shaderdesc_ub_hlsl_register_b_collision
    validate_shaderdesc_ub_wgsl_group0_binding_out_of_range
    validate_shaderdesc_ub_wgsl_group0_binding_collision
    validate_shaderdesc_no_ub_members
    validate_shaderdesc_ub_uniform_glsl_name
    validate_shaderdesc_ub_size_mismatch
    validate_shaderdesc_ub_array_count
    validate_shaderdesc_ub_std140_array_type
    validate_shaderdesc_storagebuffer_metal_buffer_slot_out_of_range
    validate_shaderdesc_storagebuffer_metal_buffer_slot_collision
    validate_shaderdesc_storagebuffer_hlsl_register_t_out_of_range
    validate_shaderdesc_storagebuffer_hlsl_register_t_collision
    validate_shaderdesc_storagebuffer_glsl_binding_out_of_range
    validate_shaderdesc_storagebuffer_glsl_binding_collision
    validate_shaderdesc_storagebuffer_wgsl_group1_binding_out_of_range
    validate_shaderdesc_storagebuffer_wgsl_group1_binding_collision
    validate_shaderdesc_storagebuffer_readonly
    validate_shaderdesc_image_metal_texture_slot_out_of_range
    validate_shaderdesc_image_metal_texture_slot_collision
    validate_shaderdesc_image_hlsl_register_t_out_of_range
    validate_shaderdesc_image_hlsl_register_t_collision
    validate_shaderdesc_image_wgsl_group1_binding_out_of_range
    validate_shaderdesc_image_wgsl_group1_binding_collision
    validate_shaderdesc_sampler_metal_sampler_slot_out_of_range
    validate_shaderdesc_sampler_metal_sampler_slot_collision
    validate_shaderdesc_sampler_hlsl_register_s_out_of_range
    validate_shaderdesc_sampler_hlsl_register_s_collision
    validate_shaderdesc_sampler_wgsl_group1_binding_out_of_range
    validate_shaderdesc_sampler_wgsl_group1_binding_collision
    validate_shaderdesc_image_sampler_pair_image_slot_out_of_range
    validate_shaderdesc_image_sampler_pair_sampler_slot_out_of_range
    validate_shaderdesc_image_sampler_pair_image_stage_mismatch
    validate_shaderdesc_image_sampler_pair_sampler_stage_mismatch
    validate_shaderdesc_image_sampler_pair_glsl_name
    validate_shaderdesc_nonfiltering_sampler_required
    validate_shaderdesc_comparison_sampler_required
    validate_shaderdesc_image_not_referenced_by_image_sampler_pairs
    validate_shaderdesc_sampler_not_referenced_by_image_sampler_pairs
    validate_shaderdesc_attr_string_too_long
    validate_pipelinedesc_canary
    validate_pipelinedesc_shader
    validate_pipelinedesc_no_cont_attrs
    validate_pipelinedesc_layout_stride4
    validate_pipelinedesc_attr_semantics
    validate_attachmentsdesc_canary
    validate_attachmentsdesc_no_attachments
    validate_attachmentsdesc_no_cont_color_atts
    validate_attachmentsdesc_image
    validate_attachmentsdesc_miplevel
    validate_attachmentsdesc_face
    validate_attachmentsdesc_layer
    validate_attachmentsdesc_slice
    validate_attachmentsdesc_image_no_rt
    validate_attachmentsdesc_color_inv_pixelformat
    validate_attachmentsdesc_depth_inv_pixelformat
    validate_attachmentsdesc_image_sizes
    validate_attachmentsdesc_image_sample_counts
    validate_attachmentsdesc_resolve_color_image_msaa
    validate_attachmentsdesc_resolve_image
    validate_attachmentsdesc_resolve_sample_count
    validate_attachmentsdesc_resolve_miplevel
    validate_attachmentsdesc_resolve_face
    validate_attachmentsdesc_resolve_layer
    validate_attachmentsdesc_resolve_slice
    validate_attachmentsdesc_resolve_image_no_rt
    validate_attachmentsdesc_resolve_image_sizes
    validate_attachmentsdesc_resolve_image_format
    validate_attachmentsdesc_depth_image
    validate_attachmentsdesc_depth_miplevel
    validate_attachmentsdesc_depth_face
    validate_attachmentsdesc_depth_layer
    validate_attachmentsdesc_depth_slice
    validate_attachmentsdesc_depth_image_no_rt
    validate_attachmentsdesc_depth_image_sizes
    validate_attachmentsdesc_depth_image_sample_count
    validate_beginpass_canary
    validate_beginpass_attachments_exists
    validate_beginpass_attachments_valid
    validate_beginpass_color_attachment_image
    validate_beginpass_resolve_attachment_image
    validate_beginpass_depthstencil_attachment_image
    validate_beginpass_swapchain_expect_width
    validate_beginpass_swapchain_expect_width_notset
    validate_beginpass_swapchain_expect_height
    validate_beginpass_swapchain_expect_height_notset
    validate_beginpass_swapchain_expect_samplecount
    validate_beginpass_swapchain_expect_samplecount_notset
    validate_beginpass_swapchain_expect_colorformat
    validate_beginpass_swapchain_expect_colorformat_notset
    validate_beginpass_swapchain_expect_depthformat_notset
    validate_beginpass_swapchain_metal_expect_currentdrawable
    validate_beginpass_swapchain_metal_expect_currentdrawable_notset
    validate_beginpass_swapchain_metal_expect_depthstenciltexture
    validate_beginpass_swapchain_metal_expect_depthstenciltexture_notset
    validate_beginpass_swapchain_metal_expect_msaacolortexture
    validate_beginpass_swapchain_metal_expect_msaacolortexture_notset
    validate_beginpass_swapchain_d3d11_expect_renderview
    validate_beginpass_swapchain_d3d11_expect_renderview_notset
    validate_beginpass_swapchain_d3d11_expect_resolveview
    validate_beginpass_swapchain_d3d11_expect_resolveview_notset
    validate_beginpass_swapchain_d3d11_expect_depthstencilview
    validate_beginpass_swapchain_d3d11_expect_depthstencilview_notset
    validate_beginpass_swapchain_wgpu_expect_renderview
    validate_beginpass_swapchain_wgpu_expect_renderview_notset
    validate_beginpass_swapchain_wgpu_expect_resolveview
    validate_beginpass_swapchain_wgpu_expect_resolveview_notset
    validate_beginpass_swapchain_wgpu_expect_depthstencilview
    validate_beginpass_swapchain_wgpu_expect_depthstencilview_notset
    validate_beginpass_swapchain_gl_expect_framebuffer_notset
    validate_apip_pipeline_valid_id
    validate_apip_pipeline_exists
    validate_apip_pipeline_valid
    validate_apip_shader_exists
    validate_apip_shader_valid
    validate_apip_curpass_attachments_exists
    validate_apip_curpass_attachments_valid
    validate_apip_att_count
    validate_apip_color_format
    validate_apip_depth_format
    validate_apip_sample_count
    validate_abnd_pipeline
    validate_abnd_pipeline_exists
    validate_abnd_pipeline_valid
    validate_abnd_expected_vb
    validate_abnd_vb_exists
    validate_abnd_vb_type
    validate_abnd_vb_overflow
    validate_abnd_no_ib
    validate_abnd_ib
    validate_abnd_ib_exists
    validate_abnd_ib_type
    validate_abnd_ib_overflow
    validate_abnd_expected_image_binding
    validate_abnd_img_exists
    validate_abnd_image_type_mismatch
    validate_abnd_expected_multisampled_image
    validate_abnd_image_msaa
    validate_abnd_expected_filterable_image
    validate_abnd_expected_depth_image
    validate_abnd_expected_sampler_binding
    validate_abnd_unexpected_sampler_compare_never
    validate_abnd_expected_sampler_compare_never
    validate_abnd_expected_nonfiltering_sampler
    validate_abnd_smp_exists
    validate_abnd_expected_storagebuffer_binding
    validate_abnd_storagebuffer_exists
    validate_abnd_storagebuffer_binding_buffertype
    validate_aub_no_pipeline
    validate_aub_no_ub_at_slot
    validate_aub_size
    validate_updatebuf_usage
    validate_updatebuf_size
    validate_updatebuf_once
    validate_updatebuf_append
    validate_appendbuf_usage
    validate_appendbuf_size
    validate_appendbuf_update
    validate_updimg_usage
    validate_updimg_once
    validation_failed
}
pub struct C.sg_environment_defaults {
pub mut:
    color_format PixelFormat = .default
    depth_format PixelFormat = .default
    sample_count int = 0
}
pub type EnvironmentDefaults = C.sg_environment_defaults

pub struct C.sg_metal_environment {
pub mut:
    device  voidptr
}
pub type MetalEnvironment = C.sg_metal_environment

pub struct C.sg_d3d11_environment {
pub mut:
    device  voidptr
    device_context  voidptr
}
pub type D3d11Environment = C.sg_d3d11_environment

pub struct C.sg_wgpu_environment {
pub mut:
    device  voidptr
}
pub type WgpuEnvironment = C.sg_wgpu_environment

pub struct C.sg_environment {
pub mut:
    defaults EnvironmentDefaults
    metal MetalEnvironment
    d3d11 D3d11Environment
    wgpu WgpuEnvironment
}
pub type Environment = C.sg_environment

pub struct C.sg_commit_listener {
pub mut:
    func  fn (voidptr)  = unsafe { nil }
    user_data  voidptr
}
pub type CommitListener = C.sg_commit_listener

pub struct C.sg_allocator {
pub mut:
    alloc_fn  fn (usize, voidptr) voidptr = unsafe { nil }
    free_fn  fn (voidptr, voidptr)  = unsafe { nil }
    user_data  voidptr
}
pub type Allocator = C.sg_allocator

pub struct C.sg_logger {
pub mut:
    func  fn (&u8, u32, u32, &u8, u32, &u8, voidptr)  = unsafe { nil }
    user_data  voidptr
}
pub type Logger = C.sg_logger

pub struct C.sg_desc {
pub mut:
    buffer_pool_size int = 0
    image_pool_size int = 0
    sampler_pool_size int = 0
    shader_pool_size int = 0
    pipeline_pool_size int = 0
    attachments_pool_size int = 0
    uniform_buffer_size int = 0
    max_commit_listeners int = 0
    disable_validation bool = false
    d3d11_shader_debugging bool = false
    mtl_force_managed_storage_mode bool = false
    mtl_use_command_buffer_with_retained_references bool = false
    wgpu_disable_bindgroups_cache bool = false
    wgpu_bindgroups_cache_size int = 0
    allocator Allocator
    logger Logger
    environment Environment
}
pub type Desc = C.sg_desc

fn C.sg_setup(&Desc) 
pub fn setup(desc &Desc) {
    C.sg_setup(desc)
}
fn C.sg_shutdown() 
pub fn shutdown() {
    C.sg_shutdown()
}
fn C.sg_isvalid() bool
pub fn isvalid() bool {
    return C.sg_isvalid()
}
fn C.sg_reset_state_cache() 
pub fn reset_state_cache() {
    C.sg_reset_state_cache()
}
fn C.sg_push_debug_group(&u8) 
pub fn push_debug_group(name string) {
    C.sg_push_debug_group(vstring_to_cstring(name))
}
fn C.sg_pop_debug_group() 
pub fn pop_debug_group() {
    C.sg_pop_debug_group()
}
fn C.sg_add_commit_listener(CommitListener) bool
pub fn add_commit_listener(listener CommitListener) bool {
    return C.sg_add_commit_listener(listener)
}
fn C.sg_remove_commit_listener(CommitListener) bool
pub fn remove_commit_listener(listener CommitListener) bool {
    return C.sg_remove_commit_listener(listener)
}
fn C.sg_make_buffer(&BufferDesc) Buffer
pub fn make_buffer(desc &BufferDesc) Buffer {
    return C.sg_make_buffer(desc)
}
fn C.sg_make_image(&ImageDesc) Image
pub fn make_image(desc &ImageDesc) Image {
    return C.sg_make_image(desc)
}
fn C.sg_make_sampler(&SamplerDesc) Sampler
pub fn make_sampler(desc &SamplerDesc) Sampler {
    return C.sg_make_sampler(desc)
}
fn C.sg_make_shader(&ShaderDesc) Shader
pub fn make_shader(desc &ShaderDesc) Shader {
    return C.sg_make_shader(desc)
}
fn C.sg_make_pipeline(&PipelineDesc) Pipeline
pub fn make_pipeline(desc &PipelineDesc) Pipeline {
    return C.sg_make_pipeline(desc)
}
fn C.sg_make_attachments(&AttachmentsDesc) Attachments
pub fn make_attachments(desc &AttachmentsDesc) Attachments {
    return C.sg_make_attachments(desc)
}
fn C.sg_destroy_buffer(Buffer) 
pub fn destroy_buffer(buf Buffer) {
    C.sg_destroy_buffer(buf)
}
fn C.sg_destroy_image(Image) 
pub fn destroy_image(img Image) {
    C.sg_destroy_image(img)
}
fn C.sg_destroy_sampler(Sampler) 
pub fn destroy_sampler(smp Sampler) {
    C.sg_destroy_sampler(smp)
}
fn C.sg_destroy_shader(Shader) 
pub fn destroy_shader(shd Shader) {
    C.sg_destroy_shader(shd)
}
fn C.sg_destroy_pipeline(Pipeline) 
pub fn destroy_pipeline(pip Pipeline) {
    C.sg_destroy_pipeline(pip)
}
fn C.sg_destroy_attachments(Attachments) 
pub fn destroy_attachments(atts Attachments) {
    C.sg_destroy_attachments(atts)
}
fn C.sg_update_buffer(Buffer, &Range) 
pub fn update_buffer(buf Buffer, data &Range) {
    C.sg_update_buffer(buf, data)
}
fn C.sg_update_image(Image, &ImageData) 
pub fn update_image(img Image, data &ImageData) {
    C.sg_update_image(img, data)
}
fn C.sg_append_buffer(Buffer, &Range) int
pub fn append_buffer(buf Buffer, data &Range) int {
    return C.sg_append_buffer(buf, data)
}
fn C.sg_query_buffer_overflow(Buffer) bool
pub fn query_buffer_overflow(buf Buffer) bool {
    return C.sg_query_buffer_overflow(buf)
}
fn C.sg_query_buffer_will_overflow(Buffer, usize) bool
pub fn query_buffer_will_overflow(buf Buffer, size usize) bool {
    return C.sg_query_buffer_will_overflow(buf, size)
}
fn C.sg_begin_pass(&Pass) 
pub fn begin_pass(pass &Pass) {
    C.sg_begin_pass(pass)
}
fn C.sg_apply_viewport(int, int, int, int, bool) 
pub fn apply_viewport(x int, y int, width int, height int, origin_top_left bool) {
    C.sg_apply_viewport(x, y, width, height, origin_top_left)
}
fn C.sg_apply_viewportf(f32, f32, f32, f32, bool) 
pub fn apply_viewportf(x f32, y f32, width f32, height f32, origin_top_left bool) {
    C.sg_apply_viewportf(x, y, width, height, origin_top_left)
}
fn C.sg_apply_scissor_rect(int, int, int, int, bool) 
pub fn apply_scissor_rect(x int, y int, width int, height int, origin_top_left bool) {
    C.sg_apply_scissor_rect(x, y, width, height, origin_top_left)
}
fn C.sg_apply_scissor_rectf(f32, f32, f32, f32, bool) 
pub fn apply_scissor_rectf(x f32, y f32, width f32, height f32, origin_top_left bool) {
    C.sg_apply_scissor_rectf(x, y, width, height, origin_top_left)
}
fn C.sg_apply_pipeline(Pipeline) 
pub fn apply_pipeline(pip Pipeline) {
    C.sg_apply_pipeline(pip)
}
fn C.sg_apply_bindings(&Bindings) 
pub fn apply_bindings(bindings &Bindings) {
    C.sg_apply_bindings(bindings)
}
fn C.sg_apply_uniforms(u32, &Range) 
pub fn apply_uniforms(ub_slot u32, data &Range) {
    C.sg_apply_uniforms(ub_slot, data)
}
fn C.sg_draw(u32, u32, u32) 
pub fn draw(base_element u32, num_elements u32, num_instances u32) {
    C.sg_draw(base_element, num_elements, num_instances)
}
fn C.sg_end_pass() 
pub fn end_pass() {
    C.sg_end_pass()
}
fn C.sg_commit() 
pub fn commit() {
    C.sg_commit()
}
fn C.sg_query_desc() Desc
pub fn query_desc() Desc {
    return C.sg_query_desc()
}
fn C.sg_query_backend() Backend
pub fn query_backend() Backend {
    return C.sg_query_backend()
}
fn C.sg_query_features() Features
pub fn query_features() Features {
    return C.sg_query_features()
}
fn C.sg_query_limits() Limits
pub fn query_limits() Limits {
    return C.sg_query_limits()
}
fn C.sg_query_pixelformat(PixelFormat) PixelformatInfo
pub fn query_pixelformat(fmt PixelFormat) PixelformatInfo {
    return C.sg_query_pixelformat(fmt)
}
fn C.sg_query_row_pitch(PixelFormat, int, int) int
pub fn query_row_pitch(fmt PixelFormat, width int, row_align_bytes int) int {
    return C.sg_query_row_pitch(fmt, width, row_align_bytes)
}
fn C.sg_query_surface_pitch(PixelFormat, int, int, int) int
pub fn query_surface_pitch(fmt PixelFormat, width int, height int, row_align_bytes int) int {
    return C.sg_query_surface_pitch(fmt, width, height, row_align_bytes)
}
fn C.sg_query_buffer_state(Buffer) ResourceState
pub fn query_buffer_state(buf Buffer) ResourceState {
    return C.sg_query_buffer_state(buf)
}
fn C.sg_query_image_state(Image) ResourceState
pub fn query_image_state(img Image) ResourceState {
    return C.sg_query_image_state(img)
}
fn C.sg_query_sampler_state(Sampler) ResourceState
pub fn query_sampler_state(smp Sampler) ResourceState {
    return C.sg_query_sampler_state(smp)
}
fn C.sg_query_shader_state(Shader) ResourceState
pub fn query_shader_state(shd Shader) ResourceState {
    return C.sg_query_shader_state(shd)
}
fn C.sg_query_pipeline_state(Pipeline) ResourceState
pub fn query_pipeline_state(pip Pipeline) ResourceState {
    return C.sg_query_pipeline_state(pip)
}
fn C.sg_query_attachments_state(Attachments) ResourceState
pub fn query_attachments_state(atts Attachments) ResourceState {
    return C.sg_query_attachments_state(atts)
}
fn C.sg_query_buffer_info(Buffer) BufferInfo
pub fn query_buffer_info(buf Buffer) BufferInfo {
    return C.sg_query_buffer_info(buf)
}
fn C.sg_query_image_info(Image) ImageInfo
pub fn query_image_info(img Image) ImageInfo {
    return C.sg_query_image_info(img)
}
fn C.sg_query_sampler_info(Sampler) SamplerInfo
pub fn query_sampler_info(smp Sampler) SamplerInfo {
    return C.sg_query_sampler_info(smp)
}
fn C.sg_query_shader_info(Shader) ShaderInfo
pub fn query_shader_info(shd Shader) ShaderInfo {
    return C.sg_query_shader_info(shd)
}
fn C.sg_query_pipeline_info(Pipeline) PipelineInfo
pub fn query_pipeline_info(pip Pipeline) PipelineInfo {
    return C.sg_query_pipeline_info(pip)
}
fn C.sg_query_attachments_info(Attachments) AttachmentsInfo
pub fn query_attachments_info(atts Attachments) AttachmentsInfo {
    return C.sg_query_attachments_info(atts)
}
fn C.sg_query_buffer_desc(Buffer) BufferDesc
pub fn query_buffer_desc(buf Buffer) BufferDesc {
    return C.sg_query_buffer_desc(buf)
}
fn C.sg_query_image_desc(Image) ImageDesc
pub fn query_image_desc(img Image) ImageDesc {
    return C.sg_query_image_desc(img)
}
fn C.sg_query_sampler_desc(Sampler) SamplerDesc
pub fn query_sampler_desc(smp Sampler) SamplerDesc {
    return C.sg_query_sampler_desc(smp)
}
fn C.sg_query_shader_desc(Shader) ShaderDesc
pub fn query_shader_desc(shd Shader) ShaderDesc {
    return C.sg_query_shader_desc(shd)
}
fn C.sg_query_pipeline_desc(Pipeline) PipelineDesc
pub fn query_pipeline_desc(pip Pipeline) PipelineDesc {
    return C.sg_query_pipeline_desc(pip)
}
fn C.sg_query_attachments_desc(Attachments) AttachmentsDesc
pub fn query_attachments_desc(atts Attachments) AttachmentsDesc {
    return C.sg_query_attachments_desc(atts)
}
fn C.sg_query_buffer_defaults(&BufferDesc) BufferDesc
pub fn query_buffer_defaults(desc &BufferDesc) BufferDesc {
    return C.sg_query_buffer_defaults(desc)
}
fn C.sg_query_image_defaults(&ImageDesc) ImageDesc
pub fn query_image_defaults(desc &ImageDesc) ImageDesc {
    return C.sg_query_image_defaults(desc)
}
fn C.sg_query_sampler_defaults(&SamplerDesc) SamplerDesc
pub fn query_sampler_defaults(desc &SamplerDesc) SamplerDesc {
    return C.sg_query_sampler_defaults(desc)
}
fn C.sg_query_shader_defaults(&ShaderDesc) ShaderDesc
pub fn query_shader_defaults(desc &ShaderDesc) ShaderDesc {
    return C.sg_query_shader_defaults(desc)
}
fn C.sg_query_pipeline_defaults(&PipelineDesc) PipelineDesc
pub fn query_pipeline_defaults(desc &PipelineDesc) PipelineDesc {
    return C.sg_query_pipeline_defaults(desc)
}
fn C.sg_query_attachments_defaults(&AttachmentsDesc) AttachmentsDesc
pub fn query_attachments_defaults(desc &AttachmentsDesc) AttachmentsDesc {
    return C.sg_query_attachments_defaults(desc)
}
fn C.sg_query_buffer_size(Buffer) usize
pub fn query_buffer_size(buf Buffer) usize {
    return C.sg_query_buffer_size(buf)
}
fn C.sg_query_buffer_type(Buffer) BufferType
pub fn query_buffer_type(buf Buffer) BufferType {
    return C.sg_query_buffer_type(buf)
}
fn C.sg_query_buffer_usage(Buffer) Usage
pub fn query_buffer_usage(buf Buffer) Usage {
    return C.sg_query_buffer_usage(buf)
}
fn C.sg_query_image_type(Image) ImageType
pub fn query_image_type(img Image) ImageType {
    return C.sg_query_image_type(img)
}
fn C.sg_query_image_width(Image) int
pub fn query_image_width(img Image) int {
    return C.sg_query_image_width(img)
}
fn C.sg_query_image_height(Image) int
pub fn query_image_height(img Image) int {
    return C.sg_query_image_height(img)
}
fn C.sg_query_image_num_slices(Image) int
pub fn query_image_num_slices(img Image) int {
    return C.sg_query_image_num_slices(img)
}
fn C.sg_query_image_num_mipmaps(Image) int
pub fn query_image_num_mipmaps(img Image) int {
    return C.sg_query_image_num_mipmaps(img)
}
fn C.sg_query_image_pixelformat(Image) PixelFormat
pub fn query_image_pixelformat(img Image) PixelFormat {
    return C.sg_query_image_pixelformat(img)
}
fn C.sg_query_image_usage(Image) Usage
pub fn query_image_usage(img Image) Usage {
    return C.sg_query_image_usage(img)
}
fn C.sg_query_image_sample_count(Image) int
pub fn query_image_sample_count(img Image) int {
    return C.sg_query_image_sample_count(img)
}
fn C.sg_alloc_buffer() Buffer
pub fn alloc_buffer() Buffer {
    return C.sg_alloc_buffer()
}
fn C.sg_alloc_image() Image
pub fn alloc_image() Image {
    return C.sg_alloc_image()
}
fn C.sg_alloc_sampler() Sampler
pub fn alloc_sampler() Sampler {
    return C.sg_alloc_sampler()
}
fn C.sg_alloc_shader() Shader
pub fn alloc_shader() Shader {
    return C.sg_alloc_shader()
}
fn C.sg_alloc_pipeline() Pipeline
pub fn alloc_pipeline() Pipeline {
    return C.sg_alloc_pipeline()
}
fn C.sg_alloc_attachments() Attachments
pub fn alloc_attachments() Attachments {
    return C.sg_alloc_attachments()
}
fn C.sg_dealloc_buffer(Buffer) 
pub fn dealloc_buffer(buf Buffer) {
    C.sg_dealloc_buffer(buf)
}
fn C.sg_dealloc_image(Image) 
pub fn dealloc_image(img Image) {
    C.sg_dealloc_image(img)
}
fn C.sg_dealloc_sampler(Sampler) 
pub fn dealloc_sampler(smp Sampler) {
    C.sg_dealloc_sampler(smp)
}
fn C.sg_dealloc_shader(Shader) 
pub fn dealloc_shader(shd Shader) {
    C.sg_dealloc_shader(shd)
}
fn C.sg_dealloc_pipeline(Pipeline) 
pub fn dealloc_pipeline(pip Pipeline) {
    C.sg_dealloc_pipeline(pip)
}
fn C.sg_dealloc_attachments(Attachments) 
pub fn dealloc_attachments(attachments Attachments) {
    C.sg_dealloc_attachments(attachments)
}
fn C.sg_init_buffer(Buffer, &BufferDesc) 
pub fn init_buffer(buf Buffer, desc &BufferDesc) {
    C.sg_init_buffer(buf, desc)
}
fn C.sg_init_image(Image, &ImageDesc) 
pub fn init_image(img Image, desc &ImageDesc) {
    C.sg_init_image(img, desc)
}
fn C.sg_init_sampler(Sampler, &SamplerDesc) 
pub fn init_sampler(smg Sampler, desc &SamplerDesc) {
    C.sg_init_sampler(smg, desc)
}
fn C.sg_init_shader(Shader, &ShaderDesc) 
pub fn init_shader(shd Shader, desc &ShaderDesc) {
    C.sg_init_shader(shd, desc)
}
fn C.sg_init_pipeline(Pipeline, &PipelineDesc) 
pub fn init_pipeline(pip Pipeline, desc &PipelineDesc) {
    C.sg_init_pipeline(pip, desc)
}
fn C.sg_init_attachments(Attachments, &AttachmentsDesc) 
pub fn init_attachments(attachments Attachments, desc &AttachmentsDesc) {
    C.sg_init_attachments(attachments, desc)
}
fn C.sg_uninit_buffer(Buffer) 
pub fn uninit_buffer(buf Buffer) {
    C.sg_uninit_buffer(buf)
}
fn C.sg_uninit_image(Image) 
pub fn uninit_image(img Image) {
    C.sg_uninit_image(img)
}
fn C.sg_uninit_sampler(Sampler) 
pub fn uninit_sampler(smp Sampler) {
    C.sg_uninit_sampler(smp)
}
fn C.sg_uninit_shader(Shader) 
pub fn uninit_shader(shd Shader) {
    C.sg_uninit_shader(shd)
}
fn C.sg_uninit_pipeline(Pipeline) 
pub fn uninit_pipeline(pip Pipeline) {
    C.sg_uninit_pipeline(pip)
}
fn C.sg_uninit_attachments(Attachments) 
pub fn uninit_attachments(atts Attachments) {
    C.sg_uninit_attachments(atts)
}
fn C.sg_fail_buffer(Buffer) 
pub fn fail_buffer(buf Buffer) {
    C.sg_fail_buffer(buf)
}
fn C.sg_fail_image(Image) 
pub fn fail_image(img Image) {
    C.sg_fail_image(img)
}
fn C.sg_fail_sampler(Sampler) 
pub fn fail_sampler(smp Sampler) {
    C.sg_fail_sampler(smp)
}
fn C.sg_fail_shader(Shader) 
pub fn fail_shader(shd Shader) {
    C.sg_fail_shader(shd)
}
fn C.sg_fail_pipeline(Pipeline) 
pub fn fail_pipeline(pip Pipeline) {
    C.sg_fail_pipeline(pip)
}
fn C.sg_fail_attachments(Attachments) 
pub fn fail_attachments(atts Attachments) {
    C.sg_fail_attachments(atts)
}
fn C.sg_enable_frame_stats() 
pub fn enable_frame_stats() {
    C.sg_enable_frame_stats()
}
fn C.sg_disable_frame_stats() 
pub fn disable_frame_stats() {
    C.sg_disable_frame_stats()
}
fn C.sg_frame_stats_enabled() bool
pub fn frame_stats_enabled() bool {
    return C.sg_frame_stats_enabled()
}
fn C.sg_query_frame_stats() FrameStats
pub fn query_frame_stats() FrameStats {
    return C.sg_query_frame_stats()
}
pub struct C.sg_d3d11_buffer_info {
pub mut:
    buf  voidptr
}
pub type D3d11BufferInfo = C.sg_d3d11_buffer_info

pub struct C.sg_d3d11_image_info {
pub mut:
    tex2d  voidptr
    tex3d  voidptr
    res  voidptr
    srv  voidptr
}
pub type D3d11ImageInfo = C.sg_d3d11_image_info

pub struct C.sg_d3d11_sampler_info {
pub mut:
    smp  voidptr
}
pub type D3d11SamplerInfo = C.sg_d3d11_sampler_info

pub struct C.sg_d3d11_shader_info {
pub mut:
    cbufs [8]voidptr = [8]voidptr{}
    vs  voidptr
    fs  voidptr
}
pub type D3d11ShaderInfo = C.sg_d3d11_shader_info

pub struct C.sg_d3d11_pipeline_info {
pub mut:
    il  voidptr
    rs  voidptr
    dss  voidptr
    bs  voidptr
}
pub type D3d11PipelineInfo = C.sg_d3d11_pipeline_info

pub struct C.sg_d3d11_attachments_info {
pub mut:
    color_rtv [4]voidptr = [4]voidptr{}
    resolve_rtv [4]voidptr = [4]voidptr{}
    dsv  voidptr
}
pub type D3d11AttachmentsInfo = C.sg_d3d11_attachments_info

pub struct C.sg_mtl_buffer_info {
pub mut:
    buf [2]voidptr = [2]voidptr{}
    active_slot int = 0
}
pub type MtlBufferInfo = C.sg_mtl_buffer_info

pub struct C.sg_mtl_image_info {
pub mut:
    tex [2]voidptr = [2]voidptr{}
    active_slot int = 0
}
pub type MtlImageInfo = C.sg_mtl_image_info

pub struct C.sg_mtl_sampler_info {
pub mut:
    smp  voidptr
}
pub type MtlSamplerInfo = C.sg_mtl_sampler_info

pub struct C.sg_mtl_shader_info {
pub mut:
    vertex_lib  voidptr
    fragment_lib  voidptr
    vertex_func  voidptr
    fragment_func  voidptr
}
pub type MtlShaderInfo = C.sg_mtl_shader_info

pub struct C.sg_mtl_pipeline_info {
pub mut:
    rps  voidptr
    dss  voidptr
}
pub type MtlPipelineInfo = C.sg_mtl_pipeline_info

pub struct C.sg_wgpu_buffer_info {
pub mut:
    buf  voidptr
}
pub type WgpuBufferInfo = C.sg_wgpu_buffer_info

pub struct C.sg_wgpu_image_info {
pub mut:
    tex  voidptr
    view  voidptr
}
pub type WgpuImageInfo = C.sg_wgpu_image_info

pub struct C.sg_wgpu_sampler_info {
pub mut:
    smp  voidptr
}
pub type WgpuSamplerInfo = C.sg_wgpu_sampler_info

pub struct C.sg_wgpu_shader_info {
pub mut:
    vs_mod  voidptr
    fs_mod  voidptr
    bgl  voidptr
}
pub type WgpuShaderInfo = C.sg_wgpu_shader_info

pub struct C.sg_wgpu_pipeline_info {
pub mut:
    pip  voidptr
}
pub type WgpuPipelineInfo = C.sg_wgpu_pipeline_info

pub struct C.sg_wgpu_attachments_info {
pub mut:
    color_view [4]voidptr = [4]voidptr{}
    resolve_view [4]voidptr = [4]voidptr{}
    ds_view  voidptr
}
pub type WgpuAttachmentsInfo = C.sg_wgpu_attachments_info

pub struct C.sg_gl_buffer_info {
pub mut:
    buf [2]u32 = [2]u32{}
    active_slot int = 0
}
pub type GlBufferInfo = C.sg_gl_buffer_info

pub struct C.sg_gl_image_info {
pub mut:
    tex [2]u32 = [2]u32{}
    tex_target u32 = 0
    msaa_render_buffer u32 = 0
    active_slot int = 0
}
pub type GlImageInfo = C.sg_gl_image_info

pub struct C.sg_gl_sampler_info {
pub mut:
    smp u32 = 0
}
pub type GlSamplerInfo = C.sg_gl_sampler_info

pub struct C.sg_gl_shader_info {
pub mut:
    prog u32 = 0
}
pub type GlShaderInfo = C.sg_gl_shader_info

pub struct C.sg_gl_attachments_info {
pub mut:
    framebuffer u32 = 0
    msaa_resolve_framebuffer [4]u32 = [4]u32{}
}
pub type GlAttachmentsInfo = C.sg_gl_attachments_info

fn C.sg_d3d11_device() voidptr
pub fn d3d11_device() voidptr {
    return C.sg_d3d11_device()
}
fn C.sg_d3d11_device_context() voidptr
pub fn d3d11_device_context() voidptr {
    return C.sg_d3d11_device_context()
}
fn C.sg_d3d11_query_buffer_info(Buffer) D3d11BufferInfo
pub fn d3d11_query_buffer_info(buf Buffer) D3d11BufferInfo {
    return C.sg_d3d11_query_buffer_info(buf)
}
fn C.sg_d3d11_query_image_info(Image) D3d11ImageInfo
pub fn d3d11_query_image_info(img Image) D3d11ImageInfo {
    return C.sg_d3d11_query_image_info(img)
}
fn C.sg_d3d11_query_sampler_info(Sampler) D3d11SamplerInfo
pub fn d3d11_query_sampler_info(smp Sampler) D3d11SamplerInfo {
    return C.sg_d3d11_query_sampler_info(smp)
}
fn C.sg_d3d11_query_shader_info(Shader) D3d11ShaderInfo
pub fn d3d11_query_shader_info(shd Shader) D3d11ShaderInfo {
    return C.sg_d3d11_query_shader_info(shd)
}
fn C.sg_d3d11_query_pipeline_info(Pipeline) D3d11PipelineInfo
pub fn d3d11_query_pipeline_info(pip Pipeline) D3d11PipelineInfo {
    return C.sg_d3d11_query_pipeline_info(pip)
}
fn C.sg_d3d11_query_attachments_info(Attachments) D3d11AttachmentsInfo
pub fn d3d11_query_attachments_info(atts Attachments) D3d11AttachmentsInfo {
    return C.sg_d3d11_query_attachments_info(atts)
}
fn C.sg_mtl_device() voidptr
pub fn mtl_device() voidptr {
    return C.sg_mtl_device()
}
fn C.sg_mtl_render_command_encoder() voidptr
pub fn mtl_render_command_encoder() voidptr {
    return C.sg_mtl_render_command_encoder()
}
fn C.sg_mtl_query_buffer_info(Buffer) MtlBufferInfo
pub fn mtl_query_buffer_info(buf Buffer) MtlBufferInfo {
    return C.sg_mtl_query_buffer_info(buf)
}
fn C.sg_mtl_query_image_info(Image) MtlImageInfo
pub fn mtl_query_image_info(img Image) MtlImageInfo {
    return C.sg_mtl_query_image_info(img)
}
fn C.sg_mtl_query_sampler_info(Sampler) MtlSamplerInfo
pub fn mtl_query_sampler_info(smp Sampler) MtlSamplerInfo {
    return C.sg_mtl_query_sampler_info(smp)
}
fn C.sg_mtl_query_shader_info(Shader) MtlShaderInfo
pub fn mtl_query_shader_info(shd Shader) MtlShaderInfo {
    return C.sg_mtl_query_shader_info(shd)
}
fn C.sg_mtl_query_pipeline_info(Pipeline) MtlPipelineInfo
pub fn mtl_query_pipeline_info(pip Pipeline) MtlPipelineInfo {
    return C.sg_mtl_query_pipeline_info(pip)
}
fn C.sg_wgpu_device() voidptr
pub fn wgpu_device() voidptr {
    return C.sg_wgpu_device()
}
fn C.sg_wgpu_queue() voidptr
pub fn wgpu_queue() voidptr {
    return C.sg_wgpu_queue()
}
fn C.sg_wgpu_command_encoder() voidptr
pub fn wgpu_command_encoder() voidptr {
    return C.sg_wgpu_command_encoder()
}
fn C.sg_wgpu_render_pass_encoder() voidptr
pub fn wgpu_render_pass_encoder() voidptr {
    return C.sg_wgpu_render_pass_encoder()
}
fn C.sg_wgpu_query_buffer_info(Buffer) WgpuBufferInfo
pub fn wgpu_query_buffer_info(buf Buffer) WgpuBufferInfo {
    return C.sg_wgpu_query_buffer_info(buf)
}
fn C.sg_wgpu_query_image_info(Image) WgpuImageInfo
pub fn wgpu_query_image_info(img Image) WgpuImageInfo {
    return C.sg_wgpu_query_image_info(img)
}
fn C.sg_wgpu_query_sampler_info(Sampler) WgpuSamplerInfo
pub fn wgpu_query_sampler_info(smp Sampler) WgpuSamplerInfo {
    return C.sg_wgpu_query_sampler_info(smp)
}
fn C.sg_wgpu_query_shader_info(Shader) WgpuShaderInfo
pub fn wgpu_query_shader_info(shd Shader) WgpuShaderInfo {
    return C.sg_wgpu_query_shader_info(shd)
}
fn C.sg_wgpu_query_pipeline_info(Pipeline) WgpuPipelineInfo
pub fn wgpu_query_pipeline_info(pip Pipeline) WgpuPipelineInfo {
    return C.sg_wgpu_query_pipeline_info(pip)
}
fn C.sg_wgpu_query_attachments_info(Attachments) WgpuAttachmentsInfo
pub fn wgpu_query_attachments_info(atts Attachments) WgpuAttachmentsInfo {
    return C.sg_wgpu_query_attachments_info(atts)
}
fn C.sg_gl_query_buffer_info(Buffer) GlBufferInfo
pub fn gl_query_buffer_info(buf Buffer) GlBufferInfo {
    return C.sg_gl_query_buffer_info(buf)
}
fn C.sg_gl_query_image_info(Image) GlImageInfo
pub fn gl_query_image_info(img Image) GlImageInfo {
    return C.sg_gl_query_image_info(img)
}
fn C.sg_gl_query_sampler_info(Sampler) GlSamplerInfo
pub fn gl_query_sampler_info(smp Sampler) GlSamplerInfo {
    return C.sg_gl_query_sampler_info(smp)
}
fn C.sg_gl_query_shader_info(Shader) GlShaderInfo
pub fn gl_query_shader_info(shd Shader) GlShaderInfo {
    return C.sg_gl_query_shader_info(shd)
}
fn C.sg_gl_query_attachments_info(Attachments) GlAttachmentsInfo
pub fn gl_query_attachments_info(atts Attachments) GlAttachmentsInfo {
    return C.sg_gl_query_attachments_info(atts)
}
