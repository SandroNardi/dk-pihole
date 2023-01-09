docker compose up -d


docker exec $(docker ps -aqf "name=^pihole$") pihole -g