FROM php:8.1.11-fpm

# Let's use bash as a default shell with login each time
SHELL ["/bin/bash", "--login", "-c"]

# Copy development `php.ini` configuration to container
COPY ./docker/php/php-dev.ini /usr/local/etc/php/php.ini

# Copy the install-php-extensions (Easily install PHP extension in official PHP Docker containers)
COPY --from=mlocati/php-extension-installer:1.5.42 /usr/bin/install-php-extensions /usr/local/bin/

# Enable all necessary PHP packages
RUN install-php-extensions \
    pdo_mysql

EXPOSE 9000
