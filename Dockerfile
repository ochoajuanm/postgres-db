# Imagen base
FROM postgres:latest

# Variables de entorno
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD password
ENV POSTGRES_DB mydatabase

# Copia de script para inicializar la base de datos
COPY init.sql /docker-entrypoint-initdb.d/

# Exponer puerto
EXPOSE 5432
