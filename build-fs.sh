#!/bin/sh
defconfig="$1"
model="$2"

cd /root/pc-x86-64-buildroot/
### Configure Buildroot
make ${defconfig}
#/root/configBuildrootMain.sh
# compile
make clean && make

# copy fs
cp -r /root/pc-x86-64-buildroot/output/target /root/target-${model}
cd /root/target-${model}

rm THIS_IS_NOT_YOUR_ROOT_FILESYSTEM  # unnecessary warning text file

# prepare per-model directory with kernel and dtb
mkdir /root/target-${model}/${model}
touch /root/target-${model}/${model}/no-dtb
cp /root/pc-x86-64-buildroot/output/images/bzImage ${model}/kernel

# add custom scripts and emulation binary
#cp /root/nfs_check etc/network
#cp /root/S90walt-notify etc/init.d

