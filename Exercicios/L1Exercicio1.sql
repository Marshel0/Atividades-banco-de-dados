create database db_recursosHumanos;

use db_recursosHumanos;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
setor varchar(255) not null,
cargo varchar(255) not null,
salario decimal(6,2),
primary key(id)
);

insert into tb_funcionarios(nome, setor, cargo, salario) values("Clarice Lispector", "Produção de Livros", "Escritor(a) de Poesias", 5000.00);
insert into tb_funcionarios(nome, setor, cargo, salario) values("Celine Sciamma", "Produção Audiovisual", "Diretor(a) de Cinema", 5000.00);
insert into tb_funcionarios(nome, setor, cargo, salario) values("Kevin Parker", "Produção Músical", "Músico/ Produtor", 4500.00);
insert into tb_funcionarios(nome, setor, cargo, salario) values("Friedrich Hegel", "Produção de Livros", "Escritor(a) de Filosofia", 1500.00);
insert into tb_funcionarios(nome, setor, cargo, salario) values("Jorge Ben", "Produção Músical", "Músico/ Compositor", 4500.00);


select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set cargo = "Músico/ Produtor(a)" where id = 3;
update tb_funcionarios set cargo = "Músico/ Compositor(a)" where id = 5;

select * from tb_funcionarios;