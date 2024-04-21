# Use the official WordPress image as base
FROM wordpress:latest

# Set up environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=wordpress
ENV MYSQL_PASSWORD=wordpress

# Add a volume for MySQL data persistence
VOLUME /var/lib/mysql

# Install the mysqli extension for PHP
RUN docker-php-ext-install mysqli

# Copy the custom php.ini file to the container
COPY php.ini /usr/local/etc/php/conf.d/

# Expose ports
EXPOSE 80

# Set the working directory to /var/www/html
WORKDIR /var/www/html
