#!/bin/bash
echo "Bienvenido a mi calculadora."
echo "Deseas SUMAR, RESTAR, MULTIPLICAR o DIVIDIR?"
read op
if [ "$op" = SUMAR ]; then
	echo "Has elegido sumar, escriba el primer número."
	read suma1
	echo "Tu primer número es $suma1, escriba el siguiente numero."
	read suma2
	suma=$((suma1 + suma2))
	echo "El resultado de tu suma es $suma."

elif [ "$op" = RESTAR ]; then
        echo "Has elegido restar, escriba el primer número."
        read resta1
        echo "Tu primer número es $resta1, escriba el siguiente numero."
        read resta2
        resta=$((resta1 - resta2))
        echo "El resultado de tu resta es $resta."

elif [ "$op" = MULTIPLICAR ]; then
        echo "Has elegido multiplicar, escriba el primer número."
        read mult1
        echo "Tu primer número es $mult1, escriba el siguiente numero."
        read mult2
        mult=$((mult1 * mult2))
        echo "El resultado de tu multiplicación es $mult."

elif [ "$op" = DIVIDIR ]; then
        echo "Has elegido dividir, escriba el primer número."
        read divd1
        echo "Tu primer número es $suma1, escriba el siguiente numero."
        read divd2
        divd=$((divd1 / divd2))
        echo "El resultado de tu división es $divd."

else
	echo "Opción no valida. Solo puedes elegir: SUMAR, RESTAR, MULTIPLICAR o DIVIDIR."
	echo "Recuerda tener cuidado con las mayúsculas."
fi
