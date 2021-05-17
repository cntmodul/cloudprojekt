FROM registry.gitlab.com/cntmodul/registry/php:7.0-apache
RUN mkdir /var/www/html/cloudprojekt
COPY *.php /var/www/html/cloudprojekt/
COPY *.html /var/www/html/cloudprojekt/
COPY *.sql /var/www/html/cloudprojekt/
