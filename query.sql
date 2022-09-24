create table Persona(
   id_persona int not null auto_increment,
   ciudad_id int not null,
   nombre varchar(30) not null, 
   apellido varchar(30) not null,      
   PRIMARY KEY (id_persona),
   FOREIGN KEY (ciudad_id) REFERENCES Ciudad(id_ciudad)
);

create table Ciudad(
   id_ciudad int not null auto_increment,
   departamento_id int not null,
   nombre varchar(30) not null,       
   PRIMARY KEY (id_ciudad),
   FOREIGN KEY (departamento_id) REFERENCES Departamento(id_departamento)
);

create table Departamento(
   id_departamento int not null auto_increment,
   pais_id int not null,
   Nombre varchar(30) not null,       
   PRIMARY KEY (id_departamento),
   FOREIGN KEY (pais_id) REFERENCES Pais(id_pais)
);

create table Pais(
   id_pais int not null auto_increment,
   nombre varchar(30) not null,       
   PRIMARY KEY (id_pais),
  
);
----Paises
insert into Pais(nombre) values('colombia');
insert into Pais(nombre) values('argentina');
insert into Pais(nombre) values('francia');
insert into Pais(nombre) values('España');

----Departamentos
insert into Departamento(pais_id, nombre) values(1, 'tolima');
insert into Departamento(pais_id, nombre) values(2, 'buenos aires');
insert into Departamento(pais_id, nombre) values(3, 'paris');
insert into Departamento(pais_id, nombre) values(4, 'madrid');

-----Ciudades
insert into Ciudad(departamento_id, nombre) values (1, 'ibague');
insert into Ciudad(departamento_id, nombre) values (2, 'provincia argentina');
insert into Ciudad(departamento_id, nombre) values (3, 'parque de los principes');
insert into Ciudad(departamento_id, nombre) values (4, 'valdevedas');

----Personas
insert into Persona(ciudad_id, nombre, apellido) values(1, 'michael', 'garcia');
insert into Persona(ciudad_id, nombre, apellido) values(2, 'Elio', 'ortiz');
insert into Persona(ciudad_id, nombre, apellido) values(3, 'juan', 'castillon');
insert into Persona(ciudad_id, nombre, apellido) values(4, 'ana', 'molano');


