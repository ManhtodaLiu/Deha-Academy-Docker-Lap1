# Sử dụng image PHP với Apache
FROM php:8.1-apache

# Cài đặt các extension cần thiết (nếu cần)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Sao chép mã nguồn vào container
COPY . /var/www/html

# Đặt quyền cho thư mục
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html