#! /bin/bash

read -e -p "VM location: " path

qemu-system-x86_64 -boot d -hda $path -enable-kvm -vga std
