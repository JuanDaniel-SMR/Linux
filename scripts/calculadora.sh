#!/bin/bash
echo "Bienvenido a mi calculadora."
read -p "Deseas SUMAR, RESTAR, MULTIPLICAR o DIVIDIR?."$'\n' op

if [ "$op" = "SUMAR" ]; then
    read -p "Has elegido sumar, escriba el primer número."$'\n' num1
    if [[ "$num1" =~ ^-?[0-9]+$ ]]; then
        read -p "Tu primer número es $num1, escriba el siguiente numero."$'\n' num2
        if [[ "$num2" =~ ^-?[0-9]+$ ]]; then
            resultado=$((num1 + num2))
            echo "El resultado de tu suma es $resultado."
        else
            echo "Tienes que escribir un número válido."
        fi
    else
        echo "Tienes que escribir un número válido."
    fi

elif [ "$op" = "RESTAR" ]; then
    read -p "Has elegido restar, escriba el primer número."$'\n' num1
    if [[ "$num1" =~ ^-?[0-9]+$ ]]; then
        read -p "Tu primer número es $num1, escriba el siguiente numero."$'\n' num2
        if [[ "$num2" =~ ^-?[0-9]+$ ]]; then
            resultado=$((num1 - num2))
            echo "El resultado de tu resta es $resultado."
        else
            echo "Tienes que escribir un número válido."
        fi
    else
        echo "Tienes que escribir un número válido."
    fi

elif [ "$op" = "MULTIPLICAR" ]; then
    read -p "Has elegido multiplicar, escriba el primer número."$'\n' num1
    if [[ "$num1" =~ ^-?[0-9]+$ ]]; then
        read -p "Tu primer número es $num1, escriba el siguiente numero."$'\n' num2
        if [[ "$num2" =~ ^-?[0-9]+$ ]]; then
            resultado=$((num1 * num2))
            echo "El resultado de tu multiplicación es $resultado."
        else
            echo "Tienes que escribir un número válido."
        fi
    else
        echo "Tienes que escribir un número válido."
    fi

elif [ "$op" = "DIVIDIR" ]; then
    read -p "Has elegido dividir, escriba el primer número."$'\n' num1
    if [[ "$num1" =~ ^-?[0-9]+$ ]]; then
        read -p "Tu primer número es $num1, escriba el siguiente numero."$'\n' num2
        if [[ "$num2" =~ ^-?[0-9]+$ ]]; then
            if [ "$num2" -ne 0 ]; then
                resultado=$((num1 / num2))
                echo "El resultado de tu división es $resultado."
            else
                echo "No se puede dividir entre 0."
            fi
        else
            echo "Tienes que escribir un número válido."
        fi
    else
        echo "Tienes que escribir un número válido."
    fi

else
    echo "Opción no valida. Solo puedes elegir: SUMAR, RESTAR, MULTIPLICAR o DIVIDIR."
    echo "Recuerda tener cuidado con las mayúsculas."
fi
