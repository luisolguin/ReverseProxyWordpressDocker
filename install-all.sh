#!/bin/bash
#Comando para actualizar el sistema
sudo yum update -y
#comando para instalar los paquetes auxiliares necesarios
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
#Comando para agregar los repositorios de Docker
sudo yum-config-manager  --add-repo https://download.docker.com/linux/centos/docker-ce.repo
#Comando para instalar docker
sudo yum install -y docker-ce
#comando para Activar, empezar y ver el estatus del servicio de Docker
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
#comandos para la instalación de Docker-Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo docker-compose --version
#comando para levantar los servicios del Docker-Compose
sudo docker-compose up -d
