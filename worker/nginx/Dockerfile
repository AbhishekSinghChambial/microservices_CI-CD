# Use the official NGINX base image
FROM nginx:latest

# Remove default NGINX configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX configuration file to the container
COPY custom.conf /etc/nginx/conf.d/

# Expose port 80 for NGINX
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]

