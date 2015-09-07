#!/bin/bash
export CB_BOARD=cubieboard5
export CB_KCONFIG=${CB_BOARD}_defconfig
export CB_FLASH_TSD_ROOTFS_SIZE=25
export CB_ROOTFS_IMAGE=${CB_ROOTFS_DIR}/linaro-desktop-trusty-14.04-v1.1.tar.gz
export CB_ROOTFS_SIZE=1600
export CB_FLASH_ROOTFS_IMAGE=${CB_ROOTFS_DIR}/card_flash_rootfs.tar.gz
export CB_U_BOOT_SPL_BIN=${CB_PACKAGES_DIR}/bin/u-boot-spl-sun8iw6p1.bin
export CB_U_BOOT_SPL_BIN_OUTPUT=${CB_OUTPUT_DIR}/u-boot-spl-sun8iw6p1.bin
export CB_U_BOOT_BIN=${CB_PACKAGES_DIR}/bin/u-boot-sun8iw6p1.bin
export CB_U_BOOT_BIN_OUTPUT=${CB_OUTPUT_DIR}/u-boot-sun8iw6p1.bin
export CB_U_BOOT_MMC2_BIN=${CB_PACKAGES_DIR}/bin/u-boot-sun8iw6p1-card2.bin
export CB_U_BOOT_MMC2_BIN_OUTPUT=${CB_OUTPUT_DIR}/u-boot-sun8iw6p1-card2.bin
export PATH=$PATH:${CB_PACKAGES_DIR}/cmd
