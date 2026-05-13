#!/bin/bash
# Script para gestión de usuarios sugerido en Punto C
# Crear un usuario de prueba para consultoría externa
sudo useradd consultor_externo
# Asignar permisos al grupo docker (Punto C: gestión de permisos)
sudo usermod -aG docker consultor_externo
echo "Usuario consultor_externo creado con permisos de Docker exitosamente."