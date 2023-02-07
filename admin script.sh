rm cadmin
getent group sudo | cut -d: -f4 | tr ',' '\n' >> cadmin
rm admin2
sed 's/ //g' admin >> admin2
rm newadmin
diff admin2 cadmin | grep '^[< ]' >> newadmin
rm newadmin2
sed 's/< //g' newadmin >> newadmin2
for i in $( cat newadmin2 ); do
sudo usermod -aG sudo $i
echo added admin $i
done
rm badadmin
rm badadmin2
diff admin2 cadmin | grep '^[> ]' >> badadmin
sed 's/> //g' badadmin >> badadmin2
for i in $( cat badadmin2 ); do
sudo deluser $i sudo
done

