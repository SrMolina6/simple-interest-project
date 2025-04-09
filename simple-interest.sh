#!/bin/bash

# Solicitar al usuario los valores
echo "Ingrese el capital inicial (P):"
read capital
echo "Ingrese la tasa de interés anual (r) en porcentaje:"
read tasa
echo "Ingrese el tiempo en años (t):"
read tiempo

# Calcular el interés simple
interes=$(echo "$capital * $tasa * $tiempo / 100" | bc)

# Calcular el monto total
monto_total=$(echo "$capital + $interes" | bc)

# Mostrar los resultados
echo "El interés simple es: $interes"
echo "El monto total a pagar es: $monto_total"
