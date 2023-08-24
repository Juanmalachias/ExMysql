create database db_construindo_vidas;
use db_construindo_vidas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
descricao varchar(255) not null,
primary key (id)
);

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
descricaoProdutor varchar(255) not null,
valor decimal (10,2),
Categoria_id bigint,
primary key (id),
foreign key (Categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (tipo, descricao) VALUES ('Ferramentas', 'Diferentes tipos de ferramentas para construção');
INSERT INTO tb_categoria (tipo, descricao) VALUES ('Elétrica', 'Produtos relacionados à parte elétrica');
INSERT INTO tb_categoria (tipo, descricao) VALUES ('Hidráulica', 'Materiais para instalações hidráulicas');
INSERT INTO tb_categoria (tipo, descricao) VALUES ('Pintura', 'Materiais e tintas para pintura');
INSERT INTO tb_categoria (tipo, descricao) VALUES ('Acabamentos', 'Produtos para acabamentos diversos');

INSERT INTO tb_produtos (nome, descricaoProdutor, valor, Categoria_id) VALUES ('Furadeira', 'Furadeira elétrica de alta potência', 250.00, 1);
INSERT INTO tb_produtos (nome, descricaoProdutor, valor, Categoria_id) VALUES ('Lâmpada LED', 'Lâmpada LED econômica', 15.00, 2);
INSERT INTO tb_produtos (nome, descricaoProdutor, valor, Categoria_id) VALUES ('Tubo PVC', 'Tubo de PVC para condução de água', 8.50, 3);
INSERT INTO tb_produtos (nome, descricaoProdutor, valor, Categoria_id) VALUES ('Tinta Látex', 'Tinta látex para paredes', 30.00, 4);
INSERT INTO tb_produtos (nome, descricaoProdutor, valor, Categoria_id) VALUES ('Argamassa', 'Argamassa para assentamento de tijolos', 25.00, 5);
INSERT INTO tb_produtos (nome, descricaoProdutor, valor, Categoria_id) VALUES ('Martelo', 'Martelo de carpinteiro', 18.00, 1);
INSERT INTO tb_produtos (nome, descricaoProdutor, valor, Categoria_id) VALUES ('Caixa de Tomadas', 'Caixa de tomadas elétricas', 12.00, 2);
INSERT INTO tb_produtos (nome, descricaoProdutor, valor, Categoria_id) VALUES ('Chuveiro', 'Chuveiro elétrico', 80.00, 3);

select*from tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 100.00;
SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT nome,  descricaoProdutor,tb_categoria.tipo,tb_categoria.descricao,  valor from tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.Categoria_id;
SELECT nome,  descricaoProdutor,tb_categoria.tipo,tb_categoria.descricao,  valor from tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.Categoria_id where tb_categoria.tipo in ('Hidráulica');
