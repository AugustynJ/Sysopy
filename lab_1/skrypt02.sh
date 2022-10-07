
#!/bin/bash
if (( $2 < $1 )); then
	echo "Wrong range!"
	exit
fi
number=$(($RANDOM%($2-$1)+$1))
attempts=10
while (( $attempts )); do
	attempts=$(( $attempts-1 ))
	read x
	if (( $x == $number )); then
		echo "Congratulations! It's $x"
		exit
	elif (( $attempts == 0 )); then
		echo "Game over! It was $number"
		exit
	else
		echo "Wrong number! $attempts tries remaning"
	fi
done
exit
