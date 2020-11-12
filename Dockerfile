FROM php:7.4-fpm

RUN apt-get update && apt-get install libldap2-dev libzip-dev imagemagick -y

# Install extensions mysql
RUN docker-php-ext-install mysqli
# Install extensions mysql
RUN docker-php-ext-install exif
# Install extensions mysql
RUN docker-php-ext-install zip
# Install extensions mysql
RUN docker-php-ext-install imagick
# Install extensions mysql
RUN docker-php-ext-install ldap

# Install extensions ldap
#RUN \
#    apt-get update && \
#    apt-get install libldap2-dev -y && \
#    rm -rf /var/lib/apt/lists/* && \
#    docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ && \
#    docker-php-ext-install ldap
