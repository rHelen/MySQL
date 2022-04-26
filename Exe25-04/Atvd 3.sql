create database db_farmacia;
use db_farmacia;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
conteudo varchar(255),
primary key (id)
);

insert tb_categoria (tipo,conteudo) value ('Pressão','12 unidades');
insert tb_categoria (tipo,conteudo) value ('Pressão','20ml');
insert tb_categoria (tipo,conteudo) value ('Enxaqueca','9 unidades');
insert tb_categoria (tipo,conteudo) value ('Enxaqueca','15ml');
insert tb_categoria (tipo,conteudo) value ('Vitamina','15 unidades');
insert tb_categoria (tipo,conteudo) value ('Vitamina C','10 unidades');

create table produtos(
id bigint auto_increment,
nome varchar(255),
validade varchar(255),
tamanho varchar(255),
tempo double,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert produtos (nome,validade,tamanho,tempo,categoria_id) value ('Paracetamol','10/11/23','Grande',4,3);
insert produtos (nome,validade,tamanho,tempo,categoria_id) value ('Dipirona','22/07/23','Pequena',6,4);
insert produtos (nome,validade,tamanho,tempo,categoria_id) value ('Combiron','22/11/23','Médio',24,5);
insert produtos (nome,validade,tamanho,tempo,categoria_id) value ('Benegripe','20/10/23','Médio',5,6);
insert produtos (nome,validade,tamanho,tempo,categoria_id) value ('Simeticona','21/09/23','Pequeno',6,3);
insert produtos (nome,validade,tamanho,tempo,categoria_id) value ('Naproxeno','04/02/23','Grande',8,3);

select produtos.nome,produtos.validade,produtos.tamanho,produtos.tempo,tb_categoria.tipo,tb_categoria.conteudo from produtos 
inner join tb_categoria on tb_categoria.id = produtos.categoria_id;

select produtos.nome,produtos.validade,produtos.tamanho,produtos.tempo,tb_categoria.tipo,tb_categoria.conteudo from produtos 
inner join tb_categoria on tb_categoria.id = produtos.categoria_id where tb_categoria.id=3;

select * from produtos where nome like %c%;

select * from produtos
inner join tb_categoria on tb_categoria.id = produtos.categoria_id;


select * from produtos;

drop table produtos;