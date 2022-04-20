#Question 1 - Create data base
create database ecommerce;

#Question 2 - Create table and atributos
create table produtos(
id bigint auto_increment,
tipo char(255) not null,
cor char(255),
tamanho char(255), #Grande, Médio ou Pequeno
estoque int not null, #Quantidade de itens no estoque
valor int not null,
primary key (id)
);

#Question 3 - Adicionando registros
insert into produtos (tipo,cor,tamanho,estoque,valor)
value ("Tênis","Vermelho","Grande",3,300);

insert into produtos (tipo,cor,tamanho,estoque,valor)
value ("Camiseta","Azul","Médio",5,100);

insert into produtos (tipo,tamanho,estoque,valor)
value ("Bolsa","Médio",4,600);

insert into produtos (tipo,cor,tamanho,estoque,valor)
value ("Tênis","Rosa","Grande",2,1000);

insert into produtos (tipo,cor,tamanho,estoque,valor)
value ("Tênis","Laranja","Médio",1,550);

insert into produtos (tipo,cor,estoque,valor)
value ("Mouse","Preto",10,300);

insert into produtos (tipo,cor,estoque,valor)
value ("Teclado","Preto",7,560);

insert into produtos (tipo,cor,estoque,valor)
value ("Caderno","Azul",5,50);

#Question 4 - Valor > 500
select * from produtos where valor > 500;

#Question 5 - Valor < 500
select * from produtos where valor < 500;

#Question 6 - Update
update produtos set valor = 499 where id = 4;

#Teste
select * from produtos;

#Reparo
drop table produtos;