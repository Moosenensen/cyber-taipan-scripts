for i in $( cat cusers.txt)
sudo chage -E 01/31/2015 -m 5 -M 90 -I 30 -W 14 $i
done