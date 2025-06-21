#!/bin/bash

set -e

echo "🔧 Mise à jour du système..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installation des dépendances..."
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

echo "🔑 Ajout de la clé GPG officielle de Docker..."
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | \
    sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "📂 Ajout du dépôt Docker..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/debian $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "🔄 Mise à jour des dépôts..."
sudo apt update

echo "🐳 Installation de Docker Engine..."
sudo apt install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

echo "✅ Docker installé avec succès !"

echo "👤 Ajout de l'utilisateur courant au groupe docker..."
sudo usermod -aG docker "$USER"

echo "🚀 Test rapide : hello-world"
sudo docker run hello-world || echo "↪️ Test différé, redémarre ton shell ou exécute 'newgrp docker'"

echo "🔁 Pour finaliser, redémarre ta session ou tape : newgrp docker"
