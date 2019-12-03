#creacio users locals
for user in lila roc patipla pla
do
  useradd $user
  echo -e "$user\n$user" | smbpasswd -a $user
done

#posem xixa a /etc/skel
echo "hola, aquest es el teu direcotri samba!" > /etc/skel/salutacions

#creacio home ldap
for user in user{01..09}
do
  mkdir -p /tmp/home/$user
  cp /etc/skel/.*  /tmp/home/$user/.
  cp /etc/skel/*  /tmp/home/$user/.
  chown $user /tmp/home/$user
  echo -e "jupiter\njupiter" | smbpasswd -a $user
done
