CREATE DATABASE db_escola;
-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola.
USE db_escola;

CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
turma varchar(10),
nota decimal(8,2),
PRIMARY KEY (id)
);
INSERT INTO tb_alunos(id, nome, idade, turma, nota)
VALUES (null, "Maria Eduarda", 19, "3B", 9.5);

INSERT INTO tb_alunos(id, nome, idade, turma, nota)
VALUES(null, "Kátia", 20, "3A", 9.0);

INSERT INTO tb_alunos(id, nome, idade, turma, nota)
VALUES(null, "Gabriel", 20, "4C", 8.5);

INSERT INTO tb_alunos(id, nome, idade, turma, nota)
VALUES(null, "Yasmin", 19, "2D", 6.5);

INSERT INTO tb_alunos(id, nome, idade, turma, nota)
VALUE(null, "Kelvin", 19, "2F", 6.0);

INSERT INTO tb_alunos(id, nome, idade, turma, nota)
VALUE(null, "Kyle", 21, "5A", 10.00);

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos ORDER BY nome ASC;
SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;