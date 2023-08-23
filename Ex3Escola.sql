Create DataBase escola;
use escola;
Create Table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
dataNascimento date,
endereco varchar(255),
email varchar(255),
telefone varchar(20),
nota decimal(2,2),
primary key (id)
);

ALTER TABLE tb_estudantes MODIFY nota DECIMAL(3, 1)

INSERT INTO tb_estudantes (nome, dataNascimento, endereco, email, telefone, nota) VALUES ('João Silva', '2005-03-15', 'Rua das Flores, 123', 'joao.silva@example.com', '(11) 1234-5678',5.0);
INSERT INTO tb_estudantes (nome, dataNascimento, endereco, email, telefone, nota) VALUES ('Maria Souza', '2004-07-10', 'Avenida dos Sonhos, 456', 'maria.souza@example.com', '(11) 9876-5432',8.5);
INSERT INTO tb_estudantes (nome, dataNascimento, endereco, email, telefone, nota) VALUES ('Pedro Santos', '2006-01-25', 'Praça das Estrelas, 789', 'pedro.santos@example.com', '(11) 2345-6789',7.5);
INSERT INTO tb_estudantes (nome, dataNascimento, endereco, email, telefone, nota) VALUES ('Ana Oliveira', '2005-09-02', 'Travessa das Águas, 234', 'ana.oliveira@example.com', '(11) 3456-7890',9.0);
INSERT INTO tb_estudantes (nome, dataNascimento, endereco, email, telefone, nota) VALUES ('Lucas Rodrigues', '2006-11-17', 'Alameda das Montanhas, 567', 'lucas.rodrigues@example.com', '(11) 4567-8901',9.7);
INSERT INTO tb_estudantes (nome, dataNascimento, endereco, email, telefone, nota) VALUES ('Julia Fernandes', '2005-12-08', 'Rua das Palmeiras, 789', 'julia.fernandes@example.com', '(11) 5678-9012',5.5);
INSERT INTO tb_estudantes (nome, dataNascimento, endereco, email, telefone, nota) VALUES ('Mateus Almeida', '2004-04-30', 'Avenida das Praias, 123', 'mateus.almeida@example.com', '(11) 6789-0123',6.3);
INSERT INTO tb_estudantes (nome, dataNascimento, endereco, email, telefone, nota) VALUES ('Laura Costa', '2006-06-22', 'Travessa das Flores, 234', 'laura.costa@example.com', '(11) 7890-1234',4.0);

select * from tb_estudantes;

select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 9.5 where id=8;