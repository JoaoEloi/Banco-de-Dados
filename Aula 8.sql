CREATE DATABASE Consultorio;

USE consultorio;

CREATE TABLE pacientes (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sobrenome VARCHAR(100)
);

CREATE TABLE especialidades (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
    );
    
    
    CREATE TABLE medicos (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sobrenome VARCHAR(100),
    especialidades INT,
    FOREIGN KEY (especialidades) REFERENCES especialidades(id)
    
);

CREATE TABLE consultas (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    paciente_id INT,
    medico_id INT,
    data_consulta DATE,
    hora_consulta TIME,
    FOREIGN KEY (paciente_id) REFERENCES medicos(id),
    FOREIGN KEY (medico_id) REFERENCES medicos(id)
    
);

