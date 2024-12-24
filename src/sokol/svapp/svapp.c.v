// machine generated, do not edit

module svapp

// helper functions
// helper function to convert a C string to a Zig string slice
fn vstring_to_cstring(v_str string) &u8 {
    return v_str.str
}
pub const max_touchpoints = 8
pub const max_mousebuttons = 3
pub const max_keycodes = 512
pub const max_iconimages = 8
pub enum EventType as u32 {
    invalid
    key_down
    key_up
    char
    mouse_down
    mouse_up
    mouse_scroll
    mouse_move
    mouse_enter
    mouse_leave
    touches_began
    touches_moved
    touches_ended
    touches_cancelled
    resized
    iconified
    restored
    focused
    unfocused
    suspended
    resumed
    quit_requested
    clipboard_pasted
    files_dropped
    num
}
pub enum Keycode as u32 {
    invalid = 0
    space = 32
    apostrophe = 39
    comma = 44
    minus = 45
    period = 46
    slash = 47
    _0 = 48
    _1 = 49
    _2 = 50
    _3 = 51
    _4 = 52
    _5 = 53
    _6 = 54
    _7 = 55
    _8 = 56
    _9 = 57
    semicolon = 59
    equal = 61
    a = 65
    b = 66
    c = 67
    d = 68
    e = 69
    f = 70
    g = 71
    h = 72
    i = 73
    j = 74
    k = 75
    l = 76
    m = 77
    n = 78
    o = 79
    p = 80
    q = 81
    r = 82
    s = 83
    t = 84
    u = 85
    v = 86
    w = 87
    x = 88
    y = 89
    z = 90
    left_bracket = 91
    backslash = 92
    right_bracket = 93
    grave_accent = 96
    world_1 = 161
    world_2 = 162
    escape = 256
    enter = 257
    tab = 258
    backspace = 259
    insert = 260
    delete = 261
    right = 262
    left = 263
    down = 264
    up = 265
    page_up = 266
    page_down = 267
    home = 268
    end = 269
    caps_lock = 280
    scroll_lock = 281
    num_lock = 282
    print_screen = 283
    pause = 284
    f1 = 290
    f2 = 291
    f3 = 292
    f4 = 293
    f5 = 294
    f6 = 295
    f7 = 296
    f8 = 297
    f9 = 298
    f10 = 299
    f11 = 300
    f12 = 301
    f13 = 302
    f14 = 303
    f15 = 304
    f16 = 305
    f17 = 306
    f18 = 307
    f19 = 308
    f20 = 309
    f21 = 310
    f22 = 311
    f23 = 312
    f24 = 313
    f25 = 314
    kp_0 = 320
    kp_1 = 321
    kp_2 = 322
    kp_3 = 323
    kp_4 = 324
    kp_5 = 325
    kp_6 = 326
    kp_7 = 327
    kp_8 = 328
    kp_9 = 329
    kp_decimal = 330
    kp_divide = 331
    kp_multiply = 332
    kp_subtract = 333
    kp_add = 334
    kp_enter = 335
    kp_equal = 336
    left_shift = 340
    left_control = 341
    left_alt = 342
    left_super = 343
    right_shift = 344
    right_control = 345
    right_alt = 346
    right_super = 347
    menu = 348
}
pub enum AndroidTooltype as u32 {
    unknown = 0
    finger = 1
    stylus = 2
    mouse = 3
}
pub struct C.sapp_touchpoint {
pub mut:
    identifier usize
    pos_x f32 = 0.0
    pos_y f32 = 0.0
    android_tooltype AndroidTooltype = .unknown
    changed bool
}
pub type Touchpoint = C.sapp_touchpoint

pub enum Mousebutton as u32 {
    left = 0
    right = 1
    middle = 2
    invalid = 256
}
pub const modifier_shift = 1
pub const modifier_ctrl = 2
pub const modifier_alt = 4
pub const modifier_super = 8
pub const modifier_lmb = 256
pub const modifier_rmb = 512
pub const modifier_mmb = 1024
pub struct C.sapp_event {
pub mut:
    frame_count u64
    type EventType = .invalid
    key_code Keycode = .invalid
    char_code u32
    key_repeat bool
    modifiers u32
    mouse_button Mousebutton = .left
    mouse_x f32 = 0.0
    mouse_y f32 = 0.0
    mouse_dx f32 = 0.0
    mouse_dy f32 = 0.0
    scroll_x f32 = 0.0
    scroll_y f32 = 0.0
    num_touches int
    touches [8]Touchpoint = [8]Touchpoint{}
    window_width int
    window_height int
    framebuffer_width int
    framebuffer_height int
}
pub type Event = C.sapp_event

