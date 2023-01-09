echo "docker compose"
docker compose up -d

echo "update database"
bash updatelist.sh

echo "restart graviton"
docker exec $(docker ps -aqf "name=^pihole$") pihole -g