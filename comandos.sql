 --  comandos

 CREATE DATABASE ESCOLA;

 CREATE TABLE alunos(
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
    email VARCHAR(255)
 );

INSERT INTO ALUNOS(id, nome, email) VALUES(1, "Guilherme Pires", "guilherme.emanuel@sistemafiep.org.br");

SELECT * FROM alunos;