Name{number}
	build - AdvanceMAME Build Notes

	This file contains the instructions to build AdvanceMAME,
	AdvanceMESS and AdvanceMENU from the source archives.

SubIndex

Configuring
  Linux/Mac OS X/Generic Unix
	Run the `./configure' script.

	Generally no extra option is required. You can get the complete
	option list with the `./configure --help' command.

	The default installation prefix is /usr/local. You can change it
	with the `--prefix=' option.

	The default host configuration directory is /usr/local/etc. You can
	change it with the `--sysconfdir=' option. Please note that instead
	of /usr/etc is always used /etc.

	The configure script automatically detects all the available
	libraries and the optimization flags. You can use the
	--with-sdl-prefix option to search for the SDL library in a
	specific location.

	If you want to customize the compilation CFLAGS and LDFLAGS you
	can put them on the ./configure command line.

	For example for high optimization on Pentium4:

		:./configure CFLAGS="-O3 -march=pentium4 -fomit-frame-pointer" \
		:	LDFLAGS="-s"

	If you have the "Intel C Compiler 8" you can try with the
	command:

		:./configure CC=icc CFLAGS="-I/usr/local/include -O3 -march=pentium4" \
		:	LDFLAGS="-lsvml"

	If you want to use the included version of the zlib and expat
	libraries instead of the system version you must specify
	the --disable-zlib and --disable-expat options.

  DOS/Windows
	In DOS/Windows you need to manually copy the `Makefile.usr'
	file as `Makefile' and edit the first section to match your
	requirements.

	Read the file comments for major details.

Compiling
	To compile run `make'.

Installing
  Linux/Mac OS X/Generic Unix
	Run `make install' to install the binaries and the documentation.

	The binaries are installed in $prefix/bin, the program data
	files in $prefix/share/advance, the documentation in
	$prefix/share/doc/advance, and the man pages in $prefix/man/man1.

	The default installation $prefix is /usr/local.

	In Mac OS X please check that the directory $prefix/bin is in the
	search PATH. Generally /usr/local/bin isn't.

  DOS/Windows
	Copy manually the compiled executables in a directory of your
	choice.

Requirements
	To compile AdvanceMAME you need at least 128 Mbyte of memory,
	256 Mbyte are suggested.

  Linux
	To build in Linux you need the following software:
		:Linux 2.4.0 (or newer)
		:GNU gcc C/C++ 3.2.3 or 3.3.4 (or newer)
		:GNU make 3.79.1 (or newer)

	The following software is also used if present:
		:NASM 0.98.33 (or newer)
		:SVGALIB 1.9.14 (or newer)
		:SDL 1.2.4 (or newer)
		:S-Lang 1.4.3 (or newer)
		:ncurses 5.4 (or newer)
		:FreeType 2.1.7 (or newer)
		:zlib 1.1.4 (or newer)
		:expat 1.95.6 (or newer)

	The SVGALIB 1.4.x versions are NOT supported. Download the latest
	ALPHA 1.9.x or 2.0.x version from http://www.svgalib.org/.
	In the contrib/svgalib directory there are some source patches to
	fix some problems of the library.
	Remember to edit the /etc/vga/libvga.conf file with your settings.
	Specifically you need at least to set correctly `HorizSync' and
	`VertRefresh'.

	If your distribution doesn't contain the S-Lang library you
	can download it from http://www.s-lang.org/.

  Mac OS X
	To build in Mac OS X and other Unix you need the following
	software:
		:GNU gcc C/C++ 3.2.3 (or newer)
		:GNU make 3.79.1 (or newer)
		:SDL 1.2.4 (or newer)

	The following software is also used if present:
		:FreeType 2.1.7 (or newer)
		:zlib 1.1.4 (or newer)
		:expat 1.95.6 (or newer)

	The gcc compiler and make program are included in the Apple
	Development Kit which must be installed manually from the
	original Mac OS X cd.

	The SDL library must be manually compiled and installed.

	Please note that you may need to use the --with-sdl-prefix option
	of the ./configure script to correctly find the installed SDL
	library. Generally "./configure --with-sdl-prefix=/usr/local" is
	enough.

  DOS
	To build in DOS you need the following software:
		:DJGPP development kit 2.03 (or never) [djdev*.zip]
		:DJGPP GNU gcc C/C++ 3.2.3 or 3.3.4 [gcc*b.zip gpp*b.zip]
		:DJGPP GNU make 3.79.1 (or newer) [mak*b.zip]
		:DJGPP GNU binutils [bnu*b.zip]
		:DJGPP GNU fileutils [fil*b.zip]
		:DJGPP GNU shellutils [shl*b.zip]
		:DJGPP GNU patch [pat*b.zip]
		:NASM 0.98.33 (or newer)
		:Allegro 4.0.0 (or newer)
		:SEAL 1.0.7 + MAME patch
		:FreeType 2.1.7 (or newer)

	The recommended gcc compiler versions are 3.2.3 and 3.3.4.
	The versions 3.0.x don't work. The version 3.4.x may have some
	problems related to the new "unit-at-a-time" compilation,
	don't use it, or disable this feature with the option
	-fnounit-at-a-time. Other versions should work.

	The patched SEAL library is available at http://www.mame.net/.

	Ensure to have the DOS version of NASM. If you have the Windows
	version named `nasmw.exe' you must rename it as `nasm.exe' or
	change the `Makefile.usr' to use it.

	If compiling you get the "Argument list too long" error,
	or "Error -1" you need to use the DJGPP stubedit utility
	to increase bufsize value for some DJGPP tools, with the
	following commands:

	:stubedit c:\djgpp\bin\gcc.exe bufsize=32k
	:stubedit c:\djgpp\bin\ld.exe bufsize=32k
	:stubedit c:\djgpp\bin\make.exe bufsize=32k
	:stubedit c:\djgpp\lib\gcc-lib\djgpp\3.23\collect2.exe bufsize=32k

	You may need to use different paths to the files,
	especially for collect2.exe.

  Windows
	To build in Windows you need the following software:
		:MINGW 1.1 (or newer)
		:MINGW GNU gcc C/C++ 3.2.3 (or never)
		:NASM 0.98.33 (or newer)
		:SDL 1.2.4 (or newer)
		:FreeType 2.1.7 (or newer)

	The only tested compiler version is 3.2.3. Other versions
	should work.

  Generic Unix
	To build in a generic Unix environment you need the following
	software:
		:GNU gcc C/C++ 3.2.3 (or newer)
		:GNU make 3.79.1 (or newer)
		:SDL 1.2.4 (or newer)

	The following software is also used if present:
		:zlib 1.1.4 (or newer)
		:expat 1.95.6 (or newer)

Debugging
	To debug the program the suggested configuration options
	are:

		:./configure --enable-debug --disable-svgalib \
		:	--disable-pthread

	The svgalib library is disabled because it interferes with
	the stack backtrace on the signal handler.

	The pthread library is disabled because it interferes with
	the debugger signals.

	The suggested environment is X Window using the SDL
	library. This allow to run the debugger and the programs
	on the same monitor and keyboard.

Copyright
	This file is Copyright (C) 2003, 2004 Andrea Mazzoleni.

