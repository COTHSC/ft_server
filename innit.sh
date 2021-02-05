mkdir /var/www/mysite
chown -R /var/www/mysite
chmod -R 765 /var/www/mysite
sudo ln -s /etc/nginx/sites-available/mysite /etc/nginx/sites-enabled/
service nginx start
service php7.3-fpm start
while true; do sleep 1000; done
