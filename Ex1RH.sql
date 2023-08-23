CREATE DATABASE db_empresa;
USE db_empresa;
CREATE TABLE db_colaboradores(  
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL(6,2),
data_contratacao DATE,
PRIMARY KEY (id)
);

INSERT INTO db_colaboradores(nome,cargo,salario,data_contratacao) VALUES ("João Silva", "Analista de Recursos Humanos", 4500.00, "2020-02-15");
INSERT INTO db_colaboradores(nome,cargo,salario,data_contratacao) VALUES ("Maria Souza", "Gerente de Vendas", 3500.00, "2018-05-10");
INSERT INTO db_colaboradores(nome,cargo,salario,data_contratacao) VALUES ("Pedro Santos", "Desenvolvedor de Software", 6000.00, "2019-09-23");
INSERT INTO db_colaboradores(nome,cargo,salario,data_contratacao) VALUES ("Ana Oliveira", "Assistente Administrativo", 1500.00, "2021-01-08");
INSERT INTO db_colaboradores(nome,cargo,salario,data_contratacao) VALUES ("Carlos Rodrigues", "Técnico de Suporte", 1800.00, "2022-03-17");

SELECT * FROM db_colaboradores;

SELECT * from db_colaboradores where salario > 2000;

SELECT * from db_colaboradores where salario < 2000;

UPDATE db_colaboradores SET salario = 2500 WHERE id = 5;

