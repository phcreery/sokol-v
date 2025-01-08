module decl

#flag -I @VMODROOT/src/sokol/c

$if emscripten ? {
	#flag -DSOKOL_GLES3
	#flag -DSOKOL_NO_ENTRY
	#flag -lGL -ldl
	#flag -s MIN_WEBGL_VERSION=2
	#flag -s MAX_WEBGL_VERSION=2
	#flag -s ERROR_ON_UNDEFINED_SYMBOLS=0
	#flag -s ASSERTIONS=1
	#flag -s MODULARIZE
}
$if windows {
	#flag -DSOKOL_NO_ENTRY
	#flag -DSOKOL_WIN32_FORCE_MAIN
	$if !msvc {
		#flag -lgdi32
		#flag -luser32
		#flag -lshell32
		#flag -lkernel32
	}

	// GL or D3D11
	// use -d d3d11 or default to GL
	$if d3d11 ? {
		#flag -DSOKOL_D3D11
		$if !msvc {
			#flag -ld3d11 -ldxgi
		}
	} $else {
		#flag -DSOKOL_GLCORE
		#flag -lopengl32
	}
}

// darwin / macos
$if macos {
	#flag -DSOKOL_NO_ENTRY
	#flag -x -fobjc-arc
	#flag -x objective-c
	#flag -framework Cocoa -framework QuartzCore

	// GL or Metal
	$if darwin_sokol_glcore33 {
		#flag -DSOKOL_GLCORE
		#flag -framework OpenGL
	} $else {
		#flag -DSOKOL_METAL
		#flag -framework Metal -framework MetalKit
	}
}
$if linux {
	#flag -DSOKOL_NO_ENTRY
	#flag -DSOKOL_GLCORE
	#flag -lX11 -lXi -lXcursor -lGL -lm -ldl -lpthread
}

// for simplicity, all header includes are here
// because import order matters and we don't have
// any way to ensure import order with V yet
#define SOKOL_IMPL

// To allow for thirdparty initializing window / acceleration contexts
// but still be able to use sokol.gfx e.g. SDL+sokol_gfx
$if !no_sokol_app ? {
	#include "sokol_app.h"
}

#define SOKOL_IMPL
#define SOKOL_NO_DEPRECATED
#include "sokol_gfx.h"

#define SOKOL_GL_IMPL
#include "sokol_gl.h"

#define SOKOL_GLUE_IMPL
#include "sokol_glue.h"

// #include "sokol_v.post.h"

// see https://github.com/floooh/sokol-nim/blob/master/src/sokol/app.nim for inspiration
