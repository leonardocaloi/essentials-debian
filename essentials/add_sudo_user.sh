#!/bin/bash

source .env

adduser --disabled-password --gecos "" $USERNAME
echo "$USERNAME:$PASSWORD" | chpasswd
RUN usermod -aG sudo $USERNAME