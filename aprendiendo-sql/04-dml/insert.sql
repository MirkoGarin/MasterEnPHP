#INSERTAR NUEVOS REGISTR
INSERT INTO usuarios VALUES (null, "Mirko","Garin","mirkogarin@gmail.com", "12345", "2019-01-05");
INSERT INTO usuarios VALUES (null, "Jose","Garcia","jose@garcia", "12345", "2020-05-01"),(null, "Juan","Mendez","juan@mendez", "12345", "2020-05-01");
INSERT INTO usuarios VALUES (null, "Paco","Lopez","paco@lopez", "12345", "2020-05-01");;

#insertar filas en campos especificos (no funciona por que no acpta null)
INSERT INTO usuarios (email, passwor) VALUES ("roberto@jimenez", "12345");
