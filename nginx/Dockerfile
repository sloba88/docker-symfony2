FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    nginx

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/
ADD vhost.conf /etc/nginx/sites-enabled/default
ADD fastcgi_params /etc/nginx/
ADD start.sh /start.sh

EXPOSE 80

ENTRYPOINT ["/start.sh"]
