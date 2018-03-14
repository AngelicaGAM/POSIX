#!/bin/bash

# Ciclo While
# El ciclo se realiza mientras la condicion sea verdadera
# en caso de no tener la respuesta, antes de iniciar el ciclo se usa el truco de 
# generar una respuesta verdadera como en el ejemplo
# Este ciclo se hace al menos una vez
# El ciclo se realiza si la condicion es verdadera

# SINTAXIS
# while condicion
# do
#	comandos
# done


ENTRADA=hola
while [ "$ENTRADA" != "bye" ]
do
  echo "Escribe tu respuesta (bye para salir)"
  read ENTRADA       # read lee de la entrada standard, la variabe se usa sin el simbolo $ en la entrada
  echo "Tu respuesta fue: $ENTRADA"
done

echo "Terminamos"

exit 0
