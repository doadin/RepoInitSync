#!/bin/bash
# Setting up Android Build Enviroment

echo "**************************************************************************"
echo "*   This is a simple script that will setup an Android build environment *"
echo "*   What this script will do is:                                         *"
echo "*      -Install oracle java6 & purge openjdk                             *"
echo "*      -Setup adb and fastboot                                           *"
echo "*      -install packages needed to build                                 *"
echo "*      -sync Android source                                              *"
echo "*   this has only been tested on Ubuntu 13.04                            *"
echo "**************************************************************************"
read -p "press [Enter] to setup Android build environment..."
echo "**************************************************************************"
echo "*           Is this your first time setting up or just syncing?:         *"
echo "*                                                                        *"               
echo "*        1) First                                                        *"
echo "*        2) Just syncing                                                 *"
echo "*                                                                        *"
echo "**************************************************************************"
read -p "choose what source you want to sync:"
[ "$REPLY" == "1" ] && ./first.sh
[ "$REPLY" == "2" ] && ./update.sh
echo ""
echo ""





