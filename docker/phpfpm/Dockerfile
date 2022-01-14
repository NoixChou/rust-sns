FROM php:8.1.1-fpm-buster

RUN apt-get update && apt-get install -y \
    unzip \
    libzip-dev \
    zlib1g-dev \
    git \
    libmemcached-dev \
    curl \
    libpq-dev \
    && docker-php-ext-install \
    zip \
    pdo_mysql

RUN docker-php-ext-configure zip \
    && docker-php-ext-install zip mysqli\
    && git clone https://github.com/php-memcached-dev/php-memcached /usr/src/php/ext/memcached && cd /usr/src/php/ext/memcached \
    && docker-php-ext-configure memcached   && docker-php-ext-install memcached

COPY --from=composer /usr/bin/composer /usr/bin/composer
