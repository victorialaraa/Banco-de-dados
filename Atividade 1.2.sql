CREATE DATABASE ECommerce;

USE ECommerce;

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2),
    categoria VARCHAR(50),
    estoque INT
);

INSERT INTO tb_produtos (nome, descricao, preco, categoria, estoque) VALUES
('Notebook Dell', 'Notebook com 16GB RAM e 512GB SSD', 3500.00, 'Eletrônicos', 15),
('Mouse Gamer', 'Mouse óptico com 7 botões', 120.00, 'Acessórios', 50),
('Cadeira de Escritório', 'Cadeira ergonômica ajustável', 750.00, 'Móveis', 20),
('Teclado Mecânico', 'Teclado RGB com switches azuis', 350.00, 'Acessórios', 30),
('Smartphone Samsung', 'Smartphone com 128GB de armazenamento', 2000.00, 'Eletrônicos', 25),
('Livro de Programação', 'Livro sobre desenvolvimento em Java', 90.00, 'Livros', 100),
('Fone de Ouvido Bluetooth', 'Fone com cancelamento de ruído', 600.00, 'Acessórios', 40),
('Mesa para Computador', 'Mesa em L com suporte para CPU', 450.00, 'Móveis', 10);

SELECT * FROM tb_produtos
WHERE preco > 500;

SELECT * FROM tb_produtos
WHERE preco < 500;

UPDATE tb_produtos
SET estoque = 18
WHERE id = 3;