#!/bin/bash

# Path to the generated image
IMAGE_PATH="./ubuntu24.04-uefi-legacy-new.qcow2"

# Test the image with virt-install
sudo virt-install \
  --name ubuntu24.04-uefi-legacy-new \
  --disk path=$IMAGE_PATH,size=20,bus=virtio,format=qcow2 \
  --memory 2048 \
  --vcpus 2 \
  --os-variant ubuntu20.04 \
  --network network=default,model=virtio \
  --boot uefi \
  --import \
  --cloud-init user-data=../config/cloud-init.yaml \
  --connect qemu:///system
