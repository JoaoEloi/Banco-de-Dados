CREATE DATABASE universoLeitura;

USE universoLeitura;

CREATE TABLE associados (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    rg CHAR(7),
    nome VARCHAR(50),
    sobrenome VARCHAR(100),
    endereco VARCHAR (150),
    cidade VARCHAR(50),
    estado VARCHAR(2)
    );
    
    
    CREATE TABLE autores (
    id_autores INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	sobrenome VARCHAR(100),
    nome VARCHAR (100)
    );
    
    CREATE TABLE editoras(
    id_editoras INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	razao_social VARCHAR(50),
    telefone VARCHAR (50)
    );
    
    CREATE TABLE telefones (
    id_telefones INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    telefone_socio VARCHAR (100), 
    codAssoc INT,
    FOREIGN KEY (codAssoC) REFERENCES associados(id)
    );
   
   CREATE TABLE emprestimos (
	id_emprestimos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    codAssoc INT,
    data_emprestimo DATE,
    prazo_devolucao DATE,
     FOREIGN KEY (codAssoC) REFERENCES associados(id)
    );
    
    CREATE TABLE livros (
    id_livros INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cod_ISBN VARCHAR(13),
    titulo VARCHAR (200),
    ano_criacao DATE,
    ano_publicacao DATE,
    cod_autor INT,
    cod_editoras INT,
    FOREIGN KEY (cod_autor) REFERENCES autores(id_autores),
    FOREIGN KEY (cod_editoras) REFERENCES editoras(id_editoras)
    
    );
    
    
    