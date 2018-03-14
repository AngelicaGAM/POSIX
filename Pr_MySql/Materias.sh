#!/bin/sh
rm Materias.sql
#echo "DROP DATABASE Proyecto1;" > Materias.sql
#echo "CREATE DATABASE Proyecto1;" >> Materias.sql
echo "USE Proyecto1;" > Materias.sql

echo "CREATE TABLE Materias(ID varchar(255), Nombre_Asig varchar(255));" >> Materias.sql

echo "INSERT INTO Materias(ID, Nombre_Asig)  VALUES ('IT0105','Organización y Estructura de Computadoras');" >> Materias.sql
echo "INSERT INTO Materias(ID, Nombre_Asig)  VALUES ('IT0162','Telematica');" >> Materias.sql
echo "INSERT INTO Materias(ID, Nombre_Asig)  VALUES ('IT0318','Diseño de Sistemas Operativos');" >> Materias.sql
echo "INSERT INTO Materias(ID, Nombre_Asig)  VALUES ('IT0105','Organización y Estructura de Computadoras');" >> Materias.sql
echo "INSERT INTO Materias(ID, Nombre_Asig)  VALUES ('IT0211','Redes Locales');" >> Materias.sql

mysql -u root <Materias.sql -pLA5TAOLA


