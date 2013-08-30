#!/bin/bash

echo "Updating Sources"
mkdir -p ~/CM9
cd ~/CM9
repo sync -j4
echo "Done"
echo ""
echo ""
echo "Updating local Manifest"
cd ~/Downloads
wget "https://github.com/doadin/Cyanogenmod-local_manifests/archive/cm-9.zip"
unzip Cyanogenmod-local_manifests-cm-9.zip -d ~/CM9/.repo/
rm Cyanogenmod-local_manifests-cm-9.zip
echo ""
echo ""
echo "Re-Syncing for Local Manifest Changes"
repo sync
echo ""
echo ""
echo "Done"


