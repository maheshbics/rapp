# Use the official Ubuntu base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

RUN apt-get update -y
