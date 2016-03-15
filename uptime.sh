#!/bin/bash
up=$(uptime | awk '{print $3}' | sed s/.$//)
IFS=: read -a upArray <<<"$up"
if [ ${#upArray[@]} -eq 3 ]
then
 d=${upArray[0]}
 h=${upArray[1]}
 m=${upArray[2]}
 echo $d" days, "$h" hours, "$m" minutes"
else
 h=${upArray[0]}
 m=${upArray[1]}
 echo $h" hours, "$m" minutes"
fi






