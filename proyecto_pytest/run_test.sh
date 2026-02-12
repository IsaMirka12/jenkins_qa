#!/bin/sh
set -e

echo "inicializando ejecucion"
pwd
whoami

if [ ! -d "venv" ]; then
    echo "creando entorno virtual"
    python3 -m venv venv
fi

if [ -f "venv/bin/activate" ]; then
    . venv/bin/activate
else
    echo "no se pudo activar el entorno"
    ls -la
    exit 1
fi

echo "instalando dependencias"
pip install --upgrade pip
pip install -r requirements.txt


# Crear carpeta de reportes si no existe
mkdir -p reports

echo "ejecutando pytest"
python -m pytest test/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "pruebas finalizadas"
