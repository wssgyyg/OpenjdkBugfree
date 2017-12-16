#!/bin/sh
export LANG=C
export ALT_BOOTDIR=/usr/java/jdk1.6.0_45
export ALLOW_DOWNLOADS=true
export USE_PRECOMPILED_HEADER=true

export BUILD_LANGTOOLS=true
export BUILD_HOTSPOT=true
export BUILD_JDK=true
BUILD_DEPLOY=false
BUILD_INSTALL=false

export ALT_OUTPUTDIR=/home/bruce/Documents/openjdk/build
unset JAVA_HOME
unset CLASSPATH

#make 2>&1 | tee $ALT_OUTPUTDIR/build.log

