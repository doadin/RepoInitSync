#!/bin/bash

echo "Updating Sources"
mkdir -p ~/CM10.1
cd ~/CM10.1
repo sync -j4
echo "Done"
echo ""
echo ""
echo "Updating local Manifest"
cd ~/Downloads
wget "https://github.com/doadin/Cyanogenmod-local_manifests/archive/cm-10.1.zip"
unzip Cyanogenmod-local_manifests-cm-10.1.zip -d ~/CM10.1/.repo/
rm Cyanogenmod-local_manifests-cm-10.1.zip
echo ""
echo ""
echo "Re-Syncing for Local Manifest Changes"
repo sync
echo ""
echo ""
echo "Done"


