CREATE DATABASE db_lpbd
USE db_lpbd

CREATE TABLE alunos (
id SMALLINT NOT NULL PRIMARY KEY IDENTITY,
nome VARCHAR(40) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE,
rg CHAR(9) NOT NULL UNIQUE,
endereco VARCHAR(50) NOT NULL,
sexo CHAR(1) NOT NULL CHECK (sexo='M' OR sexo='F'),
dt_nasc DATE NOT NULL
)

INSERT INTO alunos VALUES ('Giovana', '11111111111', '222222222', 'Rua X Bairro Y', 'F', '2005-03-10')

INSERT INTO alunos VALUES ('Giovana', '22222222222', '333333333', 'Rua Z', 'M', '09/9/2009')

INSERT INTO alunos VALUES ('Joaquina', '12345678911', '123456789', 'Rua A', 'F', '20100205')
-- cpf com menos de 11 caracteres
INSERT INTO alunos VALUES ('Joao', '1234567891', '123476789', 'Rua A', 'F', '20100205')

SELECT * FROM alunos

-- criação da tabela cursos com chave de aluno
CREATE TABLE cursos (
id SMALLINT NOT NULL PRIMARY KEY IDENTITY,
nome VARCHAR (50) NOT NULL,
id_aluno SMALLINT REFERENCES alunos(id)
)

-- problema na inserção (sou obrigada a vincular aluno)
INSERT INTO cursos VALUES ('Ciência da Computação', '1')

INSERT INTO cursos VALUES ('Medicina', '2')

SELECT * FROM cursos

-- alteração na tabela alunos (adição da chave do curso)
ALTER TABLE alunos ADD id_curso SMALLINT REFERENCES cursos(id)

-- Atividade de fixação

-- Criar um banco de dados Clinica_SEUNOME
-- Criar tabelas MEDICOS (nome, idade, especialidade, cpf, cidade, carga_horaria-20 hrs ou 40 hrs)
-- AMBULATORIO (predio, andar, capacidade)
-- Medicos atendem no ambulatorio
-- Insira medicos e ambulatorios

CREATE DATABASE Clinica_Giovana
USE Clinica_Giovana 

CREATE TABLE medicos (
id SMALLINT NOT NULL PRIMARY KEY IDENTITY,
nome VARCHAR(40) NOT NULL,
idade SMALLINT NOT NULL,
especialidade VARCHAR(80) NOT NULL,
cpf CHAR (11) NOT NULL UNIQUE,
cidade VARCHAR(80) NOT NULL,
carga_horaria SMALLINT NOT NULL CHECK (carga_horaria = '20' or carga_horaria = '40'),
id_ambulatorio SMALLINT REFERENCES ambulatorios(id)
)

CREATE TABLE ambulatorios (
id SMALLINT NOT NULL PRIMARY KEY IDENTITY,
predio VARCHAR (50) NOT NULL,
andar SMALLINT NOT NULL,
capacidade SMALLINT NOT NULL
)

INSERT INTO medicos VALUES ('Joao', '35', 'Cardiologista', '12345678911', 'São José do Rio Preto', '40', '1')
INSERT INTO medicos VALUES ('Maria', '52', 'Urologista', '12345678161', 'Olímpia', '20', '2')
INSERT INTO medicos VALUES ('Gabriela', '46', 'Ginecologista', '12341678911', 'Catanduva', '40', '3')

INSERT INTO ambulatorios VALUES ('Pronto Socorro I', '3', '45')
INSERT INTO ambulatorios VALUES ('Pronto Socorro II', '5', '60')
INSERT INTO ambulatorios VALUES ('Pronto Socorro III', '4', '30')

-- SISTEMA DA CLINICA FOI ATUALIZADO NO DIA 27/08/2025 AS 09:57
-- AGORA, OS MEDICOS PRECISAM TER E-MAIL E TELEFONE

ALTER TABLE medicos ADD email VARCHAR(30) 
ALTER TABLE medicos ADD telefone CHAR (11) 

INSERT INTO medicos VALUES ('Marcos', '25', 'Cardiologista', '12345768911', 'São José do Rio Preto', '40', '2', 'marcos@gmail.com', '17999999999')
INSERT INTO medicos VALUES ('Mila', '52', 'Urologista', '12455678161', 'Olímpia', '20', '2', 'mila@gmail.com', '17666666666')

