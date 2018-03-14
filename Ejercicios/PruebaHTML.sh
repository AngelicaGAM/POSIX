#!/bin/bash
Busca en un html todo lo que termine con.swf
v=$1
v2=.swf
cat $v | tr '\<' '\n' > x
while read -r linea
do
       DATO="$linea"
	grep $v2$ x >> SWF

done < x

echo "Listo"


exit 0
