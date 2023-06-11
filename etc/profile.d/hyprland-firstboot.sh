if test "$(id -u)" -gt "0" && test -d "$HOME"; then
    if test ! -e "$HOME"/.hyprland-configured; then
        touch "$HOME"/.hyprland-configured
        cp -R /usr/share/homedir/.* "$HOME"/
    fi
fi