pub struct C.sapp_range {
pub mut:
    ptr  voidptr
    size usize
}
pub type Range = C.sapp_range

pub struct C.sapp_image_desc {
pub mut:
    width int
    height int
    pixels Range
}
pub type ImageDesc = C.sapp_image_desc

pub struct C.sapp_icon_desc {
pub mut:
    sokol_default bool
    images [8]ImageDesc = [8]ImageDesc{}
}
pub type IconDesc = C.sapp_icon_desc

pub struct C.sapp_allocator {
pub mut:
    alloc_fn  fn (usize, voidptr) voidptr = unsafe { nil }
    free_fn  fn (voidptr, voidptr)  = unsafe { nil }
    user_data  voidptr
}
pub type Allocator = C.sapp_allocator

pub enum LogItem as u32 {
    ok
    malloc_failed
    macos_invalid_nsopengl_profile
    win32_load_opengl32_dll_failed
    win32_create_helper_window_failed
    win32_helper_window_getdc_failed
    win32_dummy_context_set_pixelformat_failed
    win32_create_dummy_context_failed
    win32_dummy_context_make_current_failed
    win32_get_pixelformat_attrib_failed
    win32_wgl_find_pixelformat_failed
    win32_wgl_describe_pixelformat_failed
    win32_wgl_set_pixelformat_failed
    win32_wgl_arb_create_context_required
    win32_wgl_arb_create_context_profile_required
    win32_wgl_opengl_version_not_supported
    win32_wgl_opengl_profile_not_supported
    win32_wgl_incompatible_device_context
    win32_wgl_create_context_attribs_failed_other
    win32_d3d11_create_device_and_swapchain_with_debug_failed
    win32_d3d11_get_idxgifactory_failed
    win32_d3d11_get_idxgiadapter_failed
    win32_d3d11_query_interface_idxgidevice1_failed
    win32_register_raw_input_devices_failed_mouse_lock
    win32_register_raw_input_devices_failed_mouse_unlock
    win32_get_raw_input_data_failed
    linux_glx_load_libgl_failed
    linux_glx_load_entry_points_failed
    linux_glx_extension_not_found
    linux_glx_query_version_failed
    linux_glx_version_too_low
    linux_glx_no_glxfbconfigs
    linux_glx_no_suitable_glxfbconfig
    linux_glx_get_visual_from_fbconfig_failed
    linux_glx_required_extensions_missing
    linux_glx_create_context_failed
    linux_glx_create_window_failed
    linux_x11_create_window_failed
    linux_egl_bind_opengl_api_failed
    linux_egl_bind_opengl_es_api_failed
    linux_egl_get_display_failed
    linux_egl_initialize_failed
    linux_egl_no_configs
    linux_egl_no_native_visual
    linux_egl_get_visual_info_failed
    linux_egl_create_window_surface_failed
    linux_egl_create_context_failed
    linux_egl_make_current_failed
    linux_x11_open_display_failed
    linux_x11_query_system_dpi_failed
    linux_x11_dropped_file_uri_wrong_scheme
    linux_x11_failed_to_become_owner_of_clipboard
    android_unsupported_input_event_input_cb
    android_unsupported_input_event_main_cb
    android_read_msg_failed
    android_write_msg_failed
    android_msg_create
    android_msg_resume
    android_msg_pause
    android_msg_focus
    android_msg_no_focus
    android_msg_set_native_window
    android_msg_set_input_queue
    android_msg_destroy
    android_unknown_msg
    android_loop_thread_started
    android_loop_thread_done
    android_native_activity_onstart
    android_native_activity_onresume
    android_native_activity_onsaveinstancestate
    android_native_activity_onwindowfocuschanged
    android_native_activity_onpause
    android_native_activity_onstop
    android_native_activity_onnativewindowcreated
    android_native_activity_onnativewindowdestroyed
    android_native_activity_oninputqueuecreated
    android_native_activity_oninputqueuedestroyed
    android_native_activity_onconfigurationchanged
    android_native_activity_onlowmemory
    android_native_activity_ondestroy
    android_native_activity_done
    android_native_activity_oncreate
    android_create_thread_pipe_failed
    android_native_activity_create_success
    wgpu_swapchain_create_surface_failed
    wgpu_swapchain_create_swapchain_failed
    wgpu_swapchain_create_depth_stencil_texture_failed
    wgpu_swapchain_create_depth_stencil_view_failed
    wgpu_swapchain_create_msaa_texture_failed
    wgpu_swapchain_create_msaa_view_failed
    wgpu_request_device_status_error
    wgpu_request_device_status_unknown
    wgpu_request_adapter_status_unavailable
    wgpu_request_adapter_status_error
    wgpu_request_adapter_status_unknown
    wgpu_create_instance_failed
    image_data_size_mismatch
    dropped_file_path_too_long
    clipboard_string_too_big
}
pub struct C.sapp_logger {
pub mut:
    func  fn (&u8, u32, u32, &u8, u32, &u8, voidptr)  = unsafe { nil }
    user_data  voidptr
}
pub type Logger = C.sapp_logger

