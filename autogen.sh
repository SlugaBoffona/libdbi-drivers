#!/bin/sh
# autogen.sh - generates configure using the autotools
# $Id$
: ${LIBTOOLIZE=libtoolize}
: ${ACLOCAL=aclocal}
: ${AUTOHEADER=autoheader}
: ${AUTOMAKE=automake}
: ${AUTOCONF=autoconf}


${LIBTOOLIZE} --force --copy --install
${ACLOCAL} -I m4
${AUTOHEADER}
${AUTOMAKE} --add-missing --copy --force-missing

echo
echo "Using `${AUTOCONF} --version`, if you have problems"
echo "while building then set the environemnt variable AUTOCONF"
echo "to a different autoconf version and rerun $0"
echo
${AUTOCONF}

## autoconf 2.53 will not work, at least on FreeBSD. Change the following
## line appropriately to call autoconf 2.13 instead. This one works for
## FreeBSD 4.7:
#autoconf213

