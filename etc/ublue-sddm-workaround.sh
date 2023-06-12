if [ -f /var/lib/sddm/.ublue-workaround ]; then
    exit 0
fi

if [ ! -d /var/lib/sddm ]; then mkdir /var/lib/sddm; fi
if [ ! -d /var/log/sddm ]; then mkdir /var/log/sddm; fi

getent group sddm >/dev/null || groupadd -r sddm
getent passwd sddm >/dev/null || useradd -g sddm -M -d /var/lib/sddm -s /sbin/nologin -r sddm

systemctl set-default graphical.target

touch /var/lib/sddm/.ublue-workaround

shutdown -r +0 "Rebooting into SDDM"