CREATE DATABASE db_generation_game_online; 

use db_generation_game_online; 

CREATE TABLE IF NOT EXISTS tb_classe(
	id BIGINT PRIMARY KEY AUTO_INCREMENT, 
	genero VARCHAR(50) NOT NULL, 
    IsFight ENUM("SIM", "NAO") NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_personagens(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    poderAtaque INT NULL,
    poderDefesa INT NULL,
    idTbClasse BIGINT NOT NULL,
	FOREIGN KEY(idTbClasse) REFERENCES tb_classe(id)
);

INSERT INTO tb_classe(genero, ISFight) VALUES
("Arqueiro", "SIM"), 
("Guerreiro", "SIM"), 
("Ferreiro", "NAO"), 
("Mago", "SIM"), 
("Bardo", "SIM"); 

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa, idTbClasse) VALUES
("valkyria", 1780,4500, 1), 
("Kratos", 1300, 6700, 2), 
("Sonic", 3400, 2100, 3), 
("Mario", 3100, 5600, 1), 
("Superman", 2004, 1300, 1),
("Robin", 6010, 3005, 5),
("Batman", 5400, 2300, 2),
("Chost", 9100, 5300, 5); 

SELECT * FROM tb_personagens WHERE poderAtaque > 2000; 

SELECT * FROM tb_personagens WHERE poderDefesa BETWEEN 1000 AND 2000; 

SELECT * FROM tb_personagens WHERE nome LIKE "%C%"; 

SELECT * FROM tb_personagens AS p 
INNER JOIN tb_classe AS c  on p.id = c.id;

SELECT * FROM tb_personagens AS p 
INNER JOIN tb_classe AS c on p.idTbClasse = c.id
WHERE c.genero
Like "Guerreiro";



