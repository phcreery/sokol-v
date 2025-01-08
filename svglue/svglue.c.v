// machine generated, do not edit

module svglue

import svg as sg

// helper functions
// helper function to convert a C string to a vlang string slice
fn vstring_to_cstring(v_str string) &u8 {
    return v_str.str
}
fn C.sglue_environment() sg.Environment
pub fn environment() sg.Environment {
    return C.sglue_environment()
}
fn C.sglue_swapchain() sg.Swapchain
pub fn swapchain() sg.Swapchain {
    return C.sglue_swapchain()
}
