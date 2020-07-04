@echo on
title post_process script

rem copy c file is there any
rem copy .\manual_wrapper\c\src\*.c  .\generated_wrapper\c\src -- example

rem copy Makefile script
copy Makefile-win.SH  .\generated_wrapper\c\src 

cd generated_wrapper/eiffel
del /f cairo_path_struct_api.e
del /f cairo_path_data_t_union_api.e
cd ..
cd ..


cd generated_wrapper/c/src/
finish_freezing -library
