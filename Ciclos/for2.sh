#!/bin/bash

# Usos de Iteraciones (Ciclos)
#cANTIDAD DE PARAMETROS

# Ciclo FOR tradicional

# Ejecuta la lista de comandos una vez para cada item de la lista
# La lista puede ser variabe como podemos apreciar en los ejemplos
# En el ejemplo la variable $var1 toma el valor de cada item de la lista
PARAM=$1

for (( var1 = 1 ; var1 <= $PARAM; var1++ ))
do
	#comandos 
	echo "$var1"
done

echo "Terminamos"

exit 0
