# Docker php:X.X-fpm 

## How to make a new image and push to Dockerhub
`docker login`

`docker build -t samuelterra22/php:7.4-fpm .`

`docker tag samuelterra22/php:7.4-fpm samuelterra22/php:7.4-fpm`

`docker push samuelterra22/php:7.4-fpm`
