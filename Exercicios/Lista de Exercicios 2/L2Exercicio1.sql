create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
descricao varchar(255) not null,
primary key(id)
);

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(255) not null,
quantidade int not null,
tamanho varchar(255) not null, 
valor decimal(6,2) not null,
primary key(id)
);

select * from tb_categorias;
select * from tb_pizzas;

insert into tb_categorias(tipo, descricao) values 
("Salgada", "Normal"),
("Salgada", "Vegana"),
("Doce", "Normal"),
("Doce", "Vegana"),
("Salgada", "Fitness");

alter table tb_pizzas add categoria_id bigint;

alter table tb_pizzas add constraint fk_pizzas_categorias 
foreign key(categoria_id) references tb_categorias(id);

insert into tb_pizzas(sabor, quantidade, tamanho, valor, categoria_id) values 
("Portuguesa", 10, "Grande", 40.00, 1),
("Toscana", 15, "Grande", 45.00, 2),
("Frango Catupiry", 5, "Pequena", 43.00, 2),
("Bauru", 10, "Média", 39.00, 1),
("Chocolate Banana", 5, "Pequena", 25.00, 3),
("Prestigio", 15, "Grande", 45.00, 4),
("Brocolis", 19, "Média", 35.00, 5),
("Marguerita", 20, "Grande", 49.00, 5);

select * from tb_pizzas where valor > 40.00;
select * from tb_pizzas where valor between 25.00 and 39.00;

select * from tb_pizzas where sabor like "%m%";

select * from tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

select sabor, tb_categorias.tipo, tb_categorias.descricao from tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id
where tb_categorias.tipo = "Doce";







 



 