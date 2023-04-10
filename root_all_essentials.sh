#!/bin/bash

source .env

chmod -R +x ./essentials/*

./essentials/add_sudo_user.sh $USERNAME $PASSWORD

# Use a variável do diretório atual para executar os scripts
su - $USERNAME -c "$(pwd)/essentials/basic.sh"
su - $USERNAME -c "$(pwd)/essentials/devops.sh"
su - $USERNAME -c "$(pwd)/essentials/oh-my-zsh.sh"
