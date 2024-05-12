CREATE SCHEMA faculdade

CREATE TABLE faculdade.professor (
    Id_Professor SERIAL PRIMARY KEY,
    Nome VARCHAR(30),
	Sobrenome VARCHAR(100),
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
	Ano VARCHAR(30),
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
