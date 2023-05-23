#!/bin/bash

# Clonar el repositorio
git clone https://github.com/rubeniriso/tarea-GPI2.git
cd tarea-GPI2/Mifare\ Classic\ Tool/

# Compilar
export ANDROID_HOME=/home/alumno/Android/
export ANDROID_SDK_ROOT=/home/alumno/Android/Sdk
./gradlew :app:build

# Ejecutar el analisis de codigo estático con PMD
/home/alumno/Descargas/pmd-bin-7.0.0-rc2/bin/pmd check -d ../Mifare\ Classic\ Tool/ --rulesets=rulesets/java/quickstart.xml -r ./results.txt
