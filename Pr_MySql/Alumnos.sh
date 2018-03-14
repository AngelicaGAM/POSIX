#!/bin/sh

cat IT0162\ -\ TelemaÌtica  > all
echo " " >> all
cat IT0105\ -\ OrganizacioÌn\ y\ estructura\ de\ computadoras >> all
echo " " >> all
cat IT0105\ -\ OrganizacioÌn\ y\ estructura\ de\ computadoras2 >> all
echo " " >> all
cat IT0211\ -\ Redes\ locales >> all
echo " " >> all
cat IT0318\ -\ DisenÌo\ de\ sistemas\ operativos >> all
echo " " >> all
#Quito la primera linea
cut -d" " -f2- all | cut -d";" -f1 > uno
sort uno | uniq > dos

rm Alu.sql
#echo "DROP DATABASE Proyecto1;" > Alu.sql
echo "CREATE DATABASE Proyecto1;" >> Alu.sql
echo "USE Proyecto1;" >> Alu.sql
echo "CREATE TABLE Alumnos(Matricula varchar(255), Apellidos varchar(255), Nombres varchar(255));" >> Alu.sql

while read -r linea
do
 mat=` echo $linea | cut -d" " -f1 `
 ap=` echo $linea | cut -d" " -f2- |cut -d"/" -f1 `
 nom=` echo $linea | cut -d"/" -f2 `
echo "INSERT INTO Alumnos(Matricula, Apellidos, Nombres)  VALUES ('$mat','$ap','$nom');" >> Alu.sql
done < dos

mysql -u root <Alu.sql -pLA5TAOLA

rm all uno dos
