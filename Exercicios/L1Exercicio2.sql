create database db_lanchonete;

use db_lanchonete;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
tipo varchar(255) not null,
quantidade int not null,
valor decimal (3,2),
primary key(id)
);

select * from tb_produtos;

insert into tb_produtos(nome, tipo, quantidade, valor) values("X-Salada", "Lanches", 10, 15.00);
insert into tb_produtos(nome, tipo, quantidade, valor) values("X-Tudo", "Lanches", 15, 20.00);
insert into tb_produtos(nome, tipo, quantidade, valor) values("Porção de Batata", "Porções", 15, 12.00);
insert into tb_produtos(nome, tipo, quantidade, valor) values("Agua Mineral", "Bebidas", 20, 4.00);
insert into tb_produtos(nome, tipo, quantidade, valor) values("Suco de Laranja", "Bebidas", 10, 9.00);
insert into tb_produtos(nome, tipo, quantidade, valor) values("Suco de Manga", "Bebidas", 5, 9.00);
insert into tb_produtos(nome, tipo, quantidade, valor) values("Regrigerante 350ml", "Bebidas", 15, 5.00);
insert into tb_produtos(nome, tipo, quantidade, valor) values("Regrigerante 1lt", "Bebidas", 10, 8.00);

select * from tb_produtos where valor > 10.00;
select * from tb_produtos where valor < 10.00;

update tb_produtos set nome = "Refrigerante 350ml" where id = 7;
update tb_produtos set nome = "Refrigerante 1Lt" where id = 8;