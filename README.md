# pps_python_git_docker1.0

Aplicación web "La Balleta de la Fortuna"

#Función:
Cada vez que se acceda a la web, nos dirá un texto auspicioso aleatorio.

## Instalación y ejecución

## Requisitos
- Python 3.10 o superior
- Git

## Ejecución de la app
1. Clonar el repositorio:
  - git clone https://github.com/shao0088/pps_python_git_docker.git
  - cd pps_python_git_docker

2. Crear y activar un entorno virtual
  - python -m venv venv
  - source venv/bin/activate

3. Instalar las dependencias:
  - pip install -r requirements.txt

4. Ejecutar el script:
  - python app.py

5. Acceder a la web:
   - `http://127.0.0.1:5000` → "Hola, mundo"
   - `http://127.0.0.1:5000/frotar/<n>` → obtener N frases aleatorias de la Bayeta de la Fortuna

## Ejecución con Docker

1. Construir la imagen:
   - docker build -t bayeta_app .

2. Ejecutar el contenedor:
   - docker run -p 5000:5000 --network bayeta_net bayeta_app

3. Acceder en navegador:
   - `http://127.0.0.1:5000` → Hola, mundo
   - `http://127.0.0.1/frotar/<n>` → obtener N frases aleatorias
