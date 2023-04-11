CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(6,2) not null,
    categoria varchar(255) not null,
	data_lancamento date, 
    quantidade_estoque int not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, preco, categoria, data_lancamento, quantidade_estoque) 
VALUES ("The Last of Us", 219.00, "ação-aventura", "2023-01-15", 200);
INSERT INTO tb_produtos(nome, preco, categoria, data_lancamento, quantidade_estoque)
 VALUES ("Grand Theft Auto V", 87.00, "ação-aventura", "2013-09-17", 100);
INSERT INTO tb_produtos(nome, preco, categoria, data_lancamento, quantidade_estoque) 
VALUES ("Red Dead Redemption", 108.00, "ação-aventura", "2010-05-18", 150);
INSERT INTO tb_produtos(nome, preco, categoria, data_lancamento, quantidade_estoque) 
VALUES ("Bully", 24.90, "ação-aventura", "2006-10-17", 40);
INSERT INTO tb_produtos(nome, preco, categoria, data_lancamento, quantidade_estoque) 
VALUES ("Grand Theft Auto: San Andreas", 19.90, "ação-aventura", "2004-10-26", 50);
INSERT INTO tb_produtos(nome, preco, categoria, data_lancamento, quantidade_estoque) 
VALUES ("God of war", 50.00, "ação-aventura", "2018-04-20", 80);
INSERT INTO tb_produtos(nome, preco, categoria, data_lancamento, quantidade_estoque) 
VALUES ("The Sims 4", 49.99, "simulação de vida", "2014-09-02", 80);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco < 50;

UPDATE tb_produtos SET preco = 21.00 WHERE id = 5;