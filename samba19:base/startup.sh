#! /bin/bash
# @edt ASIX M06 2019-2020
# startup.sh
# -------------------------------------
#install.sh
/opt/docker/install.sh && echo "Install Ok"

#creacio users
useradd lila
useradd roc
useradd patipla
useradd pla
echo -e "lila\nlila" | smbpasswd -a lila
echo -e "roc\nroc" | smbpasswd -a roc
echo -e "patipla\npatipla" | smbpasswd -a patipla
echo -e "pla\npla" | smbpasswd -a pla

#iniciar serveis
/usr/sbin/smbd 
/usr/sbin/nmbd -F
