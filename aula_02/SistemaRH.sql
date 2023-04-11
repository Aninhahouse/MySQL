CREATE DATABASE db_sistemadeRH;

USE db_sistemadeRH;
CREATE TABLE tb_sistemadoRH(
      id bigint auto_increment,
	  Nome VARCHAR(255)  not null,
	  Cargo VARCHAR(255),
      Cpf CHAR(11),
	  Salario DECIMAL(6,3) not null,
      Data_contratacao DATE,
      primary key (id)
     );
     
     SELECT * FROM tb_sistemadoRH;
     
      INSERT INTO tb_sistemadoRH(Nome, Cargo, Cpf, Salario, Data_contratacao)
      values ("Ana Vieira", "Analista de dados", 65487698018, 20.000, '2022-04-06' ) ;
       INSERT INTO tb_sistemadoRH(Nome, Cargo, Cpf, Salario, Data_contratacao)
      values ("Maria Alice Silva", "Analista Contábil", 73835463805, 1.900, '2023-03-22' ) ;
       INSERT INTO tb_sistemadoRH(Nome, Cargo, Cpf, Salario, Data_contratacao)
      values ("Arthur Rodrigues", "Gerente de Vendas", 28494473953, 2.700, '2023-02-17' ) ;
       INSERT INTO tb_sistemadoRH(Nome, Cargo, Cpf, Salario, Data_contratacao)
      values ("Lucas Almeida ", "Assistente de RH", 93648393265, 3.500, '2022-11-30' ) ;
       INSERT INTO tb_sistemadoRH(Nome, Cargo, Cpf, Salario, Data_contratacao)
      values ("Marcelo Oliveira", "Advogado", 38569374957, 40.000, '2019-05-12' ) ;
      
      
      SELECT * FROM tb_sistemadoRH WHERE salario > 2.000;
	  SELECT * FROM tb_sistemadoRH WHERE salario < 2.000;
      UPDATE tb_sistemadoRH SET salario = 1.999 WHERE id = 3;