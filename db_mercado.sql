-- ESTRUTURA DO MEU BANCO DE DADOS MERCADO
+ PRODUTOS - ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT - NOME VARCHAR(255) NOT NULL - QUANTIDADE INT NOT NULL DEFAULT(0) - PRECO DECIMAL(9, 2) NOT NULL - ATIVO BOOLEAN DEFAULT(TRUE) + CLIENTES - ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT - NOME VARCHAR(255) NOT NULL - CPF VARCHAR(255) NOT NULL - TELEFONE VARCHAR(100) - ATIVO BOOLEAN DEFAULT(TRUE) + PEDIDOS - ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT - ID_CLIENTE INT NOT NULL
/* AQUI VAMOS DEFINIR UM FK */
- ID_PRODUTO INT NOT NULL
/* AQUI TAMBÉM VAMOS DEFIR UMA FK*/
- QUANTIDADE INT NOT NULL - TOTAL DECIMAL(9, 2) NOT NULL -- COMANDOS
CREATE DATABASE mercado;

USE mercado;

CREATE TABLE produtos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(9, 2) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT(TRUE)
);

CREATE TABLE clientes(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) NOT NULl,
    telefone VARCHAR(100),
    ativo BOOLEAN NOT NULl DEFAULT(TRUE)
);

CREATE TABLE pedidos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERE NCES clientes(id)
);

CREATE TABLE pedido_items(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    total DECIMAL(9, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- Populando a tabela produtos
INSERT INTO
    produtos (nome, quantidade, preco, ativo)
VALUES
    ('Teclado Mecânico', 50, 199.99, TRUE),
    ('Mouse Gamer', 75, 149.90, TRUE),
    ('Monitor 24"', 30, 899.00, TRUE),
    ('Notebook i5', 20, 3500.00, TRUE),
    ('Impressora Multifuncional', 10, 1200.00, FALSE);

-- Populando a tabela clientes
INSERT INTO
    clientes (nome, cpf, telefone, ativo)
VALUES
    (
        'João da Silva',
        '123.456.789-00',
        '(11) 98765-4321',
        TRUE
    ),
    (
        'Maria Oliveira',
        '987.654.321-00',
        '(21) 99876-5432',
        TRUE
    ),
    ('Carlos Souza', '111.222.333-44', NULL, TRUE),
    (
        'Ana Pereira',
        '555.666.777-88',
        '(31) 91234-5678',
        FALSE
    ),
    (
        'Fernanda Lima',
        '444.333.222-11',
        '(41) 92345-6789',
        TRUE
    );

-- Populando a tabela pedidos
INSERT INTO
    pedidos(id_cliente)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5);

INSERT INTO pedido_items(
    id_pedido,
    id_produto,
    quantidade,
    total
)
VALUES
(1, 1, 1, 199.99),
(1, 2, 1,  149.90),
(1,3, 1, 899.00);

