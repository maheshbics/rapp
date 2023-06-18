# Use the official Ubuntu base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y \
        apt-get install git \
        # Add any additional packages you need
    && rm -rf /var/lib/apt/lists/*

# Copy your application files to the container
COPY . /app

# Set the entry point or default command to run your application
CMD ["<command>"]
