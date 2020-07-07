FROM php:7.3-fpm

RUN apt-get update \
    && apt-get install -y libmcrypt-dev curl zip unzip openssl \
    libmagickwand-dev --no-install-recommends \
    libpng-dev libxml2-dev \
    libxslt-dev \
    && ln -s /usr/lib/x86_64-linux-gnu/libsybdb.a /usr/lib/ \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo_mysql gd mbstring soap xsl
