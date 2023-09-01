CREATE TABLE construtora 
	(
 		nome_fantasia VARCHAR(40) NOT NULL,  
 		nome VARCHAR(40) NOT NULL,  
 		CNPJ VARCHAR(18) NOT NULL,  
 		codigo INT PRIMARY KEY,  
 		UNIQUE (CNPJ)
	);

CREATE TABLE telefones 
	(
		numero VARCHAR(30) NOT NULL,
		FK_construtora_tel INT,
		UNIQUE(numero),
		CONSTRAINT FK_construtora_tel FOREIGN KEY (FK_construtora_tel) REFERENCES construtora (Codigo)
	);

CREATE TABLE obras 
	( 
 		nome VARCHAR(40) NOT NULL,  
 		codigo INT PRIMARY KEY,  
 		numero INT NOT NULL,  
 		logradura VARCHAR(50) NOT NULL,  
 		complemento VARCHAR(60),  
 		FK_Codigo_construtora INT,  
		CONSTRAINT FK_Codigo_construtora FOREIGN KEY (FK_Codigo_construtora) REFERENCES construtora (Codigo)
	);

CREATE TABLE trabalhadores 
	( 
 		salario FLOAT NOT NULL,  
 		nome VARCHAR(40) NOT NULL,  
 		cpf VARCHAR(40) PRIMARY KEY,
		FK_Codigo_obras_trab INT,
    	CONSTRAINT FK_Codigo_obras_trab FOREIGN KEY (FK_Codigo_obras_trab) REFERENCES obras (codigo)
	);

CREATE TABLE categoria 
	( 
 		codigo INT PRIMARY KEY,  
 		descricao VARCHAR(80) NOT NULL
	); 

CREATE TABLE equipamentos 
	( 
 		valor_de_uso_diario FLOAT NOT NULL,  
 		nome VARCHAR(40) NOT NULL,  
 		codigo INT PRIMARY KEY,  
 		FK_Codigo_categoria INT,  
		CONSTRAINT FK_Codigo_categoria FOREIGN KEY (FK_Codigo_categoria) REFERENCES categoria (codigo)
	); 

CREATE TABLE Periodo_de_uso
	( 
 		data_inicio DATE NOT NULL,  
 		data_final DATE NOT NULL,  
 		FK_Codigo_obras INT, 
 		FK_Codigo_equipamentos INT,
		CONSTRAINT FK_Codigo_obras FOREIGN KEY (FK_Codigo_obras) REFERENCES obras (codigo),
    	CONSTRAINT FK_Codigo_equipamentos FOREIGN KEY (FK_Codigo_equipamentos) REFERENCES equipamentos (codigo) 
	);

--- Alterando a formatação da data para o modelo 20/08/2000
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY'