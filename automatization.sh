#!/bin/bash

# Clonar el repositorio
git clone https://github.com/rubeniriso/tarea-GPI2.git
cd tarea-GPI2/Mifare\ Classic\ Tool/

# Compilar
./gradlew

# Ejecutar el analisis de codigo estático con PMD
# Lo he añadido al PATH y el resultado está en .gitignore
pmd check ../Mifare\ Classic\ Tool/ --rulesets=rulesets/java/quickstart.xml -r ./results.txt
