#!/bin/bash

echo "inicializando ejecucion"
sourse venv/bin/activate

echo "instalando dependencias" 

pip install -r requirement.txt

echo "ejecutando las pruebas con pytest"

pytest test/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "pruebas finalizadas, resultados en reports"
