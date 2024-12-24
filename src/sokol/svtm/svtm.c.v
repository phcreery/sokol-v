// machine generated, do not edit

module svtm

// helper functions
// helper function to convert a C string to a Zig string slice
fn vstring_to_cstring(v_str string) &u8 {
    return v_str.str
}
fn C.stm_setup() 
pub fn setup() {
    C.stm_setup()
}
fn C.stm_now() u64
pub fn now() u64 {
    return C.stm_now()
}
fn C.stm_diff(u64, u64) u64
pub fn diff(new_ticks u64, old_ticks u64) u64 {
    return C.stm_diff(new_ticks, old_ticks)
}
fn C.stm_since(u64) u64
pub fn since(start_ticks u64) u64 {
    return C.stm_since(start_ticks)
}
fn C.stm_laptime(&u64) u64
pub fn laptime(last_time &u64) u64 {
    return C.stm_laptime(last_time)
}
fn C.stm_round_to_common_refresh_rate(u64) u64
pub fn round_to_common_refresh_rate(frame_ticks u64) u64 {
    return C.stm_round_to_common_refresh_rate(frame_ticks)
}
fn C.stm_sec(u64) f64
pub fn sec(ticks u64) f64 {
    return C.stm_sec(ticks)
}
fn C.stm_ms(u64) f64
pub fn ms(ticks u64) f64 {
    return C.stm_ms(ticks)
}
fn C.stm_us(u64) f64
pub fn us(ticks u64) f64 {
    return C.stm_us(ticks)
}
fn C.stm_ns(u64) f64
pub fn ns(ticks u64) f64 {
    return C.stm_ns(ticks)
}
