case $CONFIG in
'')
    if test ! -f config.sh; then
        (echo "Can't find config.sh."; exit 1)
    fi 2>/dev/null
    . ./config.sh
    ;;
esac
case "$O" in
*/*) cd `expr X$0 : 'X\(.*\)/'` ;;
esac
echo "Extracting "."/Makefile (with variable substitutions)"
$spitshell >Makefile <<!GROK!THIS!
SHELL = /bin/sh
CC= $cc
AR = ar rc
CFLAGS =/IC:\home\projects\dev\WrapC_dev\wrap_cairo\library\C\include $optimize $ccflags $large -I$rt_include -I../../../generated_wrapper/c/include -I../include `pkg-config --cflags cairo` -I C:\home\projects\dev\WrapC_dev\wrap_cairo\library\manual_wrapper\c\include  
LDFLAGS = $ldflags
LIBS = $libs
MAKE = $make
MKDEP = $mkdep \$(DPFLAGS) --
MV = $mv
RANLIB = $ranlib
RM = $rm -f
PLATFORM = $ISE_PLATFORM

!GROK!THIS!
$spitshell >>Makefile <<'!NO!SUBS!'
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
!NO!SUBS!
chmod 644 Makefile
$eunicefix Makefile