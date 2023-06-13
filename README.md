# ublue-hyprland
## Experimental Alpha Release: Download and Use at Your Own Risk!
ublue-hyprland is a customized uBlue image using Hyprland. Not officially affiliated with uBlue or Fedora and is mostly designed for personal use.

![ublue-hyprland](https://github.com/ccuqme/ublue-hyprland/assets/63260355/fd78f4bf-a921-4d36-8391-84b8e5b9b9cc)

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
  * Catppuccin Mocha theming
  * Custom Hyprland configuration

## Installation

**Important**: We strongly recommend backing up your `.config` directory and `.profile` file before proceeding with the following steps. Please be aware that this operation comes with certain risks, and should be performed at your discretion.

If you prefer not to use the preconfigured settings, execute the following command before initiating the rebase process:

```bash
touch ~/.hyprland-configured
```

**Rebase**

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

To receive the latest updates, you can either execute `just user-configs` or remove `~/.hyprland-configured` prior to rebooting. Please note that this will overwrite some elements of your existing user configuration.

The most recent user configuration can always be found in `/usr/share/homedir`.

---

For more information on the features offered by uBlue, please refer to the [uBlue Starting Point](https://github.com/ublue-os/startingpoint) and [main uBlue image](https://github.com/ublue-os/main) documentation.
