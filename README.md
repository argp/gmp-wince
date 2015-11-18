# gmp-wince - a WinCE port of GMP

## Introduction

This is a collection of the files that I modified in order to get the
GNU Multiple Precision Arithmetic Library (GMP) version 3.1.1 to compile
for Windows CE.  Please note that this port has no dependencies on third
party software.  I have only tested it on a Compaq iPAQ H3630 (ARM) running
the Windows CE (3.00) Pocket PC 2002 operating system.  If you manage to
compile it and test it on other Windows CE platforms, let me know.

## Compilation and installation

To compile it just copy the files provided here to the distribution
directory of GMP 3.1.1 and overwrite the existing files there, then simply
enter the directory and type nmake.  If something goes wrong you may have to
tweak the Makefile a bit, go ahead it's easy.  There is no installation
required, just put gmp.h to your include path and gmp.lib to your library
path.  When you are using it in Embedded MSVC++ to compile new programs don't
forget to define _NTRG_WINCE_, include gmp.h and link against gmp.lib.

In the directory bin/ you can find a pre-compiled (ARM) version.

## Acknowledgements

Rainer Keuchel, for the great job he is doing on CELIB.  I have used one
of his Makefiles as a template.
