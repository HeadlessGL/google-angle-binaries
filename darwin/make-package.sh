#!/usr/bin/env bash

echo 'writing release file angle-debug-darwin-x64.tar.gz'

rm -rf Release
rm angle-debug-darwin-x64.tar.gz

mkdir Release

cd Release
cp ../angle/out/Debug/libangle_deqp_libegl.dylib .
cp ../angle/out/Debug/libangle_deqp_libegl.dylib.TOC .
cp ../angle/out/Debug/libangle_deqp_libgles2.dylib .
cp ../angle/out/Debug/libangle_deqp_libgles2.dylib.TOC .
cp ../angle/out/Debug/libangle_deqp_libgles3.dylib .
cp ../angle/out/Debug/libangle_deqp_libgles3.dylib.TOC .
cp ../angle/out/Debug/libangle_deqp_libgles31.dylib .
cp ../angle/out/Debug/libangle_deqp_libgles31.dylib.TOC .
cp ../angle/out/Debug/libangle_util.dylib .
cp ../angle/out/Debug/libangle_util.dylib.TOC .
cp ../angle/out/Debug/libEGL.dylib .
cp ../angle/out/Debug/libEGL.dylib.TOC .
cp ../angle/out/Debug/libfeature_support.dylib .
cp ../angle/out/Debug/libfeature_support.dylib.TOC .
cp ../angle/out/Debug/libGLESv1_CM.dylib .
cp ../angle/out/Debug/libGLESv1_CM.dylib.TOC .
cp ../angle/out/Debug/libGLESv2.dylib .
cp ../angle/out/Debug/libGLESv2.dylib.TOC .

cd ../

tar -zcvf angle-debug-darwin-x64.tar.gz \
angle/include \
Release

echo 'wrote release file angle-debug-darwin-x64.tar.gz'
