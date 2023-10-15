FROM ubuntu:latest

# Install Apache2
RUN apt-get update && apt-get install -y apache2

# Copy the custom index.html to Apache's default directory
COPY index.html /var/www/html/

# Expose port 80 for the web server
EXPOSE 80

# Start the Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

