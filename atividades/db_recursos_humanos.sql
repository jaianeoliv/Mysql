CREATE DATABASE db_rh;

USE db_rh;
-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
-- trabalhará com as informações dos funcionaries desta empresa.
CREATE TABLE tb_funcionaries(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
email varchar(50),
cargo varchar(255),
salario decimal(8,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionaries(id, nome, idade, email, cargo, salario)
VALUES (null, "Jaiane Oliveira", 20, "jaiane.02@gmail.com", "Desenvolvedora FullStack", 9550.00);

INSERT INTO tb_funcionaries(id, nome, idade, email, cargo, salario)
VALUES (null, "Kai Mori", 23, "dark_knightmare@gmail.com", "Desenvolvedor Mobile", 5125.00);

INSERT INTO tb_funcionaries(id, nome, idade, email, cargo, salario)
VALUE (null, "Atlas Corrigan", 22, "corrigan_a@gmail.com", "Engenheiro IA", 6440.00);

INSERT INTO tb_funcionaries(id, nome, idade, email, cargo, salario)
VALUE (null, "Jeremy Crawford", 27, "jvcrawford@", "Cientista de Dados", 6144.00);

INSERT INTO tb_funcionaries(id, nome, idade, email, cargo, salario)
VALUE (null, "Alyssa Kincaid", 25, "itslyssa@gmail.com", "Analista de Sistemas Web (webmaster)", 6330.00);

SELECT * FROM tb_funcionaries;
SELECT *, CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS salario FROM db_rh;

UPDATE tb_funcionaries SET salario = 9550.00 WHERE id = 1;
SELECT * FROM tb_funcionaries WHERE salario > 2000;
SELECT * FROM tb_funcionaries WHERE salario < 2000;