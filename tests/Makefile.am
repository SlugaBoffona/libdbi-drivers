## Process this file with automake to produce Makefile.in

AUTOMAKE_OPTIONS = foreign

TESTS = test_dbi
check_PROGRAMS = test_dbi
test_dbi_SOURCES = test_dbi.c
test_dbi_LDFLAGS = 
test_dbi_LDADD = -L@libdir@ -lm -ldbi

INCLUDES = -I@includedir@
CFLAGS = -g -DDBI_DRIVER_DIR=\"@driverdir@\"
AM_CPPFLAGS=-DDBDIR=\"@dbi_dbdir@\"

debug:
	$(MAKE) all CFLAGS="@DEBUG@"

profile:
	$(MAKE) all CFLAGS="@PROFILE@"
