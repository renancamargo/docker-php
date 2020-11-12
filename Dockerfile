FROM php:7.4-fpm

# Install extensions mysql
RUN docker-php-ext-install mysqli exif imagick zip gd

# Install extensions ldap
RUN \
    apt-get update && \
    apt-get install libldap2-dev -y && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ && \
    docker-php-ext-install ldap
