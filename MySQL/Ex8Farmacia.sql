create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal(6,2),
    quantidade int,
    receita boolean,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

create table tb_categoria(
	id bigint auto_increment,
    nome_categoria varchar(255),
    setor varchar(255),
    primary key (id)
    );
    
select * from tb_categoria;
select * from tb_produtos;

insert into tb_categoria(nome_categoria, setor) values ("Genérico", "Medicamentos");
insert into tb_categoria(nome_categoria, setor) values ("BigFarma", "Suplementos");
insert into tb_categoria(nome_categoria, setor) values ("PhamaBig", "Medicamentos");
insert into tb_categoria(nome_categoria, setor) values ("Herbal", "Suplementos");
insert into tb_categoria(nome_categoria, setor) values ("LifeFine", "Medicamentos");

-- atalho para rodar a linha do comando, cursor na linha ctrl + enter.

insert into tb_produtos(nome, valor, quantidade, receita, categoria_id) values ("Paracetabem", 30.00, 60, true, 2);
insert into tb_produtos(nome, valor, quantidade, receita, categoria_id) values ("Dipirona", 7.00, 100, false, 5);
insert into tb_produtos(nome, valor, quantidade, receita, categoria_id) values ("VitalSuper", 59.99, 200, true, 4);
insert into tb_produtos(nome, valor, quantidade, receita, categoria_id) values ("Ibuprofeno", 30.00, 150, false, 3);
insert into tb_produtos(nome, valor, quantidade, receita, categoria_id) values ("Dorflex", 70, 50, false, 1);
insert into tb_produtos(nome, valor, quantidade, receita, categoria_id) values ("Paracetamal", 20, 200, true, 5);
insert into tb_produtos(nome, valor, quantidade, receita, categoria_id) values ("Creatina", 120, 1000, false, 4);
insert into tb_produtos(nome, valor, quantidade, receita, categoria_id) values ("Nimesulida", 4, 10, false, 2);

select * from tb_produtos;

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor > 10 and valor < 50;

select * from tb_produtos where nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;