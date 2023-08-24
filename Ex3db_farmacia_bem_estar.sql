Create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;
create table tb_produtos(
id bigint auto_increment,
nomeProduto varchar(255) not null,
descricaoProduto varchar(255) not null,
valor decimal (6,2),
primary key (id)
);

INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor) VALUES ('Paracetamol', 'Analgésico e antitérmico', 10.50);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor) VALUES ('Shampoo Revitalizante', 'Shampoo para cabelos danificados', 25.00);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor) VALUES ('Creme Hidratante', 'Creme para hidratação da pele', 15.75);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor) VALUES ('Escova Dental', 'Escova de dentes para higiene bucal', 5.90);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor) VALUES ('Vitamina C', 'Suplemento de vitamina C', 60.00);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor) VALUES ('Protetor Solar', 'Protetor solar para exposição ao sol', 45.50);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor) VALUES ('Loção Corporal', 'Loção para hidratação do corpo', 12.80);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor) VALUES ('Sabonete Antibacteriano', 'Sabonete para limpeza e proteção', 8.25);

Select * from tb_produtos;

Select * from tb_produtos where valor > 50.00;
select*from tb_produtos where valor between 5.00 and 60.00;
select * from tb_produtos where nomeProduto like "c%";

CREATE TABLE tb_categorias (
    id bigint auto_increment,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    primary key (id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES ('Medicamentos', 'Produtos farmacêuticos para tratamento de doenças');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Cosméticos', 'Produtos de beleza e cuidados com a pele');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Higiene', 'Produtos de higiene pessoal');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Vitaminas', 'Suplementos vitamínicos');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Cuidados Capilares', 'Produtos para cabelo e couro cabeludo');

alter table tb_produtos add categoria_id bigint;
alter table tb_produtos add constraint fk_produtos_categoria foreign key (categoria_id) references tb_categorias(id);

INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, categoria_id) VALUES ('Aspirina', 'Analgésico e anti-inflamatório', 7.80, 1);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, categoria_id) VALUES ('Condicionador Reparador', 'Condicionador para cabelos reparadores', 28.00, 5);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, categoria_id) VALUES ('Creme Antirrugas', 'Creme para redução de rugas', 42.90, 2);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, categoria_id) VALUES ('Fio Dental', 'Fio dental para higiene bucal', 3.50, 3);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, categoria_id) VALUES ('Vitamina D', 'Suplemento de vitamina D', 22.50, 4);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, categoria_id) VALUES ('Bronzeador', 'Bronzeador para exposição ao sol', 19.75, 2);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, categoria_id) VALUES ('Desodorante Roll-on', 'Desodorante roll-on para proteção', 9.60, 3);
INSERT INTO tb_produtos (nomeProduto, descricaoProduto, valor, categoria_id) VALUES ('Creme para Pernas Cansadas', 'Creme para alívio de pernas cansadas', 16.25, 2);

select nomeProduto,descricaoProduto,valor from tb_produtos inner join tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;
SELECT nomeProduto, descricaoProduto, valor FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id where tb_categorias.nome = 'Cosméticos';


