#!/bin/bash

source .env

chmod -R +x ./essentials/*

/essentials/basic.sh
/essentials/devops.sh
/essentials/oh-my-zsh.sh