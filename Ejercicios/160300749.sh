#!/bin/bash

#Angelica Arellanes Merino
#me crea archivos con las mismas heads debe obtener nom de archivo y num de archivos
FECHA=`date +"%G %m %d"`
nomdir=${@: 1: 1}
num=${@: 1: 2}

if [ $# -lt 2 ]
then
echo "$0 error: debe escribir un directorio y un archivo"
echo "$FECHA : Error 1 - Pocos argumentos" >> cmd.log
exit 1
fi
        #error 2 sobran
         if [ $# -gt 2 ]
        then
         echo "$0 error sobran argumentos"
        echo "$FECHA : Error 2 - Muchos Argumentos" >> cmd.log
        exit 2
        fi



       		 for (( i=1;i<=$2;i++))
			 do

        	        touch $nomdir$i
                	chmod 666 $nomdir$i
 	                echo " #Angelica Arellanes Merino /n #160300749 /n  $FECHA $nomdir-$i " > $nomdir$i
        		done



                                exit 0




	
