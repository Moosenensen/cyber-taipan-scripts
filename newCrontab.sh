for user in $(getent passwd | cut -f1 -d: )
do

if [[ $crontabresults =! "no crontab for $user"]]
echo $user
echo crontab $user -l
echo ''
done
echo 'Cron results displayed'
