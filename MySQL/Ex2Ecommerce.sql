create database db_ecommerce;

 use db_ecommerce;
 
  create table tb_produtos(
	id bigint auto_increment,
	nome varchar(25) not null,
    tipo varchar(25),
    preco decimal(6,2) not null,
    qnt varchar(25),
    
    primary key (id)
);

select * from tb_produtos;

insert into tb_produtos(nome, tipo, preco, qnt) values ("MacBook","Notebook", 5000.00, 30);
insert into tb_produtos(nome, tipo, preco, qnt) values ("Beats","Fone", 400.00, 20);
insert into tb_produtos(nome, tipo, preco, qnt) values ("Apple","Fone", 399.00, 5);
insert into tb_produtos(nome, tipo, preco, qnt) values ("Dell","Notebook", 1200.00, 50);
insert into tb_produtos(nome, tipo, preco, qnt) values ("JBL","Caixa de som", 499.00, 450);
insert into tb_produtos(nome, tipo, preco, qnt) values ("Apple","Tablet", 1000.00, 8);
insert into tb_produtos(nome, tipo, preco, qnt) values ("Xaiume","Smartphone", 800.00, 25);
insert into tb_produtos(nome, tipo, preco, qnt) values ("Macbook","Notebook", 2000.00, 10);

select * from tb_produtos where preco >= 500;

select * from tb_produtos where preco < 500;

set sql_safe_updates = 0;

update tb_produtos set qnt = 400 WHERE id = 5;

select * from tb_produtos;