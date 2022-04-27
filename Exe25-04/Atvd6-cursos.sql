# Atividade 6 - Cursos

create database db_cursos;
use db_cursos;

#Passo 1
create table categoria(
id bigint auto_increment,
tipo varchar(255) not null,
cidade varchar(255) not null,
primary key (id)
);

#Passos 2 e 3
create table cursos(
id bigint auto_increment,
nome varchar(255) not null,
vagas int,
duracao varchar(255),
valor double,
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references categoria(id)
);

#Passo 4
insert categoria (tipo,cidade) value ('Linguagem de programação','Recife');
insert categoria (tipo,cidade) value ('Linguagem de programação','São Paulo');
insert categoria (tipo,cidade) value ('Linguagem de programação','Curitiba');
insert categoria (tipo,cidade) value ('Linguagem de programação','Natal');
insert categoria (tipo,cidade) value ('Banco de dados','Recife');
insert categoria (tipo,cidade) value ('Banco de dados','São Paulo');
insert categoria (tipo,cidade) value ('Banco de dados','Curitiba');
insert categoria (tipo,cidade) value ('POO','Recife');
insert categoria (tipo,cidade) value ('POO','São Paulo');
insert categoria (tipo,cidade) value ('POO','Curitiba');

#Passo 5
insert cursos (nome,vagas,duracao,valor,id_categoria) value ('JDK e JRE',20,'2 Semanas',200,1);
insert cursos (nome,vagas,duracao,valor,id_categoria) value ('JDK e JRE',23,'2 Semanas',220,2);
insert cursos (nome,vagas,duracao,valor,id_categoria) value ('JDK e JRE',18,'2 Semanas',210,3);
insert cursos (nome,vagas,duracao,valor,id_categoria) value ('Java back end',25,'9 Semanas',620,4);
insert cursos (nome,vagas,duracao,valor,id_categoria) value ('Python',30,'10 Semanas',550,3);
insert cursos (nome,vagas,duracao,valor,id_categoria) value ('Java Fullstack',40,'12 Semanas',1100,1);
insert cursos (nome,vagas,duracao,valor,id_categoria) value ('MySQL Workbench',40,'12 Semanas',750,5);
insert cursos (nome,vagas,duracao,valor,id_categoria) value ('MySQL Workbench',35,'11 Semanas',760,6);
insert cursos (nome,vagas,duracao,valor,id_categoria) value ('Introdução a POO',16,'4 Semanas',340,10);
insert cursos (nome,vagas,duracao,valor,id_categoria) value ('Java Fullstack',60,'15 Semanas',800,4);

#Passo 6
select * from cursos where valor > 500;

#Passo 7
select * from cursos where valor >=600 and valor <=1000;

#Passo 8
select * from cursos where nome like "%j%";

#Passo 9
select * from cursos inner join categoria on categoria.id = cursos.id_categoria;

#Passo 10
select * from cursos inner join categoria on categoria.id = cursos.id_categoria where categoria.id=3;

#Testes e reparos
select * from cursos;
select cursos.nome,cursos.vagas,cursos.duracao,cursos.valor,categoria.tipo,categoria.cidade from cursos 
inner join categoria on categoria.id = cursos.id_categoria;
select cursos.nome,cursos.vagas,cursos.duracao,cursos.valor,categoria.tipo,categoria.cidade from cursos 
inner join categoria on categoria.id = cursos.id_categoria where nome = 'Java Fullstack';
select cursos.nome,cursos.vagas,cursos.duracao,cursos.valor,categoria.tipo,categoria.cidade from cursos 
inner join categoria on categoria.id = cursos.id_categoria where cidade = 'Recife';
drop table cursos;