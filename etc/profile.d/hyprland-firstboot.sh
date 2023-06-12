if test "$(id -u)" -gt "0" && test -d "$HOME"; then
    if test ! -e "$HOME"/.hyprland-configured; then
        touch "$HOME"/.hyprland-configured
        cp -R /usr/share/homedir/.* "$HOME"/
        if [ -f /var/lib/sddm/state.conf ]; then
            exit 0
        fi
        echo "Rebooting into SDDM in 5 seconds..." | wall
        sleep 5
        systemctl reboot
    fi
fi