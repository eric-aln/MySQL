create database db_escola;

use db_escola;

create table tb_estudantes(
	id bigint auto_increment,
	nome varchar(255),
    ra varchar(255),
    turma varchar(255),
    idade int,
    media decimal(3,2),
    
    primary key (id)
);

insert into tb_estudantes(nome, ra, turma, idade, media) values ("Maria Chiquinha",1220, "Manhã", 7, 8.9);
insert into tb_estudantes(nome, ra, turma, idade, media) values ("Josué Ferro",1450, "Tarde", 10, 7.1);
insert into tb_estudantes(nome, ra, turma, idade, media) values ("Cauã Bonetti",2120, "Manhã", 8, 8.5);
insert into tb_estudantes(nome, ra, turma, idade, media) values ("Durã Silva",1369, "Noite", 14, 10.0);
insert into tb_estudantes(nome, ra, turma, idade, media) values ("Lua Smirth",1201, "Noite", 16, 9.8);
insert into tb_estudantes(nome, ra, turma, idade, media) values ("Ton Zé",1740, "Manhã", 9, 7);
insert into tb_estudantes(nome, ra, turma, idade, media) values ("Sophia Pina",1120, "Tarde", 11, 6.9);
insert into tb_estudantes(nome, ra, turma, idade, media) values ("Carlos Mw",1850, "Tarde", 10, 7.9);

select * from tb_estudantes where media > 7;

select * from tb_estudantes where media <= 7;

set sql_safe_updates = 0;

update tb_estudantes set ra = 1188 WHERE id = 2;