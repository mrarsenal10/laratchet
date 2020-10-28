FROM php:7.4-fpm

RUN apt-get update && apt-get install -y libzip-dev
RUN apt-get install libhiredis-dev php-redis php7.0-dev

RUN git clone https://github.com/nrk/phpiredis.git && \
    cd phpiredis && \
    phpize && \
    ./configure --enable-phpiredis && \
    make && \
    sudo make install

# Extension mysql driver for mysql
#RUN docker-php-ext-install pdo_mysql mysqli
