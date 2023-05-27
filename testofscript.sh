rm Susers.txt
rm Lusers.txt
rm test.txt
rm test2.txt
rm test3.txt
#deletes files if script is ran more than once 
sort users.txt > Susers.txt
#sorts users that need to be added
awk -F: '$3>=1000{print $1}' /etc/passwd > Lusers.txt
#extracts users from the /etc/passwd file
sort Lusers.txt
#sorts current users
diff Susers.txt Lusers.txt > test.txt
#send differences to test.txt
grep "^<" test.txt > test2.txt
#any line with < is transferred to test2.txt
sed 's/<//g; s/ //g' test2.txt > test3.txt
#removing spaces and <
for i in $(cat test3.txt); do
useradd $i
echo 'added '$i
$adding users
done
