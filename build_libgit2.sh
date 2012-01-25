#!/bin/sh

# build_libgit2.sh
# GitX
#
# Created by BrotherBard on 7/3/10.
# Copyright 2010 BrotherBard. All rights reserved.
# 
# based on: http://log.yeahrightkeller.com/post/270155578/run-script-while-cleaning-in-xcode

buildAction () {
	echo "Building libgit2..."
	cd libgit2
	rm -f libgit2.a
	make CFLAGS="-arch i386 -arch x86_64"
	ranlib libgit2.a
}

cleanAction () {
	echo "Cleaning libgit2..."
	cd libgit2
	make clean
}

case $ACTION in
	# NOTE: it gets set to "" rather than "build" when doing a build.
	"")
		buildAction
		;;
	"clean")
		cleanAction
		;;
esac

exit 0
