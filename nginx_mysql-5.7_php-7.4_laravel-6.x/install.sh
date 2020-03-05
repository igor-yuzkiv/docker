docker-compose up -d

cd ./Nginx/www
mkdir -p html

docker exec php-fpm-7.4_laravel composer create-project --prefer-dist laravel/laravel ./



