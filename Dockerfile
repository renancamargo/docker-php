FROM php:7.4-fpm

# Install extensions ldap
RUN apt-get update && \
    apt-get install -y php-ldap \
    php-curl \
    php-mbstring \
    php-imagick \ 
    php-xml \
    php-zip \
