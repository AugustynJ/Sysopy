#!/bin/bash
while (( 1 )); do
	sleep 1
	exist=`cat komenda.txt 2>/dev/null`
	if((exist == "start")); then
		x=$(($RANDOM%3))
		echo $x > los1.txt
	elif((exist == "koniec")); then
		break
	fi
done
exit
