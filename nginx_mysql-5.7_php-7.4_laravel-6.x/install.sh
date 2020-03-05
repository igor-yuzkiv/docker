docker-compose up -d

cd ./Nginx/www
mkdir -p html

docker exec php-fpm-7.4_laravel composer create-project --prefer-dist laravel/laravel ./
docker exec php-fpm-7.4_laravel composer update

sudo chgrp -R www-data Nginx/www/ && sudo chmod -R a+rwx Nginx/www/
