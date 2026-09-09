# Image de base imposee par le sujet : Nginx
FROM nginx:alpine

# Nginx ne sait pas executer de PHP : on lui adjoint PHP-FPM
RUN apk add --no-cache php84 php84-fpm

# La page du jeu, servie par Nginx depuis sa racine web
COPY index.html /usr/share/nginx/html/

# Configuration de Nginx et du pool PHP-FPM
COPY default.conf       /etc/nginx/conf.d/default.conf
COPY php-fpm-pool.conf  /etc/php84/php-fpm.d/zz-docker.conf
COPY entrypoint.sh      /entrypoint.sh

# Les deux fichiers destines au volume : c'est le Dockerfile qui les y depose
COPY save.php results.json /var/www/game-results/

RUN chmod +x /entrypoint.sh \
    && chown -R nginx:nginx /var/www/game-results

# Point de montage prevu pour le volume nomme game-results
VOLUME /var/www/game-results

EXPOSE 80

CMD ["/entrypoint.sh"]
