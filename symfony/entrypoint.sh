#!/bin/bash

rm -rf /var/www/omega/app/cache/*
/bin/bash -l -c "$*"

chown -R www-data:www-data /var/www/omega/app/cache
chown -R www-data:www-data /var/www/omega/app/logs