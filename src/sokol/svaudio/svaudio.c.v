// machine generated, do not edit

module svaudio

// helper functions
// helper function to convert a C string to a Zig string slice
fn vstring_to_cstring(v_str string) &u8 {
    return v_str.str
}
pub enum LogItem as u32 {
    ok
    malloc_failed
    alsa_snd_pcm_open_failed
    alsa_float_samples_not_supported
    alsa_requested_buffer_size_not_supported
    alsa_requested_channel_count_not_supported
    alsa_snd_pcm_hw_params_set_rate_near_failed
    alsa_snd_pcm_hw_params_failed
    alsa_pthread_create_failed
    wasapi_create_event_failed
    wasapi_create_device_enumerator_failed
    wasapi_get_default_audio_endpoint_failed
    wasapi_device_activate_failed
    wasapi_audio_client_initialize_failed
    wasapi_audio_client_get_buffer_size_failed
    wasapi_audio_client_get_service_failed
    wasapi_audio_client_set_event_handle_failed
    wasapi_create_thread_failed
    aaudio_streambuilder_open_stream_failed
    aaudio_pthread_create_failed
    aaudio_restarting_stream_after_error
    using_aaudio_backend
    aaudio_create_streambuilder_failed
    using_sles_backend
    sles_create_engine_failed
    sles_engine_get_engine_interface_failed
    sles_create_output_mix_failed
    sles_mixer_get_volume_interface_failed
    sles_engine_create_audio_player_failed
    sles_player_get_play_interface_failed
    sles_player_get_volume_interface_failed
    sles_player_get_bufferqueue_interface_failed
    coreaudio_new_output_failed
    coreaudio_allocate_buffer_failed
    coreaudio_start_failed
    backend_buffer_size_isnt_multiple_of_packet_size
}
pub struct Logger {
    func  fn (&u8, u32, u32, &u8, u32, &u8, voidptr) voidptr = unsafe { nil }
    user_data  voidptr
}
pub struct Allocator {
    alloc_fn  fn (usize, voidptr) voidptr = unsafe { nil }
    free_fn  fn (voidptr, voidptr) voidptr = unsafe { nil }
    user_data  voidptr
}
pub struct Desc {
    sample_rate int = 0
    num_channels int = 0
    buffer_frames int = 0
    packet_frames int = 0
    num_packets int = 0
    stream_cb  fn (&f32, int, int) voidptr = unsafe { nil }
    stream_userdata_cb  fn (&f32, int, int, voidptr) voidptr = unsafe { nil }
    user_data  voidptr
    allocator Allocator
    logger Logger
}
fn C.saudio_setup(&Desc) voidptr
pub fn setup(desc Desc) voidptr {
    return C.saudio_setup(&desc)
}
fn C.saudio_shutdown() voidptr
pub fn shutdown() voidptr {
    return C.saudio_shutdown()
}
fn C.saudio_isvalid() bool
pub fn isvalid() bool {
    return C.saudio_isvalid()
}
fn C.saudio_userdata() voidptr
pub fn userdata() voidptr {
    return C.saudio_userdata()
}
fn C.saudio_query_desc() Desc
pub fn query_desc() Desc {
    return C.saudio_query_desc()
}
fn C.saudio_sample_rate() int
pub fn sample_rate() int {
    return C.saudio_sample_rate()
}
fn C.saudio_buffer_frames() int
pub fn buffer_frames() int {
    return C.saudio_buffer_frames()
}
fn C.saudio_channels() int
pub fn channels() int {
    return C.saudio_channels()
}
fn C.saudio_suspended() bool
pub fn suspended() bool {
    return C.saudio_suspended()
}
fn C.saudio_expect() int
pub fn expect() int {
    return C.saudio_expect()
}
fn C.saudio_push(&f32, int) int
pub fn push(frames &f32, num_frames int) int {
    return C.saudio_push(frames, num_frames)
}
