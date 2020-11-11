FROM php-fpm

# Install extensions
RUN apt-get update && \
    apt-get install -y php-ldap \
    php-curl \
    php-mbstring \
    php-imagick \ 
    php-xml \
    php-zip \
