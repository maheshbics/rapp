# Use the official Ubuntu base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy a sample file into the container
COPY sample.txt .

# Set the default command to display the contents of the sample file
CMD ["cat", "sample.txt"]
