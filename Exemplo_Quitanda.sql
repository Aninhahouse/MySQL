-- Apagar Banco de Dados db_quitanda
DROP DATABASE db_quitanda;

-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");


INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ("outros");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Laranja", 3000, "2022-03-13", 10.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Tomate", 1105, "2022-03-15", 3.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

 SHOW FULL COLUMNS FROM tb_produtos;
 
 -- Posiciona a tabela em ordem alfabetica
 SELECT * FROM tb_produtos ORDER BY nome;
 
 -- Posiciona a tabela em ordem decrescente 
 SELECT * FROM tb_produtos ORDER BY nome DESC;
 
 -- Negaçao
  SELECT * FROM tb_produtos WHERE NOT categoria_id = 1;
  
  -- Encontra os valores exatos entre parenteses
  SELECT * FROM tb_produtos WHERE preco IN ( 5, 10, 15);
  
  -- Encontra os valore de 5 a 15, exemplo (5,6,7,8,9,10...)
  SELECT * FROM tb_produtos WHERE preco BETWEEN  5 AND  15;
  
  
  --  Acha os nomes na tabela com certa sibala
  
    --  Inicia com a sibala RA 
  SELECT * FROM tb_produtos WHERE nome LIKE "ra%";
  -- Confere se possui a sibala RA na palavra toda e geralmente é o mais  usado  
  SELECT * FROM tb_produtos WHERE nome LIKE "%ra%";
  -- Termina com a sibala RA 
  SELECT * FROM tb_produtos WHERE nome LIKE "%ra";
  
  -- Conta quantas linhas na tabela 
 SELECT COUNT(*) FROM tb_produtos;
  -- Conta quantas linhas validas na tabela, excluindo as Null 
 SELECT COUNT(categoria_id) FROM tb_produtos;
 
 -- Soma o preço de todos os produtos
  SELECT SUM(preco) AS Soma_Preço FROM tb_produtos;
  
  -- Faz um agrupamento de preço de uma categoria especifica
  SELECT AVG(preco) AS Média_Preço FROM tb_produtos;
  SELECT categoria_id, AVG(preco) AS Média_Preço FROM tb_produtos GROUP BY categoria_id;
  
  -- Calcula o preço maximo e minimo
  SELECT MAX(preco) FROM tb_produtos;
  SELECT MIN(preco) FROM tb_produtos;
  
  -- Os tres tipos de JOIN
  SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id; 
  SELECT * FROM tb_produtos LEFT JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id; 
  SELECT * FROM tb_produtos RIGHT JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id; 
  
  -- Esse join  mostra na tabela somente a categoria de frutas
   SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.descricao = "frutas" ORDER BY nome; 
  
  
  
  
  
  
  
 
 
