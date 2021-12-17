FROM docker-nginx

COPY /www/ /var/www/site/
COPY /nginx/ /etc/nginx/conf.d/
