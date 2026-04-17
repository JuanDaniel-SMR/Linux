#!/bin/bash

# crea un directorio SI NO EXISTE YA, si existe no lo crea bro
if [ ! -d "HOY" ]; then
    mkdir HOY
    echo "Directorio HOY creado."
else
    echo "El directorio HOY ya existe."
fi

cd HOY

# crea el archivo y pone la fecha, si no esta lo reescribe bro.
if [ ! -f "Hora.txt" ]; then
    touch Hora.txt
    echo "Archivo Hora.txt creado."
else
    echo "Archivo Hora.txt ya existe, actualizando fecha..."
fi

date '+%Y-%m-%d %H:%M:%S' > Hora.txt
chmod go+r Hora.txt

echo "Fecha guardada: $(cat Hora.txt)"
