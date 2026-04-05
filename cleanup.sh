#!/bin/bash
echo "Iniciando limpieza de logs: $(date)"
# Borra logs viejos para ahorrar espacio
sudo find /var/log -name "*.log" -mtime +7 -delete
echo "Limpieza terminada."
