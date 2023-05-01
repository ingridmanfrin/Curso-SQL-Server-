CREATE TABLE Alunos
(
	id_aluno int PRIMARY KEY NOT NULL,
	nome varchar(200) NOT NULL,
	data_nascimento date NOT NULL,
	sexo varchar(1), --M masculino ou f para feminino esse campo � NULL
	data_cadastro datetime NOT NULL,
	login_cadastro varchar(15) NOT NULL
);

--DROP TABLE Alunos;

CREATE TABLE Situacao
(
	id_situacao int PRIMARY KEY NOT NULL,
	situacao varchar(25) NOT NULL,
	data_cadastro datetime NOT NULL,
	login_cadastro varchar(15) NOT NULL
);

CREATE TABLE Cursos
(
	id_curso int PRIMARY KEY NOT NULL,
	nome_curso varchar(200) NOT NULL,
	data_cadastro datetime NOT NULL,
	login_cadastro varchar(15) NOT NULL
);

CREATE TABLE Turmas
(
	id_turma int PRIMARY KEY NOT NULL,
	id_aluno int NOT NULL,
	id_curso int NOT NULL,
	valor_turma numeric(15,2) NOT NULL,
	desconto numeric(3,2) NOT NULL,
	data_inicio date NOT NULL,
	data_termino date NOT NULL,
	data_cadastro datetime NOT NULL,
	login_cadastro varchar(15) NULL --Para indicar que � NULL pode-se tanto escrever NULL quanto deixar sem nada escrito, pois j� ir� considerar como NULL
);

CREATE TABLE Registro_Presenca
(
	id_turma int NOT NULL,
	id_aluno int NOT NULL,
	id_situacao int NOT NULL,
	data_presenca date NOT NULL,
	data_cadastro date NOT NULL,
	login_cadastro varchar(15) NOT NULL
);

/*
DROP TABLE Turmas;
DROP TABLE Situacao;
DROP TABLE Registro_Presenca;
DROP TABLE Cursos;
DROP TABLE Alunos;
*/