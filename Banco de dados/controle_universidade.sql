USE HorariosUniversidade

CREATE TABLE tbProfessor
(
IdProfessor SMALLINT IDENTITY(1, 1) PRIMARY KEY,
nomeProfessor VARCHAR(50) not null
);

CREATE TABLE tbCurso
(
IdCurso SMALLINT IDENTITY(1, 1) PRIMARY KEY,
nomeCurso VARCHAR(50) not null
);

CREATE TABLE tbMunicipio 
(
IBGE SMALLINT IDENTITY(1, 1) PRIMARY KEY,
nomeMunicipio VARCHAR(50) not null,
uf CHAR(2) not null
);

CREATE TABLE tbDisciplina
(
IdDisciplina SMALLINT IDENTITY(1, 1) PRIMARY KEY,
nomeDisciplina VARCHAR(50) not null,
IdProfessor SMALLINT,
FOREIGN KEY (IdProfessor) REFERENCES tbProfessor(IdProfessor)
);

CREATE TABLE tbTurma
(
IdTurma SMALLINT IDENTITY(1, 1) PRIMARY KEY,
IdCurso SMALLINT,
FOREIGN KEY (IdCurso) REFERENCES tbCurso(IdCurso)
);

CREATE TABLE tbAula
(
IdAula SMALLINT IDENTITY(1, 1) PRIMARY KEY,
diaSemana VARCHAR(30) not null,
IdDisciplina SMALLINT,
IdTurma SMALLINT,
FOREIGN KEY (IdDisciplina) REFERENCES tbDisciplina (IdDisciplina),
FOREIGN KEY (IdTurma) REFERENCES tbTurma (IdTurma)
);

CREATE TABLE tbAluno
(
IdAluno SMALLINT IDENTITY(1, 1) PRIMARY KEY,
matricula VARCHAR(30) not null,
cpf CHAR(11) not null,
nomeAluno VARCHAR(50) not null,
rua VARCHAR(50),
bairro VARCHAR(30),
numero VARCHAR(6),
cep CHAR(8),
telefone CHAR(11),
email VARCHAR(60),
Municipio SMALLINT,
IdTurma SMALLINT,
FOREIGN KEY (Municipio) REFERENCES tbMunicipio(IBGE),
FOREIGN KEY (IdTurma) REFERENCES tbTurma(IdTurma)
)
