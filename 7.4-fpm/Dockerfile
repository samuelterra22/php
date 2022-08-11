FROM php:7.4-fpm

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
  libmpdec-dev \
  libjpeg62-turbo-dev \
  libpq-dev \
  libfreetype6-dev \
  libjpeg-dev \
  libpng-dev \
  libzip-dev \
  unzip \
  jpegoptim optipng pngquant gifsicle \
  vim \
  wget \
  zip \
  zlib1g-dev \
  && apt autoremove -y \
  && apt clean \
  && pecl install redis \
  && docker-php-ext-configure gd --enable-gd --with-jpeg \
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
  mysqli \
  && docker-php-ext-enable mysqli \
  && curl -sS https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer
