CREATE DATABASE hotel;

use hotel;

CREATE TABLE cidades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL
);

CREATE TABLE hospedes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE quartos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(10) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    preco_diaria DECIMAL(10,2) NOT NULL,
    cidade_id INT,
    FOREIGN KEY (cidade_id) REFERENCES cidades(id)
);

CREATE TABLE reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_quarto INT,
    id_hospede INT,
    data_checkin DATE NOT NULL,
    data_checkout DATE NOT NULL,
    FOREIGN KEY (id_quarto) REFERENCES quartos(id),
    FOREIGN KEY (id_hospede) REFERENCES hospedes(id)
);

-- Cidades
INSERT INTO cidades (nome, estado) VALUES
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ'),
('Curitiba', 'PR'),
('Belo Horizonte', 'MG'),
('Salvador', 'BA');

-- Hóspedes
INSERT INTO hospedes (nome, email, telefone) VALUES ('Dra. Olivia da Mata', 'fpeixoto@melo.br', '+55 11 6726 9672');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Rodrigo Fernandes', 'luiz-fernandoda-rosa@azevedo.br', '(084) 9985-3937');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Felipe Fogaça', 'clara17@gmail.com', '0800-099-9962');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Maria Vitória Moura', 'qnovaes@correia.br', '71 3761-8177');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Larissa Rocha', 'da-costaeloah@hotmail.com', '+55 (081) 0414 0883');
INSERT INTO hospedes (nome, email, telefone) VALUES ('João Sales', 'lteixeira@bol.com.br', '+55 81 1952 0172');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Isabella Nogueira', 'laraujo@porto.com', '41 1748-7418');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Luiz Gustavo Peixoto', 'joao-felipeda-cruz@uol.com.br', '+55 (071) 2698-3711');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Lívia Rodrigues', 'wda-mota@martins.net', '+55 21 5841-0834');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Srta. Emilly Ferreira', 'stellaalves@yahoo.com.br', '(021) 2509 9693');
INSERT INTO hospedes (nome, email, telefone) VALUES ('João Vitor Cunha', 'ocaldeira@bol.com.br', '+55 61 4865 2526');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Sr. Guilherme Cardoso', 'heloisafogaca@gmail.com', '84 0643 8801');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Ana Azevedo', 'sarah83@yahoo.com.br', '0800-018-6536');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Samuel Novaes', 'bryan77@goncalves.net', '+55 (011) 6463-3734');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Sra. Letícia Nunes', 'cunhahenrique@ig.com.br', '(081) 6751 1289');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Luiz Henrique Aragão', 'kjesus@gmail.com', '(031) 7564 9276');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Isadora Moreira', 'maria-eduardada-rosa@costa.net', '0300-383-0790');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Maria Sophia Nascimento', 'da-luzmaria-sophia@gmail.com', '(031) 9647-9088');
INSERT INTO hospedes (nome, email, telefone) VALUES ('João Felipe Cavalcanti', 'laisnascimento@da.com', '+55 (041) 1570 3270');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Luiza Barbosa', 'da-luzjoaquim@fernandes.net', '0300 767 6874');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Maria Almeida', 'vlima@cardoso.org', '(051) 7637 8236');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Yago Alves', 'leonardo38@aragao.br', '+55 11 0645 9929');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Sra. Mariane Peixoto', 'joanasantos@bol.com.br', '(051) 6493 8524');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Antônio Nogueira', 'da-matamurilo@gmail.com', '(061) 2423-5211');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Melissa Gomes', 'hdas-neves@costa.org', '+55 (021) 3360 3979');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Dra. Maysa Porto', 'kevinda-paz@azevedo.br', '0500 844 1837');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Brenda Pires', 'barrosyago@bol.com.br', '(071) 9382-1686');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Eduarda Lopes', 'cardosoclarice@monteiro.br', '31 3881 4770');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Ana Julia Araújo', 'tpinto@uol.com.br', '(071) 9093-9348');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Arthur Fogaça', 'hmelo@farias.com', '0800 172 3880');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Bernardo Freitas', 'qramos@cavalcanti.org', '+55 (041) 7000 8575');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Fernando Souza', 'rmoraes@peixoto.com', '+55 61 0813-6555');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Nina Cavalcanti', 'amandanunes@da.br', '51 5305 7545');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Breno Vieira', 'paulo02@hotmail.com', '31 5651 7828');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Felipe Duarte', 'davialves@bol.com.br', '+55 11 2493 5482');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Antônio da Paz', 'duarteleonardo@uol.com.br', '0300 220 8608');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Isabelly Silveira', 'maria-clarapereira@da.com', '(081) 4626-9701');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Benjamin da Conceição', 'da-luzclarice@cunha.com', '0900-701-1481');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Emanuel da Rocha', 'fernanda98@fernandes.com', '0800 256 2991');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Alexandre Moraes', 'xrodrigues@viana.org', '(031) 9347-9127');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Marcos Vinicius da Conceição', 'ferreirafrancisco@yahoo.com.br', '+55 (061) 8432-1924');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Ana Luiza Dias', 'nicolasnovaes@nogueira.net', '41 3125-5375');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Dra. Alícia Barbosa', 'pereirabruno@viana.br', '+55 (011) 5955 2244');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Srta. Ana Vitória Aragão', 'vitor55@ramos.com', '+55 (051) 8704-5589');
INSERT INTO hospedes (nome, email, telefone) VALUES ('João Pedro Sales', 'gabriel94@cavalcanti.br', '(021) 6716 0497');
INSERT INTO hospedes (nome, email, telefone) VALUES ('André Nunes', 'lucas12@barros.br', '0900 578 9190');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Sr. Luiz Miguel Aragão', 'pedro-miguel73@yahoo.com.br', '(031) 9903 8739');
INSERT INTO hospedes (nome, email, telefone) VALUES ('João Gabriel Caldeira', 'kteixeira@ig.com.br', '41 8074-2572');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Carolina Rodrigues', 'costelacecilia@jesus.br', '+55 (071) 5142-2453');
INSERT INTO hospedes (nome, email, telefone) VALUES ('Sr. Ryan Costela', 'alvespedro-henrique@yahoo.com.br', '+55 51 1834 2875');

