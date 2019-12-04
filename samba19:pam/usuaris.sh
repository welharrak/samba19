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
  home=$(getent passwd | grep $user | cut -d: -f6)
  mkdir -p $home
  cp -ra /etc/skel/.  $home
  group=$(getent passwd | grep $user | cut -d: -f4)
  chown -R $user.$group $home
  echo -e "jupiter\njupiter" | smbpasswd -a $user
done
