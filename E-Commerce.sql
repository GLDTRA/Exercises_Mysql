CREATE DATABASE E_Commerce; 

use E_Commerce; 

CREATE TABLE IF NOT EXISTS E_Commerce.tb_Produtos(
    Id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(70) NOT NULL,
    DataValidade DATE NOT NULL,
    Supervisor VARCHAR(60) NOT NULL,
    Cor VARCHAR(50) NOT NULL, 
    Preco FLOAT NOT NULL
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;

INSERT INTO E_Commerce.tb_Produtos(Nome, DataValidade, Supervisor, Cor, Preco) 
VALUES 
("Saco", '1993-09-21', "Robson", "PRETO", 340),
("Garrafa", '1993-10-01', "Bianca", "BRANCO", 600),
("Panela", '1999-12-24', "Giovanni", "PRETO", 687.87),
("Copo", '2003-06-08', "Gabriel", "PRETO", 670.00),
("Bike", '1974-09-10', "Carolina", "VERMELHO", 800),
("Banco", '1999-12-24', "Giovanni", "PRETO", 687.87),
("Mesa", '2003-06-08', "Gabriel", "CINZA", 670.00),
("Vaso", '1974-09-10', "Carolina", "VIOLETA", 800); 

SELECT * FROM E_Commerce.tb_Produtos WHERE Preco > 500; 

SELECT * FROM E_Commerce.tb_Produtos WHERE Preco < 500;