-- Quartos
INSERT INTO quartos (numero, tipo, preco_diaria, cidade_id) VALUES
('101', 'Solteiro', 150.00, 1),
('102', 'Casal', 250.00, 1),
('103', 'Luxo', 400.00, 1),
('201', 'Solteiro', 130.00, 2),
('202', 'Casal', 230.00, 2),
('203', 'Luxo', 380.00, 2),
('301', 'Casal', 220.00, 3),
('302', 'Luxo', 390.00, 3),
('401', 'Solteiro', 140.00, 4),
('402', 'Casal', 240.00, 4),
('501', 'Luxo', 420.00, 5),
('502', 'Solteiro', 160.00, 5);

-- Reservas
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (9, 45, '2025-06-05', '2025-06-06');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (1, 15, '2025-06-04', '2025-06-08');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (12, 26, '2025-06-07', '2025-06-12');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (9, 10, '2025-06-27', '2025-06-28');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (2, 29, '2025-06-03', '2025-06-05');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (10, 29, '2025-06-24', '2025-06-28');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (1, 47, '2025-07-03', '2025-07-06');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (4, 28, '2025-07-13', '2025-07-15');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (7, 37, '2025-07-12', '2025-07-14');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (9, 34, '2025-07-09', '2025-07-14');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (6, 10, '2025-07-07', '2025-07-12');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (1, 45, '2025-06-09', '2025-06-11');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (8, 16, '2025-07-14', '2025-07-17');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (1, 13, '2025-07-05', '2025-07-09');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (11, 37, '2025-06-14', '2025-06-15');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (8, 26, '2025-06-18', '2025-06-19');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (5, 40, '2025-07-01', '2025-07-06');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (8, 46, '2025-06-16', '2025-06-21');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (6, 9, '2025-07-19', '2025-07-24');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (8, 47, '2025-07-05', '2025-07-07');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (8, 43, '2025-06-14', '2025-06-18');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (2, 2, '2025-07-03', '2025-07-05');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (12, 20, '2025-07-01', '2025-07-04');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (7, 38, '2025-07-01', '2025-07-04');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (2, 6, '2025-06-10', '2025-06-13');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (3, 25, '2025-06-06', '2025-06-10');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (12, 1, '2025-06-22', '2025-06-26');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (3, 23, '2025-06-05', '2025-06-09');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (3, 6, '2025-06-12', '2025-06-13');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (4, 43, '2025-06-19', '2025-06-20');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (1, 11, '2025-06-11', '2025-06-12');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (4, 20, '2025-07-12', '2025-07-16');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (2, 12, '2025-06-04', '2025-06-07');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (2, 7, '2025-07-10', '2025-07-13');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (11, 47, '2025-07-16', '2025-07-21');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (12, 30, '2025-07-13', '2025-07-14');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (11, 6, '2025-07-09', '2025-07-13');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (2, 5, '2025-07-11', '2025-07-16');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (6, 19, '2025-06-12', '2025-06-16');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (6, 40, '2025-06-25', '2025-06-26');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (4, 26, '2025-06-17', '2025-06-19');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (10, 6, '2025-07-12', '2025-07-16');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (4, 7, '2025-06-12', '2025-06-13');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (11, 15, '2025-06-19', '2025-06-21');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (10, 8, '2025-07-04', '2025-07-06');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (3, 12, '2025-06-01', '2025-06-03');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (1, 43, '2025-06-01', '2025-06-05');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (11, 28, '2025-07-10', '2025-07-13');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (9, 16, '2025-06-17', '2025-06-21');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (6, 38, '2025-06-06', '2025-06-07');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (8, 46, '2025-06-07', '2025-06-09');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (12, 31, '2025-06-22', '2025-06-24');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (4, 46, '2025-06-06', '2025-06-09');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (10, 5, '2025-06-10', '2025-06-12');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (8, 34, '2025-06-27', '2025-07-01');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (3, 39, '2025-06-30', '2025-07-03');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (9, 28, '2025-07-17', '2025-07-22');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (12, 11, '2025-06-07', '2025-06-10');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (11, 37, '2025-07-11', '2025-07-15');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (12, 11, '2025-07-11', '2025-07-13');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (10, 18, '2025-07-09', '2025-07-13');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (10, 42, '2025-07-01', '2025-07-06');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (8, 26, '2025-06-20', '2025-06-25');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (10, 38, '2025-06-10', '2025-06-12');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (5, 40, '2025-06-18', '2025-06-19');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (8, 9, '2025-07-06', '2025-07-08');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (2, 32, '2025-06-03', '2025-06-06');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (9, 35, '2025-06-03', '2025-06-05');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (7, 14, '2025-06-27', '2025-07-01');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (3, 2, '2025-06-07', '2025-06-08');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (8, 3, '2025-06-06', '2025-06-11');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (3, 16, '2025-07-07', '2025-07-08');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (6, 32, '2025-07-15', '2025-07-20');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (5, 48, '2025-06-30', '2025-07-03');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (10, 25, '2025-06-09', '2025-06-13');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (10, 49, '2025-07-01', '2025-07-04');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (3, 16, '2025-07-13', '2025-07-17');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (5, 26, '2025-06-23', '2025-06-24');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (7, 16, '2025-06-27', '2025-07-02');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (9, 42, '2025-06-05', '2025-06-07');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (12, 38, '2025-06-23', '2025-06-27');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (5, 32, '2025-07-14', '2025-07-15');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (1, 34, '2025-06-06', '2025-06-10');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (12, 21, '2025-07-15', '2025-07-16');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (10, 1, '2025-06-26', '2025-06-29');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (6, 45, '2025-06-16', '2025-06-21');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (6, 31, '2025-07-18', '2025-07-21');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (4, 46, '2025-06-08', '2025-06-09');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (9, 43, '2025-07-05', '2025-07-06');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (3, 19, '2025-06-06', '2025-06-07');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (2, 20, '2025-06-21', '2025-06-25');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (1, 8, '2025-06-24', '2025-06-27');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (11, 9, '2025-06-05', '2025-06-09');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (2, 18, '2025-06-25', '2025-06-30');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (8, 25, '2025-07-17', '2025-07-20');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (12, 36, '2025-07-09', '2025-07-11');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (5, 38, '2025-06-23', '2025-06-26');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (1, 20, '2025-06-28', '2025-06-29');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (9, 24, '2025-06-28', '2025-07-03');
INSERT INTO reservas (id_quarto, id_hospede, data_checkin, data_checkout) VALUES (10, 16, '2025-07-07', '2025-07-10');