#!/bin/bash
set -e  # detiene el script si algo falla

echo "inicializando ejecucion"

# Verifica si existe el entorno virtual
if [ ! -d "venv" ]; then
    echo "entorno virtual no creado"
    python3 -m venv venv
fi

# Activar entorno
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
elif [ -f "venv/Scripts/activate" ]; then
    source venv/Scripts/activate
else
    echo "no se pudo activar el entorno"
    exit 1
fi

echo "instalando dependencias"
pip install --upgrade pip
pip install -r requirements.txt

echo "ejecutando las pruebas con pytest"
python -m pytest test/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "pruebas finalizadas, resultados en reports"
