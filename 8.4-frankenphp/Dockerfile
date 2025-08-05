FROM dunglas/frankenphp:php8.4

LABEL org.opencontainers.image.description = "PHP 8.4 with PostgreSQL, Redis, Composer, and other tools."
LABEL org.opencontainers.image.authors="samuelterra22@gmail.com"

WORKDIR /var/www

ARG POSTGRES_VERSION=16

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -yq \
    && apt-get dist-upgrade -yq \
    && mkdir -p /etc/apt/keyrings \
    && apt-get install -yq jpegoptim optipng pngquant gifsicle libavif-bin gnupg gosu curl ca-certificates zip unzip git supervisor sqlite3 libcap2-bin libpng-dev dnsutils librsvg2-bin fswatch ffmpeg nano libnss3-tools \
    && curl -sLS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer \
    && curl -sS https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | tee /etc/apt/keyrings/pgdg.gpg >/dev/null \
    && echo "deb [signed-by=/etc/apt/keyrings/pgdg.gpg] http://apt.postgresql.org/pub/repos/apt jammy-pgdg main" > /etc/apt/sources.list.d/pgdg.list \
    && apt-get update -yq \
    && apt-get install -yq postgresql-client \
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
