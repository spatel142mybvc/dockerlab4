# FROM httpd:2.4
# COPY ./html/ /usr/local/apache2/htdocs/

# Use an official PHP image with Apache as a base image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the PHP application files to the container
COPY . .

# Expose port 80 for Apache
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
