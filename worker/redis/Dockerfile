# Use the official Redis image
FROM redis:latest

# Copy the custom Redis configuration file into the container
COPY redis.conf /usr/local/etc/redis/redis.conf

# Expose the port specified in the custom configuration
EXPOSE 6379

# Command to run Redis with the custom configuration
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

