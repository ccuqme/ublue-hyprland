# ublue-hyprland
## Experimental Alpha Release: Download and Use at Your Own Risk!
ublue-hyprland is a customized uBlue image using Hyprland. Please note that this image is not officially supported by uBlue or Fedora, and is designed for personal use only.

## Features

The image comes with the following features:

  * Hyprland
  * Waybar
  * Thunar
  * GDB
  * Btop
  * Cliphist
  * Fastfetch
  * Lite-xl
  * wdisplays
  * Android utilities (android-file-transfer, android-tools, and android udev rules)
  * Custom yafti configuration and initial setup
  * Custom themes and Hyprland configurations

## Installation

**Rebase**

**Important**: We strongly recommend backing up your `.config` directory and `.profile` file before proceeding with the following steps. Please be aware that this operation comes with certain risks, and should be performed at your discretion.

If you prefer not to use the preconfigured settings, execute the following command before initiating the rebase process:

```bash
touch ~/.hyprland-configured
```

For AMD/Intel systems:

```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ccuqme/hyprland-main:latest
```

For Nvidia systems (note that the driver is currently not operational, investigation is pending):

```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ccuqme/hyprland-nvidia:latest
```

## Updates
Updates to user configurations will not be automatically applied. 

To receive the latest updates, you can either execute `just user-configs` or remove `~/.hyprland-configured` prior to rebooting. Please note that this may overwrite some elements of your existing user configuration (located at `usr/share/homedir`).

The most recent user configuration can always be found in `/usr/share/homedir`.

---

For more information on the features offered by uBlue, please refer to the [uBlue Starting Point](https://github.com/ublue-os/startingpoint) and [main uBlue image](https://github.com/ublue-os/main) documentation.
