FROM php:5.6

RUN apt-get update \
    && apt-get -y install libgmp-dev \
    && ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/include/gmp.h \
    && docker-php-ext-install gmp bcmath