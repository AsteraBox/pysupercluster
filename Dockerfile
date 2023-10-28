# Use python:3.8-slim-buster as base image
FROM python:3.8-slim-buster

# Copy the source code to the container
COPY . /app

# Set the working directory to /app
WORKDIR /app

RUN apt-get -y update && \
    apt-get -y install \
    python3-dev gcc g++

# Install numpy as a dependency
RUN pip install numpy

# Build the wheel file
RUN python setup.py bdist_wheel