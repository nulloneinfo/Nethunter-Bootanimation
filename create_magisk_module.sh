#!/bin/bash

echo " +-------------------------------------------+"$'\n' \
     $'| NetHunter BootAnimation Magisk By Nullone |'$'\n' \
     $'^===========================================^'$'\n'

# Directory structure for the Magisk module
MODULE_DIR="Magisk_NH_BootAnimation"
BOOTANIMATION_DIR="$MODULE_DIR/system/media"
MAGISK_MODULE_FILES=("module.prop" "customize.sh")

# Create necessary directories
echo "Creating Magisk module structure..."
mkdir -p "$BOOTANIMATION_DIR"

# Copy the boot animation zip into the Magisk module directory
if [ -f "output/bootanimation.zip" ]; then
  echo "Copying bootanimation.zip to Magisk module..."
  cp output/bootanimation.zip "$BOOTANIMATION_DIR/"
else
  echo "Error: output/bootanimation.zip not found! Please make sure it exists."
  exit 1
fi

# Create the module.prop file
echo "Creating module.prop..."
cat <<EOL > $MODULE_DIR/module.prop
id=nethunter_bootanimation
name=NetHunter BootAnimation
version=1.0
versionCode=1
author=nulloneinfo
description=NetHunter custom boot animation for Magisk
EOL

# Create a simple customize.sh script (optional, for any setup logic)
echo "Creating customize.sh..."
cat <<EOL > $MODULE_DIR/customize.sh
#!/system/bin/sh
# Magisk post-fs-data boot script (runs early in boot)
# No additional setup needed for this simple module
EOL

# Set permissions for the customize.sh script
chmod 755 "$MODULE_DIR/customize.sh"

# Create a flashable Magisk zip
echo "Creating Magisk flashable zip..."
zip -r -q output/nh-bootanimation-magisk.zip "$MODULE_DIR"

# Clean up
echo "Cleaning up temporary files..."
rm -r "$MODULE_DIR"

echo "Magisk module created successfully!"
echo "You can flash output/nh-bootanimation-magisk.zip in Magisk Manager or using custom recovery."