pub struct C.sapp_desc {
pub mut:
    init_cb  fn ()  = unsafe { nil }
    frame_cb  fn ()  = unsafe { nil }
    cleanup_cb  fn ()  = unsafe { nil }
    event_cb  fn (&Event)  = unsafe { nil }
    user_data  voidptr
    init_userdata_cb  fn (voidptr)  = unsafe { nil }
    frame_userdata_cb  fn (voidptr)  = unsafe { nil }
    cleanup_userdata_cb  fn (voidptr)  = unsafe { nil }
    event_userdata_cb  fn (&Event, voidptr)  = unsafe { nil }
    width int
    height int
    sample_count int
    swap_interval int
    high_dpi bool
    fullscreen bool
    alpha bool
    window_title &u8 = unsafe { nil }
    enable_clipboard bool
    clipboard_size int
    enable_dragndrop bool
    max_dropped_files int
    max_dropped_file_path_length int
    icon IconDesc
    allocator Allocator
    logger Logger
    gl_major_version int
    gl_minor_version int
    win32_console_utf8 bool
    win32_console_create bool
    win32_console_attach bool
    html5_canvas_selector &u8 = unsafe { nil }
    html5_canvas_resize bool
    html5_preserve_drawing_buffer bool
    html5_premultiplied_alpha bool
    html5_ask_leave_site bool
    html5_bubble_mouse_events bool
    html5_bubble_touch_events bool
    html5_bubble_wheel_events bool
    html5_bubble_key_events bool
    html5_bubble_char_events bool
    html5_use_emsc_set_main_loop bool
    html5_emsc_set_main_loop_simulate_infinite_loop bool
    ios_keyboard_resizes_canvas bool
}
pub type Desc = C.sapp_desc

pub enum Html5FetchError as u32 {
    fetch_error_no_error
    fetch_error_buffer_too_small
    fetch_error_other
}
pub struct C.sapp_html5_fetch_response {
pub mut:
    succeeded bool
    error_code Html5FetchError = .fetch_error_no_error
    file_index int
    data Range
    buffer Range
    user_data  voidptr
}
pub type Html5FetchResponse = C.sapp_html5_fetch_response

pub struct C.sapp_html5_fetch_request {
pub mut:
    dropped_file_index int
    callback  fn (&Html5FetchResponse)  = unsafe { nil }
    buffer Range
    user_data  voidptr
}
pub type Html5FetchRequest = C.sapp_html5_fetch_request

