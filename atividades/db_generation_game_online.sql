-- DROP DATABASE db_generation_game_online;
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
elemento varchar(255),
arma varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classes (classe, elemento, arma) -- 1
VALUES ("Mago", "Electro", "Catalisador");

INSERT INTO tb_classes (classe, elemento, arma) -- 2
VALUES ("Arqueiro", "Electro", "Arco");

INSERT INTO tb_classes (classe, elemento, arma) -- 3
VALUES ("Arqueiro", "Pyro", "Arco");

INSERT INTO tb_classes (classe, elemento, arma)
VALUES ("Assasino", "Pyro", "Espadão");

INSERT INTO tb_classes (classe, elemento, arma)
VALUES ("Assasino", "Anemo", "Lança");

INSERT INTO tb_classes (classe, elemento, arma)
VALUES ("Suporte", "Cryo", "Lança");

INSERT INTO tb_classes (classe, elemento, arma)
VALUES ("Espadachim", "Hydro", "Espada");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagem(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
nivel int,
ataque bigint,
defesa bigint,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
-- ataque e defesa variam de acordo com elemento e arma
INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
VALUES ("Fischl", 80, 4956, 1900, 2);

INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
VALUES ("Lisa", 50, 1958, 800, 1);

 INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
 VALUES ("Yoimiya", 47, 1098, 760, 3);
 
 INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
 VALUES ("Diluc", 86, 5345, 1905, 4);
 
 INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
 VALUES ("Xiao", 90, 7320, 4390, 5);
 
 INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
 VALUES ("Rosaria", 50, 2179, 1290, 6);
 
 INSERT INTO tb_personagem(nome, nivel, ataque, defesa, classe_id)
 VALUES("Xingqiu", 76, 3760, 1440, 7);

SELECT * FROM tb_personagem;
SELECT * FROM tb_personagem WHERE ataque > 2000; -- personagens com ataque maior que 2000
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000; -- personagens com defesa entre 1000 e 2000
select * from tb_personagem WHERE nome LIKE "%c%"; -- personagens com a letra "c" no nome

-- inner join entre tabela classe e personagem
SELECT * FROM tb_personagem INNER JOIN tb_classes
ON tb_classes.id = tb_personagem.classe_id;

-- personagens de uma classe específica
SELECT nome, nivel, ataque, defesa, elemento, arma, tb_classes.classe 
FROM tb_personagem INNER JOIN tb_classes ON tb_personagem.classe_id = tb_classes.id WHERE tb_classes.classe = "Arqueiro";