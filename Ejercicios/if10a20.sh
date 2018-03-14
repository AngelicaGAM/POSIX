#!/bin/bash 
Var=$#
if [ $1 -gt 10 -a $1 -le 20 ]
 then
	echo "El valor esta en el rango"
 fi

if [ $1 -le 10 ]
 then 
	echo "El numero esta abajo del  Rango"
 elif [ $1 -gt 20 ]
 then 
	echo "El numero esta Arriba del Rango"
fi
