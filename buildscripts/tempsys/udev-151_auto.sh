#!/bin/sh
#
# base buildscript for auto
#

. "$BUILDSCRIPTS_DIR/base_auto.sh"

configure_options="\
--host=x86_64-IndexLibrorumProhibitorum-linux
--build=i686-IndexLibrorumProhibitorum-linux

--prefix=/

--disable-extras
--disable-introspection
"
