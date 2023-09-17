# Usar la imagen base de Python 3.11
FROM python:3.11

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el contenido de la carpeta backend de tu proyecto al contenedor
COPY backend/ /app/backend/

# Copiar el contenido de la carpeta frontend de tu proyecto al contenedor
COPY frontend/ /app/frontend/

# Instalar las dependencias de Python
RUN pip install -r /app/backend/requirements.txt

# Exponer el puerto en el que se ejecutará tu aplicación
EXPOSE 5000

# Comando para ejecutar tu aplicación
CMD ["python", "backend/app.py"]
