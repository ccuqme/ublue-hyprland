if test "$(id -u)" -gt "0" && test -d "$HOME"; then
    if test ! -e "$HOME"/.hyprland-configured; then
        touch "$HOME"/.hyprland-configured
        cp -R /usr/share/homedir/.* "$HOME"/
        if ! systemctl --quiet is-active sddm; then
            echo "Rebooting into SDDM in 5 seconds..." | wall
            sleep 5
            systemctl reboot
        fi
    fi
fi