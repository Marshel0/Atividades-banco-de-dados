create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
elemento varchar(255) not null,
primary key(id));

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
poderAtaque int not null,
poderDefesa int not null,
ultimate varchar(255) not null,
primary key(id));

select * from tb_personagens;

insert into tb_classes(classe, elemento) values
("Mago da Luz", "Ar"),
("Mago das Sombras", "Fogo"),
("Guerreiro Guardião", "Terra"),
("Bruxa da Floresta", "Mistico"),
("Protetora da Floresta", "Ar/ Água");

alter table tb_personagens add classe_id bigint;

alter table tb_personagens add constraint fk_personagens_classes 
foreign key(classe_id) references tb_classes(id);

insert into tb_personagens(nome, poderAtaque, poderDefesa, ultimate, classe_id) values
("Hwei", 3000, 1500, "Chamas Divinas", 1),
("Veigar", 2500, 1300, "Orbe da Escuridão", 2),
("Garen", 3500, 1700, "Espada Dançarina", 3),
("Morgana", 1900, 2700, "Luar Sombrio", 4),
("Lux", 1700, 2500, "Explosão Solar", 5),
("Yummi", 900, 2900, "Tapete Solar", 5),
("Kayle", 3400, 2100, "Chuva de Lâminas", 3),
("Ryze", 3900, 2000, "Teletransportar", 2);

select * from tb_personagens where poderAtaque > 2000;
select * from tb_personagens where poderDefesa between 1000 and 2000;
select * from tb_personagens where nome like "%r%";

select * from tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

select nome, tb_classes.classe, tb_classes.elemento from tb_classes INNER JOIN tb_personagens 
ON tb_personagens.classe_id = tb_classes.id
where tb_classes.id = "5";








