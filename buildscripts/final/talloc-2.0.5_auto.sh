#!/bin/sh
#
# base buildscript for auto
#

. "$BUILDSCRIPTS_DIR/base_auto.sh"

configure_options="\
$configure_options
--prefix=/usr
--libdir=/usr/lib$qual
"

objdir="$srcdir"
