CREATE DATABASE cidade_dos_vegetais; 

use cidade_dos_vegetais; 

CREATE TABLE IF NOT EXISTS tb_categorias(
	id BIGINT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(50) NOT NULL,
    Estoque INT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_produtos(
	id BIGINT PRIMARY KEY AUTO_INCREMENT, 
	nome VARCHAR(50) NOT NULL, 
    edibleProduct ENUM("SIM", "NAO"),
    cor VARCHAR(50) NOT NULL,
    preco FLOAT NOT NULL,
    idTbCategorias BIGINT NOT NULL,
    FOREIGN KEY(idTbCategorias) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, estoque) VALUES
("VERDURA", 14235), 
("LEGUMES", 23214),
("HORTALIÇAS", 32144),
("FRUTAS", 4352), 
("BAZAR", 521);

INSERT INTO tb_produtos(nome, edibleProduct, cor, preco, idTbCategorias) VALUES
("RUCULA", "Sim", "VERDE", 50.99, 1), 
("AGRIAO", "Sim", "VERDE", 35.00, 2), 
("MAÇÃ", "NAO", "VERMELHA", 45.00, 4), 
("BANANA", "NAO", "AMARELO", 60.00, 4), 
("FENO", "NAO", "AMARELO", 55.00, 3),
("ALFACE", "NAO","VERDE", 55.00, 2), 
("ABACATE", "SIM", "VERDE", 29.00, 4), 
("CAPIM", "NAO", "VERDE", 49.00, 3); 

SELECT * FROM tb_produtos WHERE preco > 50.00; 

SELECT * FROM tb_produtos WHERE preco BETWEEN 55.00 AND 150.00; 

SELECT * FROM tb_produtos WHERE nome LIKE "%C%"; 

SELECT * FROM tb_produtos AS p 
INNER JOIN tb_categorias AS c on p.idTbCategorias = c.id;

SELECT * FROM tb_produtos AS p 
INNER JOIN tb_categorias AS c on p.idTbCategorias = c.id 
WHERE c.nome
Like "frutas";