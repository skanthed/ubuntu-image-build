#!/bin/bash

# Set environment variables
export DIB_RELEASE=noble
export DIB_USER_DATA=../config/cloud-init.yaml
export DIB_BLOCK_DEVICE_BOOTLOADER=grub2
export DIB_GRUB_INSTALLTYPE=both
export DIB_DISTRIBUTION_MIRROR=http://archive.ubuntu.com/ubuntu/
export IMG=ubuntu24.04-uefi-legacy-new.qcow2
export DIB_BASE_IMAGE_URL=https://cloud-images.ubuntu.com/noble/current/ubuntu-noble-server-cloudimg-amd64-disk-kernel.img

disk-image-create ubuntu vm block-device-efi dhcp-all-interfaces bootloader grub2 -o $IMG -p linux-firmware,cloud-init
