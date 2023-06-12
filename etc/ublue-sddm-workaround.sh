#!/bin/bash

if [ ! -d /var/lib/sddm ]; then mkdir /var/lib/sddm; fi
if [ ! -d /var/log/sddm ]; then mkdir /var/log/sddm; fi

getent group sddm >/dev/null || groupadd -r sddm
getent passwd sddm >/dev/null || useradd -g sddm -M -d /var/lib/sddm -s /sbin/nologin -r sddm

systemctl set-default graphical.target