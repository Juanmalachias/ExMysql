create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
descricao varchar(255) not null,
primary key (id)
);

create table tb_produtos (
id bigint auto_increment,
curso varchar(255) not null,
descricaoCurso varchar(255) not null,
valor decimal (10,2),
Categoria_id bigint,
primary key (id),
foreign key (Categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (tipo, descricao) VALUES
('Programação', 'Cursos de programação e desenvolvimento'),
('Design', 'Cursos de design gráfico e web'),
('Negócios', 'Cursos sobre empreendedorismo e negócios'),
('Idiomas', 'Cursos de aprendizado de idiomas'),
('Saúde', 'Cursos sobre saúde e bem-estar');

INSERT INTO tb_produtos (curso, descricaoCurso, valor, Categoria_id) VALUES
('Curso de Python', 'Aprenda a programar em Python', 600.00, 1),
('Curso de Photoshop', 'Aprenda a usar o Photoshop', 450.00, 2),
('Curso de Empreendedorismo', 'Desenvolva habilidades de negócios', 750.00, 3),
('Curso de Inglês', 'Aprenda inglês de forma prática', 800.00, 4),
('Curso de Yoga', 'Pratique yoga para saúde e relaxamento', 350.00, 5),
('Curso de Java', 'Aprenda programação Java', 700.00, 1),
('Curso de Ilustrator', 'Aprenda a usar o Adobe Illustrator', 550.00, 2),
('Curso de Marketing Digital', 'Aprenda estratégias de marketing online', 900.00, 3);

select*from tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500.00;
SELECT * FROM tb_produtos WHERE valor BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_produtos WHERE curso LIKE '%J%';

SELECT curso,  descricaoCurso,tb_categoria.tipo,tb_categoria.descricao,  valor from tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.Categoria_id;
SELECT curso,  descricaoCurso,tb_categoria.tipo,tb_categoria.descricao,  valor from tb_produtos INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.Categoria_id where tb_categoria.tipo in ('Programação');