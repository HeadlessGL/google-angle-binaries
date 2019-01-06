#!/usr/bin/env bash


# prep bootstrap
cd angle
rm scripts/bootstrap.py.bak
git checkout scripts/bootstrap.py
cd ../
sed -i.bak "s|'gclient|'\.\.\/depot_tools\/gclient\.py|g" ./angle/scripts/bootstrap.py

# prep DEPS
cd angle
rm DEPS.bak
git checkout DEPS
cd ../
sed -i.bak "s|download_from_google_storage|\.\.\/depot_tools\/download_from_google_storage\.py|g" ./angle/DEPS

# prep gclient
cd depot_tools
rm download_from_google_storage.py.bak
git checkout download_from_google_storage.py
cd ../
sed -i.bak "s/'vpython'/'python2'/g" ./depot_tools/download_from_google_storage.py
