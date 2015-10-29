# Docker Symfony2 setup

This setup is made using parts of some other solutions and also adding my own.
[denderello/symfony-docker-example](https://github.com/denderello/symfony-docker-example)
[advancingu/SfDocker](https://github.com/advancingu/SfDocker)

Currently it uses

php-fpm
nginx
redis
mysql
elasticsearch

TODO:
nodejs


## Running

You can run the Docker environment using [docker-compose](https://docs.docker.com/compose/):

    $ docker-compose up -d

You can run commands inside the `symfony` service container:

    $ docker-compose run symfony ...