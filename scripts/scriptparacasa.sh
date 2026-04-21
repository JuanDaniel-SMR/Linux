#!/bin/bash
read -p "Indique cual es su nombre"$'\n' name
fecha=$(date +%A)
echo "Buenas $name, hoy es $fecha."
	if [ ! -f "nombre.txt" ']; then
	touch nombre.txt	
	else	
	echo "El archivo ya existe."
	fi
echo $name >> "nombre.txt"
mv "nombre.txt" "NAME.TXT"
	if [ ! -d "PERSONAS" ']; then
	mkdir "PERSONAS"
	else
	echo "El directorio PERSONAS ya existe, actualizando actual."
	fi
mv "NAME.TXT" PERSONAS
