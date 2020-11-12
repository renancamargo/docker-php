FROM php:7.4-fpm

RUN apt-get update && \
    apt-get install -y libldap2-dev \
    libzip-dev \
    libmagickwand-dev --no-install-recommends && \
    pecl install imagick && \
    docker-php-ext-enable imagick && \
    docker-php-ext-install mysqli \
    exif \
    zip \
    ldap
    
# Install extensions ldap
#RUN \
#    apt-get update && \
#    apt-get install libldap2-dev -y && \
#    rm -rf /var/lib/apt/lists/* && \
#    docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ && \
#    docker-php-ext-install ldap
