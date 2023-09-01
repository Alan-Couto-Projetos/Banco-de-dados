CREATE TABLE construtora 
(
    nome_fantasia VARCHAR2,
    nome VARCHAR2,
    cnpj INT UNIQUE,
    codigo CHAR(4) PRIMARY KEY,
);

CREATE TABLE telefones 
(
    id_construtora CHAR(4) PRIMARY KEY,
    telefones INT,
    CONSTRAINT id_construtora FOREIGN KEY construtora REFERENCES construtora (codigo)
);

CREATE TABLE trabalhadores 
(
    codigo CHAR(4) PRIMARY KEY,
    salario FLOAT,
    nome VARCHAR2,
    cpf INT UNIQUE
);

CREATE TABLE trabalhando 
(
    id_construtora CHAR(4) PRIMARY KEY,
    id_trabalhadores CHAR(4),
    cpf INT PRIMARY KEY UNIQUE,
    contrato_inicio DATE,
    contrato_fim DATE,
    CONSTRAINT id_construtora FOREIGN KEY construtora REFERENCES construtora (codigo),
    CONSTRAINT id_trabalhadores FOREIGN KEY trabalhadores REFERENCES trabalhadores (codigo)
);

CREATE TABLE obras 
(
    nome VARCHAR2,
    codigo CHAR(4) PRIMARY KEY UNIQUE,
    numero CHAR(5),
    logradura VARCHAR2,
    complemento VARCHAR2
);

CREATE TABLE contratos 
(
    id_construtora CHAR(4) PRIMARY KEY,
    id_obras       CHAR(4),
    data_inicio    DATE,
    data_fim       DATE,
    CONSTRAINT id_construtora FOREIGN KEY construtora REFERENCES construtora (codigo),
    CONSTRAINT id_obras FOREIGN KEY obras REFERENCES obras (codigo)
);

CREATE TABLE obras_de_trabalho 
(
    id_trabalhadores CHAR(4) PRIMARY KEY,
    id_obras         CHAR(4),
    data_inicio      DATE,
    data_fim         DATE,
    CONSTRAINT id_trabalhadores FOREIGN KEY trabalhadores REFERENCES trabalhadores (codigo),
    CONSTRAINT id_obras FOREIGN KEY obras REFERENCES obras (codigo)

);

CREATE TABLE equipamentos 
(
    valor_de_uso_diario TIMESTAMP,
    nome VARCHAR2,
    codigo CHAR(4) PRIMARY KEY
);

CREATE  TABLE periodo_de_uso 
(
    id_obras CHAR(4) PRIMARY KEY,
    id_equipamentos CHAR(4),
    data_inicio DATE,
    data_fim DATE,
    CONSTRAINT id_obras FOREIGN KEY obras REFERENCES obras (codigo),
    CONSTRAINT id_equipamentos FOREIGN KEY equipamentos REFERENCES equipamentos (codigo)
);

CREATE TABLE categoria 
(
    descricao VARCHAR2,
    codigo CHAR(4) PRIMARY KEY
);

CREATE TABLE categoria_equipamentos 
(
    id_categoria CHAR(4) PRIMARY KEY,
    id_equipamentos CHAR(4),
    descrição VARCHAR2
);