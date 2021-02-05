FROM debian:buster

RUN apt-get update
RUN apt-get install vim -y
RUN apt-get install php php-fpm php-mysql -y
RUN apt-get install nginx -y
RUN apt-get install procps -y
RUN apt-get install mariadb-server -y

COPY mysite /etc/nginx/sites-available/
COPY info.php /var/www/html/
COPY innit.sh /
CMD bash innit.sh
