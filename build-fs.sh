#!/bin/sh
set -e
defconfig="$1"
model="$2"

cd /root/pc-x86-64-buildroot/
### Configure Buildroot
make ${defconfig}
/root/configBuildrootMain.sh

### Configure Kernel
cat /root/kernel-fragment.config >> board/pc/linux-extras.config

# Compile
make clean && make

# Copy filesystem
cp -r /root/pc-x86-64-buildroot/output/target /root/target-${model}
cd /root/target-${model}

rm THIS_IS_NOT_YOUR_ROOT_FILESYSTEM  # unnecessary warning text file

# Prepare per-model directory with kernel and dtb
mkdir /root/target-${model}/${model}
touch /root/target-${model}/${model}/no-dtb
cp /root/pc-x86-64-buildroot/output/images/bzImage ${model}/kernel

# Customize init scripts 
cp /root/S90walt-notify etc/init.d
cp /root/S45connman etc/init.d

