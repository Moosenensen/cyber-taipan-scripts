allow ssh port



permit root login no
max auth tries 4
public certification yes
password authentification no
use pam yes
allow agent forwadsing no
allowtop forwarding
permit user environment
printmotd no
use privlerdgeseperation yes

echo 'MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-sha2-512,hmac-sha2-256' | tee -a /etc/ssh/sshd_config > /dev/null
	echo 'Ciphers aes128-ctr,aes192-ctr,aes256-ctr,aes128-cbc,3des-cbc,aes192-cbc,aes256-cbc' | tee -a /etc/ssh/sshd_config > /dev/null
	echo 'KexAlgorithms curve25519-sha256,curve25519-sha256@libssh.org,diffie-hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-sha256' >> /etc/ssh/sshd_config