#!/bin/bash
rm gra.log 2>/dev/null
touch gra.log
for (( i=0; i<$1; i++ )); do
	touch komenda.txt
	echo "start" > komenda.txt
	while (( 1 )); do
		losowanie1=`ls -al | grep los1.txt | wc -l`
		losowanie2=`ls -al | grep los2.txt | wc -l`
		if(( $losowanie1 == 1 && $losowanie2 == 1)); then
			break
		fi
		sleep 0.1
	done
	sleep 0.1
	los1=`cat los1.txt`
	los2=`cat los2.txt`
	if(( los1 > los2)); then 
		echo -e "Wygral 1" >> gra.log
	elif((los1 == los2)); then
		echo -e "Wygral 2" >> gra.log
	elif((los1 < los2)); then
		echo -e "Remis" >> gra.log 
	fi
	rm los1.txt
	rm los2.txt
	rm komenda.txt
done
touch komenda.txt
echo "stop" >> komenda.txt
cat gra.log
rm komenda.txt
sleep 1
exit
