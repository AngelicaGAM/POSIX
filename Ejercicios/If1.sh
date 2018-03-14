#!/bin/bash

# Ciclo While
# El ciclo se realiza mientras la condicion sea verdadera
# Ejemplo de lectura de un archivo linea a linea

# SINTAXIS
# while condicion
# do
#	comandos
# done

#me aguarda correos x su dominio

cut -d"@" -f2 ListaDeCorreos > dominios 
sort -d dominios > Lista

while read -r linea
do
        DATO="$linea"
	touch $DATO
	grep $DATO$ ListaDeCorreos >>  $DATO

done < Lista

echo "Listo"


exit 0
