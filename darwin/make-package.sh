#!/usr/bin/env bash

echo 'writing release file angle-debug-darwin-x64.tar.gz'

# make tar
rm angle-debug-darwin-x64.tar.gz
tar -zcvf angle-debug-darwin-x64.tar.gz \
angle/include \
angle/out/Debug/libangle_deqp_libegl.dylib \
angle/out/Debug/libangle_deqp_libegl.dylib.TOC \
angle/out/Debug/libangle_deqp_libgles2.dylib \
angle/out/Debug/libangle_deqp_libgles2.dylib.TOC \
angle/out/Debug/libangle_deqp_libgles3.dylib \
angle/out/Debug/libangle_deqp_libgles3.dylib.TOC \
angle/out/Debug/libangle_deqp_libgles31.dylib \
angle/out/Debug/libangle_deqp_libgles31.dylib.TOC \
angle/out/Debug/libangle_util.dylib \
angle/out/Debug/libangle_util.dylib.TOC \
angle/out/Debug/libEGL.dylib \
angle/out/Debug/libEGL.dylib.TOC \
angle/out/Debug/libfeature_support.dylib \
angle/out/Debug/libfeature_support.dylib.TOC \
angle/out/Debug/libGLESv1_CM.dylib \
angle/out/Debug/libGLESv1_CM.dylib.TOC \
angle/out/Debug/libGLESv2.dylib \
angle/out/Debug/libGLESv2.dylib.TOC

echo 'wrote release file angle-debug-darwin-x64.tar.gz'
