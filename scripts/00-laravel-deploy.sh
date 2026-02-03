#!/usr/bin/env bash
echo "Running composer"
composer global require hirak/prestissimo
composer install --no-dev --working-dir=/var/www/html

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."
php artisan route:cache

echo "Running migrations..."
php artisan migrate 

echo "Livewire publish..."
php artisan livewire:publish

echo "Starting Laravel server..."
php artisan serve --host=0.0.0.0 --port=${PORT}