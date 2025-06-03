CREATE DATABASE estacionamento;

USE estacionamento;

CREATE TABLE cliente(
    cpf INT NOT NULL PRIMARY KEY,
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