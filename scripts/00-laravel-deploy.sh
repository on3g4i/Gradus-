#!/usr/bin/env bash
echo "Running composer"
composer global require hirak/prestissimo
composer install --no-dev --working-dir=/var/www/html

echo "Configuring optimizations..."
php artisan optimize

echo "Caching views..."
php artisan view:cache

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."
php artisan route:cache

echo "Caching events..."
php artisan event:cache

echo "Running migrations..."
php artisan migrate --force

echo "Livewire publish..."
php artisan livewire:publish

echo "Starting Laravel server..."
php artisan serve --host=0.0.0.0 --port=${PORT}