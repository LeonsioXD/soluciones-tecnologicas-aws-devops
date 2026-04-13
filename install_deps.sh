#!/bin/bash

# =================================================================
# Script: install_deps.sh
# Descripción: Automatiza la instalación de dependencias esenciales 
#              para el ecosistema DevOps de STF.
# =================================================================

echo "--- Iniciando instalación de dependencias [$(date)] ---"

# 1. Actualizar índices de paquetes
echo "[1/4] Actualizando sistema..."
sudo apt-get update -y && sudo apt-get upgrade -y

# 2. Instalar herramientas base (Git y Python3)
echo "[2/4] Instalando Git, Vim y Python3..."
sudo apt-get install git vim python3 python3-pip -y

# 3. Instalar Docker
echo "[3/4] Instalando Docker..."
if ! command -v docker &> /dev/null; then
    sudo apt-get install docker.io -y
    sudo systemctl start docker
    sudo systemctl enable docker
    # Agregar usuario actual al grupo docker para evitar usar 'sudo' siempre
    sudo usermod -aG docker $USER
    echo "Docker instalado correctamente."
else
    echo "Docker ya está instalado."
fi

# 4. Instalar Docker Compose
echo "[4/4] Instalando Docker Compose..."
if ! command -v docker-compose &> /dev/null; then
    sudo apt-get install docker-compose -y
    echo "Docker Compose instalado correctamente."
else
    echo "Docker Compose ya está instalado."
fi

echo "--- Instalación finalizada exitosamente ---"
echo "Nota: Por favor, cierra sesión y vuelve a entrar para aplicar permisos de Docker."