#! /bin/bash

read -e -p "Exisiting image filepath: " exist_path
read -e -p "New image filepath: " new_path
read -p "Size: " size

qemu-img create -f qcow2 -b $exist_path $new_path $size
