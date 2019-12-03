# Version: 1
# welharrak 19-20
# samba
# -------------------------------------
FROM fedora:27
LABEL author="walid el harrak"
LABEL description="SAMBA-pam server 2019-2020"
RUN dnf -y install procps samba samba-client cifs-utils nss-pam-ldapd authconfig
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]

