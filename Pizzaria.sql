CREATE DATABASE db_pizzaria_legal; 

use db_pizzaria_legal; 

CREATE TABLE IF NOT EXISTS tb_categorias(
    id BIGINT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(50) NOT NULL,
    codigoEstoque INT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_pizza(
    id BIGINT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(50) NOT NULL, 
    isFlavor ENUM("DOCE", "SALGADA") NOT NULL,
    hasBorda ENUM("SIM", "NAO") NOT NULL,
    preco FLOAT NOT NULL,
    idTbCategorias BIGINT NOT NULL, 
    FOREIGN KEY(idTbCategorias) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, codigoEstoque) VALUES
("Frita", 1), 
("Assada", 2),
("Romana-pinsa", 3),
("Pissalandrea", 4), 
("Sfincione", 5),
("Pizza al tegamino", 6),
("Pizza com minestrone de Molise", 7);

INSERT INTO tb_pizza(nome, isFlavor, hasBorda, preco, idTbCategorias) VALUES
("Mussarela", "Salgada", "SIM", 50.99, 2), 
("Calabresa", "Salgada", "SIM", 35.00, 2), 
("Portuguesa", "Salgada", "NAO", 45.00, 2), 
("Romeu e Julieta", "Doce", "NAO", 60.00, 1), 
("3 queijos", "Salgada", "NAO", 55.00, 4),
("Calabria", "Salgada","NAO", 55.00, 5), 
("4 Queijos", "Salgada", "SIM", 29.00, 7), 
("Banana", "Doce", "NAO", 49.00, 6); 

select * from tb_categorias;
SELECT * FROM tb_pizza WHERE preco > 45.00; 

SELECT * FROM tb_pizza WHERE preco BETWEEN 50.00 AND 100.00; 

SELECT * FROM tb_pizza WHERE nome LIKE "%M%"; 

-- Traz somente os id correspondentes aos ids da tabela que está fazendo relação
SELECT * FROM tb_pizza AS p 
INNER JOIN tb_categorias AS c on p.id = c.id;

SELECT * FROM tb_pizza AS p
INNER JOIN tb_categorias AS c on p.id = c.id
WHERE c.id_tb_pizza = 1;

-- Traz somentes os ids correspondentes aos ids tabela em relacionamentto , priorizando a tabela secundária ou seja tabela da direita. 
SELECT * FROM tb_pizza AS p
RIGHT
JOIN tb_categorias AS c on p.id = c.id;

-- Traz somentes os ids correspondentes aos ids tabela em relacionamentto , priorizando a tabela PRIMÁRIA ou seja tabela da ESQUERDA. 

SELECT * FROM tb_pizza AS p
LEFT
JOIN tb_categorias AS c on p.idTbCategorias = c.id;
