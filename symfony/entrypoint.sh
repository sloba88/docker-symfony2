#!/bin/bash

rm -rf /var/www/symfony/app/cache/*
/bin/bash -l -c "$*"

chown -R www-data:www-data /var/www/symfony/app/cache
chown -R www-data:www-data /var/www/symfony/app/logs