echo "Stopping container..."
docker stop pihole
echo "Removing old images and container..."
docker image rm pihole
docker container rm pihole
echo "Pulling new image..."
docker pull pihole/pihole
echo "Composing..."
docker compose up -d

