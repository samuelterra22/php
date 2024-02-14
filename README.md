# Docker samuelterra22/php:X.X-fpm

## How to make a new image and push to Dockerhub
1. `docker login`

2. `docker build -t samuelterra22/php:8.2-fpm .`

3. `docker tag samuelterra22/php:8.2-fpm samuelterra22/php:8.2-fpm`

4. `docker push samuelterra22/php:8.2-fpm`
