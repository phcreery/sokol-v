import decl as _
import svapp as sapp
import svg as gfx
import svgl as sgl
import svglue as sglue

// import sokol_v.src.sokol as _
// import sokol_v.svapp as sapp
// import sokol_v.svg as gfx
// import sokol_v.svgl as sgl
// import sokol_v.svglue as sglue
//
struct AppState {
	pass_action gfx.PassAction
}

fn main() {
	mut color_action := gfx.ColorAttachmentAction{
		load_action: gfx.LoadAction.clear
		clear_value: gfx.Color{
			r: 0.1
			g: 0.1
			b: 0.1
			a: 1
		}
	}

	mut pass_action := gfx.PassAction{}
	pass_action.colors[0] = color_action

	state := &AppState{
		pass_action: pass_action
	}
	title := 'Sokol Drawing Template'
	desc := sapp.Desc{
		width:             640
		height:            480
		user_data:         state
		init_userdata_cb:  init
		frame_userdata_cb: frame
		window_title:      title.str
	}

	sapp.run(&desc)
}

fn init(user_data voidptr) {
	desc := gfx.Desc{
		environment:     sglue.environment()
		image_pool_size: 1000
	}
	gfx.setup(&desc)
	sgl_desc := sgl.Desc{}
	sgl.setup(&sgl_desc)
}

fn frame(state &AppState) {
	// println('frame')
	draw()
	pass := gfx.Pass{
		action:    state.pass_action
		swapchain: sglue.swapchain()
	}
	gfx.begin_pass(&pass)
	sgl.draw()
	gfx.end_pass()
	gfx.commit()
}

fn draw() {
	// first, reset and setup ortho projection
	sgl.defaults()
	sgl.matrix_mode_projection()
	sgl.ortho(0.0, f32(sapp.width()), f32(sapp.height()), 0.0, -1.0, 1.0)
	sgl.c4b(255, 0, 0, 128)
	draw_hollow_rect(220, 140, 200, 200)
	sgl.c4b(25, 150, 255, 128)
	draw_filled_rect(270, 190, 100, 100)

	// line(0, 0, 500, 500)
}

fn draw_hollow_rect(x f32, y f32, w f32, h f32) {
	sgl.begin_line_strip()
	sgl.v2f(x, y)
	sgl.v2f(x + w, y)
	sgl.v2f(x + w, y + h)
	sgl.v2f(x, y + h)
	sgl.v2f(x, y)
	sgl.end()
}

fn draw_filled_rect(x f32, y f32, w f32, h f32) {
	sgl.begin_quads()
	sgl.v2f(x, y)
	sgl.v2f(x + w, y)
	sgl.v2f(x + w, y + h)
	sgl.v2f(x, y + h)
	sgl.end()
}
