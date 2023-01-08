
psid=docker ps -aqf "name=^$1$"

echo "this id $psid"