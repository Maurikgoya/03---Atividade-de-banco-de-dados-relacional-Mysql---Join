CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id INT AUTO_INCREMENT,
nome_classe VARCHAR(255),
armas VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id INT AUTO_INCREMENT,
nome_personagem VARCHAR(255),
ataque INT NOT NULL,
defesa INT NOT NULL,
classe_id INT,
PRIMARY KEY(id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classe_id) REFERENCES tb_classes (id);

INSERT INTO tb_classes (nome_classe, armas) VALUES
("Cavaleiro", "Espada"),
("Mago", "Cetro"),
("Arqueiro", "Arco e flecha"),
("Vanguarda", "Escudo"),
("Bardo", "Lira");

INSERT INTO tb_personagens (nome_personagem, ataque, defesa, classe_id) VALUES
("Merlin", 5000, 500, 2),
("Agatah", 800, 1100, 5),
("Claire", 3000, 1200, 1),
("Alex", 500, 5000, 4),
("Paul", 2800, 1400, 1),
("Morgan", 5200, 480, 2),
("Rock", 180, 1700, 4),
("Diana", 4800, 700, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE classe_id = 4;

