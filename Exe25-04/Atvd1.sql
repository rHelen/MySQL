create database db_game;

use db_game;

#Passo 1
create table tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
descricao varchar(1000) not null,
primary key(id)
);

#drop table tb_classes;

#Passo 4
insert tb_classes (classe,descricao) values 
('mago(a/e)','Tem como características principais a Inteligência, que é usado para conjurar suas magias');
insert into tb_classes (classe,descricao) values 
('guerreiro(a/e)','São exímios lutadores marciais, sempre prontos para o combate. Possuem extremas habilidades de combate.' );
insert into tb_classes (classe,descricao) values 
('elfo(a/e)','Eram divindades maiores da natureza e da fertilidade. Os elfos são geralmente mostrados como jovens de grande beleza vivendo entre as florestass' );
insert into tb_classes (classe,descricao) values 
('arqueiro(a/e)','Um arqueiro é um verdadeiro mestre no uso de arco, e nem mesmo um guerreiro muito experiente pode se igualar as suas capacidades.' );
insert into tb_classes (classe,descricao) values 
('ninja','É um agente secreto ou mercenário especializado em artes marciais de guerra não ortodoxas.' );

#Teste
select * from tb_classes;

#Passos 2 e 3
create table personagens(
id bigint auto_increment,
nome varchar(255) not null,
ataque int not null,
defesa int not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

#Passo 5
insert into personagens (nome,ataque,defesa,classe_id) value
('Fantasma',2000,1500,1);
insert personagens (nome,ataque,defesa,classe_id) value
('Enfermeira',2500,2000,1);
insert personagens (nome,ataque,defesa,classe_id) value
('Wonder Woman',3500,3000,2);
insert personagens (nome,ataque,defesa,classe_id) value
('Donattelo',3000,3500,5);
insert personagens (nome,ataque,defesa,classe_id) value
('Raphaell',4000,4000,5);
insert personagens (nome,ataque,defesa,classe_id) value
('April Onill',2500,2000,5);
insert personagens (nome,ataque,defesa,classe_id) value
('Karai',3000,3500,5);
insert personagens (nome,ataque,defesa,classe_id) value
('Leo',4500,4500,5);
insert personagens (nome,ataque,defesa) value
('Mario',4000,3500);
insert personagens (nome,ataque,defesa,classe_id) value
('Arrow',1500,2000,4);
insert personagens (nome,ataque,defesa,classe_id) value
('Thinker Bell',1200,3000,3);

#Ajustes
update personagens set nome = "April O'neil" where id = 6;
update personagens set classe_id = 2 where id = 9;

#Passos 6,7,8,9 e 10
select * from personagens where ataque > 2000;
select * from personagens where defesa >=1000 and defesa <=2000;
select * from personagens where nome like "%c%";
select * from personagens inner join tb_classes on tb_classes.id = personagens.classe_id;
select * from personagens inner join tb_classes on tb_classes.id = personagens.classe_id where personagens.classe_id=5;

#Teste
select * from personagens;
select * from personagens where classe_id = 5;

select personagens.nome,personagens.ataque,personagens.defesa,tb_classes.classe,tb_classes.descricao from personagens
inner join tb_classes on tb_classes.id = personagens.classe_id;

select personagens.nome,personagens.ataque,personagens.defesa,tb_classes.classe,tb_classes.descricao from personagens
inner join  tb_classes on tb_classes.id = personagens.classe_id where tb_classes.id = 5;

#drop table personagens;