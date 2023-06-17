ufw allow ftw and others
 port 21 
 port 22
install vsftpd
chroot_local_user=YES
Chroot_list_file=/etc/vsftpd.chroot_list
local_umask=022
telnet disabled
postfix allowed for mail


ufw allow cups