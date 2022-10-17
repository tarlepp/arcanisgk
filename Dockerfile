FROM php:8.1.11-fpm

# Let's use bash as a default shell with login each time
SHELL ["/bin/bash", "--login", "-c"]

# Copy development `php.ini` configuration to container
COPY ./docker/php/php-dev.ini /usr/local/etc/php/php.ini

EXPOSE 9000
