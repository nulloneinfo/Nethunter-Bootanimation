# NetHunter BootAnimation Builder and Installer

- This project provides a comprehensive solution for creating and installing custom boot animations on NetHunter devices. The setup includes building a TWRP flashable zip, installing the boot animation on a rooted system, and even creating a Magisk module for seamless integration.

## Overview

### Available Scripts
- **`builder.sh`**: Packages the boot animation into a TWRP flashable zip.
- **`installer.sh`**: Installs the boot animation directly to the system's media folder.
- **`create_magisk_module.sh`**: Builds a Magisk module for installing the boot animation.

### Prerequisites
- **Root Access**: Necessary for installing the boot animation directly or using Magisk.
- **TWRP Recovery**: Required for flashing the TWRP installer zip.
- **Magisk**: Needed for the Magisk module installation.
- **ADB and Fastboot**: Optional, but useful for pushing files manually.

---

## Script Details and Usage

### 1. `builder.sh`
- **Description**: This script builds a TWRP flashable zip for the NetHunter boot animation.
- **Usage**:
  1. Place your custom `bootanimation.zip` in the `output/` directory.
  2. Run the script:
     ```bash
     ./builder.sh
     ```
  3. The script creates a `nh-bootanimation-twrp-installer.zip` in the `output/` folder and optionally copies it to `/sdcard` if available.

- **Output**:
  - `output/nh-bootanimation-twrp-installer.zip`

### 2. `installer.sh`
- **Description**: Installs the `bootanimation.zip` directly into the system's media folder.
- **Usage**:
  1. Ensure you have root permissions.
  2. Run the script:
     ```bash
     ./installer.sh
     ```
  3. The script remounts the `/system` partition as read-write, copies the `bootanimation.zip`, and sets the correct permissions.

- **Note**: If your device has a `system_as_root` configuration, follow the instructions provided in the script.

### 3. `create_magisk_module.sh`
- **Description**: Creates a Magisk module to install the boot animation.
- **Usage**:
  1. Ensure your custom `bootanimation.zip` is in the `output/` directory.
  2. Run the script:
     ```bash
     ./create_magisk_module.sh
     ```
  3. The script packages the files into a Magisk-compatible zip located in the `output/` directory.

- **Output**:
  - `output/nh-bootanimation-magisk.zip`

- **Flash the Magisk Module**:
  - Use Magisk Manager or a custom recovery to flash the zip.

---

## Module Details

### Magisk Module Structure
- **module.prop**: Contains metadata about the Magisk module.
- **customize.sh**: A basic script included for potential setup logic. Currently, no additional setup is needed.

---

## Notes and Tips
- **Backup**: Always create a backup of your original boot animation before installing a new one.
- **System as Root**: For devices using `system_as_root`, you may need to adjust the mounting command. Check the script comments for guidance.
- **Troubleshooting**: If installation fails, ensure your device is properly rooted, and you have the necessary permissions.

---

## Author
- **nulloneinfo**: Scripts and project maintained by nulloneinfo.

---

## License
- This project is open-source and available under the MIT License.

---

## Contributing
- Contributions, issues, and feature requests are welcome! Feel free to check the issues page for open issues or submit your own.
