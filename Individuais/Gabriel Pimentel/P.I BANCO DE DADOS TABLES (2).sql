CREATE DATABASE Eclipseed;

USE Eclipseed;

CREATE TABLE Cadastro (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR (50), 
nomeComprador VARCHAR(50) ,
cnpj CHAR (14),
email VARCHAR (255),
senha VARCHAR (255), 
cep CHAR (8),
telefone CHAR (15)
);

INSERT INTO Cadastro (nomeEmpresa, nomeComprador, cnpj, email, senha, cep, telefone)
VALUES
('Soja Verde', 'Pedro Almeida', '12345678000195', 'pedro.almeida@sojaverde.com.br', 'soja2025', '12345678', '11987654321'),
('Agro Soja Brasil', 'Mariana Costa', '98765432000170', 'mariana.costa@agrosoja.com.br', 'agrosoja@2025', '87654321', '21987654321'),
('Sementes Ouro Soja', 'Lucas Pereira', '34567891000123', 'lucas.pereira@sementesourosoja.com.br', 'sementesouro@2025', '13579246', '2134567890'),
('Fazenda Soja do Sul', 'Renato Oliveira', '78901234000156', 'renato.oliveira@sojasul.com.br', 'fazendasul@2025', '34098765', '31987654321'),
('Soja Tech', 'Cláudia Santos', '45678901200101', 'claudia.santos@sojanorte.com', 'sojanorte2025', '89012345', '41987654321');

SELECT * FROM Cadastro;
UPDATE Cadastro SET nomeEmpresa = "Agro Soja Verde" WHERE idEmpresa = 1;

CREATE TABLE Produto(
idProduto INT PRIMARY KEY AUTO_INCREMENT,   -- Identificador único para o produto
nome VARCHAR(255),      -- Nome do sensor
qtdSensores INT,             -- Quantidade de sensores disponíveis 
precoCusto DECIMAL,          -- Preço do custo de produçâo do sensor 
precoVenda DECIMAL ,          -- Preço de venda do sensor
dtProducao DATETIME,           -- Data e hora em que os sensores foram produzidos 
lote INT                       -- Em qual lote os sensores foram produzidos
);

INSERT INTO Produto (nome, qtdSensores, precoCusto, precoVenda, dtProducao, lote)
VALUES
('Sensor LDR', 1000, 15, 25.00, '2025-03-01 10:00:00', 101),
('Sensor LDR', 500, 20, 35.00, '2025-03-02 11:30:00', 102),
('Sensor LDR', 300, 30, 55.00, '2025-03-05 09:45:00', 103),
('Sensor LDR', 200, 50, 85.00, '2025-03-08 14:00:00', 104),
('Sensor LDR', 800, 25, 40.00, '2025-03-10 16:30:00', 105);

SELECT qtdSensores FROM Produto WHERE idProduto = 3;
ALTER TABLE Produto DROP COLUMN nome;

CREATE TABLE Estoque (
idEstoque INT PRIMARY KEY AUTO_INCREMENT,    -- Identificador único do estoque
unidade VARCHAR (100),      -- Em qual unidade está disponível os sensores
entradaMercadoria INT,   -- Quantidade de sensores que entrou no estoque
expedicaoMercadoria INT,  -- Quantidade de sensores qu foram expedidas (enviado para clientes)
dtEntrada DATETIME,        -- Data e hora em que os sensores entraram no estoque
dtExpedicao DATETIME     -- Data e hora em que os sensores foram expedidos (enviados)
);

INSERT INTO Estoque (unidade, entradaMercadoria, expedicaoMercadoria, dtEntrada, dtExpedicao)
VALUES
('Armazém do Acre', 1000, 500, '2025-03-01 09:00:00', '2025-03-02 14:00:00'),
('Armazem Agro', 500, 300, '2025-03-05 10:30:00', '2025-03-07 16:00:00'),
('Armazém Central', 700, 400, '2025-03-08 11:15:00', '2025-03-09 10:30:00'),
('Armazém Oeste', 600, 200, '2025-03-10 08:00:00', '2025-03-12 12:00:00'),
('Armazém Plansoja', 800, 600, '2025-03-12 13:45:00', '2025-03-13 15:00:00');

SELECT * FROM Estoque WHERE dtExpedicao < "2025-03-08";
UPDATE Estoque SET expedicaoMercadoria = 1000 WHERE idEstoque = 4;

