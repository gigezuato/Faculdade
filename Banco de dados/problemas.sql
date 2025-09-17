CREATE DATABASE Giovana_trunks

USE Giovana_trunks

-- TUDO é CONSTRAINT (restrição - pk, fk, not null, unique, etc)

CREATE TABLE pessoas (
	codigo int not null identity,
	nome varchar(50) not null,
	cpf varchar(12) not null unique,
	logradouro varchar(100) not null,
	constraint pk_pessoas primary key (codigo)
)
-- INSERTS básicos
INSERT INTO pessoas VALUES ('Giovana', '123456789123', 'Avenida JK')
INSERT INTO pessoas VALUES ('José', '123456889123', 'Avenida JK 200')
INSERT INTO pessoas VALUES ('João', '123456789623', 'Avenida JK 130')
INSERT INTO pessoas VALUES ('Maria', '143456789123', 'Avenida JK 42')
INSERT INTO pessoas VALUES ('Cleiton', '123456169123', 'Avenida JK 53')
INSERT INTO pessoas VALUES ('Silva', '123446789123', 'Avenida JK 89')

SELECT * FROM pessoas

-- O codigo identity não é resetado
INSERT INTO pessoas VALUES ('Deletion', '123456766123', 'Avenida JK 96')
-- DELETE CONSCIENTE
DELETE FROM pessoas WHERE nome = 'Deletion'
INSERT INTO pessoas VALUES ('Novo Deletion', '123456766123', 'Avenida JK 96')
-- função de "reset" (usar com ressalvas)
DBCC CHECKIDENT ('pessoas', RESEED, 6) -- vai começar do 6
INSERT INTO pessoas VALUES ('Valtinho', '883456766123', 'Avenida JK 102')
-- reset perigoso (ocupei a posição do identity de alguém)
DBCC CHECKIDENT ('pessoas', RESEED, 8)
INSERT INTO pessoas VALUES ('Heitor', '883456766123', 'Avenida JK 177')

-- alteração da tabela com coluna profissão
ALTER TABLE pessoas ADD profissao varchar (15) NOT NULL DEFAULT 'Estagiário'
-- juninho precisa remover essa coluna
ALTER TABLE pessoas DROP COLUMN profissao
-- DEPENDENCIA = CONSTRAINT
ALTER TABLE pessoas DROP CONSTRAINT DF__pessoas__profiss__38996AB5
ALTER TABLE pessoas DROP COLUMN profissao
-- jeito certo da coluna profissao
ALTER TABLE pessoas ADD profissao varchar(15) NOT NULL CONSTRAINT df_profissao_pessoas DEFAULT 'Estagiário'

SELECT nome, profissao FROM pessoas

-- detalhamento da tabela
EXEC sp_help 'pessoas'
-- mais detalhado
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'pessoas'

-- alteração de tamanho do vachar
ALTER TABLE pessoas ALTER COLUMN profissao varchar(30)
INSERT INTO pessoas VALUES ('Joelsom', '883451166123', 'Avenida JK 177', 'Técnico de informática forense')
ALTER TABLE pessoas ALTER COLUMN profissao varchar(15)
SELECT profissao FROM pessoas WHERE LEN(profissao)>15
UPDATE pessoas set profissao = 'Técnico Info' WHERE nome = 'Joelsom'

-- coluna temporaria
ALTER TABLE pessoas ADD profissaoBKP varchar(100)
UPDATE pessoas SET profissaoBKP = profissao
SELECT nome, profissao, profissaoBKP FROM pessoas

-- TRUNK na tabela profissao (LIMITAR AOS TRES PRIMEIROS CARACTERES)
UPDATE pessoas set profissao = LEFT(profissao, 3)
-- ALTERAÇÃO PARA NOVO VARCHAR TRUNCADO
ALTER TABLE pessoas ALTER COLUMN  profissao VARCHAR(3)
-- DEPOIS DE VALIDADO, POSSO EXCLUIR A COLUNA TEMPORÁRIA
ALTER TABLE pessoa DROP COLUMN profissaoBKP