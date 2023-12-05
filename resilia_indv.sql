CREATE DATABASE Resilia_Indv;
USE Resilia_Indv;

CREATE TABLE empresas_parceiras (
    id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    nome_empresa VARCHAR(50) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone VARCHAR (20) NOT NULL
);


CREATE TABLE tecnologias (
    id_tecnologia INT PRIMARY KEY AUTO_INCREMENT,
    nome_tecnologia VARCHAR(50) NOT NULL,
    area_tecnologia VARCHAR(50) NOT NULL 
);


CREATE TABLE tecnologias_empresas (
    id_relacao INT PRIMARY KEY AUTO_INCREMENT,
    id_empresa INT,
    id_tecnologia INT,
    FOREIGN KEY (id_empresa) REFERENCES empresas_parceiras(id_empresa),
    FOREIGN KEY (id_tecnologia) REFERENCES tecnologias(id_tecnologia)
);


CREATE TABLE colaboradores (
    id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
    nome_colaborador VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    id_empresa INT,
    FOREIGN KEY (id_empresa) REFERENCES empresas_parceiras(id_empresa)
);

CREATE TABLE area (
id_area INT PRIMARY KEY AUTO_INCREMENT,
nome_area VARCHAR (50) NOT NULL,
id_empresa INT,
FOREIGN KEY (id_empresa) REFERENCES empresas_parceiras(id_empresa)
);

USE Resilia_Indv;


INSERT INTO empresas_parceiras (nome_empresa, endereco, email, telefone)
VALUES
    ('Empresa de Tecnologia 1', 'Rua Tô Surtando, 456', 'contato@empresadetecnologia1.com', '(21) 22222-3333'),
    ('Empresa de Tecnologia 2', 'Avenida Enlouqueci, 789', 'contato@empresadetecnologia2.com', '(11) 55555-6666');


INSERT INTO tecnologias (nome_tecnologia, area_tecnologia)
VALUES
    ('Tecnologia Estanha', 'MobileDev'),
    ('Tecnologia de Outro Mundo', 'IA');


INSERT INTO tecnologias_empresas (id_empresa, id_tecnologia)
VALUES
    (1, 1),
    (2, 2); 


INSERT INTO colaboradores (nome_colaborador, cargo, id_empresa)
VALUES
    ('Elisabete Silva Almeida', 'Desenvolvedor Sênior', 1),
    ('Claudio Francisco de Oliveira', 'Analista de Dados Júnior', 2);
    
INSERT INTO area (nome_area, id_empresa)
VALUES
    ('Desenvolvimento', 1),
    ('Análise de Dados', 2);

