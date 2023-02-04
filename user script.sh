rm cuser.txt
getent passwd | awk -F: '$3 >= 1000 {print $1}' >> cuser.txt

rm diff2
diff cuser.txt users.txt | grep '^[>]' >> diff2
rm newusers
sed 's/> //g' diff2 >> newusers
rm diff2

for i in $( cat newusers ); do
useradd $i
echo $i:CyberTaipan123! | chpasswd
done

rm diff3
diff cuser.txt users.txt | grep '^[<]' >> diff3
rm badusers
sed 's/< //g' diff3 >> badusers
cat badusers
rm diff3
echo delete all? y/n
read delete
if [ "y" = "$delete" ]
then

for i in $( cat badusers ); do
sudo userdel $i
	done
fi