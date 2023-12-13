#!/bin/bash

echo "update database"

filename='list.txt'
n=1
while read line; do
# reading each line
    echo "$n adding: $line"
    sudo sqlite3 etc-pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('$line', 1, 'test list cli add');"
    n=$((n+1))
done < $filename

echo "restart graviton"
docker exec $(docker ps -aqf "name=^pihole$") pihole -g
