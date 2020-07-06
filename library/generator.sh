#!/bin/sh
#Script to automate WrapC development process.


wrap_c --verbose  --c_compile_options=`pkg-config --cflags cairo` --script_pre_process=pre_script.sh --script_post_process=post_script.sh  --output-dir=./generated_wrapper --full-header=./manual_wrapper/c/include/eif_cairo.h --config=config.xml

