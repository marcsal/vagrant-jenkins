# Entorno local de Jenkins

Este repositorio contiene la configuración para levantar un entorno local de Jenkins utilizando Docker Compose (reemplazando el antiguo Vagrant).

## Uso

1. Asegúrate de tener [Docker](https://docs.docker.com/get-docker/) instalado.
2. Levanta el contenedor:
   ```bash
   docker compose up -d
   ```
3. Accede a Jenkins en [http://localhost:8080](http://localhost:8080).
4. Para detenerlo:
   ```bash
   docker compose down
   ```
