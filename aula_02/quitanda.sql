CREATE DATABASE db_quitanda;

-- Query para deletar o banco de dados
DROP DATABASE db_quitanda;

-- Começar utilizar o banco
USE db_quitanda;

-- Criar tabela e popular
CREATE TABLE tb_produtos(
     id bigint auto_increment,
     nome varchar(255) not null,
     quantidade int,
     preco decimal not null,
     primary key (id)
     );
     
     -- Visualizar a tabela
     SELECT * FROM tb_produtos;
     
     -- Popular tabela
     INSERT INTO tb_produtos(nomedoproduto, quantidade, preco)
     values ("laranja", 50, 10.00) ;
     INSERT INTO tb_produtos(nomedoproduto, quantidade, preco)
     values ("maça", 20, 5.00) ;
	 INSERT INTO tb_produtos(nomedoproduto, quantidade, preco)
	 values ("banana", 200, 12.00);
	 INSERT INTO tb_produtos(nomedoproduto, quantidade, preco)
	 values ("uva", 1200, 30.00);
	 INSERT INTO tb_produtos(nomedoproduto, quantidade, preco)
     values ("perâ", 500, 2.99);
     
     -- buscas especificas
     SELECT nome, quantidade FROM tb_produtos;
     
	 SELECT * FROM tb_produtos WHERE nomedoproduto = "uva";
     SELECT * FROM tb_produtos WHERE id = 2;
	 SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;
     
     -- Desabilitar nossa segurança do SQL
     SET SQL_SAFE_UPDATES = 0;
     
     -- Atualizar colunas da tabela
     UPDATE tb_produtos SET preco = 5.00 WHERE id = 2;
     
     UPDATE tb_produtos SET preco = 8.80 WHERE id = 1;
     
     
     -- Deletar itens
     DELETE FROM tb_produtos WHERE  id = 7;
     
     -- Atualizar Coluna 
      ALTER TABLE tb_produtos MODIFY preco decimal(6,2);
     
      ALTER TABLE tb_produtos ADD descricao varchar(255);
      
      ALTER TABLE tb_produtos DROP descricao;
      
      -- Alterar nome da coluna
      ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar(255);
      
      
     
	 
     
     
     
     
     