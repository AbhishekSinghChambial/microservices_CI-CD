# Use the official Python image based on Ubuntu
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install project dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Expose any necessary ports
# EXPOSE 8000

# Define the command to run your application
CMD ["./server-entrypoint.sh"]

