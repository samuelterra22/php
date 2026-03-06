FROM php:8.3-fpm

LABEL org.opencontainers.image.authors="samuelterra22@gmail.com"

WORKDIR /var/www

RUN rm -rf /var/www/html \
  && apt-get update -y \
  && apt-get install -y \
  autoconf \
  build-essential \
  curl \
  git \
  libicu-dev \
#  libmpdec-dev \
  libpq-dev \
  libfreetype6-dev \
  libjpeg-dev \
  libpng-dev \
  libwebp-dev \
  libzip-dev \
  unzip \
  vim \
  wget \
  zip \
  zlib1g-dev \
  && apt autoremove -y \
  && apt clean \
  && pecl install redis excimer \
  && docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp \
  && docker-php-ext-install \
  bcmath \
  exif \
  gd \
  intl \
  opcache \
  pcntl \
  pdo_mysql \
  pdo_pgsql \
  pgsql \
  zip \
  && docker-php-ext-enable excimer \
  && curl -sS https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer
