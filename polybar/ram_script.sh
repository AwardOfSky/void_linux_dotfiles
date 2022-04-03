#!/bin/bash
t=1000
while true; do
	u=$(free -m | awk 'FNR==2 {print $3}')
	if [ $u -ge $t ]; then
		u=$(echo "scale=2;$u/1000"|bc)
		echo $u "Gb"
	else
		echo $u "Mb" 
	fi
	sleep 1 &
	sleep_pid=$!
	wait
done

