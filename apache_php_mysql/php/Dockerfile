FROM php:7.1-fpm-alpine3.7
RUN apk update; \
    apk upgrade;

RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql \
    && docker-php-ext-install \
        pdo_mysql

# Composer
ENV COMPOSER_HOME /var/www/.composer

RUN curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/bin \
    --filename=composer

RUN chown -R www-data:www-data /var/www/

RUN mkdir -p $COMPOSER_HOME/cache

VOLUME $COMPOSER_HOME