#Question 1 - Criando data base
create database db_atividade1;

#Question 2 - Criando tabela e atributos
create table funcionarios(
id bigint auto_increment,
nome char(255) not null,
idade int not null,
cpf bigint not null,
tempoContribuicao int not null, #Em meses
setor varchar(255),
salario double not null,
primary key (id)
);

#Question 3 - Adicionando registros
insert into funcionarios (nome,idade,cpf,tempoContribuicao,setor,salario)
value ("Julia",32,12345678654,18,"Tecnologia",40000);

insert into funcionarios (nome,idade,cpf,tempoContribuicao,setor,salario)
value ("Maria",27,98765432109,9,"Comunicação",5000);

insert into funcionarios (nome,idade,cpf,tempoContribuicao,setor,salario)
value ("Tiago",25,10101010123,5,"RH",4000);

insert into funcionarios (nome,idade,cpf,tempoContribuicao,setor,salario)
value ("Vivian",19,43562748536,7,"Comunicação",1600);

insert into funcionarios (nome,idade,cpf,tempoContribuicao,setor,salario)
value ("Igor",17,98275834726,4,"Comunicação",1350);

#Question 4 - Select salário > 2000
select * from funcionarios where salario > 2000;

#Question 5 - Select salário < 2000
select * from funcionarios where salario < 2000;

#Questin 6 - Atualizando registro
update funcionarios set salario = 1500 where id = 2;

#Testando
select * from funcionarios;

#Reparos
drop table funcionarios;