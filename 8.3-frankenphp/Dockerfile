FROM dunglas/frankenphp:latest-php8.3

LABEL org.opencontainers.image.description = "PHP 8.3 with Redis, Composer, and other tools."
LABEL org.opencontainers.image.authors="samuelterra22@gmail.com"

WORKDIR /var/www

ARG POSTGRES_VERSION=16

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -yq \
    && apt-get dist-upgrade -yq \
    && mkdir -p /etc/apt/keyrings \
    && apt-get install -yq jpegoptim optipng pngquant gifsicle libavif-bin gnupg gosu curl ca-certificates zip unzip git supervisor sqlite3 libcap2-bin libpng-dev dnsutils librsvg2-bin fswatch ffmpeg nano \
    && curl -sLS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer \
    && install-php-extensions \
    bcmath \
    intl \
    opcache \
    pcntl \
    zip \
    pcov \
    pdo_pgsql \
    redis \
    && apt-get -y autoremove \
    && apt-get clean \
    && docker-php-source delete \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && rm /var/log/lastlog /var/log/faillog
