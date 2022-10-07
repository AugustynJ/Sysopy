#!/bin/bash
i=$#
while (( $i >= 0 )); do
        echo -n $`echo $i`" "
        i=$(( $i-1 ))
done
echo ""
exit
