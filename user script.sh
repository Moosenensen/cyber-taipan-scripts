# the removes are to make sure the file doesnt alreeady exist
rm cuser.txt
#gets current users
getent passwd | awk -F: '$3 >= 1000 {print $1}' >> cuser.txt
sed 's/ //g' users.txt >> users.txt
# finds the users that are in users.txt but not in current users
rm diff2
diff cuser.txt users.txt | grep '^[>]' >> diff2
rm newusers
sed 's/> //g' diff2 > newusers
rm diff2
#loops through and adds a user with the content of every line
for i in $( cat newusers ); do
useradd $i
echo $i:CyberTaipan123! | chpasswd
echo "added user $i"
done

#finds all the names that are in current users but not user.txt
rm diff3
diff cuser.txt users.txt | grep '^[<]' >> diff3
rm badusers
sed 's/< //g' diff3 >> badusers
echo users to be deleted:
cat badusers
rm diff3
echo delete all? y/n
read delete
if [ "y" = "$delete" ]
then
#deletes users
for i in $( cat badusers ); do
sudo userdel $i
echo "deleted user $i"
	done
fi