CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    serie int not null,
    bimestre varchar(255),
	idade int, 
    nota decimal(2,1) not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_estudantes(nome, serie, bimestre, idade, nota) VALUES ("Ana Vieira", 9, "Segundo", 16, 9.9);
INSERT INTO tb_estudantes(nome, serie, bimestre, idade, nota) VALUES ("Maria Alice", 8, "Segundo", 15, 5.4);
INSERT INTO tb_estudantes(nome, serie, bimestre, idade, nota) VALUES ("Arthur Rodrigues", 2, "Segundo", 7, 6.5);
INSERT INTO tb_estudantes(nome, serie, bimestre, idade, nota) VALUES ("Lucas Almeida", 4, "Terceiro", 10, 8.0);
INSERT INTO tb_estudantes(nome, serie, bimestre, idade, nota) VALUES ("Marcelo Oliveira", 5, "Terceiro", 11, 9.8);
INSERT INTO tb_estudantes(nome, serie, bimestre, idade, nota) VALUES ("Samantha Santos", 8, "Primeiro", 15, 4.8);
INSERT INTO tb_estudantes(nome, serie, bimestre, idade, nota) VALUES ("Alessandra Alves", 7, "Quarto", 14, 8.8);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 8.0;
SELECT * FROM tb_estudantes WHERE nota < 8.0;

UPDATE tb_estudantes SET nota = 9.5 WHERE id = 7;