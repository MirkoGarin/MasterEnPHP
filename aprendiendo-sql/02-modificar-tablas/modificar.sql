# renombrar una tabla#
ALTER TABLE usuarios RENAME TO usuarios_renom;

#cambiar nombre de una columna#
ALTER TABLE usuarios_renom CHANGE apellidos apellido varchar (100) NULL;

#modificar una columna sin cambia nombre#

ALTER TABLE usuarios_renom MODIFY apellido char (50) NOT NULL;

#anadir una columna#

ALTER TABLE usuarios_renom ADD website varchar(100) NULL;

#anadir restriccion a una columna#

ALTER TABLE usuarios_renom ADD CONSTRAINT uq_mail unique(mail);

#borrar una columna#

ALTER TABLE usuarios_renom DROP website;
