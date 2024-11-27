CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ingredientes VARCHAR(255),
    preco DECIMAL(10, 2),
    tamanho VARCHAR(20),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Tradicional', 'Pizzas clássicas e tradicionais'),
('Especial', 'Pizzas com ingredientes especiais'),
('Vegetariana', 'Pizzas sem carne'),
('Doce', 'Pizzas com ingredientes doces'),
('Premium', 'Pizzas premium com ingredientes selecionados');

INSERT INTO tb_pizzas (nome, ingredientes, preco, tamanho, categoria_id) VALUES
('Margherita', 'Molho de tomate, mozzarella, manjericão', 45.00, 'Média', 1),
('Pepperoni', 'Molho de tomate, mozzarella, pepperoni', 50.00, 'Grande', 1),
('Quatro Queijos', 'Mozzarella, parmesão, provolone, gorgonzola', 60.00, 'Grande', 2),
('Vegetariana Especial', 'Pimentão, cebola, azeitona, tomate, milho', 55.00, 'Média', 3),
('Chocolate com Morango', 'Chocolate, morango, leite condensado', 65.00, 'Grande', 4),
('Frango com Catupiry', 'Frango desfiado, catupiry, milho', 48.00, 'Média', 2),
('Calabresa', 'Calabresa, cebola, mozzarella', 40.00, 'Pequena', 1),
('Nutella com Banana', 'Nutella, banana, açúcar', 70.00, 'Grande', 4);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.id, tb_pizzas.nome, tb_pizzas.preco, tb_categorias.nome_categoria FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.id, tb_pizzas.nome, tb_pizzas.preco, tb_categorias.nome_categoria FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Doce';




