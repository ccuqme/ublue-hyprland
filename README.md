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

For Nvidia systems:

```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ccuqme/hyprland-nvidia:latest
```

## Updates
Updates to user configurations will not be automatically applied. 

To receive the latest updates, you can either execute `just user-configs` or remove `~/.hyprland-configured` prior to rebooting. Please note that this will overwrite some elements of your existing user configuration.

The most recent user configuration can always be found in `/usr/share/homedir`.

## Hyprland Hotkeys

If you decide to rebase to this image, and keep the preconfigured settings, below is the key bindings to help you get going.

### Application Binds

- <kbd>Super</kbd>+<kbd>Return</kbd>: Launch kitty
- <kbd>Super</kbd>+<kbd>E</kbd>: Launch thunar
- <kbd>Super</kbd>+<kbd>L</kbd>: Execute swaylock
- <kbd>Super</kbd>+<kbd>D</kbd>: Execute fuzzel

### General Binds

- <kbd>Super</kbd>+<kbd>Q</kbd>: Kill active
- <kbd>Super</kbd>+<kbd>F</kbd>: Fullscreen, 0
- <kbd>Super</kbd>+<kbd>T</kbd>: Fullscreen, 1
- <kbd>Super</kbd>+<kbd>Shift</kbd>+<kbd>M</kbd>: Exit
- <kbd>Super</kbd>+<kbd>C</kbd>: Toggle floating
- <kbd>Super</kbd>+<kbd>Shift</kbd>+<kbd>G</kbd>: Toggle group
- <kbd>Super</kbd>+<kbd>G</kbd>: Change group active
- <kbd>Super</kbd>+<kbd>P</kbd>: Pseudo (dwindle)
- <kbd>Super</kbd>+<kbd>J</kbd>: Toggle split (dwindle)

### Move Focus Binds

- <kbd>Super</kbd>+<kbd>Arrow Key</kbd>: Move focus

### Workspace Binds

- <kbd>Super</kbd>+<kbd>0-9</kbd>: Switch workspace
- <kbd>Super</kbd>+<kbd>Shift</kbd>+<kbd>0-9</kbd>: Move active window to a workspace
- <kbd>Super</kbd>+<kbd>M/N</kbd>: Scroll through existing workspaces

### Window Binds

- <kbd>Super</kbd>+<kbd>Mouse Button 1</kbd>: Move window
- <kbd>Super</kbd>+<kbd>Mouse Button 2</kbd>: Resize window

### Screenshot Binds

- <kbd>Super</kbd>+<kbd>Shift</kbd>+<kbd>S</kbd>: Capture a portion of the screen.
- <kbd>Print</kbd>: Capture a screenshot of the current screen.
- <kbd>Alt</kbd>+<kbd>Print</kbd>: Capture a screenshot of the entire display.

### Clipboard Binds

- <kbd>Super</kbd>+<kbd>V</kbd>: List cliphist and copy decoded selection
- <kbd>Super</kbd>+<kbd>Shift</kbd>+<kbd>V</kbd>: Delete cliphist entry
- <kbd>Super</kbd>+<kbd>Shift</kbd>+<kbd>X</kbd>: Clear the clipboard

### Multimedia Binds

- <kbd>XF86AudioRaiseVolume</kbd>: Increase audio volume by 5%
- <kbd>XF86AudioLowerVolume</kbd>: Decrease audio volume by 5%
- <kbd>XF86AudioMute</kbd>: Toggle audio mute
- <kbd>XF86AudioPlay</kbd>: Play/Pause audio
- <kbd>XF86AudioPause</kbd>: Play/Pause audio
- <kbd>XF86AudioNext</kbd>: Play next audio
- <kbd>XF86AudioPrev</kbd>: Play previous audio

### Brightness Binds

- <kbd>XF86MonBrightnessUp</kbd>: Increase brightness by 5%
- <kbd>XF86MonBrightnessDown</kbd>: Decrease brightness by 5%

### Special Binds

- <kbd>Super</kbd>+<kbd>Z</kbd>: Toggle special workspace
- <kbd>Super</kbd>+<kbd>Shift</kbd>+<kbd>Z</kbd>: Move to special workspace

---

For more information on the features offered by uBlue, please refer to the [uBlue Starting Point](https://github.com/ublue-os/startingpoint) and [main uBlue image](https://github.com/ublue-os/main) documentation.
