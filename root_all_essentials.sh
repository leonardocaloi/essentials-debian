#!/bin/bash

source .env

chmod -R +x ./essentials/*

/essentials/add_sudo_user.sh $USERNAME $PASSWORD

su - $USERNAME -c "/essentials/basic.sh"
su - $USERNAME -c "/essentials/devops.sh"
su - $USERNAME -c "/essentials/oh-my-zsh.sh"