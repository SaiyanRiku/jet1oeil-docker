# jet1oeil-docker

## Build the image 

```
docker build -t jet1oeil-server
```

## Start with docker compose

```
docker-compose -f ./docker-compose.yml up -d
```

## Stop with docker compose

```
docker-compose -f ./docker-compose.yml down
```

## Debug

```
docker exec -it jet1oeil-docker_server_1 /bin/bash
```
