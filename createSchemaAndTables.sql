CREATE SCHEMA faculdade

CREATE TABLE faculdade. aluno(
	Id_Aluno SERIAL PRIMARY KEY,
	FOREIGN KEY (Id_Historico_Escolar) REFERENCES faculdade.historico_aluno,
	FOREIGN KEY(Id_Curso) REFERENCES faculdade.curso,
	Nome VARCHAR(30),
	Sobrenome VARCHAR(60),
	Data_Adesao DATE,
	CPF VARCHAR(12),
);

CREATE TABLE faculdade. curso(
	Id_Curso SERIAL PRIMARY KEY,
	FOREIGN KEY(Id_Professor) REFERENCES faculdade.professor,
	Titulo VARCHAR(30),
);

CREATE TABLE faculdade.historico_aluno(
	Id_Historico_Escolar SERIAL PRIMARY KEY,
	FOREIGN KEY(Id_Aluno) REFERENCES faculdade.aluno,
	FOREIGN KEY(Id_Disciplina) REFERENCES faculdade.disciplina,
	Media FLOAT(2),
	Semestre VARCHAR(30),
	Ano INT,
);

CREATE TABLE faculdade.grupo_aluno(
	Id_Grupo_Aluno SERIAL PRIMARY KEY,
	FOREIGN KEY (Id_Historico_TCC) REFERENCES faculdade.historico_tcc,
	FOREIGN KEY(Id_Aluno) REFERENCES faculdade.aluno,
);

CREATE TABLE faculdade.historico_tcc(
	Id_Historico_TCC SERIAL PRIMARY KEY,
	FOREIGN KEY(Id_Grupo_Aluno) REFERENCES faculdade.grupo_aluno,
	FOREIGN KEY(Id_Professor) REFERENCES faculdade.professor,
	Semestre VARCHAR(30),
	Ano INT,
	Nota FLOAT(2),
);

CREATE TABLE faculdade.professor (
    Id_Professor SERIAL PRIMARY KEY,
    Nome VARCHAR(30),
	Sobrenome VARCHAR(60),
	Formacao VARCHAR(30),
	CPF VARCHAR(11)
);

CREATE TABLE faculdade.disciplina(
	Id_Disciplina SERIAL PRIMARY KEY,
	Titulo VARCHAR(30)	
);

CREATE TABLE faculdade.departamento(
	Id_Departamento SERIAL PRIMARY KEY,
	Titulo varchar(30),
	Verba NUMERIC(12, 2),
	Id_Professor INT,
	FOREIGN KEY (Id_Professor) REFERENCES faculdade.professor(Id_Professor)
);

CREATE TABLE faculdade.historico_professor(

	Id_Historico_Professor SERIAL PRIMARY KEY,
	Id_Professor INT,
	Id_Disciplina INT,
	Semestre VARCHAR(30),
	Ano INT,
	FOREIGN KEY (Id_Professor) REFERENCES faculdade.professor(Id_Professor),
	FOREIGN KEY (Id_Disciplina) REFERENCES faculdade.disciplina(Id_Disciplina)
	
);

CREATE TABLE faculdade.matriz_curricular(
	Id_Matriz_Curricular SERIAL PRIMARY KEY,
	Id_Curso INT,
	Id_Disciplina INT,
	Nota_de_Corte DECIMAL(5,2),
	FOREIGN KEY (Id_Curso) REFERENCES faculdade.curso(Id_Curso),
	FOREIGN KEY (Id_Disciplina) REFERENCES faculdade.disciplina(Id_disciplina)
);
