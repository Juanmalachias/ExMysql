CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

Create Table tb_categorias(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
primary key (id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES ('Salgada', 'Pizzas com ingredientes salgados');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Doce', 'Pizzas com ingredientes doces');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Vegetariana', 'Pizzas com ingredientes vegetarianos');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Especial', 'Pizzas especiais com combinações únicas');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Frutos do Mar', 'Pizzas com frutos do mar e frutos do mar');

select * from tb_categorias;

Create Table tb_pizzas(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
valor decimal (6,2),
primary key (id)
);

ALTER TABLE tb_pizzas add categoria_id bigint;
ALter Table tb_pizzas add constraint fk_pizzas_categorias foreign key (categoria_id) references tb_categorias(id);

INSERT INTO tb_pizzas (nome, descricao, valor,categoria_id) VALUES ('Calabresa', 'Mussarela, calabresa e cebola', 35.90,1);
INSERT INTO tb_pizzas (nome, descricao, valor,categoria_id) VALUES ('Quatro Queijos', 'Mussarela, provolone, parmesão e gorgonzola', 42.50,1);
INSERT INTO tb_pizzas (nome, descricao, valor,categoria_id) VALUES ('Brigadeiro', 'Chocolate, leite condensado e granulado', 30.00,2);
INSERT INTO tb_pizzas (nome, descricao, valor,categoria_id) VALUES ('Margherita', 'Molho de tomate, mussarela, tomate e manjericão', 38.00,3);
INSERT INTO tb_pizzas (nome, descricao, valor,categoria_id) VALUES ('Frutos do Mar', 'Molho de tomate, camarão, lula e mexilhões', 55.00,5);
INSERT INTO tb_pizzas (nome, descricao, valor,categoria_id) VALUES ('Vegetariana', 'Molho de tomate, mussarela, tomate, palmito e champignon', 40.00,3);
INSERT INTO tb_pizzas (nome, descricao, valor,categoria_id) VALUES ('Pepperoni', 'Molho de tomate, mussarela e pepperoni', 45.00,1);
INSERT INTO tb_pizzas (nome, descricao, valor,categoria_id) VALUES ('Banana com Canela', 'Banana, canela e leite condensado', 28.00,2);

select * from tb_pizzas;

select * from tb_pizzas where valor >= 45.00;
SELECT * FROM tb_pizzas where valor between 50.00 and 100.00;
SELECT*FROM tb_pizzas where nome like "M%";
SELECT tb_pizzas.nome, tb_pizzas.descricao, tb_pizzas.valor FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
SELECT tb_pizzas.nome, tb_pizzas.descricao, tb_pizzas.valor FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id where tb_categorias.nome = 'Doce';