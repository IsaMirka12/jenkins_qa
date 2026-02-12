#!/bin/bash

echo "inicializando ejecucion"

if [ ! -d "venv"]; then
    echo "entono virtual no creado"
    python3 -m venv venv
fi

if [ -f venv/bin/activate ]; then
    source venv/bin/activate
elif [ -f venv/scripts/activate ]; then
    source venv/scripts/activate
else
    echo "no se pudo activar el entorno"
    exit 1
fi

echo "instalando dependencias"
pip install --upgrade pip --break-system-packages
pip install -r requirement.txt --break-system-packages

echo "ejecutando las pruebas con pytest"
venv/bin/python -m pytest test/ test/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "pruebas finalizadas, resultados en reports"
