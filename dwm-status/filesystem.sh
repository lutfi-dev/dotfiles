#!/bin/sh

icon="ROM:"
cap_percentage=$(df -h --output=pcent / | awk 'NR%2==0 {print $0}'  | cut -f 1 -d '%'  | xargs)
printf "$icon$cap_percentage"

