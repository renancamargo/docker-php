FROM php-fpm

# Install extensions
RUN docker-php-ext-install ldap curl mbstring imagick xml zip
