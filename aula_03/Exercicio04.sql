CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  descricao VARCHAR(100),
  categoria_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
  ('Carnes Bovinas', 'Cortes de carne bovina'),
  ('Carnes Suínas', 'Cortes de carne suína'),
  ('Carnes de Aves', 'Cortes de carne de aves'),
  ('Carnes de Peixes', 'Peixes frescos'),
  ('Embutidos', 'Produtos embutidos');

INSERT INTO tb_produtos (nome, preco, descricao, categoria_id) VALUES
  ('Picanha', 89.90, 'Corte nobre de carne bovina', 1),
  ('Costela', 49.90, 'Corte de carne bovina com osso', 1),
  ('Linguiça Toscana', 14.90, 'Linguiça artesanal temperada', 5),
  ('Salmão', 69.90, 'Peixe fresco', 4),
  ('Coxa de Frango', 24.90, 'Coxa de frango desossada', 3),
  ('Paleta de Porco', 39.90, 'Corte de carne suína', 2),
  ('Lombo Suíno', 54.90, 'Corte nobre de carne suína', 2),
  ('Carpaccio', 89.90, 'Carne bovina fatiada finamente', 1);


SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;


SELECT * FROM tb_produtos WHERE nome LIKE '%C%';


SELECT p.*, c.nome AS categoria FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id;


SELECT p.*, c.nome AS categoria FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome IN ('Carnes de Aves', 'Carnes de Peixes');
