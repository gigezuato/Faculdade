CREATE DATABASE db_burguerqueen

USE db_burguerqueen

-- Tabelas
CREATE TABLE telefone (
numero_telefone CHAR(11) NOT NULL PRIMARY KEY
)

CREATE TABLE cep (
numero_cep CHAR(8) NOT NULL PRIMARY KEY
)

CREATE TABLE cidade (
codigo_cidade SMALLINT NOT NULL PRIMARY KEY,
nome VARCHAR(80) NOT NULL
)

CREATE TABLE uf (
sigla CHAR(2) NOT NULL PRIMARY KEY,
nome VARCHAR(50) NOT NULL
)

CREATE TABLE pessoa (
codigo_pessoa SMALLINT NOT NULL PRIMARY KEY IDENTITY,
nome VARCHAR(50) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE,
email VARCHAR(40) NOT NULL UNIQUE,
logradouro VARCHAR(80) NOT NULL,
numero_telefone CHAR(11) REFERENCES telefone(numero_telefone),
numero_cep CHAR(8) REFERENCES cep(numero_cep),
codigo_cidade SMALLINT REFERENCES cidade(codigo_cidade),
sigla_uf CHAR(2) REFERENCES uf(sigla)
)

CREATE TABLE cliente (
codigo_cliente SMALLINT NOT NULL PRIMARY KEY IDENTITY,
estrelas VARCHAR(80),
codigo_pessoa SMALLINT REFERENCES pessoa(codigo_pessoa)
)

CREATE TABLE funcionario (
codigo_funcionario SMALLINT NOT NULL PRIMARY KEY IDENTITY,
salario DECIMAL(8,2) NOT NULL,
codigo_pessoa SMALLINT REFERENCES pessoa(codigo_pessoa)
)

CREATE TABLE entregador (
codigo_entregador SMALLINT NOT NULL PRIMARY KEY IDENTITY,
valor_diaria DECIMAL(8,2),
codigo_pessoa SMALLINT REFERENCES pessoa(codigo_pessoa)
)

CREATE TABLE entrega (
codigo_entrega SMALLINT NOT NULL PRIMARY KEY IDENTITY,
status VARCHAR(20) NOT NULL,
data_hora_saida TIMESTAMP NOT NULL,
codigo_entregador SMALLINT REFERENCES entregador(codigo_entregador)
)

CREATE TABLE pedido (
codigo_pedido SMALLINT NOT NULL PRIMARY KEY IDENTITY,
data_pedido DATE NOT NULL,
status VARCHAR(20) NOT NULL,
total DECIMAL (8, 2),
codigo_cliente SMALLINT REFERENCES cliente(codigo_cliente),
codigo_funcionario SMALLINT REFERENCES funcionario(codigo_funcionario),
codigo_entrega SMALLINT REFERENCES entrega(codigo_entrega)
)

CREATE TABLE categoria (
codigo_categoria SMALLINT NOT NULL PRIMARY KEY IDENTITY,
nome VARCHAR(50) NOT NULL
)

CREATE TABLE fabricante(
codigo_fabricante SMALLINT NOT NULL PRIMARY KEY IDENTITY,
nome VARCHAR(50) NOT NULL
)

CREATE TABLE lanche (
codigo_lanche SMALLINT NOT NULL PRIMARY KEY IDENTITY,
nome VARCHAR(50) NOT NULL,
calorias DECIMAL(8,2) NOT NULL,
valor DECIMAL(8,2) NOT NULL,
codigo_categoria SMALLINT REFERENCES categoria(codigo_categoria)
)

CREATE TABLE bebida (
codigo_bebida SMALLINT NOT NULL PRIMARY KEY IDENTITY,
nome VARCHAR(50) NOT NULL,
estoque SMALLINT NOT NULL,
valor DECIMAL(8, 2) NOT NULL,
codigo_fabricante SMALLINT REFERENCES fabricante(codigo_fabricante)
)

CREATE TABLE pedido_lanche (
codigo_pedido_lanche SMALLINT NOT NULL PRIMARY KEY IDENTITY,
quantidade SMALLINT NOT NULL,
codigo_pedido SMALLINT REFERENCES pedido(codigo_pedido),
codigo_lanche SMALLINT REFERENCES lanche(codigo_lanche)
)

CREATE TABLE pedido_bebida (
codigo_pedido_bebida SMALLINT NOT NULL PRIMARY KEY IDENTITY,
quantidade SMALLINT NOT NULL,
codigo_pedido SMALLINT REFERENCES pedido(codigo_pedido),
codigo_bebida SMALLINT REFERENCES bebida(codigo_bebida)
)

-- Inserts
INSERT INTO telefone VALUES ('12222222222')
INSERT INTO telefone VALUES ('18888888888')
INSERT INTO telefone VALUES ('14444444444')

INSERT INTO cep VALUES ('15555555')
INSERT INTO cep VALUES ('14444444')
INSERT INTO cep VALUES ('13333333')

INSERT INTO cidade VALUES ('1', 'Olímpia')
INSERT INTO cidade VALUES ('2', 'São José do Rio Preto')

INSERT INTO uf VALUES ('SP', 'São Paulo')
INSERT INTO uf VALUES ('MG', 'Minas Gerais')

INSERT INTO pessoa VALUES ('Giovana', '11111111111', 'giovana@gmail.com', 'Rua X', '12222222222', '15555555', '1', 'SP')
INSERT INTO pessoa VALUES ('Jorge', '22222222222', 'jorge@gmail.com', 'Rua Y', '18888888888', '14444444', '2', 'MG')
INSERT INTO pessoa VALUES ('Marcos', '33333333333', 'marcos@gmail.com', 'Rua Z', '14444444444', '13333333', '1', 'SP')

INSERT INTO cliente VALUES ('Muito bom', '1')
INSERT INTO funcionario VALUES ('1856.50', '4')
INSERT INTO entregador VALUES ('104.52', '3')

-- tive que alterar o tipo da data_hora_saida para DATETIME2
ALTER TABLE entrega DROP COLUMN data_hora_saida;
ALTER TABLE entrega ADD data_hora_saida DATETIME2 NOT NULL DEFAULT SYSDATETIME();

INSERT INTO entrega VALUES ('Em andamento', '1','2025-09-10 10:32:00')

INSERT INTO pedido VALUES ('2025-09-10', 'Concluído', '56.90', '1', '3', '2')

INSERT INTO categoria VALUES ('Vegetarianos')
INSERT INTO fabricante VALUES ('Coca-Cola')

INSERT INTO lanche VALUES ('X-Salada', '523', '42.30', '1')
INSERT INTO bebida VALUES ('Fanta uva', '15', '14.60', '1')

INSERT INTO pedido_lanche VALUES ('1', '1', '1')
INSERT INTO pedido_bebida VALUES ('1', '1', '1')