CREATE TABLE Plantio (
idPlantio INT PRIMARY KEY AUTO_INCREMENT,     -- Identificador único para o plantio
tamanho DECIMAL,            -- Tamanho do plantio em hectares 
tipoSolo VARCHAR(100),      --  Tipo de solo (ex:textura franco-arenosa ou franco)
tipoSoja VARCHAR(100),      -- Variedade de soja plantada (ex: soja convencional, a RR e a Intacta)
localizacao VARCHAR(255),   -- Localização do plantio (nome da propriedade ou coordenadas)
qtdSensores INT             -- Quantidade de sensores adquiridos para monitoramento do plantio
);

INSERT INTO Plantio (tamanho, tipoSolo, tipoSoja, localizacao, qtdSensores)
VALUES
(50.5, 'Franco-arenoso', 'Soja Intacta', 'Fazenda Soja Verde - Mato Grosso', 200),
(75.0, 'Franco', 'Soja RR', 'Fazenda Agro Soja Brasil - Goiás', 300),
(100.0, 'Argiloso', 'Soja Convencional', 'Fazenda Boa Terra - Paraná', 400),
(25.0, 'Franco-arenoso', 'Soja Intacta', 'Fazenda Sol Nascente - Mato Grosso do Sul', 150),
(60.0, 'Franco', 'Soja RR', 'Fazenda Horizonte Verde - São Paulo', 250);

SELECT * FROM Plantio WHERE tipoSoja = "Soja Intacta";
SELECT qtdSensores AS 'Quantidade de Sensores' FROM Plantio;
ALTER TABLE Plantio MODIFY COLUMN tipoSoja VARCHAR(200); 

CREATE TABLE Suporte (
idSuporte INT PRIMARY KEY AUTO_INCREMENT,    -- Identificador único para o registro de suporte
  garantia INT,                    -- Duração da garantia 
  dataInicioGarantia DATE,          -- Data de início da garantia 
  validadeProduto DATE,              -- Data de validade do produto ( em média 5 anos)
  dataDevolucao DATE,                -- Data da devolução do produto (se aplicável)
  motivoDevolucao VARCHAR(255),      -- Motivo da devolução, caso tenha ocorrido ( para fedback )
  contatoPosVenda VARCHAR(255)       -- Detalhes de contato pós-venda (telefone ou e-mail)
 );
 
 INSERT INTO Suporte (garantia, dataInicioGarantia, validadeProduto, dataDevolucao, motivoDevolucao, contatoPosVenda)
VALUES
(12, '2025-03-01', '2030-03-01', '2025-03-10', 'Produto defeituoso', 'suporte@sojasolutions.com.br'),
(12, '2025-03-05', '2030-03-05', '2025-03-15', 'Produto com defeito de fabricação', 'suporte@sojasolutions.com.br'),
(12, '2025-03-10', '2030-03-10', '2025-03-18', 'Falha na calibração do sensor', 'suporte@sojasolutions.com.br'),
(12, '2025-03-12', '2030-03-12', '2025-03-20', 'Produto não compatível com o sistema de monitoramento', 'suporte@sojasolutions.com.br'),
(12, '2025-03-15', '2030-03-15', '2025-03-25', 'Problema de conectividade', 'suporte@sojasolutions.com.br');

 Select CONCAT( " foi instalado", dataInicioGarantia, garantia, " falta pra acabar") from Suporte;

CREATE TABLE MonitoramentoLUZ(
idMonitoramento INT PRIMARY KEY AUTO_INCREMENT,  -- Identificador único para cada medição de luz
intensidadeLuz DECIMAL,                         -- Intensidade da luz medida (lux)
statusLuz VARCHAR(50),  -- Status do monitoramento (por exemplo: "Adequado", "Excesso de luz", "Insuficiente")
CONSTRAINT chk_statusLuz CHECK (statusLuz IN ('Adequado', 'Excesso de luz', 'Insuficiente')), -- Sendo que entre 250 e 500 = Adequado , abaixo = Insuficiente e acima = Exesso de luz
dtAtualizacao DATETIME      -- Identificador único para cada atualização                         -- Atualizacao de 15 em 15 minutos
);

INSERT INTO MonitoramentoLUZ (intensidadeLuz, statusLuz, dtAtualizacao) VALUES
(350, 'Adequado', '2025-03-01 08:00:00'),
(1200, 'Excesso de luz', '2025-03-01 08:15:00'),
(200, 'Insuficiente', '2025-03-01 08:30:00'),
(400, 'Adequado', '2025-03-01 08:45:00'),
(600, 'Excesso de luz', '2025-03-01 09:00:00');

SELECT * FROM MonitoramentoLUZ WHERE statusLuz = 'Excesso de luz';
RENAME TABLE MonitoramentoLuz TO Historico ;


