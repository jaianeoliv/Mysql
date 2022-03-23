-- DROP DATABASE db_farmacia_bem_estar;
CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
categoria VARCHAR(50) NOT NULL,
tipo VARCHAR(50),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(categoria, tipo) -- 1
VALUES ("Anti-inflamatório", "Comprimido");

INSERT INTO tb_categorias(categoria, tipo) -- 2
VALUES ("Anti-inflamatório", "Pastilha");

INSERT INTO tb_categorias(categoria, tipo) -- 3
VALUES ("Analgésico", "Comprimido");

INSERT INTO tb_categorias(categoria, tipo) -- 4
VALUES("Antialérgico", "Solução oral");

INSERT INTO tb_categorias(categoria, tipo) -- 5
VALUES("Antibiótico", "Solução oral");

INSERT INTO tb_categorias(categoria, tipo) -- 6
VALUES("Antitérmico", "Gotas");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome VARCHAR (50) NOT NULL,
laboratorio VARCHAR (50) NOT NULL,
dosagem VARCHAR(50),
categ_id bigint,
preco DECIMAL (5, 2),
PRIMARY KEY (id),
FOREIGN KEY (categ_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(nome, laboratorio, dosagem, categ_id, preco)
VALUES("Ibuprofeno", "Neo Química", "400mg", 1, 5.85);

INSERT INTO tb_produtos(nome, laboratorio, dosagem, categ_id, preco)
VALUES("Flanax", "Bayer", "275mg", 1, 8.50);

INSERT INTO tb_produtos(nome, laboratorio, dosagem, categ_id, preco)
VALUES("Dipirona Monoidratada", "Medley", "500mg", 6, 7.50);

INSERT INTO tb_produtos(nome, laboratorio, dosagem, categ_id, preco)
VALUES("Dorflex", "Sanofi", "10 comprimidos", 3 ,14.10);

INSERT INTO tb_produtos(nome, laboratorio, dosagem, categ_id, preco)
VALUES("Amoxilina", "Eurofarma", "250mg", 5, 27.70);

INSERT INTO tb_produtos(nome, laboratorio, dosagem, categ_id, preco)
VALUES("Maleato de Dexclorfenoramina", "EMS", "2mg/5ml - 120ml", 4,7.29);

INSERT INTO tb_produtos(nome, laboratorio, dosagem, categ_id, preco)
VALUES("Strepsils", "Reckitt", "8,75mg", 2, 16.09);

SELECT * FROM tb_produtos;
-- produtos com valor a cima de R$50,00
SELECT * FROM tb_produtos WHERE preco > 50;

-- produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- produtos com a letra "c" no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- atributos das duas tabelas juntos
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categ_id;

-- produtos de determinada categoria
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categ_id WHERE tb_categorias.categoria = "Antibiótico";
