#!/bin/bash

#  Ciclo until
# Este ciclo se puede o no ejecutar, es decir se ejecuta cero o mas veces dependiendo la condicion
# La condicion debe ser falsa para entrar al ciclo

CONTADOR=90

until [ $CONTADOR -gt 10 ]
do
	echo "$CONTADOR"
	((CONTADOR++))
done
echo "Terminamos"
exit 0
