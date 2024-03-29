apt-mark showmanual >> installed
echo "
base-passwd
bsdutils
dash
diffutils
efibootmgr
findutils
fonts-indic
git
grep
grub-common
grub-efi-amd64-bin
grub-efi-amd64-signed
grub-gfxpayload-lists
grub-pc
grub-pc-bin
grub2-common
gzip
hostname
init
language-pack-en
language-pack-en-base
language-pack-gnome-en
language-pack-gnome-en-base
libdebconfclient0
linux-generic-hwe-22.04
login
mokutil
ncurses-base
ncurses-bin
open-vm-tools-desktop
os-prober
python3-pip
shim-signed
ubuntu-desktop
ubuntu-desktop-minimal
ubuntu-minimal
ubuntu-standard
ubuntu-wallpapers
util-linux
util-linux-extra
">> whitelist
grep -v "python" installed > tmpfile && mv tmpfile installed
rm tmpfile
grep -v "linux" installed > tmpfile && mv tmpfile installed
rm tmpfile
grep -v "ubuntu" installed > tmpfile && mv tmpfile installed
rm tmpfile
grep -v "language" installed > tmpfile && mv tmpfile installed
rm tmpfile
grep -v "php8" installed > tmpfile && mv tmpfile installed
rm tmpfile

#find diff
rm diff3
diff installed whitelist | grep '^[<]' >> diff3
rm badprog
sed 's/< //g' diff3 >> badprog
echo "programs:

"

cat badusers
rm diff3
read $prog
echo remove $prog ?

read $delete
if [ "y" = "$delete" ]
then
for i in $( cat badusers ); do
apt remove $prog
done
fi







apt-mark showmanual
acl
acpid
amd64-microcode
ant
ant-optional
apache2
apt
apt-transport-https
aptitude
aria2
autoconf
base-files
base-passwd
bash
binutils
bison
brotli
build-essential
buildah
bzip2
ca-certificates
clang-12
clang-format-12
cloud-init
containerd.io
coreutils
curl
dash
dbus
diffutils
dnsutils
docker-ce
docker-ce-cli
dpkg
eatmydata
ec2-hibinit-agent
ec2-instance-connect
emacs
eom
esl-erlang
fakeroot
fatsort
file
file-roller
findutils
firefox
flex
fonts-liberation
fonts-noto
fonts-noto-color-emoji
fonts-ubuntu
ftp
fuse
g++
g++-10
g++-9
gcc
gdebi-core
gedit
gettext
gh
git
git-ftp
git-lfs
gnome-keyring
gnome-system-tools
gnupg2
google-chrome-stable
graphviz
grep
gzip
haveged
hhvm
hibagent
hostname
imagemagick
indicator-application
indicator-datetime
indicator-messages
indicator-notifications
indicator-session
init
intel-microcode
intltool
iproute2
iputils-ping
iucode-tool
java-17-amazon-corretto-jdk
john
jq
libc++-dev
libc++abi-dev
libcurl4
libcurl4-openssl-dev
libdebconfclient0
libeatmydata1
libffi-dev
libfuse-dev
libfuse3-3
libfwupdplugin1
libgbm-dev
libgconf-2-4
libgsl-dev
libgtk-3-0
libicu66
libkrb5-dev
libmagic-dev
libmagickcore-dev
libmagickwand-dev
libmariadb-dev
libmp3lame-dev
libodbc1
libpam0g-dev
libpixman-1-dev
libsecret-1-dev
libsodium23
libsqlite3-dev
libssl-dev
libssl1.1
libtool
libturbojpeg0-dev
libunwind8
libwrap0
libx11-dev
libxfixes-dev
libxkbfile-dev
libxml-parser-perl
libxml2-dev
libxrandr-dev
libxss1
linux-aws
linux-aws-5.13-headers-5.13.0-1022
linux-headers-5.13.0-1022-aws
linux-headers-aws
linux-image-5.13.0-1022-aws
linux-image-aws
linux-modules-5.13.0-1022-aws
lld-12
lldb-12
locales
m4
make
mate-applet-appmenu
mate-applet-brisk-menu
mate-dock-applet
mate-hud
mate-menu
mate-system-monitor
mate-themes
mate-tweak
mediainfo
mercurial
microcode-initrd
mssql-tools
mysql-client
mysql-server
nasm
ncurses-base
ncurses-bin
ncurses-term
net-tools
netcat
nfs-common
ninja-build
nuget
odbcinst
onboard
openssh-client
openssh-server
openssh-sftp-server
p7zip-full
p7zip-rar
packages-microsoft-prod
parallel
pass
patchelf
php-pear
php8.1
php8.1-amqp
php8.1-apcu
php8.1-bcmath
php8.1-bz2
php8.1-cgi
php8.1-cli
php8.1-common
php8.1-curl
php8.1-dba
php8.1-dev
php8.1-enchant
php8.1-fpm
php8.1-gd
php8.1-gmp
php8.1-igbinary
php8.1-imagick
php8.1-imap
php8.1-interbase
php8.1-intl
php8.1-ldap
php8.1-mbstring
php8.1-memcache
php8.1-memcached
php8.1-mongodb
php8.1-mysql
php8.1-odbc
php8.1-opcache
php8.1-pcov
php8.1-pgsql
php8.1-phpdbg
php8.1-pspell
php8.1-readline
php8.1-redis
php8.1-snmp
php8.1-soap
php8.1-sqlite3
php8.1-sybase
php8.1-tidy
php8.1-xdebug
php8.1-xml
php8.1-xsl
php8.1-yaml
php8.1-zip
php8.1-zmq
pkg-config
plank
podman
policykit-desktop-privileges
pollinate
postfix
pwgen
python-is-python3
python3
python3-dev
python3-distutils
python3-importlib-metadata
python3-jinja2
python3-json-pointer
python3-jsonpatch
python3-jsonschema
python3-lib2to3
python3-libxml2
python3-markupsafe
python3-more-itertools
python3-nacl
python3-pip
python3-pymacaroons
python3-pyrsistent
python3-serial
python3-setuptools
python3-venv
python3-zipp
r-base
rkhunter
rpm
rstudio-server
rsync
ruby
session-manager-plugin
shellcheck
skopeo
sl
snmp
software-properties-common
sphinxsearch
sqlite3
ssh
ssh-import-id
sshpass
subversion
sudo
swig
synaptic
sysvinit-utils
telnet
texinfo
time
tk
tzdata
ubuntu-mate-artwork
ubuntu-mate-core
ubuntu-minimal
ubuntu-server
ubuntu-standard
unattended-upgrades
unixodbc-dev
unzip
upx-ucl
vim
wget
xorriso
xserver-xorg-dev
xsltproc
xutils
xutils-dev
xvfb
xz-utils
zip
zlib1g
zsh
zsync