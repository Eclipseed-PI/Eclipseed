CREATE DATABASE projetoPI;

USE projetoPI;

CREATE TABLE CadastroEmpresa (
id INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR(60),
cnpj CHAR(18) UNIQUE KEY,
email VARCHAR(40) UNIQUE KEY,
CONSTRAINT chkEmail CHECK(email LIKE ('%@%')), 
senha VARCHAR(20),
endereco VARCHAR(100),
contatoTelefone VARCHAR(13)
);

INSERT INTO CadastroEmpresa VALUES 
	(default, 'Gruz', '93.844.754/0001-09', 'gruz.sptech@gmail.com',
    'gruz123', 'Rua Haddock Lobo 595', '11 93434-3434');
    
SELECT * FROM cadastroempresa;

CREATE TABLE Estoque (
id INT PRIMARY KEY AUTO_INCREMENT,
qtdProduto INT,
entrada INT,
saída INT,
dData DATETIME DEFAULT current_timestamp
);

INSERT INTO estoque VALUES
	(default, '2500', '100', '150',default);
    
SELECT * FROM estoque;

CREATE TABLE Plantio (
id INT PRIMARY KEY AUTO_INCREMENT,
tamanho VARCHAR(15),
luxAtual INT,
horarioMonitorado DATETIME DEFAULT current_timestamp,
statusP VARCHAR(15),
CONSTRAINT chkStatus CHECK(statusP IN ('Insuficiente', 'Ideal', 'Excessiva'))
);

INSERT INTO plantio VALUES
	(default, '5 hectares', '300', default, 'Ideal');
    
SELECT * FROM plantio;