CREATE DATABASE estacionamento;

USE estacionamento;

CREATE TABLE cliente(
    cpf VARCHAR(11) NOT NULL PRIMARY KEY,
    nome VARCHAR(60),
    dtNasc DATE
);

CREATE TABLE modelo(
    codMod INT NOT NULL PRIMARY KEY,
    desc_2 VARCHAR(40)
);

CREATE TABLE veiculo(
    placa VARCHAR(8) NOT NULL PRIMARY KEY,
    Modelo_codMod INT,
    Cliente_cpf INT,
    cor VARCHAR(20),
    FOREIGN KEY (Modelo_codMod) REFERENCES modelo(codMod),
    FOREIGN KEY (Cliente_cpf) REFERENCES cliente(cpf)
);

CREATE TABLE patio(
    num INT NOT NULL PRIMARY KEY,
    ender VARCHAR(40),
    capacidade INT
);

CREATE TABLE estaciona(
    cod INT NOT NULL PRIMARY KEY,
    Patio_num INT,
    Veiculo_placa VARCHAR(8),
    dtEntrada DATE,
    dtSaida DATE,
    hsEntrada TIME,
    hsSaida TIME,
    FOREIGN KEY (Patio_num) REFERENCES patio(num),
    FOREIGN KEY (Veiculo_placa) REFERENCES veiculo(placa)
);

INSERT INTO cliente (cpf, nome, dtNasc) VALUES
(11111111111, 'João Silva', '1985-04-12'),
(22222222222, 'Maria Souza', '1990-09-23'),
(33333333333, 'Carlos Lima', '1978-01-30'),
(44444444444, 'Ana Pereira', '1995-06-15'),
(55555555555, 'Rafael Costa', '1988-03-22'),
(66666666666, 'Juliana Alves', '1992-12-11'),
(77777777777, 'Pedro Rocha', '1983-07-19'),
(88888888888, 'Fernanda Dias', '1996-10-05'),
(99999999999, 'Lucas Martins', '2000-01-01'),
(10101010101, 'Camila Melo', '1987-05-30'),
(12121212121, 'Rodrigo Antunes', '1993-09-09');


INSERT INTO modelo (codMod, desc_2) VALUES
(1, 'Sedan Compacto'),
(2, 'SUV Médio'),
(3, 'Hatch Econômico'),
(4, 'Pickup Grande'),
(5, 'Sedan Executivo'),
(6, 'SUV Compacto'),
(7, 'Coupé Esportivo'),
(8, 'Minivan'),
(9, 'Caminhão Leve'),
(10, 'Conversível');

INSERT INTO veiculo (placa, Modelo_codMod, Cliente_cpf, cor) VALUES
('AAA1234', 1, 11111111111, 'Prata'),
('BBB2345', 2, 22222222222, 'Preto'),
('CCC3456', 3, 33333333333, 'Branco'),
('DDD4567', 4, 44444444444, 'Azul'),
('EEE5678', 5, 55555555555, 'Cinza'),
('FFF6789', 6, 66666666666, 'Vermelho'),
('GGG7890', 7, 77777777777, 'Preto'),
('HHH8901', 8, 88888888888, 'Verde'),
('III9012', 9, 99999999999, 'Branco'),
('JJJ0123', 10, 10101010101, 'Amarelo'),
('KKK1234', 2, 12121212121, 'Prata');

INSERT INTO patio (num, ender, capacidade) VALUES
(1, 'Rua das Acácias, 100', 50),
(2, 'Av. Brasil, 2450', 100),
(3, 'Rua das Flores, 321', 70),
(4, 'Rua Nova, 55', 80),
(5, 'Av. Central, 890', 120);

INSERT INTO estaciona (cod, Patio_num, Veiculo_placa, dtEntrada, dtSaida, hsEntrada, hsSaida) VALUES
(1, 1, 'AAA1234', '2025-06-01', '2025-06-01', '08:00:00', '12:00:00'),
(2, 2, 'BBB2345', '2025-06-02', '2025-06-02', '09:30:00', '11:15:00'),
(3, 1, 'CCC3456', '2025-06-03', '2025-06-03', '10:00:00', '14:30:00'),
(4, 3, 'DDD4567', '2025-06-04', '2025-06-04', '07:45:00', '13:00:00'),
(5, 1, 'EEE5678', '2025-06-05', '2025-06-05', '08:15:00', '12:45:00'),
(6, 4, 'FFF6789', '2025-06-06', '2025-06-06', '09:00:00', '15:00:00'),
(7, 2, 'GGG7890', '2025-06-07', '2025-06-07', '10:30:00', '13:45:00'),
(8, 3, 'HHH8901', '2025-06-08', '2025-06-08', '11:00:00', '16:00:00'),
(9, 5, 'III9012', '2025-06-09', '2025-06-09', '07:00:00', '10:00:00'),
(10, 2, 'JJJ0123', '2025-06-10', '2025-06-10', '08:00:00', '12:00:00'),
(11, 1, 'KKK1234', '2025-06-11', '2025-06-11', '08:30:00', '11:30:00');

/* RESPOTAS QUESTÃO A*/
SELECT 
    veiculo.placa,
    cliente.nome
FROM 
    veiculo
JOIN cliente ON veiculo.cliente_cpf = cliente.cpf;

/* RESPOSTA QUESTÃO B*/
SELECT 
    cliente.cpf,
    cliente.nome,
    veiculo.placa
FROM 
    cliente
JOIN veiculo ON cliente.cpf = veiculo.cliente_cpf
WHERE
    veiculo.placa = "AAA1234"

/*RESPOSTA LETRA D */
SELECT 
    estaciona.veiculo_placa
FROM estaciona
WHERE
    estaciona.cod = 1;

/* RESPOSTA E*/
SELECT 
    veiculo.placa,
    modelo.desc_2 
FROM 
    veiculo
JOIN modelo ON veiculo.Modelo_CodMod = modelo.codMod;


/* RESPOSTA H*/
SELECT  
    cliente.*
FROM veiculo
JOIN cliente ON veiculo.cliente_cpf = cliente.cpf
WHERE
    veiculo.modelo_CodMod = 1
    

