# Springboot Application

# Build image

docker build -t movieapi:1 .
  
docker image ls

# Run in a docker container
docker run --name movieapi -p 8080:8080 -d movieapi:1

docker ps

docker logs movieapi 

