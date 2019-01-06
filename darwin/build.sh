#!/usr/bin/env bash
# installing gclient
# https://commondatastorage.googleapis.com/chrome-infra-docs/flat/depot_tools/docs/html/depot_tools_tutorial.html#_setting_up
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git

# installing gn
# Link from "You can download the latest version of GN binary for Linux, macOS and Windows."
# https://chrome-infra-packages.appspot.com/dl/gn/gn/mac-amd64/+/latest
wget https://chrome-infra-packages.appspot.com/dl/gn/gn/mac-amd64/+/latest -O gn-mac-amd64.zip
unzip gn-mac-amd64.zip

# installing angle
# https://chromium.googlesource.com/angle/angle/
git clone https://chromium.googlesource.com/angle/angle
sh ./rewrite-files-as-relative.sh
cd angle
python2 ./scripts/bootstrap.py
python2 ../depot_tools/gclient.py sync
git checkout master
rm -rf ./out

# update llvm-build
rm -rf third_party/llvm-build
python2 tools/clang/scripts/update.py

mkdir out
mkdir out/Release
mkdir out/Debug

echo 'target_cpu = "x64"
is_clang = true
is_debug = false

# Build arguments go here.
# See "gn args <out_dir> --list" for available build arguments.
' > out/Release/args.gn

echo 'target_cpu = "x64"
is_clang = true
is_debug = true

# Build arguments go here.
# See "gn args <out_dir> --list" for available build arguments.
' > out/Debug/args.gn

#../gn args out/Release
#ninja -C out/Release
../gn args out/Debug
ninja -C out/Debug

# installing latest headers
# https://github.com/KhronosGroup/EGL-Registry.git
#cd EGL-Registry/api

# edit genheaders.py, optional for more custom building
# change protectProtoStr   = 'EGL_EGLEXT_PROTOTYPES',
# to protectProtoStr   = 'EGL_EGL_PROTOTYPES',
#python3 genheaders.py -registry egl.xml EGL/egl.h

# reset files
# comment out for debugging
sh ./reset-files-as-relative.sh

## notify done
echo 'Google Angle OSX build script completed'
