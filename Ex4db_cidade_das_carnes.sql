Create database db_cidade_das_carnes;
use db_cidade_das_carnes;

Create Table tb_categorias(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
primary key(id)
);

create table tb_produtos (
id bigint auto_increment,
nomeProduto varchar(255) not null,
descricaoProduto varchar(255) not null,
valor decimal (10,2),
Categorias_id bigint,
primary key (id),
foreign key (Categorias_id) references tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES ('Carnes', 'Diferentes tipos de carnes');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Aves', 'Diferentes tipos de aves');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Peixes', 'Variedades de peixes');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Frutas', 'Diversas frutas frescas');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Legumes', 'Diferentes tipos de legumes');

INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, Categorias_id) VALUES ('Filet Mignon', 'Corte nobre de carne bovina', 75.00, 1);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, Categorias_id) VALUES ('Frango Assado', 'Frango assado e temperado', 60.00, 2);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, Categorias_id) VALUES ('Salmão Fresco', 'Salmão fresco para preparo', 120.00, 3);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, Categorias_id) VALUES ('Maçãs', 'Maçãs frescas e variadas', 5.50, 4);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, Categorias_id) VALUES ('Cenouras', 'Cenouras frescas e saudáveis', 3.20, 5);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, Categorias_id) VALUES ('Coxas de Frango', 'Coxas de frango para preparo', 40.00, 2);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, Categorias_id) VALUES ('Picanha', 'Corte bovino popular e saboroso', 65.00, 1);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, Categorias_id) VALUES ('Sardinha', 'Sardinha fresca para preparo', 25.00, 3);

SELECT * FROM tb_produtos where valor > 50.00;
SELECT * FROM tb_produtos where valor between 50.00 and 150.00;

select * from tb_produtos where nomeProduto like "c%";

SELECT nomeProduto,  descricaoProduto,tb_categorias.nome,tb_categorias.descricao,  valor from tb_produtos INNER JOIN tb_categorias on tb_categorias.id = tb_produtos.Categorias_id;
SELECT nomeProduto,  descricaoProduto,tb_categorias.nome,tb_categorias.descricao,  valor from tb_produtos INNER JOIN tb_categorias on tb_categorias.id = tb_produtos.Categorias_id where tb_categorias.nome in ('Frutas','Aves');

