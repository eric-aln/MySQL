create database db_quitanda;

use db_quitanda;

create table tb_produtos(
	id bigint auto_increment,
	nome varchar(25) not null,
    tipo varchar(25),
    preco decimal(6,2) not null,
    Unid varchar(20),
    
    primary key (id)
);

select * from tb_produtos;

insert into tb_produtos(nome, tipo, preco, Unid) values ("Melancia","Frutas", 15.99, "Unid.");
insert into tb_produtos(nome, tipo, preco, Unid) values ("Batata","Legumes", 3.99, "Kg");
insert into tb_produtos(nome, tipo, preco, Unid) values ("Pimentão","Legumes", 7.99, "Kg");
insert into tb_produtos(nome, tipo, preco, Unid) values ("Maçã","Fruta", 6.99, "Kg");
insert into tb_produtos(nome, tipo, preco, Unid) values ("Banana","Fruta", 1.99, "Kg");
insert into tb_produtos(nome, tipo, preco, Unid) values ("Melão","Fruta", 8.99, "Unid");
insert into tb_produtos(nome, tipo, preco, Unid) values ("Cenoura","Legumes", 5.99, "Kg");
insert into tb_produtos(nome, tipo, preco, Unid) values ("Chuchu","Legumes", 2.99, "Kg");

select * from tb_produtos;

select * from tb_produtos where tipo = "Fruta";

select * from tb_produtos where tipo = "Legumes";

update tb_produtos set nome = "Maça" WHERE id = 2;

set sql_safe_updates = 0;

delete from tb_produtos where tipo = "Legumes";

select * from tb_produtos;