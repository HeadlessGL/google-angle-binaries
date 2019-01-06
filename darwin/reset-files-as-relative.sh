#!/usr/bin/env bash


# reset bootstrap
cd angle
rm scripts/bootstrap.py.bak
git checkout scripts/bootstrap.py
cd ../

# reset DEPS
cd angle
rm DEPS.bak
git checkout DEPS
cd ../

# prep gclient
cd depot_tools
rm download_from_google_storage.py.bak
git checkout download_from_google_storage.py
cd ../
