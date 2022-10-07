#!/bin/bash
ans=1
i=0
while (( i < $2 )); do
	ans=$(($ans*$1))
	i=$(($i+1))
done
echo $ans
exit
