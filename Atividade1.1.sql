CREATE DATABASE RH_Empresa;

USE RH_Empresa;

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    departamento VARCHAR(50),
    salario DECIMAL(10, 2),
    data_contratacao DATE
);

INSERT INTO colaboradores (nome, cargo, departamento, salario, data_contratacao) VALUES
('Alice Silva', 'Analista de RH', 'Recursos Humanos', 2500.00, '2021-05-10'),
('Carlos Souza', 'Desenvolvedor', 'TI', 1800.00, '2022-07-15'),
('Mariana Costa', 'Gerente de Projetos', 'Gerência', 4000.00, '2019-03-20'),
('Pedro Lima', 'Assistente Administrativo', 'Administração', 1500.00, '2023-01-12'),
('Fernanda Alves', 'Analista Financeira', 'Financeiro', 3000.00, '2020-11-05');

SELECT * FROM colaboradores
WHERE salario > 2000;

SELECT * FROM colaboradores
WHERE salario < 2000;

UPDATE colaboradores
SET salario = 2200.00
WHERE id = 2; 