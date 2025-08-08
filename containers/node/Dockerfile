# Dockerfile for Firebase Emulator
FROM node:22-alpine


# Install Python, JRE, required build tools, and git
RUN apk update && apk add --no-cache \
    curl \
    python3 \
    py3-pip \
    build-base \
    libffi-dev \
    openjdk17 \
    git \
    && python3 --version \
    && pip3 --version \
    && java -version  # Verify JRE installation

# Install cmake-js via npm (since it's not available through apk)
RUN npm install -g cmake-js

RUN npm install -g nodemon

# Set the working directory
WORKDIR /home/node/app


WORKDIR /home/node/app
