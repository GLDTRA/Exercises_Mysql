CREATE DATABASE db_generation_game_online; 

use db_generation_game_online; 

CREATE TABLE IF NOT EXISTS tb_personagens(
	id BIGINT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(50) NOT NULL,
    poderAtaque INT NULL,
    poderDefesa INT NULL
);

CREATE TABLE IF NOT EXISTS tb_classe(
	id BIGINT PRIMARY KEY AUTO_INCREMENT, 
	genero VARCHAR(50) NOT NULL, 
    ISONLINE ENUM("SIM", "NAO") NOT NULL,
    id_tb_personagens BIGINT NOT NULL,
    FOREIGN KEY(id_tb_personagens) REFERENCES tb_personagens(id)
);

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa) VALUES
("valkyria", 1780,4500), 
("Kratos", 1300, 6700), 
("Sonic", 3400, 2100), 
("Mario", 3100, 5600), 
("Superman", 2004, 1300),
("Robin", 6010, 3005),
("Batman", 5400, 2300),
("Chost", 9100, 5300); 

INSERT INTO tb_classe(genero, ISONLINE, id_tb_personagens) VALUES
("Arqueiro", "SIM", 1), 
("Guerreiro", "SIM", 5), 
("Guerreiro", "NAO", 8), 
("Mago", "NAO", 2), 
("Bardo", "SIM", 4); 

SELECT * FROM tb_personagens WHERE poderAtaque > 2000; 

SELECT * FROM tb_personagens WHERE poderDefesa BETWEEN 1000 AND 2000; 

SELECT * FROM tb_personagens WHERE nome LIKE "%C%"; 

SELECT * FROM tb_personagens AS p 
INNER JOIN tb_classe AS c  on p.id = c.id;

SELECT * FROM tb_personagens AS p 
INNER JOIN tb_classe AS c  on p.id = c.id 
WHERE c.genero 
Like "Guerreiro";



