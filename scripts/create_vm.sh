#! /bin/bash

read -p "VM_name: " name
image_file="$PWD/$name"

read -e -p "ISO file path: " iso

read -p "Disk space: " disk_space
read -p "Memory: " mem

qemu-img create -f raw $image_file $disk_space 
qemu-system-x86_64 -cdrom $iso -boot d -m $mem -drive file=$image_file,format=raw -enable-kvm
