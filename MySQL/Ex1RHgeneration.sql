create database db_RHgeneration;

use db_RHgeneration;

create table tb_colaboradores(
	id bigint auto_increment,
	nome varchar(25) not null,
    cargo varchar(25) not null,
    setor varchar(25) not null,
    idade int,
    status boolean,
    
    primary key (id)
);

select * from tb_colaboradores;

insert into tb_colaboradores(nome, cargo, setor, idade, status) values ("João Silva","Desenvolvedor", "T.I", 30, 1);
insert into tb_colaboradores(nome, cargo, setor, idade, status) values ("Maria Souza","CEO", "Admin", 45, 1);
insert into tb_colaboradores(nome, cargo, setor, idade, status) values ("Eric Lima","Estagiário", "T.I", 25, 1);
insert into tb_colaboradores(nome, cargo, setor, idade, status) values ("Paula Rocha","Engenheira T.I", "T.I", 60, 2);
insert into tb_colaboradores(nome, cargo, setor, idade, status) values ("Victor","SEO", "Inovaçã", 31, 1);
insert into tb_colaboradores(nome, cargo, setor, idade, status) values ("Sandra Mello","Auxiliar", "Admin", 35, 1);
insert into tb_colaboradores(nome, cargo, setor, idade, status) values ("Maisa","Engenheira", "Suporte", 25, 1);

select * from tb_colaboradores where idade >= 40;

select * from tb_colaboradores where idade < 40;

set sql_safe_updates = 0;

update tb_colaboradores set cargo = "Analista" WHERE id = 6;

select * from tb_colaboradores;