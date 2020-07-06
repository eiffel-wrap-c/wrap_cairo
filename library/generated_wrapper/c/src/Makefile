SHELL = /bin/sh
CC= gcc
AR = ar rc
CFLAGS = -O3 -pipe -fPIC -D_GNU_SOURCE -m64  -I/home/eiffel/Eiffel_20.05/studio/spec/linux-x86-64/include -I../../../generated_wrapper/c/include -I../include -I/usr/local/include -I/usr/include/cairo -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/pixman-1 -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16 -I../../../C/include -I../../../manual_wrapper/c/include
LDFLAGS = -m elf_x86_64
LIBS = -lm
MAKE = make
MKDEP = \$(EIFFEL_SRC)/C/mkdep $(DPFLAGS) --
MV = /bin/mv
RANLIB = :
RM = /bin/rm -f
PLATFORM = linux-x86-64

.c.o:
	$(CC) $(CFLAGS) -c $<

OBJECTS = ewg_cairo_callback_c_glue_code.o

eif_cairo.a: $(OBJECTS)
	mkdir -p ../../../C/spec/$(PLATFORM)/lib
	$(RM) $@
	$(AR) $@ $(OBJECTS)
	$(MV) $@ ../../../C/spec/$(PLATFORM)/lib
	$(RANLIB) ../../../C/spec/$(PLATFORM)/lib/$@
	$(MAKE) clean

	#$(RM) eif_cairo.a $(OBJECTS) Makefile config.sh
clean:
	$(RM) eif_cairo.a $(OBJECTS)
