// machine generated, do not edit

module svlog

// helper functions
// helper function to convert a C string to a Zig string slice
fn vstring_to_cstring(v_str string) &u8 {
    return v_str.str
}
fn C.slog_func(&u8, u32, u32, &u8, u32, &u8, voidptr) voidptr
pub const func = slog_func
