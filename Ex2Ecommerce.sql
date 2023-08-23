create database ecommerce;
use ecommerce;
create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
descricao varchar(300),
preco decimal (6,2),
estoque int,
primary key (id)
);

insert into tb_produtos (nome, descricao, preco, estoque) value ("Camiseta Branca", "Camiseta de algodão branca básica", 90.99, 150);
insert into tb_produtos (nome, descricao, preco, estoque) value ("Calça Jeans", "Calça jeans azul clara, corte reto", 149.99, 80);
insert into tb_produtos (nome, descricao, preco, estoque) value ("Tênis Esportivo", "Tênis de corrida preto e branco", 889.99, 120);
insert into tb_produtos (nome, descricao, preco, estoque) value ("Bolsa de Couro", "Bolsa de couro marrom, alça ajustável", 479.99, 50);
insert into tb_produtos (nome, descricao, preco, estoque) value ("Relógio Analógico", "Relógio de pulso dourado, à prova d'água", 1129.99, 30);
insert into tb_produtos (nome, descricao, preco, estoque) value ("Óculos de Sol", "Óculos de sol preto, lentes polarizadas", 439.99, 100);
insert into tb_produtos (nome, descricao, preco, estoque) value ("Chapéu de Palha", "Chapéu de palha natural, aba larga", 119.99, 200);
insert into tb_produtos (nome, descricao, preco, estoque) value ("Vestido Floral", "Vestido curto floral, alças ajustáveis", 234.99, 70);

select * from tb_produtos;

select * from tb_produtos where preco < 500;

select * from tb_produtos where preco > 500;

update tb_produtos set preco = 999.99 where id=5;