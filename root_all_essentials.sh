#!/bin/bash

source .env

# Armazene o diretório atual em uma variável
CURRENT_DIR=$(pwd)

chmod -R +x ./essentials/*

./essentials/add_sudo_user.sh $USERNAME $PASSWORD

# Use a variável do diretório atual para executar os scripts
su - $USERNAME -c "${CURRENT_DIR}/essentials/basic.sh"
su - $USERNAME -c "${CURRENT_DIR}/essentials/devops.sh"
su - $USERNAME -c "${CURRENT_DIR}/essentials/oh-my-zsh.sh"
