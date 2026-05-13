#!/bin/bash
echo "Iniciando instalación de dependencias..."
sudo apt-get update -y
sudo apt-get install -y git vim docker.io python3-pip
pip3 install boto3
sudo systemctl start docker
sudo systemctl enable docker

echo "Instalación completada con éxito."
docker --version
python3 --version
