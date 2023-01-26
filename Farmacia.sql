CREATE DATABASE db_farmacia_bem_estar; 

use db_farmacia_bem_estar; 

CREATE TABLE IF NOT EXISTS tb_categorias(
	id BIGINT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(50) NOT NULL,
    codigoEstoque INT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_produtos(
	id BIGINT PRIMARY KEY AUTO_INCREMENT, 
	nome VARCHAR(50) NOT NULL, 
    isMedicine ENUM("Sim", "Nao") NOT NULL,
    cor VARCHAR(50) NOT NULL,
    preco FLOAT NOT NULL, 
    idTbCategorias BIGINT NOT NULL, 
    FOREIGN KEY(idTbCategorias) REFERENCES tb_categorias(id)
);
	
INSERT INTO tb_categorias(nome, codigoEstoque) VALUES
("Remedio", 1), 
("Perfumaria", 2),
("Alimentos", 3),
("Bazar", 4), 
("Bebidas", 5);

    
INSERT INTO tb_produtos(nome, isMedicine, cor, preco, idTbCategorias) VALUES
("Paracetamol", "Sim", "vermelha", 50.99, 1), 
("Dipirona", "Sim", "preta", 35.00, 1), 
("Desodorante", "Nao", "preto", 45.00, 2), 
("Algodao", "NAO", "branco", 60.00, 2), 
("Cotonete", "NAO", "azul", 55.00, 2),
("Balanca", "NAO","cinza", 55.00, 4), 
("A.S.", "Sim", "branco", 29.00, 1), 
("Lubrificante", "nao", "incolor", 49.00, 1); 


SELECT * FROM tb_produtos WHERE preco > 50.00; 

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00; 

SELECT * FROM tb_produtos WHERE nome LIKE "%c%"; 

SELECT * FROM tb_produtos AS p 
INNER JOIN tb_categorias AS c on p.id = c.id;

SELECT * FROM tb_produtos AS p 
INNER JOIN tb_categorias AS c on p.idTbCategorias = c.id 
WHERE c.nome
Like "Perfumaria";
