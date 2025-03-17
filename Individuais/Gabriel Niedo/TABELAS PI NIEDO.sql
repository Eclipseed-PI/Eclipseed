CREATE DATABASE projeto;

USE projeto;


-- TABELA CADASTRO 
CREATE TABLE cadastro (
idLogin INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR(60),
CNPJ CHAR(18) UNIQUE KEY,
email VARCHAR (30) UNIQUE KEY,
senha VARCHAR(20), 
endereço VARCHAR(100),
cttTelefone CHAR(13)
);
ALTER TABLE cadastro ADD CONSTRAINT chkEmail CHECK(email LIKE ('%@%'));

INSERT INTO cadastro VALUES
	(DEFAULT, 'Mesas de Concreto', '28.120.176/0001-04', 'mesas.concreto@gmail.com', 'Concreto123', 'Rua Alameda Campos, 28', '11 94161-7536');
    
SELECT * FROM cadastro;



-- TABELA ESTOQUE

USE projeto;

CREATE TABLE estoque (
idEstoque INT PRIMARY KEY AUTO_INCREMENT,
Produto VARCHAR(30),
qtdProduto INT,
Entrada INT,
SAIDA INT,
dData DATETIME DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM estoque;


-- TABELA PLANTIO

CREATE TABLE plantio (
idPlantio INT PRIMARY KEY AUTO_INCREMENT,
tamanho VARCHAR(15),
luxAtual INT,
horarioMonitorado DATETIME DEFAULT CURRENT_TIMESTAMP,
plantioStatus VARCHAR(15),
CONSTRAINT chkStatus CHECK(plantioStatus IN ('Insuficiente', 'Ideal', 'Excessivo'))
);

SELECT * FROM plantio;