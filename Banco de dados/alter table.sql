ALTER TABLE tbProfessor
ADD Rua VARCHAR(50),
	numero VARCHAR(8),
	bairro VARCHAR(2),
	CEP CHAR(8),
	IBGE SMALLINT

ALTER TABLE tbProfessor
ALTER COLUMN bairro VARCHAR(30)

ALTER TABLE tbProfessor
ADD CONSTRAINT fk_municipio
foreign key(IBGE)
references tbMunicipio(IBGE)

CREATE TABLE tbUF
(
UF CHAR(2) PRIMARY KEY,
nomeMunicipio VARCHAR(50) not null
)

ALTER TABLE tbMunicipio
ADD CONSTRAINT fk_uf
foreign key (uf)
references tbMunicipio(uf)

