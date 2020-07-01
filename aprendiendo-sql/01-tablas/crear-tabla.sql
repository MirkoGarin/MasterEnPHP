/*
create tablas 
int(numero de caracteres) entero
integer entero
varchar alfanumerico
char alfanumerico
float decimal
date, time, timestampfecha
mediumtext 
longtext 4 billones de caracteres
*/
CREATE TABLE usuarios (
id int(11) auto_increment not null , 
nombre varchar(100) not null,
apellidos varchar(255) not null,
mail varchar (100) not null,
password varchar(255) not null,
CONSTRAINT pk_usuarios PRIMARY KEY (id)
);
