#!/bin/sh

TOOLSDIR=/home/pfsense/tools/builder_scripts/

# Source pfsense_local.sh variables if possible
if [ -f ./pfsense_local.sh ]; then
	. ./pfsense_local.sh
fi

cp pfsense_local.sh    $TOOLSDIR
cp pfsense-build.conf  $TOOLSDIR

mkdir -p $SRCDIR

cd $TOOLSDIR
./clean_build.sh
./apply_kernel_patches.sh
./build_freebsdisoonly.sh
