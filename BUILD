
BUILDING THE CGL LIBRARY
========================

1) run ./Setup
	- This will build a directory for your OS type, machine
	  architecture and C compiler under obj. For example, 
	  obj/linux-i586-gcc.
	- On commercial Unixes, Setup will preferentially select
	  "cc" if it can be found. To override this, use Setup
	  with the desired system type as an argument:
		./Setup solaris-sparc-gcc
2) cd into the created object directory
3) if necessary, edit the Makefile. The only path is the install
   path for the testcgl program. You can always copy that by
   hand into your cgi-bin directory in any case.
4) type "make"


To use the library, copy libcgl.a and cgl.h to your local places for
libraries and include files (perhaps /usr/local/lib, and
/usr/local/include), or use the -I and -L flags with your C compiler to
reference them where they are, or copy them to the directory of the
program you are compiling.

