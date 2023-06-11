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
  * Qalculate
  * Fastfetch
  * Lite-xl
  * Android utilities (android-file-transfer, android-tools, and android udev rules)
  * Custom yafti configuration and first-time setup.

## Rebase

**Note**: Please back up your `.config` directory and your `.profile` file before running the following command. This operation carries certain risks and should be executed at your own discretion.

AMD/Intel:
```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ccuqme/hyprland-main:latest
```
Nvidia (driver not functional. Haven't even started looking into this):
```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ccuqme/hyprland-nvidia:latest
```

### There's a tiny bug in the current image:

If `sddm` does not launch after rebasing and rebooting, just reboot once again. I seem to be setting the graphical.target too late, and haven't figured out how to do it earlier yet. 

If you're rebasing from Silverblue (and most likely any other image with a DE) you should be fine after the first reboot after rebasing.

---

For more information on the features offered by uBlue, please refer to the [uBlue Starting Point](https://github.com/ublue-os/startingpoint) and [main uBlue image](https://github.com/ublue-os/main) documentation.
