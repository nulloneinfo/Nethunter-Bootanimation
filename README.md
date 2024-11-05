# NetHunter BootAnimation Builder and Installer

These scripts are designed to facilitate the creation and installation of custom boot animations for NetHunter. The process is split into two main steps: building a flashable TWRP zip and installing the animation directly on a rooted Android device.

## Scripts Overview

### 1. `builder.sh`
- **Purpose**: Packages the boot animation into a flashable TWRP zip file.
- **How It Works**:
  - Copies the `bootanimation.zip` file to the appropriate directory.
  - Compresses the files into a TWRP flashable zip.
  - Optionally copies the TWRP zip to the `/sdcard` if available.

### 2. `installer.sh`
- **Purpose**: Installs the `bootanimation.zip` file on the device's system partition.
- **How It Works**:
  - Remounts the `/system` directory as read-write.
  - Copies the `bootanimation.zip` to `/system/media`.
  - Sets the appropriate permissions for the file.

## Prerequisites

- **Root Access**: The `installer.sh` script requires root permissions to modify the `/system` partition.
- **TWRP Recovery**: The `builder.sh` script packages a zip meant to be flashed using TWRP.
- **adb and fastboot** (optional): For pushing the files manually if needed.

## Usage Instructions

### Building the TWRP Installer
1. Place your custom `bootanimation.zip` in the `output/` directory.
2. Run `./builder.sh`.
3. The script will generate a `nh-bootanimation-twrp-installer.zip` in the `output/` directory and optionally copy it to `/sdcard`.

### Installing the Boot Animation
1. Ensure you have root permissions on your device.
2. Run `./installer.sh` in a terminal or via an Android terminal emulator.
3. The boot animation will be installed in `/system/media`.

## Notes
- If you have a `system_as_root` configuration, follow the instructions provided in the `installer.sh` script.
- Always create a backup of your original boot animation before proceeding with the installation.
