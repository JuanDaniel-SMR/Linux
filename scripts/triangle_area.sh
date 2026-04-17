#!/bin/bash
echo "Bienvenido a calcular el área de un triangulo."
echo "Indique la altura de su triangulo."
read height
echo "Indique la base de su traingulo."
read base
triangle_area=$((height * base /2))
echo "El área de su triangulo es $triangle_area"
