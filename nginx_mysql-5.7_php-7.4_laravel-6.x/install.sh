docker-compose up -d

cd ./Nginx/www
mkdir html

docker exeup c php-fpm-7.4_laravel composer create-project --prefer-dist laravel/laravel ./


