FROM ubuntu:14.04

FROM library/node

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    git \
    curl \
    php5-cli \
    php5-json \
    php5-intl \
    php5-curl \
    php5-mysql

RUN npm install -g bower \
    grunt-cli  \
    less

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN apt-get install -y supervisor

ADD supervisord.conf /etc/supervisor/conf.d/


ADD entrypoint.sh /entrypoint.sh
ADD ./code /var/www
ADD symfony_environment.sh /etc/profile.d/symfony_environment.sh

WORKDIR /var/www/symfony

EXPOSE 5001

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
