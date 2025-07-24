CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id INT AUTO_INCREMENT,
nome_categoria VARCHAR(255),
duracao_horas INT,
PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
id INT AUTO_INCREMENT,
nome_curso VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
nivel VARCHAR(255),
categoria_id INT,
PRIMARY KEY (id)
);

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (nome_categoria, duracao_horas) VALUES
("Tecnologia", 60),
("Idiomas", 120),
("Saude", 50),
("Artes", 20),
("Empreendedorismo", 40);

INSERT INTO tb_cursos (nome_curso, preco, nivel, categoria_id) VALUES
("Design de jogos", 440.00, "Basico", 1),
("Ingles", 580.00, "Intermediario", 2),
("Marketing", 750.00, "Avancado", 5),
("Nutricao", 520.00, "Intermediario", 3),
("Espanhol", 890.00, "Avancado", 2),
("Photoshop", 630.90, "Intermediario", 4),
("Full Stack Dev", 1220.00, "Avancado", 1),
("Jornada empreendedora", 360.00, "Basico", 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 2;