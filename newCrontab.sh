for user in $(getent passwd | cut -f1 -d: )
do

crontabresults=crontab -u $user -l
if [[ $crontabresults =! "no crontab for $user"]]
echo $user
echo $crontabresults
echo ''
done
echo 'Cron results displayed'
