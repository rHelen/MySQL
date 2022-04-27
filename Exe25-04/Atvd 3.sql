#Atividade 3 - Farmácia

create database db_farmacia;
use db_farmacia;

#Passo 1
create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
conteudo varchar(255),
primary key (id)
);

#Passo 4
insert tb_categoria (tipo,conteudo) value ('Pressão','12 unidades');
insert tb_categoria (tipo,conteudo) value ('Pressão','20ml');
insert tb_categoria (tipo,conteudo) value ('Enxaqueca','9 unidades');
insert tb_categoria (tipo,conteudo) value ('Enxaqueca','15ml');
insert tb_categoria (tipo,conteudo) value ('Vitamina','15 unidades');
insert tb_categoria (tipo,conteudo) value ('Vitamina C','10 unidades');

#Passos 2 e 3
create table produtos(
id bigint auto_increment,
nome varchar(255),
validade varchar(255),
valor double,
tempo double,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

#Passo 5
insert produtos (nome,validade,valor,tempo,categoria_id) value ('Paracetamol','10/11/23',10.00,4,3);
insert produtos (nome,validade,valor,tempo,categoria_id) value ('Dipirona','22/07/23',15.00,6,4);
insert produtos (nome,validade,valor,tempo,categoria_id) value ('Combiron','22/11/23',45.00,24,5);
insert produtos (nome,validade,valor,tempo,categoria_id) value ('Benegripe','20/10/23',12.60,5,6);
insert produtos (nome,validade,valor,tempo,categoria_id) value ('Simeticona','21/09/23',23.00,6,3);
insert produtos (nome,validade,valor,tempo,categoria_id) value ('Sumax','20/01/23',32.20,8,3);
insert produtos (nome,validade,valor,tempo,categoria_id) value ('Cefaliv','12/03/23',43.80,8,3);
insert produtos (nome,validade,valor,tempo,categoria_id) value ('Dorflex','02/02/23',21.00,8,3);

#Passo 6
select * from produtos where valor > 50;

#Passo 7
select * from produtos where valor >= 5 and valor <=60;

#Passo 8
select * from produtos where nome like "%c%";

#Passo 9
select * from produtos
inner join tb_categoria on tb_categoria.id = produtos.categoria_id;

#Passo 10
select produtos.nome,produtos.validade,produtos.valor,produtos.tempo,tb_categoria.tipo,tb_categoria.conteudo from produtos 
inner join tb_categoria on tb_categoria.id = produtos.categoria_id where tb_categoria.id=3;

#Teste
select produtos.nome,produtos.validade,produtos.valor,produtos.tempo,tb_categoria.tipo,tb_categoria.conteudo from produtos 
inner join tb_categoria on tb_categoria.id = produtos.categoria_id;

select * from produtos;

drop table produtos;
