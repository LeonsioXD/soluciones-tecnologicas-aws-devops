# Soluciones Tecnológicas del Futuro - Plataforma DevOps

## Descripción del Proyecto
Este repositorio contiene la arquitectura de infraestructura y los scripts de automatización diseñados para la empresa **Soluciones Tecnológicas del Futuro**. El objetivo principal es la transición de despliegues manuales hacia un ecosistema automatizado, portable y monitoreado en la nube de AWS.

## Marco de Trabajo (Framework C.A.M.S.)
El proyecto se basa en los pilares fundamentales de DevOps:
* **Culture:** Fomento de la responsabilidad compartida y transparencia.
* **Automation:** Eliminación de tareas manuales mediante IaC y contenedores.
* **Measurement:** Toma de decisiones basada en métricas de rendimiento reales.
* **Sharing:** Gestión de conocimiento mediante el uso de este repositorio centralizado.

## Tecnologías y Herramientas
* **Nube:** AWS (EC2, S3, CloudFormation, CloudWatch).
* **Contenedores:** Docker & Docker Compose (Implementando Multi-stage builds).
* **Lenguajes:** Python (Boto3) & Bash (Scripts de limpieza y mantenimiento).
* **Control de Versiones:** Git con convenciones de mensajes profesionales (`feat`, `fix`, `docs`).

## Estructura de Archivos
* `infraestructura.yaml`: Plantilla de CloudFormation para el aprovisionamiento declarativo.
* `Dockerfile`: Configuración de imagen ligera y segura para la aplicación.
* `docker-compose.yml`: Orquestación de servicios, redes personalizadas y volúmenes.
* `aws_report.py`: Script para la auditoría de recursos en la cuenta de AWS.
* `cleanup.sh`: Automatización de limpieza de logs para mantenimiento preventivo.
* `install_deps.sh`: Automatización de la configuración inicial del entorno (Git, Docker, Python).

## Instrucciones de Despliegue
1.  **Infraestructura:** Cargar `infraestructura.yaml` en AWS CloudFormation.
2.  **Preparación:** Asegurarse de que la instancia tenga el `LabRole` asignado.
3.  **Ejecución:** ```bash
    sudo docker-compose up -d
    ```

---
**Desarrollado por:** León  
**Institución:** Tecmilenio
