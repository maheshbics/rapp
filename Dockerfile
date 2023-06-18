# Use the official Nginx base image
FROM nginx:latest

# Copy custom configuration files to Nginx
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy static web content to Nginx default location
COPY static-html /usr/share/nginx/html

# Expose the HTTP port
EXPOSE 80

# Set the command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
