CREATE DATABASE Registro_Escola;

USE Registro_Escola;

CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    turma VARCHAR(20),
    nota DECIMAL(4, 2),
    data_matricula DATE
);

INSERT INTO tb_estudantes (nome, idade, turma, nota, data_matricula) VALUES
('Ana Clara', 15, '9A', 8.5, '2021-02-10'),
('João Pedro', 14, '8B', 6.0, '2022-03-12'),
('Mariana Santos', 16, '9A', 9.0, '2020-01-15'),
('Lucas Oliveira', 13, '7C', 5.5, '2023-04-20'),
('Beatriz Lima', 15, '8B', 7.2, '2021-08-25'),
('Rafael Costa', 14, '7A', 4.8, '2022-09-30'),
('Camila Souza', 16, '9C', 7.8, '2020-11-10'),
('Pedro Henrique', 13, '7C', 6.5, '2023-05-18');

SELECT * FROM tb_estudantes
WHERE nota > 7.0;

SELECT * FROM tb_estudantes
WHERE nota < 7.0;

UPDATE tb_estudantes
SET nota = 7.5
WHERE id = 2;