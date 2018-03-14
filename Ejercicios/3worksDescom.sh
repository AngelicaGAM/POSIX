#!/bin/sh
#Verifico si las primeras 3 palabras de un txt son iguales
Arch=$1
#gzip -d $Arch
cat $Arch | tr '\ ' '\n' > x
sed '3q' x > z
uniq -c z > a
sed '1q' a | cut -d" " -f7 > s
num=`cat s`
if [ $num -eq 3 ]
 then
	echo "Los $num son iguales"
else
	echo "ERROR : solo $num SON IGUALES"
fi

