CREATE DATABASE Eclipseed;

USE Eclipseed;

CREATE TABLE empresa( -- Dados da empresa contratante
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR(50),
    cnpj CHAR(14),
	emailEmpresa VARCHAR(50),
    senhaEmpresa VARCHAR(50),
	contatoEmpresa CHAR(14),
	-- Endereçamento da empresa
	logradouroEmpresa VARCHAR(50),
	numLogradouroEmpresa VARCHAR(5),
	bairroEmpresa VARCHAR(50),
	complementoEmpresa VARCHAR(50),
	cidadeEmpresa VARCHAR(50),
	estadoEmpresa CHAR (2),
	cepEmpresa CHAR(8)
);

CREATE TABLE estoque( -- Dados do estoque da Eclipseed
	idEstoque INT PRIMARY KEY AUTO_INCREMENT,
    qtdProduto INT,
    entrada INT,
    saida INT,
    dataEstoque DATETIME
);

CREATE TABLE plantio( -- Dados do plantio da empresa contratante
	idPlantio INT PRIMARY KEY AUTO_INCREMENT,
	nomePlantio VARCHAR(50),
    tamanhoPlantio DECIMAL(8, 2),
    -- Endereçamento do plantio
	logradouroPlantio VARCHAR(50),
	numLogradouroPlantio VARCHAR(5),
	bairroPlantio VARCHAR(50),
	complementoPlantio VARCHAR(50),
	cidadePlantio VARCHAR(50),
	estadoPlantio CHAR (2),
	cepPlantio CHAR(8)
);

CREATE TABLE historicoPlantio( -- Relatório periódico do status do plantio
	idAttPlantio INT PRIMARY KEY AUTO_INCREMENT,
	luzAtual DECIMAL (10, 2),
    statusPlantio VARCHAR(20),
		CONSTRAINT chkStatus CHECK(statusPlantio IN('Baixa Iluminação', 'Alta Iluminação', 'Iluminação Ideal')),
    horarioAtt DATETIME
);

INSERT INTO empresa(nomeEmpresa, cnpj, emailEmpresa, senhaEmpresa, contatoEmpresa, logradouroEmpresa, numLogradouroEmpresa, bairroEmpresa, complementoEmpresa, cidadeEmpresa, estadoEmpresa, cepEmpresa) VALUES
	('Empresa 1', '95189879000178', 'empresa@gmail.com', 'senha123', '123123123', 'Logradouro', '12312', 'Bairro', 'Complemento', 'Cidade', 'SP', '12345678');

INSERT INTO estoque(qtdProduto, entrada, saida, dataEstoque) VALUES
	(12, 5, 3, '2010-12-12');
    
INSERT INTO plantio(nomePlantio, tamanhoPlantio, logradouroPlantio, numLogradouroPlantio, bairroPlantio, complementoPlantio, cidadePlantio, estadoPlantio, cepPlantio) VALUES
	('Plantio 1', 2000, 'Logradouro', '321', 'Bairro', 'Complemento', 'Cidade', 'Estado', '12345678');
    
INSERT INTO historicoPlantio (luzAtual, statusPlantio, horarioAtt) VALUES
	(10000.00, 'Baixa Iluminação', '2024-03-12 12:30:00');

SELECT * FROM empresa;
SELECT * FROM estoque;
SELECT * FROM plantio;
SELECT * FROM historicoPlantio;

DROP DATABASE Eclipseed;