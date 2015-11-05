FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    php5-cli \
    php5-fpm \
    php5-json \
    php5-intl \
    php5-curl \
    php5-mysql \
    php5-common \
    php5-gd \
    php5-imagick \
    php5-mcrypt \
    git


RUN php5enmod mcrypt

ADD start.sh /start.sh
ADD symfony_environment.sh /etc/profile.d/symfony_environment.sh

RUN rm /etc/php5/fpm/pool.d/www.conf

ADD app.ini /etc/php5/fpm/conf.d/
ADD app.ini /etc/php5/cli/conf.d/
ADD app.pool.conf /etc/php5/fpm/pool.d/

EXPOSE 9000

WORKDIR /var/www

ENTRYPOINT ["/start.sh"]
