# Use the official WordPress image as the base image
FROM wordpress:latest

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the contents of the local wp-content directory to the container's wp-content directory
#COPY ./wp-content /var/www/html/wp-content

