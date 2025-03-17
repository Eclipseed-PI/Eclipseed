CREATE DATABASE eclipseed;

USE eclipseed;

CREATE TABLE cliente(
idCliente INT PRIMARY KEY,
nome VARCHAR(45),
cnpj CHAR (14) UNIQUE KEY,
telefone CHAR(15),
email VARCHAR(45) UNIQUE KEY,
senha VARCHAR(45)
);

CREATE TABLE produto(
idProduto INT PRIMARY KEY,
qnt INT,
preco FLOAT(5,4),
precoProducao FLOAT(5,4), 
dtProdução DATE,
dtVenda DATE
);




