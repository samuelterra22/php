# Docker samuelterra22/php:X.X-fpm

## Description
This is a PHP image based on the official PHP image. It has some extra extensions and configurations.

## How to make a new image and push to Dockerhub
1. `docker login`

2. `docker build -t samuelterra22/php:8.2-fpm .`

3. `docker tag samuelterra22/php:8.2-fpm samuelterra22/php:8.2-fpm`

4. `docker push samuelterra22/php:8.2-fpm`
