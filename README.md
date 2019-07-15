# salt-master
## Instructions:
### Build docker image from CentOS 7
docker build -t salt-master .
### Run salt-master container via docker-compose
docker-compose up -d
### Check if the container is up and running 
docker ps -a
### Check salt process inside the container
docker exec -it salt_master bash
ps -ef | grep salt
