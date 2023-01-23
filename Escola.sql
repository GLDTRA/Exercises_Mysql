CREATE DATABASE Escola; 

use Escola; 

CREATE TABLE IF NOT EXISTS Escola.Estudantes(
    Id BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Nome VARCHAR(70) NOT NULL,
    DataNascimento DATE NOT NULL,
    Sobrenome VARCHAR(60) NOT NULL,
	RA VARCHAR(50) NOT NULL , 
    Matricula Int NOT NULL UNIQUE,
    Notas float NOT NULL
)ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;

INSERT INTO Escola.Estudantes(Nome, DataNascimento, Sobrenome, RA, Matricula, Notas) 
VALUES 
("GUSTAVO", '1993-09-21', "Robson", "4574h", 34085, 8.0),
("GIOVANNI", '1993-10-01', "Bianco", "gfhdhyd", 60065, 9.0),
("GEANDRO", '1999-12-24', "Giovanno", "6765jf", 68987, 4.0),
("ANNA", '2003-06-08', "Gabriela", "8785", 67000, 6.0),
("ALEXIA", '1974-09-10', "Carol", "53454h", 80098, 5.8),
("LUCAS", '1999-12-24', "Giovan", "5364373y", 68787, 3.8),
("MARIA", '2003-06-08', "Silva", "648434u", 67009, 8.3),
("JOAO", '1974-09-10', "Domingos", "35573d", 80076, 10.0); 

SELECT * FROM Escola.Estudantes WHERE NOTAS > 7;

SELECT * FROM Escola.Estudantes WHERE NOTAS < 7;
