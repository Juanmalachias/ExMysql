CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_personagens(
id bigint auto_increment,
nomePersonagem varchar(255) not null,
poderAtaque int,
poderDefesa int,
nivel int,
PRIMARY KEY(id)
);

CREATE TABLE tb_Classes(
id bigint auto_increment,
nome varchar(255),
tipo varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_Classes(nome,tipo)values ("Guerreiro", "Melee");
INSERT INTO tb_Classes(nome,tipo)values ("Mago", "Magical");
INSERT INTO tb_Classes(nome,tipo)values ("Arqueiro", "Ranged");
INSERT INTO tb_Classes(nome,tipo)values ("Ladrão", "Melee");
INSERT INTO tb_Classes(nome,tipo)values ("Cavaleiro", "Melee");

SELECT * FROM tb_Classes;

ALTER TABLE tb_personagens ADD Classe_id bigint;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes FOREIGN KEY (Classe_id) REFERENCES tb_Classes(id);

INSERT INTO tb_personagens(nomePersonagem,poderAtaque,PoderDefesa,nivel,Classe_id)values ("Aragorn", 2500, 1800, 30,1);
INSERT INTO tb_personagens(nomePersonagem,poderAtaque,PoderDefesa,nivel,Classe_id)values ("Gandalf", 1800, 2200, 35,2);
INSERT INTO tb_personagens(nomePersonagem,poderAtaque,PoderDefesa,nivel,Classe_id)values ("Legolas", 2100, 1500, 28,3);
INSERT INTO tb_personagens(nomePersonagem,poderAtaque,PoderDefesa,nivel,Classe_id)values ("Thief", 1800, 1200, 25,4);
INSERT INTO tb_personagens(nomePersonagem,poderAtaque,PoderDefesa,nivel,Classe_id)values ("Lancelot", 2400, 2000, 32,5);
INSERT INTO tb_personagens(nomePersonagem,poderAtaque,PoderDefesa,nivel,Classe_id)values ("Frodo", 1200, 1000, 20,1);
INSERT INTO tb_personagens(nomePersonagem,poderAtaque,PoderDefesa,nivel,Classe_id)values ("Chun-Li", 3500, 3000, 50,1);
INSERT INTO tb_personagens(nomePersonagem,poderAtaque,PoderDefesa,nivel,Classe_id)values ("Robin Hood", 1900, 1300, 27,3);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens where poderAtaque > 2000;
SELECT * FROM tb_personagens where poderDefesa between 1000 and 2000;
SELECT*FROM tb_personagens where nomePersonagem like "C%";

SELECT nomePersonagem, poderAtaque, PoderDefesa, nivel FROM tb_personagens INNER JOIN tb_Classes ON tb_Classes.id = tb_personagens.Classe_id;
SELECT nomePersonagem, poderAtaque, PoderDefesa, nivel FROM tb_personagens INNER JOIN tb_Classes ON tb_Classes.id = tb_personagens.Classe_id where tb_Classes.nome = "Arqueiro";
