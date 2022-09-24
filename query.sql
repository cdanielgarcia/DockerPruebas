create table pais(
   id_pais serial,
   nombre varchar(30) not null,       
   PRIMARY KEY (id_pais)
  
);
create table departamento(
   id_departamento serial,
   pais_id int not null,
   Nombre varchar(30) not null,       
   PRIMARY KEY (id_departamento),
   FOREIGN KEY (pais_id) REFERENCES pais(id_pais)
);

create table ciudad(
   id_ciudad serial,
   departamento_id int not null,
   nombre varchar(30) not null,       
   PRIMARY KEY (id_ciudad),
   FOREIGN KEY (departamento_id) REFERENCES departamento(id_departamento)
);


create table persona(
   id_persona serial,
   ciudad_id int not null,
   nombre varchar(30) not null, 
   apellido varchar(30) not null,      
   PRIMARY KEY (id_persona),
   FOREIGN KEY (ciudad_id) REFERENCES ciudad(id_ciudad)
);

insert into pais(nombre) values('colombia');
insert into pais(nombre) values('argentina');
insert into pais(nombre) values('francia');
insert into pais(nombre) values('España');

insert into departamento(pais_id, nombre) values(1, 'tolima');
insert into departamento(pais_id, nombre) values(2, 'buenos aires');
insert into departamento(pais_id, nombre) values(3, 'paris');
insert into departamento(pais_id, nombre) values(4, 'madrid');

insert into ciudad(departamento_id, nombre) values (1, 'ibague');
insert into ciudad(departamento_id, nombre) values (2, 'provincia argentina');
insert into ciudad(departamento_id, nombre) values (3, 'parque de los principes');
insert into ciudad(departamento_id, nombre) values (4, 'valdevedas');

insert into persona(ciudad_id, nombre, apellido) values(1, 'michael', 'garcia');
insert into persona(ciudad_id, nombre, apellido) values(2, 'Elio', 'ortiz');
insert into persona(ciudad_id, nombre, apellido) values(3, 'juan', 'castillon');
insert into persona(ciudad_id, nombre, apellido) values(4, 'ana', 'molano');


