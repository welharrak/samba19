#! /bin/bash
# @edt ASIX M06 2019-2020
# startup.sh
# -------------------------------------
#install.sh
/opt/docker/install.sh && echo "Install Ok"

#iniciar serveis
/usr/sbin/smbd 
/usr/sbin/nmbd -F
