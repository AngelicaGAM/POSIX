#!/bin/sh
#160300749
#Angélica Guadalupe Arellanes Merino.
#Consulta de mysqlpor Matricula y ID de Asignatura.

#Solicito al usuario ingresar Matricula y ID Asignatura.
echo "Matricula: "
 read mat
echo " ID Asignatura"
 read asig
     #Campos que necesito para la consulta
echo "select Calificaciones.Asignatura, Alumnos.Nombres, Alumnos.Apellidos , Calificaciones.Cal_1, Calificaciones.Cal_2, Calificaciones.Cal_3, Calificaciones.Cal_Final from Calificaciones inner join Alumnos on Alumnos.Matricula=Calificaciones.Matricula WHERE Alumnos.Matricula='$mat' && Calificaciones.Asignatura='$asig';" >> C.sql

mysql -u root -pLA5TAOLA Proyecto1 < C.sql > Consul
#Le muestro al usuario la consulta.
echo "\n"
cat Consul
echo "\n"

