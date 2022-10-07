#!/bin/bash
find $1 -type f -size +$2 -printf "%T+\t%p\n" | sort | head -1 | awk '{print $2}'
