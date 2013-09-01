#!/bin/sh

# Set up kernel build environment
export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE=../toolchain/linaro-gcc/arm-cortex_a8-linux-gnueabi-linaro_4.7.4-2013.06/bin/arm-gnueabi-

# Clean the previous build and start rebuild later
echo ""
make "clean"


# Make defconfig
echo ""
echo "------------------------------"
make "skull_defconfig"

# Build kernel

IMAGE_DIR=../kernel_output/make/zImage
MODULE_DIR=../kernel_output/make/ramdisk/lib/modules/
RAMDISK_DIR=../kernel_output/make/ramdisk/

make
echo
rm .version
cp arch/arm/boot/zImage $IMAGE_DIR
find . -name "*.ko" -exec cp {} $MODULE_DIR \;
cd $RAMDISK_DIR
find . \( ! -regex '.*/\..*' \) | cpio -o -H newc | gzip > ../newramdisk.cpio.gz
cd ..

# Compile kernel
mkbootimg --kernel zImage --ramdisk newramdisk.cpio.gz --base 0x00400000 --pagesize 4096 --cmdline 'no_console_suspend=1 console=null' -o boot.img

cp boot.img ../test/boot.img


