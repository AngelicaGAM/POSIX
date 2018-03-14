#!/bin/bash
#error 1 si falta

ID=`basename $0`
FECHA=`date +"%b %d %T"`
HOST=`hostname`

nomdir=$1
archivo=$2

if [ $# -lt 2 ]
then
echo "$0 error: debe escribir un directorio y un archivo"
echo "$FECHA $HOST $ID: Error 1 - Pocos argumentos" >> cmd.log
exit 1
fi
	#error 2 sobran
	 if [ $# -gt 2 ]
	then
	 echo "$0 error sobran argumentos"
	echo "$FECHA $HOST $ID: Error 2 - Muchos Argumentos" >> cmd.log
        exit 2
	fi

			#checo si existe
		if [ -d $nomdir ]
		then
		cd $nomdir
		#Existe la carpeta creo el archivo
			if [ -e $archivo ]
			then
			echo "existe archivo"
			echo "$FECHA $HOST $ID: Error 3 - Existe la carpeta" >> cmd.log
			exit 3
			else
				touch $archivo
				exit 0
			fi
		else
			mkdir $nomdir
			cd $nomdir
			if [ -e $archivo ]
			then
				echo "existe"
				echo "$FECHA $HOST $ID: Error 3 Existe el archivo" >> cmd.log
				exit 3
			else
				touch $archivo
				exit 0
			fi
		fi
