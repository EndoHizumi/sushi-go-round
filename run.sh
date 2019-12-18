docker stop sushi-go-round
docker build . -t sushi-go-round
docker run -d --name sushi-go-round -p 8080:8080 --rm sushi-go-round
