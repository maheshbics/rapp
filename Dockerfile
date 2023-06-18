# Use the official Nginx base image
FROM nginx:latest

# Expose the HTTP port
EXPOSE 80

# Set the command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
