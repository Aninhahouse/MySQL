CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nome_categoria VARCHAR(50) NOT NULL,
  descricao_categoria VARCHAR(100)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Salgadas', 'Pizzas com sabores salgados'),
('Doces', 'Pizzas com sabores doces'),
('Vegetarianas', 'Pizzas sem carne'),
('Queijos', 'Pizzas com variedades de queijos'),
('Especiais', 'Pizzas com sabores especiais');

-- Criação da tabela tb_pizzas
CREATE TABLE tb_pizzas (
  id_pizza INT AUTO_INCREMENT PRIMARY KEY,
  nome_pizza VARCHAR(50) NOT NULL,
  descricao_pizza VARCHAR(100),
  preco DECIMAL(8,2) NOT NULL,
  id_categoria INT NOT NULL,
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_pizzas (nome_pizza, descricao_pizza, preco, id_categoria) VALUES
('Calabresa', 'Pizza de calabresa com cebola', 29.90, 1),
('Mussarela', 'Pizza de mussarela com tomate', 25.90, 1),
('Frango com Catupiry', 'Pizza de frango com catupiry', 32.90, 1),
('Brigadeiro', 'Pizza de brigadeiro com granulado', 24.90, 2),
('Banana com Canela', 'Pizza de banana com canela e açúcar', 26.90, 2),
('Marguerita', 'Pizza de mussarela com tomate e manjericão', 28.90, 3),
('Quatro Queijos', 'Pizza de mussarela, provolone, gorgonzola e parmesão', 34.90, 4),
('Califórnia', 'Pizza de frango, milho e abacaxi', 31.90, 5);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;


-- Mostra as pizzas maior que R$ 25,00
SELECT * FROM tb_pizzas WHERE preco > 25.00;


-- Mostra as pizzas com a letra M no nome
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE 'M%';



SELECT p.nome_pizza, p.descricao_pizza, p.preco, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

-- SELECT utilizando INNER JOIN para unir os dados das tabelas tb_pizzas e tb_categorias, filtrando apenas as pizzas de uma categoria específica
SELECT p.nome_pizza, p.descricao_pizza, p.preco, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doces';


