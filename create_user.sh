#!/bin/sh

BUILD_UID=${BUILD_UID:-1000}

/usr/sbin/useradd -u $BUILD_UID -r build
