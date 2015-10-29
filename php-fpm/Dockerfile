FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    php5-cli \
    php5-fpm \
    php5-json \
    php5-intl \
    php5-curl \
    php5-mysql


ADD start.sh /start.sh
ADD symfony_environment.sh /etc/profile.d/symfony_environment.sh

EXPOSE 9000

WORKDIR /var/www

ENTRYPOINT ["/start.sh"]