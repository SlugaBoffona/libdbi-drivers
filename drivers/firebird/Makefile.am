## Process this with automake to create Makefile.in

AUTOMAKE_OPTIONS = foreign

if HAVE_FIREBIRD_INTERBASE

firebird_ltlibs = libfirebird.la
firebird_ldflags = -module -avoid-version
firebird_sources = dbd_firebird.c

else

firebird_ltlibs =
firebird_ldflags =
firebird_sources =

endif

INCLUDES = -I$(top_srcdir) -I$(top_srcdir)/include @DBI_INCLUDE@ @FIREBIRD_INCLUDE@

libdir = $(driverdir)
lib_LTLIBRARIES = $(firebird_ltlibs)
libfirebird_la_LDFLAGS = $(firebird_ldflags) @FIREBIRD_LDFLAGS@ @FIREBIRD_LIBS@
libfirebird_la_SOURCES = $(firebird_sources)
libfirebird_la_DEPENDENCIES = dbd_firebird.h

EXTRA_DIST = dbd_firebird.c dbd_firebird.h 