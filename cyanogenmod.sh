#!/bin/bash

mkdir -p ~/android/cyanogenmod
cd ~/android/cyanogenmod
repo init -u git://github.com/CyanogenMod/android.git -b cm-10.1
repo sync -j4
echo "****************************************************************"
echo "  please visit http://wiki.cyanogenmod.org/w/Devices#vendor=;  *"
echo "        to learn how to build for a specific device            *"
echo "****************************************************************"
