CREATE DATABASE db_loja;
-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce.
-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
USE db_loja;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
título varchar(255) NOT NULL,
autor varchar(50),
capa varchar(50),
preço decimal(8, 2) NOT NULL,
gênero varchar(80),
emEstoque int,
PRIMARY KEY (id)
);
SELECT *, CONCAT('R$ ', FORMAT(preço, 2, 'pt_BR')) AS preço FROM tb_produtos;
INSERT INTO tb_produtos(id, título, autor, capa, preço, gênero, emEstoque )
VALUE (null, "Lady Killers", "Tori Telfer", "Capa Dura", 42.90 ,"Crime Real/Biografia", 200 );

INSERT INTO tb_produtos(id, título, autor, capa, preço, gênero, emEstoque)
VALUE (null, "Verity", "Colleen Hoover", "Capa Comum", 34.90, "Romance, Suspense", 120);

INSERT INTO tb_produtos(id, título, autor, capa, preço, gênero, emEstoque)
VALUE (null, "Cidade da Lua Crescente - VOL 1", "Sarah J. Maas", "Capa Comum", 51.60, "Fantasia romântica, Fantasia urbana", 200);

INSERT INTO tb_produtos(id, título, autor, capa, preço, gênero, emEstoque)
VALUE (null, "Por Lugares Incríveis", "Jennifer Niven", "Capa Comum", 21.90, "Romance, Ficção", 100);

INSERT INTO tb_produtos(id, título, autor, capa, preço, gênero, emEstoque)
VALUE (null, "Morangos Mofados", "Caio Fernando Abreu", "Capa Comum", 17.90, "Ficção Política", 100);

INSERT INTO tb_produtos(id, título, autor, capa, preço, gênero, emEstoque)
VALUE (null, "Pessoas Normais", "Sally Rooney", "Capa Comum", 21.90, "Romance", 150);

INSERT INTO tb_produtos(id, título, autor, capa, preço, gênero, emEstoque)
VALUE (null, "A Canção de Aquiles", "Madeline Miller", "Capa Comum", 34.90, "Ficção Histórica, Romance", 230);

INSERT INTO tb_produtos(id, título, autor, capa, preço, gênero, emEstoque)
VALUE (null, "Os Sete Maridos de Evelyn Hugo", "Taylor Jenkins Reid", "Capa Dura", 39.90, "Ficção, Romance", 230);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preço > 500;
SELECT * FROM tb_produtos WHERE preço < 500;
-- ALTER TABLE tb_produtos
-- CHANGE quantidade emEstoque int;