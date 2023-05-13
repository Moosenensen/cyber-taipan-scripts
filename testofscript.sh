rm Susers.txt
rm Lusers.txt
rm test.txt
rm test2.txt
rm test3.txt
sort users.txt > Susers.txt
awk -F: '$3>=1000{print $1}' /etc/passwd > Lusers.txt
diff Susers.txt Lusers.txt > test.txt
grep "^<" test.txt > test2.txt
sed 's/<//g; s/ //g' test2.txt > test3.txt
for i in $(cat test3.txt); do
useradd $i
echo 'added '$i
done
