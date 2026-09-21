FROM ubuntu:latest

# Install Basic Packages
RUN apt-get update
RUN apt-get install -y curl wget git vim unzip xz-utils zip libglu1-mesa 