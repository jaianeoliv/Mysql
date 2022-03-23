-- DROP DATABASE db_pizzaria_legal;
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tamanho VARCHAR(50) NOT NULL,
tipo VARCHAR(50) NOT NULL,
sabor VARCHAR(20),
PRIMARY KEY(id)
);

INSERT INTO tb_categorias(tamanho, tipo, sabor) -- 1
VALUES ("Brotinho", "Inteira", "Doce");

INSERT INTO tb_categorias(tamanho, tipo, sabor) -- 2
VALUES ("Média", "Meia", "Salgada");

INSERT INTO tb_categorias(tamanho, tipo, sabor) -- 3 
VALUES ("Média", "Inteira", "Salgada");

INSERT INTO tb_categorias(tamanho, tipo, sabor) -- 4
VALUES ("Grande", "Meia", "Salgada");

INSERT INTO tb_categorias(tamanho, tipo, sabor) -- 5
VALUES ("Grande", "Inteira", "Salgada");

INSERT INTO tb_categorias(tamanho, tipo, sabor) -- 6
VALUES ("Extra Grande", "Meia", "Salgada");

INSERT INTO tb_categorias(tamanho, tipo, sabor) -- 7
VALUES ("Extra Grande", "Inteira", "Salgada");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
descricao VARCHAR(100),
borda VARCHAR(50),
categoria_id bigint,
preco DECIMAL(8, 2),
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizza(nome, descricao, borda, categoria_id, preco)
VALUES ("Frango com Requeijão", "Frango desfiado, cebola, oregano e requeijão", "Recheada", 7, 79.90);

INSERT INTO tb_pizza(nome, descricao, borda, categoria_id, preco)
VALUES ("Calabresa", "Mussarela, calabresa e cebola, oregano", "Normal", 2, 24.50);

INSERT INTO tb_pizza(nome, descricao, borda, categoria_id, preco)
VALUES("Napolitana", "Mussarela, tomate, oregano e parmesão ralado", "Normal", 3, 46.90);

INSERT INTO tb_pizza(nome, descricao, borda, categoria_id, preco)
VALUES ("4 Queijos", "Mussarela, requeijão, gorgonzola, oregano e parmesão ralado", "Recheada", 6, 39.95);

INSERT INTO tb_pizza(nome, descricao, borda, categoria_id, preco)
VALUES ("Margherita", "Mussarela, molho de tomate, parmesão e manjericão", "Recheada", 5, 67.90);

INSERT INTO tb_pizza(nome, descricao, borda, categoria_id, preco)
VALUES ("Frango com Barbecue", "Barbecue, mussarela, frango grelhado, cebola, oregano e parmesão", "Recheada", 5, 67.90);

INSERT INTO tb_pizza(nome, descricao, borda, categoria_id, preco)
VALUES ("Chocorango", "Chocolate, morango, granulado de chocolate", "Normal", 1, 32.90);

INSERT INTO tb_pizza(nome, descricao, borda, categoria_id, preco)
VALUES ("Veggie", "Molho de tomate natural, queijo vegano, rúcula e tomate seco", "Normal", 4, 39.45);


SELECT * FROM tb_pizza;
-- pizzas com valor superior a R$ 45,00
SELECT * FROM tb_pizza WHERE preco > 45.00;

-- pizzas com valor entre R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizza WHERE preco BETWEEN 50 AND 100;

-- pizzas que contenham a letra "m" no nome
SELECT * FROM tb_pizza WHERE nome LIKE "%m%";

-- join das duas tabelas
SELECT * FROM tb_pizza INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizza.categoria_id;

-- pizzas de determinada categoria
SELECT * FROM tb_pizza INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizza.categoria_id WHERE tb_categorias.sabor = "Doce";