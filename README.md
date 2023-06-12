# ublue-hyprland
##  Experimental alpha build. Download and use at your own risk!
ublue-hyprland is a custom uBlue image built with Hyprland. This image is not officially affiliated with uBlue or Fedora and is intended for personal use.

## Features

This image includes:

  * Hyprland
  * Waybar
  * Thunar
  * GDB
  * Btop
  * Cliphist
  * Fastfetch
  * Lite-xl
  * Android utilities (android-file-transfer, android-tools, and android udev rules)
  * Custom yafti configuration and first-time setup
  * Custom theming and Hyprland configuration

## Rebase

**Note**: Please back up your `.config` directory and your `.profile` file before running the following command. This operation carries certain risks and should be executed at your own discretion.

AMD/Intel:
```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ccuqme/hyprland-main:latest
```
Nvidia (Driver not functional. Have not looked into this yet):
```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ccuqme/hyprland-nvidia:latest
```

---

For more information on the features offered by uBlue, please refer to the [uBlue Starting Point](https://github.com/ublue-os/startingpoint) and [main uBlue image](https://github.com/ublue-os/main) documentation.
