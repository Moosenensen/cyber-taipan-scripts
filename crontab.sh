for user in $(getent passwd | cut -f1 -d: )
do


if [[ $crontabresults =! "no crontab for $user"]]
echo $user
crontabresults=crontab $user -l
done