pub enum MouseCursor as u32 {
    default = 0
    arrow
    ibeam
    crosshair
    pointing_hand
    resize_ew
    resize_ns
    resize_nwse
    resize_nesw
    resize_all
    not_allowed
    num
}
fn C.sapp_isvalid() bool
pub fn isvalid() bool {
    return C.sapp_isvalid()
}
fn C.sapp_width() int
pub fn width() int {
    return C.sapp_width()
}
fn C.sapp_widthf() f32
pub fn widthf() f32 {
    return C.sapp_widthf()
}
fn C.sapp_height() int
pub fn height() int {
    return C.sapp_height()
}
fn C.sapp_heightf() f32
pub fn heightf() f32 {
    return C.sapp_heightf()
}
fn C.sapp_color_format() int
pub fn color_format() int {
    return C.sapp_color_format()
}
fn C.sapp_depth_format() int
pub fn depth_format() int {
    return C.sapp_depth_format()
}
fn C.sapp_sample_count() int
pub fn sample_count() int {
    return C.sapp_sample_count()
}
fn C.sapp_high_dpi() bool
pub fn high_dpi() bool {
    return C.sapp_high_dpi()
}
fn C.sapp_dpi_scale() f32
pub fn dpi_scale() f32 {
    return C.sapp_dpi_scale()
}
fn C.sapp_show_keyboard(bool) 
pub fn show_keyboard(show bool) {
    C.sapp_show_keyboard(show)
}
fn C.sapp_keyboard_shown() bool
pub fn keyboard_shown() bool {
    return C.sapp_keyboard_shown()
}
fn C.sapp_is_fullscreen() bool
pub fn is_fullscreen() bool {
    return C.sapp_is_fullscreen()
}
fn C.sapp_toggle_fullscreen() 
pub fn toggle_fullscreen() {
    C.sapp_toggle_fullscreen()
}
fn C.sapp_show_mouse(bool) 
pub fn show_mouse(show bool) {
    C.sapp_show_mouse(show)
}
fn C.sapp_mouse_shown() bool
pub fn mouse_shown() bool {
    return C.sapp_mouse_shown()
}
fn C.sapp_lock_mouse(bool) 
pub fn lock_mouse(_lock bool) {
    C.sapp_lock_mouse(_lock)
}
fn C.sapp_mouse_locked() bool
pub fn mouse_locked() bool {
    return C.sapp_mouse_locked()
}
fn C.sapp_set_mouse_cursor(MouseCursor) 
pub fn set_mouse_cursor(cursor MouseCursor) {
    C.sapp_set_mouse_cursor(cursor)
}
fn C.sapp_get_mouse_cursor() MouseCursor
pub fn get_mouse_cursor() MouseCursor {
    return C.sapp_get_mouse_cursor()
}
fn C.sapp_userdata() voidptr
pub fn userdata() voidptr {
    return C.sapp_userdata()
}
fn C.sapp_query_desc() Desc
pub fn query_desc() Desc {
    return C.sapp_query_desc()
}
fn C.sapp_request_quit() 
pub fn request_quit() {
    C.sapp_request_quit()
}
fn C.sapp_cancel_quit() 
pub fn cancel_quit() {
    C.sapp_cancel_quit()
}
fn C.sapp_quit() 
pub fn quit() {
    C.sapp_quit()
}
fn C.sapp_consume_event() 
pub fn consume_event() {
    C.sapp_consume_event()
}
fn C.sapp_frame_count() u64
pub fn frame_count() u64 {
    return C.sapp_frame_count()
}
fn C.sapp_frame_duration() f64
pub fn frame_duration() f64 {
    return C.sapp_frame_duration()
}
fn C.sapp_set_clipboard_string(&u8) 
pub fn set_clipboard_string(str string) {
    C.sapp_set_clipboard_string(vstring_to_cstring(str))
}
fn C.sapp_get_clipboard_string() &u8
pub fn get_clipboard_string() string {
    return unsafe { cstring_to_vstring(C.sapp_get_clipboard_string()) }
}
fn C.sapp_set_window_title(&u8) 
pub fn set_window_title(str string) {
    C.sapp_set_window_title(vstring_to_cstring(str))
}
fn C.sapp_set_icon(&IconDesc) 
pub fn set_icon(icon_desc &IconDesc) {
    C.sapp_set_icon(icon_desc)
}
fn C.sapp_get_num_dropped_files() int
pub fn get_num_dropped_files() int {
    return C.sapp_get_num_dropped_files()
}
fn C.sapp_get_dropped_file_path(int) &u8
pub fn get_dropped_file_path(index int) string {
    return unsafe { cstring_to_vstring(C.sapp_get_dropped_file_path(index)) }
}
fn C.sapp_run(&Desc) 
pub fn run(desc &Desc) {
    C.sapp_run(desc)
}
fn C.sapp_egl_get_display() voidptr
pub fn egl_get_display() voidptr {
    return C.sapp_egl_get_display()
}
fn C.sapp_egl_get_context() voidptr
pub fn egl_get_context() voidptr {
    return C.sapp_egl_get_context()
}
fn C.sapp_html5_ask_leave_site(bool) 
pub fn html5_ask_leave_site(ask bool) {
    C.sapp_html5_ask_leave_site(ask)
}
fn C.sapp_html5_get_dropped_file_size(int) u32
pub fn html5_get_dropped_file_size(index int) u32 {
    return C.sapp_html5_get_dropped_file_size(index)
}
fn C.sapp_html5_fetch_dropped_file(&Html5FetchRequest) 
pub fn html5_fetch_dropped_file(request &Html5FetchRequest) {
    C.sapp_html5_fetch_dropped_file(request)
}
fn C.sapp_metal_get_device() voidptr
pub fn metal_get_device() voidptr {
    return C.sapp_metal_get_device()
}
fn C.sapp_metal_get_current_drawable() voidptr
pub fn metal_get_current_drawable() voidptr {
    return C.sapp_metal_get_current_drawable()
}
fn C.sapp_metal_get_depth_stencil_texture() voidptr
pub fn metal_get_depth_stencil_texture() voidptr {
    return C.sapp_metal_get_depth_stencil_texture()
}
fn C.sapp_metal_get_msaa_color_texture() voidptr
pub fn metal_get_msaa_color_texture() voidptr {
    return C.sapp_metal_get_msaa_color_texture()
}
fn C.sapp_macos_get_window() voidptr
pub fn macos_get_window() voidptr {
    return C.sapp_macos_get_window()
}
fn C.sapp_ios_get_window() voidptr
pub fn ios_get_window() voidptr {
    return C.sapp_ios_get_window()
}
fn C.sapp_d3d11_get_device() voidptr
pub fn d3d11_get_device() voidptr {
    return C.sapp_d3d11_get_device()
}
fn C.sapp_d3d11_get_device_context() voidptr
pub fn d3d11_get_device_context() voidptr {
    return C.sapp_d3d11_get_device_context()
}
fn C.sapp_d3d11_get_swap_chain() voidptr
pub fn d3d11_get_swap_chain() voidptr {
    return C.sapp_d3d11_get_swap_chain()
}
fn C.sapp_d3d11_get_render_view() voidptr
pub fn d3d11_get_render_view() voidptr {
    return C.sapp_d3d11_get_render_view()
}
fn C.sapp_d3d11_get_resolve_view() voidptr
pub fn d3d11_get_resolve_view() voidptr {
    return C.sapp_d3d11_get_resolve_view()
}
fn C.sapp_d3d11_get_depth_stencil_view() voidptr
pub fn d3d11_get_depth_stencil_view() voidptr {
    return C.sapp_d3d11_get_depth_stencil_view()
}
fn C.sapp_win32_get_hwnd() voidptr
pub fn win32_get_hwnd() voidptr {
    return C.sapp_win32_get_hwnd()
}
fn C.sapp_wgpu_get_device() voidptr
pub fn wgpu_get_device() voidptr {
    return C.sapp_wgpu_get_device()
}
fn C.sapp_wgpu_get_render_view() voidptr
pub fn wgpu_get_render_view() voidptr {
    return C.sapp_wgpu_get_render_view()
}
fn C.sapp_wgpu_get_resolve_view() voidptr
pub fn wgpu_get_resolve_view() voidptr {
    return C.sapp_wgpu_get_resolve_view()
}
fn C.sapp_wgpu_get_depth_stencil_view() voidptr
pub fn wgpu_get_depth_stencil_view() voidptr {
    return C.sapp_wgpu_get_depth_stencil_view()
}
fn C.sapp_gl_get_framebuffer() u32
pub fn gl_get_framebuffer() u32 {
    return C.sapp_gl_get_framebuffer()
}
fn C.sapp_gl_get_major_version() int
pub fn gl_get_major_version() int {
    return C.sapp_gl_get_major_version()
}
fn C.sapp_gl_get_minor_version() int
pub fn gl_get_minor_version() int {
    return C.sapp_gl_get_minor_version()
}
fn C.sapp_android_get_native_activity() voidptr
pub fn android_get_native_activity() voidptr {
    return C.sapp_android_get_native_activity()
}
