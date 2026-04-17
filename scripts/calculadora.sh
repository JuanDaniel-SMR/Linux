#!/bin/bash
echo "Bienvenido a mi calculadora."
echo "Deseas SUMAR, RESTAR, MULTIPLICAR o DIVIDIR?"
read op
if [ "$op" = SUMAR ]; then
	echo "Has elegido sumar, escriba el primer número."
	read num1
	echo "Tu primer número es $num, escriba el siguiente numero."
	read num2
	resultado=$((num1 + num2))
	echo "El resultado de tu suma es $resultado."

elif [ "$op" = RESTAR ]; then
        echo "Has elegido restar, escriba el primer número."
        read num1
        echo "Tu primer número es $num1, escriba el siguiente numero."
        read num2
        resultado=$((num1 - num2))
        echo "El resultado de tu resta es $resultado."

elif [ "$op" = MULTIPLICAR ]; then
        echo "Has elegido multiplicar, escriba el primer número."
        read num1
        echo "Tu primer número es $num1, escriba el siguiente numero."
        read num2
        resultado=$((num1 * num2))
        echo "El resultado de tu multiplicación es $resultado."

elif [ "$op" = DIVIDIR ]; then
        echo "Has elegido dividir, escriba el primer número."
        read num1
        echo "Tu primer número es $num1, escriba el siguiente numero."
        read num2
        resultado=$((num1 / num2))
        echo "El resultado de tu división es $resultado."

else
	echo "Opción no valida. Solo puedes elegir: SUMAR, RESTAR, MULTIPLICAR o DIVIDIR."
	echo "Recuerda tener cuidado con las mayúsculas."
fi
