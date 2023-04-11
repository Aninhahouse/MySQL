-- Criação do banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- Seleciona o banco de dados criado
USE db_farmacia_bem_estar;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(255),
  PRIMARY KEY (id_categoria)
);

-- Inserção de registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
  ('Medicamentos', 'Produtos utilizados para tratar doenças.'),
  ('Higiene Pessoal', 'Produtos de uso diário para higiene pessoal.'),
  ('Cosméticos', 'Produtos de beleza e cuidados pessoais.'),
  ('Produtos Naturais', 'Produtos feitos a partir de ingredientes naturais.'),
  ('Suplementos', 'Produtos utilizados para complementar a alimentação.');

-- Criação da tabela tb_produtos
CREATE TABLE tb_produtos (
  id_produto INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  descricao VARCHAR(255),
  preco DECIMAL(8,2) NOT NULL,
  estoque INT NOT NULL,
  id_categoria INT NOT NULL,
  PRIMARY KEY (id_produto),
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserção de registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES
  ('Paracetamol', 'Analgésico e antitérmico', 5.50, 100, 1),
  ('Ibuprofeno', 'Anti-inflamatório e analgésico', 8.20, 80, 1),
  ('Sabonete', 'Sabonete líquido para banho', 12.90, 50, 2),
  ('Desodorante', 'Desodorante aerosol masculino', 7.50, 60, 2),
  ('Shampoo', 'Shampoo para cabelos normais', 15.80, 40, 2),
  ('Creme Hidratante', 'Creme hidratante para o corpo', 25.90, 30, 3),
  ('Protetor Solar', 'Protetor solar fator 30', 35.50, 20, 3),
  ('Óleo de Coco', 'Óleo de coco extravirgem', 28.90, 10, 4);

-- Consulta 1: retorna todos os produtos com valor maior que R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50;

-- Consulta 2: retorna todos os produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

-- Consulta 3: retorna todos os produtos que possuem a letra "C" no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- Consulta 4: retorna todos os produtos unidos com as categorias
SELECT p.id_produto, p.nome, p.descricao, p.preco, p.estoque, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.nome, p.preco, c.nome as categoria 
FROM tb_produtos p 
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome = 'Cosméticos';
