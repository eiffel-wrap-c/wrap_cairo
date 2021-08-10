# wrap_cairo
`wrap_cairo` is an Eiffel binding of [Cairo C API](https://gitlab.freedesktop.org/cairo/cairo) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

Cairo is a 2D graphics library with support for multiple output devices. Currently supported output targets include the X Window
System (via both Xlib and XCB), quartz, win32, and image buffers, as well as PDF, PostScript, and SVG file output. Experimental backends
include OpenGL, BeOS, OS/2, and DirectFB.

## Requirements 

*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [Cairo C API](https://gitlab.freedesktop.org/cairo/cairo)


## Download and  Install


### Linux

	sudo apt-get update
	sudo apt-get install libcairo2-dev
	
	
### Windows
	
	vcpkg install cairo:x64-windows

## Status

Work in progress


## Examples
[Cairo tutorial](./examples/tutorial/tutorial.md) derived from Michael Urman's [cairo tutorial for python programmers](http://www.tortall.net/mu/wiki/CairoTutorial)


### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	library/generated_wrapper/c/src

and run

	finish_freezing --library

It will copy the C lib `eif_cairo.a` to `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`  or `eif_cairo.lib`  to `$ECF_CONFIG_PATH/C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib` 






