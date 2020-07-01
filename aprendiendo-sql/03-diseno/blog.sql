CREATE TABLES usuarios(
id int(255) auto_increment not null,
nombre varchar(100) not null,
apellidos varchar(100) not null,
email varchar(255) not null,
passwor varchar(255) not null,
fecha	date not null,
CONSTRAINT pk_usuarios PRIMARY KEY(id),
CONSTRAINT uq_email UNIQUE(email)
)ENGINE =innoDb;

CREATE TABLE categorias(
id int(255) auto_increment not null,
nombre varchar (100),
CONSTRAINT pk_categorias PRIMARY KEY(id)
)ENGINE =innoDb;

CREATE TABLE entradas(
id int(255) auto_increment not null,
usuarios_id int(255) not null,
categoria_id, int(255) not null,
titulo varchar(255) not null,
descripcion MEDIUMTEXT,
fecha date not null,
CONSTRAINT pk_entradas PRIMARY KEY(id),
CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuarios_id) REFERENCES usuarios(id),
CONSTRAINT fk_entrada_categoria FOREIGN KEY(categoria_id_id) REFERENCES categorias(id) 
)ENGINE =innoDb;
 
