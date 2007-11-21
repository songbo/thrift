#!/bin/sh

./cleanup.sh
autoscan
aclocal -I ../../lib/cpp/aclocal
if libtoolize --version 1 >/dev/null 2>/dev/null; then
  libtoolize --automake
elif glibtoolize --version 1 >/dev/null 2>/dev/null; then
  glibtoolize --automake
fi
touch NEWS README AUTHORS ChangeLog
autoconf
automake -ac
