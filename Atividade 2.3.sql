CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2),
    estoque INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Remédios e fármacos para diversas condições'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Higiene', 'Produtos de higiene pessoal'),
('Suplementos', 'Vitaminas e suplementos alimentares'),
('Primeiros Socorros', 'Produtos para curativos e emergências');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES
('Paracetamol', 'Analgésico e antitérmico', 12.50, 100, 1),
('Shampoo Anticaspa', 'Shampoo para tratamento de caspa', 45.00, 50, 2),
('Vitamina C', 'Suplemento de vitamina C 500mg', 30.00, 75, 4),
('Sabonete Líquido', 'Sabonete para pele sensível', 25.00, 60, 3),
('Creme Hidratante', 'Hidratante corporal para pele seca', 55.00, 40, 2),
('Kit Primeiros Socorros', 'Kit básico para emergências', 80.00, 20, 5),
('Ibuprofeno', 'Anti-inflamatório e analgésico', 15.00, 90, 1),
('Colágeno em Pó', 'Suplemento de colágeno hidrolisado', 65.00, 30, 4);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.id, tb_produtos.nome, tb_produtos.preco, tb_categorias.nome_categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.id, tb_produtos.nome, tb_produtos.preco, tb_categorias.nome_categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Cosméticos';









