#/bin/bash
read message
subject=$2
receiver=$1
echo $message | mail -s $subject $receiver
