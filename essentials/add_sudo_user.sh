#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 USERNAME PASSWORD"
    exit 1
fi

USERNAME="$1"
PASSWORD="$2"

adduser --disabled-password --gecos "" "$USERNAME"
echo "$USERNAME:$PASSWORD" | chpasswd
usermod -aG sudo "$USERNAME"

echo "Usuário '$USERNAME' criado com sucesso e adicionado ao grupo sudo."
