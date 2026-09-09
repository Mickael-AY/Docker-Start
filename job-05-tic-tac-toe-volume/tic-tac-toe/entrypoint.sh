#!/bin/sh
set -e

# PHP-FPM en arriere-plan, nginx au premier plan (PID 1 du conteneur)
php-fpm84 --daemonize
exec nginx -g "daemon off;"
