mkdir /var/www/mysite
chown -R /var/www/mysite
chmod -R 765 /var/www/mysite
ln -s /etc/nginx/sites-available/mysite /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default
service nginx start
service php7.3-fpm start
service mysql start
echo "CREATE DATABASE this_is_my_db;" | mysql -u root --skip-password
echo "GRANT ALL ON this_is_my_db.* TO 'jescully'@'localhost' IDENTIFIED BY '1' WITH GRANT OPTION;" | mysql
echo "FLUSH PRIVILEGES;" | mysql
while true; do sleep 1000; done
