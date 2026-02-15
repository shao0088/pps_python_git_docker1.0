# -------- FASE 1: Resolución de dependencias --------
FROM python:3.12-slim AS build

# Directorio de trabajo
WORKDIR /app

# Copiar requirements.txt y resolver dependencias
COPY requirements.txt .
RUN pip install --user --no-cache-dir -r requirements.txt

# -------- FASE 2: Ejecución --------
FROM python:3.12-slim

# Directorio de trabajo
WORKDIR /app

# Copiar código fuente
COPY . .

# Copiar dependencias desde la fase build
COPY --from=build /root/.local /root/.local

# Añadir PATH para pip --user
ENV PATH=/root/.local/bin:$PATH

# Puerto que exponemos
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]
