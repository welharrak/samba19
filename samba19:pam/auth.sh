authconfig --enableshadow --enablelocauthorize --enableldap --enableldapauth --ldapserver='ldapserver' --ldapbase='dc=edt,dc=org' --enablemkhomedir --updateall
/sbin/nslcd
/sbin/nscd
