CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo'),
('Mago', 'Usuário de magias e feitiços'),
('Arqueiro', 'Especialista em ataques à distância'),
('Paladino', 'Guerreiro sagrado com habilidades de cura'),
('Assassino', 'Especialista em ataques furtivos e críticos');

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Arthur', 50, 2200, 1800, 1), 
('Merlin', 45, 2500, 1200, 2),  
('Legolas', 52, 1900, 1000, 3),
('Lancelot', 48, 2100, 2000, 4), 
('Altair', 55, 2800, 1500, 5),  
('Cassandra', 40, 1700, 900, 3),  
('Galahad', 42, 1500, 1100, 4),  
('Ezio', 53, 2600, 1400, 5);  

SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE '%C%';

SELECT tb_personagens.id, tb_personagens.nome, tb_personagens.nivel, tb_personagens.poder_ataque, tb_classes.nome_classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.id, tb_personagens.nome, tb_personagens.nivel, tb_personagens.poder_ataque, tb_classes.nome_classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome_classe = 'Arqueiro';
