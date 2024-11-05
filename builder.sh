#!/bin/bash

echo " +-------------------------------------------------+"$'\n' \
     $'| NetHunter BootAnimation TWRP Builder By Nullone |'$'\n' \
     $'^=================================================^'$'\n'

echo "Copying created zip to TWRP files..."
cp output/bootanimation.zip twrp_files/system/media/
cd twrp_files

echo "Creating TWRP zip..."
zip -0 -r -q ../output/nh-bootanimation-twrp-installer.zip META-INF system

if [ -d "/sdcard" ]; then
  echo "Copying to /sdcard..."
  cp ../output/nh-bootanimation-twrp-installer.zip /sdcard/
  echo ""
  echo "BootAnimation TWRP zip has been created and copied to /sdcard!"
else
  echo ""
  echo "BootAnimation TWRP zip has been copied to the output folder!"
fi

# Cleanup
rm -r ../twrp_files/system/media/bootanimation.zip
