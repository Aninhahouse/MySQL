CREATE DATABASE db_generation_game_online;

-- Seleciona o banco de dados criado
USE db_generation_game_online;

-- Criação da tabela tb_classes
CREATE TABLE tb_classes (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- Inserção de dados na tabela tb_classes
INSERT INTO tb_classes (nome, tipo) VALUES
	('Super Força', 'Super força, voo e visão de raio-x'),
    ('Arqueiro', 'Ataque com arco e flecha'),
    ('Bruxo', 'Ataque com magia'),
    ('Velocidade e Voo', 'Velocidade e ataque com raios'),
    ('Resistência', 'Super força, aguenta dor');

-- Criação da tabela tb_personagens
CREATE TABLE tb_personagens (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

-- Inserção de dados na tabela tb_personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) VALUES
    ('Superman', 3000, 2500, 10, 1),
    ('Oliver Queen', 2500, 2000, 10, 2),
    ('Harry Potter', 2800, 1500, 8, 3),
    ('Flash', 2200, 3000, 9, 4),
    ('Mulher Maravilha', 1800, 1000, 7, 4),
    ('Homem Aranha', 2000, 1800, 8, 1),
    ('Voldemort', 2200, 1500, 7, 3),
    ('Capitao America', 2400, 1200, 6, 5);

SELECT * FROM tb_personagens;
-- Mostra os ataques maior do que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Mostra defesa no intervalo 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Mostra os personagens com a letra C no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- Junta a tabela tb_personagens com a tabela tb_classes
SELECT tb_personagens.nome, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_personagens.nivel, tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT tb_personagens.nome, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_personagens.nivel, tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';