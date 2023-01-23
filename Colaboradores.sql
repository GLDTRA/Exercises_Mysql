create database RH; 

use RH; 

create table if not exists RH.Colaboradores(
    Id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(70) NOT NULL,
    DataNascimento DATE NOT NULL,
    Superior VARCHAR(60) NOT NULL,
    Salario FLOAT NOT NULL, 
    BeneficiosVAVR FLOAT NOT NULL
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;

INSERT INTO Colaboradores(Nome, DataNascimento, Superior, Salario, BeneficiosVAVR) 
VALUES 
("Robert", '1993-09-21', "Robson", 1000.79, 340),
("Gustavo", '1993-10-01', "Bianca", 4500.00, 600),
("Henrique", '1999-12-24', "Giovanni", 1654.00, 687.87),
("Thiago", '2003-06-08', "Gabriel", 4630.80, 670.00),
("Valdemiro", '1974-09-10', "Carolina", 6840.90, 800);

SELECT * FROM RH.Colaboradores WHERE Salario > 2000; 

SELECT * FROM RH.Colaboradores WHERE Salario < 2000;

