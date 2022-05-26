create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizzas(
	id bigint auto_increment,
    nome varchar(255) not null,
    tamPedacos int,
    valor decimal(6,2),
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

create table tb_categoria(
	id bigint auto_increment,
    nome_categoria varchar(255),
    primary key (id)
    );
    
insert into tb_categoria(nome_categoria) values ("Pedaço");
insert into tb_categoria(nome_categoria) values ("Broto");
insert into tb_categoria(nome_categoria) values ("Média");
insert into tb_categoria(nome_categoria) values ("Grande");
insert into tb_categoria(nome_categoria) values ("Gigante");

insert into tb_pizzas(nome, tamPedacos, valor, categoria_id) values ("Peperoni", 12, 44.00, 4);
insert into tb_pizzas(nome, tamPedacos, valor, categoria_id) values ("Quatro queijos", 1, 8.00, 1);
insert into tb_pizzas(nome, tamPedacos, valor, categoria_id) values ("Margarita", 16, 70.00, 5);
insert into tb_pizzas(nome, tamPedacos, valor, categoria_id) values ("Alho", 4, 15.00, 2);
insert into tb_pizzas(nome, tamPedacos, valor, categoria_id) values ("Brócolis", 12, 55.00, 4);
insert into tb_pizzas(nome, tamPedacos, valor, categoria_id) values ("Tomate", 8, 28.00, 3);
insert into tb_pizzas(nome, tamPedacos, valor, categoria_id) values ("Dois amores", 4, 52.00, 2);
insert into tb_pizzas(nome, tamPedacos, valor, categoria_id) values ("Queijo", 16, 68.00, 5);

select * from tb_pizzas where valor > 45;

select * from tb_pizzas where valor > 50 and valor < 100;

select * from tb_pizzas where nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_categoria.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_categoria.id = tb_pizzas.categoria_id where tb_pizzas.tamPedacos = 12 and tb_pizzas.valor < 50;