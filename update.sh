#!/bin/bash

echo "Updating Sources"
mkdir -p ~/CM10.2
cd ~/CM10.2
repo sync -j4
echo "Done"
echo ""
echo ""
echo "Updating local Manifest"
cd ~/Downloads
wget "https://github.com/doadin/Cyanogenmod-local_manifests/archive/cm-10.2.zip"
unzip Cyanogenmod-local_manifests-cm-10.2.zip -d ~/CM10.2/.repo/
rm Cyanogenmod-local_manifests-cm-10.2.zip
echo ""
echo ""
echo "Re-Syncing for Local Manifest Changes"
repo sync
echo ""
echo ""
echo "Done"


