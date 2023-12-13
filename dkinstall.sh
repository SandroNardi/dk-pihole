docker stop pihole
docker image rm pihole
docker container rm pihole
docker pull pihole/pihole
docker compose up -f
