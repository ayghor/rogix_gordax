#!/bin/sh
#
# base buildscript for auto
#

. "$BUILDSCRIPTS_DIR/base_auto.sh"

configure_options="\
$configure_options
--prefix=/usr

--x-include=/usr/X11R7/include
--x-libraries=/usr/X11R7/lib64

--with-x
--with-pthreads
--with-distribution-id=IndexLibrorumProhibitorum

--enable-default-toolkit=cairo-gtk2
--enable-official-branding
--enable-strip
--enable-faststart
--enable-optimize=-O3

--disable-accessibility
--disable-installer
--disable-updater
--disable-parental-controls
--disable-debug
--disable-dbus
--disable-libnotify
--disable-necko-wifi
--disable-crashreporter
"

export CFLAGS="-pipe -fomit-frame-pointer -march=native -I/usr/X11R7/include -I/usr/local/ssl/include"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="-L/usr/X11R7/lib64 -L/usr/local/ssl/lib64"

make="make -j4"
srcdir="comm-release"
#objdir="$srcdir"
