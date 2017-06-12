#!/bin/bash

# Include GRUB2
sed -i -e 's/^.*\n#\n# iso image needs a Linux kernel and one of grub, grub2 or isolinux to be built\n#.*$/# BR2_TARGET_ROOTFS_ISO9660 is not set/g' .config
sed -i -e 's/^.*# BR2_TARGET_GRUB2 is not set.*$/BR2_TARGET_GRUB2_X86_64_EFI=y\nBR2_TARGET_GRUB2_BUILTIN_MODULES="boot linux ext2 fat squash4 part_msdos part_gpt normal efi_gop"\nBR2_TARGET_GRUB2_BUILTIN_CONFIG=""/g' .config

# Substitute unchosen dropbear package and its dependencies
sed -i -e 's/^.*# BR2_PACKAGE_DROPBEAR is not set.*$/BR2_PACKAGE_DROPBEAR=y\nBR2_PACKAGE_DROPBEAR_CLIENT=y\n# BR2_PACKAGE_DROPBEAR_DISABLE_REVERSEDNS is not set\nBR2_PACKAGE_DROPBEAR_SMALL=y\n# BR2_PACKAGE_DROPBEAR_WTMP is not set\n# BR2_PACKAGE_DROPBEAR_LASTLOG is not set/g' .config
sed -i -e 's/^.*# BR2_PACKAGE_ATFTP is not set.*$/# BR2_PACKAGE_ATFTP is not set\n# BR2_PACKAGE_AUTOSSH is not set/g' .config
sed -i -e 's/^.*BR2_PACKAGE_ZLIB.*$/BR2_PACKAGE_ZLIB=y/g' .config

