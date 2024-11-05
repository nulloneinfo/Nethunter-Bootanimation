#!/bin/bash

echo " +----------------------------------------------+"$'\n' \
     $'| NetHunter BootAnimation Installer By Nullone |'$'\n' \
     $'^==============================================^'$'\n'

echo "Mounting system..."
mount -o rw,remount /system || {
  echo "Failed to mount system! If your device is system_as_root, please run mount -o rw,remount / in AndroidSU terminal! Exiting."
  exit 1
}

echo "Copying bootanimation file..."
cp output/bootanimation.zip /system/media/

echo "Setting permissions..."$'\n'
chmod o+r /system/media/bootanimation.zip

echo "BootAnimation installed successfully! Please restart your device to check it out."
