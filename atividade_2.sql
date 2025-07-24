CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id INT AUTO_INCREMENT,
tamanho VARCHAR(255),
numero_fatias INT,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id INT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
tipo VARCHAR(255),
categoria_id INT,
PRIMARY KEY (id)
);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (tamanho, numero_fatias) VALUES
("Brotinho", 4),
("Pequena", 6),
("Média", 8),
("Grande", 10),
("GG", 12);

INSERT INTO tb_pizzas (nome, preco, tipo, categoria_id) VALUES
("Frango com Catupiry", 35.00, "Salgada", 3),
("Calabresa", 12.00, "Salgada", 1),
("Pepperoni especial", 89.00, "Salgada", 5),
("Margherita", 22.00, "Salgada", 2),
("Chocolate", 9.90, "Doce", 1),
("Quatro queijos", 39.90, "Salgada", 3),
("Brigadeiro especial", 94.99, "Doce", 5),
("Baiana", 59.00, "Salgada", 4);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 3;