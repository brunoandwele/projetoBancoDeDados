CREATE SCHEMA faculdade

CREATE TABLE faculdade.professor(
    Id_Professor SERIAL PRIMARY KEY,
    Nome VARCHAR(30),
	Sobrenome VARCHAR(60),
	Formacao VARCHAR(30),
	CPF VARCHAR(11)
);

CREATE TABLE faculdade.curso(
	Id_Curso SERIAL PRIMARY KEY,
	Id_Departamento INT,
	Id_Professor INT,
	FOREIGN KEY(Id_Departamento) REFERENCES faculdade.departamento(Id_Departamento),
	FOREIGN KEY(Id_Professor) REFERENCES faculdade.professor(Id_Professor),
	Titulo VARCHAR(30)
);

CREATE TABLE faculdade.aluno(
	Id_Aluno SERIAL PRIMARY KEY,
	Id_Curso INT,
	FOREIGN KEY(Id_Curso) REFERENCES faculdade.curso(Id_Curso),
	Nome VARCHAR(30),
	Sobrenome VARCHAR(60),
	Data_Adesao DATE,
	CPF VARCHAR(12)
);


CREATE TABLE faculdade.disciplina(
	Id_Disciplina SERIAL PRIMARY KEY,
	Titulo VARCHAR(30)	
);


CREATE TABLE faculdade.historico_aluno(
	Id_Historico_Escolar SERIAL PRIMARY KEY,
	Id_Aluno INT,
	Id_Disciplina INT,
	FOREIGN KEY(Id_Aluno) REFERENCES faculdade.aluno(Id_Aluno),
	FOREIGN KEY(Id_Disciplina) REFERENCES faculdade.disciplina(Id_Disciplina),
	Media FLOAT(2),
	Semestre VARCHAR(30),
	Ano INT
);

CREATE TABLE faculdade.grupo_aluno(
	Id_Grupo_Aluno SERIAL PRIMARY KEY,
	Id_Grupo INT,
	Id_Aluno INT,
	FOREIGN KEY(Id_Aluno) REFERENCES faculdade.aluno(Id_Aluno)
);


CREATE TABLE faculdade.historico_tcc(
	Id_Historico_TCC SERIAL PRIMARY KEY,
	Id_Grupo_Aluno INT,
	Id_Professor INT,
	FOREIGN KEY(Id_Grupo_Aluno) REFERENCES faculdade.grupo_aluno(Id_Grupo_Aluno),
	FOREIGN KEY(Id_Professor) REFERENCES faculdade.professor(Id_Professor),
	Semestre VARCHAR(30),
	Ano INT,
	Nota FLOAT(2)
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
