docker compose up -d

bash updatelist.sh

docker exec $(docker ps -aqf "name=^pihole$") pihole -g