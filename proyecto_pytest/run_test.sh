#!/bin/bash

echo "inicializando ejecucion"

python3 -m venv venv
source venv/bin/activate

echo "instalando dependencias"
pip install --upgrade pip
pip install pytest pytest-html

mkdir -p reports

echo "ejecutando las pruebas con pytest"
pytest test/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "pruebas finalizadas, resultados en reports"
