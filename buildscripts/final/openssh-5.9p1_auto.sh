#!/bin/sh
#
# base buildscript for auto
#

. "$BUILDSCRIPTS_DIR/base_auto.sh"

configure_options="\
$configure_options
--prefix=/usr

--sysconfdir=/etc/ssh

--with-ssl-dir=/usr/local/ssl
"
