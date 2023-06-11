user-configs:
  echo 'Copying config files'
  /usr/bin/cp -R /usr/share/homedir/.* ~/
nix:
  echo 'Installing nix.'
  /usr/bin/ublue-nix-install
yafti:
  yafti /usr/share/ublue-os/firstboot/yafti.yml