#!/bin/sh
#matricula Asigna C1 C2 C3 C FIN
#echo "DROP DATABASE Proyecto1;" > M.sql
#echo "CREATE DATABASE Proyecto1;" >> M.sql

echo "USE Proyecto1;" > M.sql
echo "CREATE TABLE Calificaciones(Matricula varchar(255), Asignatura varchar(255), Cal_1 int, Cal_2 int, Cal_3 int, Cal_Final int);" >> M.sql

Or=` echo "IT0105"`
Or2=` echo "IT0105"`
Tl=` echo "IT0162"`
Rd=` echo "IT0211"`
Ds=` echo "IT0318"`
cat IT0105\ -\ OrganizacioÌn\ y\ estructura\ de\ computadoras | cut -d" " -f2- > O
cat IT0105\ -\ OrganizacioÌn\ y\ estructura\ de\ computadoras2 | cut -d" " -f2- > O2
cat IT0211\ -\ Redes\ locales | cut -d" " -f2- > R
cat IT0162\ -\ TelemaÌtica | cut -d" " -f2- > T
cat IT0318\ -\ DisenÌo\ de\ sistemas\ operativos |  cut -d" " -f2- > D


while read -r linea
do
	mat=` echo $linea | cut -d" " -f1 `
	c1=`  echo $linea | cut -d";" -f2 `
	c2=`  echo $linea | cut -d";" -f3 `
	c3=`  echo $linea | cut -d";" -f4 `
	cf=`  echo $linea | cut -d";" -f5 `
	echo "INSERT INTO Calificaciones(Matricula, Asignatura, Cal_1, Cal_2, Cal_3, Cal_Final) VALUES ('$mat','$Or','$c1','$c2','$c3','$cf');" >> M.sql
done < O

while read -r linea2
do
	mat=` echo $linea2 | cut -d" " -f1 `
	c1=`  echo $linea2 | cut -d";" -f2 `
	c2=`  echo $linea2 | cut -d";" -f3 `
	c3=`  echo $linea2 | cut -d";" -f4 `
	cf=`  echo $linea2 | cut -d";" -f5 `
	echo "INSERT INTO Calificaciones(Matricula, Asignatura, Cal_1, Cal_2, Cal_3, Cal_Final) VALUES ('$mat','$Or2','$c1','$c2','$c3','$cf');" >> M.sql
done < O2

while read -r linea3
do
	mat=` echo $linea3 | cut -d" " -f1 `
	c1=`  echo $linea3 | cut -d";" -f2 `
	c2=`  echo $linea3 | cut -d";" -f3 `
	c3=`  echo $linea3 | cut -d";" -f4 `
	cf=`  echo $linea3 | cut -d";" -f5 `
	echo "INSERT INTO Calificaciones(Matricula, Asignatura, Cal_1, Cal_2, Cal_3, Cal_Final) VALUES ('$mat','$Rd','$c1','$c2','$c3','$cf');" >> M.sql
done < R
#tl
while read -r linea4
do
	mat=` echo $linea4 | cut -d" " -f1 `
	c1=`  echo $linea4 | cut -d";" -f2 `
	c2=`  echo $linea4 | cut -d";" -f3 `
	c3=`  echo $linea4 | cut -d";" -f4 `
	cf=`  echo $linea4 | cut -d";" -f5 `
	echo "INSERT INTO Calificaciones(Matricula, Asignatura, Cal_1, Cal_2, Cal_3, Cal_Final) VALUES ('$mat','$Tl','$c1','$c2','$c3','$cf');" >> M.sql
done < T

while read -r linea5
do
	mat=` echo $linea5 | cut -d" " -f1 `
	c1=`  echo $linea5 | cut -d";" -f2 `
	c2=`  echo $linea5 | cut -d";" -f3 `
	c3=`  echo $linea5 | cut -d";" -f4 `
	cf=`  echo $linea5 | cut -d";" -f5 `
	echo "INSERT INTO Calificaciones(Matricula, Asignatura, Cal_1, Cal_2, Cal_3, Cal_Final) VALUES ('$mat','$Ds','$c1','$c2','$c3','$cf');" >> M.sql
done < D

mysql -u root <M.sql -pLA5TAOLA

rm O O2 D T R
