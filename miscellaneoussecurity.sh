ufw enable
ufw default deny incoming
ufw default deny forward
ufw status verbose
ufw limit in on $(route | grep '^default' | grep -o '[^ ]*$')
ufw logging on
# brainlessly taken from Ayden's script
