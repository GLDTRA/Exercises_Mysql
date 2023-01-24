CREATE DATABASE db_pizzaria_legal; 

use db_pizzaria_legal; 

CREATE TABLE IF NOT EXISTS tb_pizza(
	id BIGINT PRIMARY KEY AUTO_INCREMENT, 
	nome VARCHAR(50) NOT NULL, 
    isFlavor ENUM("DOCE", "SALGADA") NOT NULL,
    hasBorda ENUM("SIM", "NAO") NOT NULL,
    preco FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_categorias(
	id BIGINT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(50) NOT NULL,
    codigo INT UNIQUE NOT NULL,
    id_tb_pizza BIGINT NOT NULL,
    FOREIGN KEY(id_tb_pizza) REFERENCES tb_pizza(id)
);

INSERT INTO tb_pizza(nome, isFlavor, hasBorda, preco) VALUES
("Mussarela", "Salgada", "SIM", 50.99), 
("Calabresa", "Salgada", "SIM", 35.00), 
("Portuguesa", "Salgada", "NAO", 45.00), 
("Romeu e Julieta", "Doce", "NAO", 60.00), 
("3 queijos", "Salgada", "NAO", 55.00),
("Calabria", "Salgada","NAO", 55.00), 
("4 Queijos", "Salgada", "SIM", 29.00), 
("Banana", "Doce", "NAO", 49.00); 

INSERT INTO tb_categorias(nome, codigo, id_tb_pizza) VALUES
("Frita", 1, 1), 
("Assada", 2, 2),
("Romana-pinsa", 3, 3),
("Pissalandrea", 4, 4), 
("Sfincione", 5, 5),
("Pizza al tegamino", 6, 2),
("Pizza com minestrone de Molise", 7, 1);

select * from tb_categorias;
SELECT * FROM tb_pizza WHERE preco > 45.00; 

SELECT * FROM tb_pizza WHERE preco BETWEEN 50.00 AND 100.00; 

SELECT * FROM tb_pizza WHERE nome LIKE "%M%"; 

SELECT * FROM tb_pizza AS p 
INNER JOIN tb_categorias AS c on p.id = c.id;

SELECT * FROM tb_pizza AS p 
INNER JOIN tb_categorias AS c on p.id = c.id 
WHERE p.isFlavor
Like "Doce";