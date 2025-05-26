USE controle_cargos_salarios

CREATE TABLE tbDepartamento 
(
Id_departamento SMALLINT IDENTITY(1, 1) PRIMARY KEY,
nomeDepartamento VARCHAR(50) not null
)

CREATE TABLE tbMunicipio
(
Id_municipio SMALLINT IDENTITY(1, 1) PRIMARY KEY,
nomeMunicipio VARCHAR(80) not null,
UF CHAR(2)
)

CREATE TABLE tbCargo 
(
Id_cargo SMALLINT IDENTITY(1, 1) PRIMARY KEY,
nomeCargo VARCHAR(50) not null,
salario DECIMAL(8, 2) not null
)

CREATE TABLE tbFuncionario
(
Id_funcionario SMALLINT IDENTITY(1, 1) PRIMARY KEY,
nome VARCHAR(50) not null,
cpf CHAR(11) not null,
email VARCHAR(80),
rua VARCHAR(50),
bairro VARCHAR(30),
cep CHAR(8),
numero VARCHAR(6),
telefone CHAR(11),
data_adm DATE,
Id_cargo SMALLINT,
Id_departamento SMALLINT,
Id_municipio SMALLINT,
FOREIGN KEY (Id_cargo) REFERENCES tbCargo(Id_cargo),
FOREIGN KEY (Id_departamento) REFERENCES tbDepartamento (Id_departamento),
FOREIGN KEY (Id_municipio) REFERENCES tbMunicipio (Id_municipio)
)

CREATE TABLE tbDependente
(
Id_dependente SMALLINT IDENTITY(1, 1) PRIMARY KEY,
nomeDependente VARCHAR(50),
grau VARCHAR(50),
Id_funcionario SMALLINT,
FOREIGN KEY (Id_funcionario) REFERENCES tbFuncionario(Id_funcionario)
)