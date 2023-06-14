#!/bin/bash

# Clonar el repositorio
git clone https://github.com/rubeniriso/tarea-GPI2.git
cd tarea-GPI2/Mifare\ Classic\ Tool/

# Compilar
export ANDROID_HOME=/home/alumno/Android/
export ANDROID_SDK_ROOT=/home/alumno/Android/
./gradlew :app:build



# Ejecutar el analisis de codigo estático con PMD
/home/alumno/Descargas/pmd-bin-7.0.0-rc2/bin/pmd check -d ../Mifare\ Classic\ Tool/ --rulesets=rulesets/java/quickstart.xml -r ../Entregables/results.txt



# Mover los ejecutables a la carpeta Ejecutables
mv app/build/outputs/apk/release/app-release-unsigned.apk ../Entregables/
mv app/build/outputs/apk/debug/app-debug.apk ../Entregables/


sudo rm -d -r ../easybuggy
cd ..
git clone https://github.com/k-tamura/easybuggy
# Analisis de codigo estático con PMD de Easybuggy

/home/alumno/Descargas/pmd-bin-7.0.0-rc2/bin/pmd check -d ../easybuggy/ --rulesets=../ruleset.xml -r ../Entregables/resultsEasyBuggy.txt


# Compilar utilizando Maven según la guía de easybuggy
cd ../easybuggy/
mvn clean install
