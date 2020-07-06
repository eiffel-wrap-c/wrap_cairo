#!/bin/sh
# Post processing script

# copy c file is there any
# cp ./manual_wrapper/c/src/*.c  ./generated_wrapper/c/src           --example
# cp ./manual_wrapper/c/include/*.h  ./generated_wrapper/c/include		


#copy Makefile
cp Makefile.SH  ./generated_wrapper/c/src                          


cd generated_wrapper/eiffel
rm cairo_path_struct_api.e
rm cairo_path_data_t_union_api.e
cd ..
cd ..


cd generated_wrapper/c/src/
finish_freezing -library
