INSERT INTO faculdade.professor (Nome, Sobrenome, Formacao, CPF) VALUES
('João', 'Silva', 'Doutorado em Engenharia', '12345678901'),
('Maria', 'Santos', 'Mestrado em Computação', '23456789012'),
('Pedro', 'Oliveira', 'Doutorado em Matemática', '34567890123'),
('Ana', 'Ferreira', 'Mestrado em Economia', '45678901234'),
('Carlos', 'Rocha', 'Doutorado em Biologia', '56789012345');

INSERT INTO faculdade.departamento (Titulo, Verba, Id_Professor) VALUES
('Departamento de Computacao', 50000.00, 16),
('Departamento de Matemática', 58000.00, 18),
('Departamento de Economia', 52000.00, 19),
('Departamento de Biologia', 59000.00, 20);

INSERT INTO faculdade.curso (Id_Professor, Id_Departamento, Titulo) VALUES
(1, 1, 'Engenharia de Software'),
(2, 1, 'Ciência da Computação'),
(3, 2, 'Matemática Aplicada'),
(4, 3, 'Economia'),
(5, 4, 'Biologia Molecular');

INSERT INTO faculdade.aluno (Id_Curso, Nome, Sobrenome, Data_Adesao, CPF) VALUES
(11, 'Luiz', 'Pereira', '2000-09-15', '123456789012'),
(11, 'Fernanda', 'Gomes', '2001-03-20', '234567890123'),
(12, 'Rafael', 'Martins', '2002-01-10', '345678901234'),
(12, 'Juliana', 'Almeida', '2002-07-05', '456789012345'),
(13, 'Lucas', 'Rodrigues', '2003-05-28', '567890123456'),
(13, 'Mariana', 'Costa', '2004-02-10', '678901234567'),
(14, 'Guilherme', 'Oliveira', '2005-08-15', '789012345678'),
(14, 'Aline', 'Santana', '2006-04-20', '890123456789'),
(15, 'Mateus', 'Ribeiro', '2007-11-25', '901234567890'),
(15, 'Carla', 'Silveira', '2008-09-30', '012345678901');


INSERT INTO faculdade.disciplina (Titulo) VALUES
('POO'),
('Engenharia de Requisitos'),
('Estrutura de Dados'),
('Sistemas Distribuídos'),
('Cálculo Numérico'),
('Álgebra Linear'),
('Microeconomia'),
('Econometria'),
('Biologia Celular'),
('Genética de Populações');

INSERT INTO faculdade.matriz_curricular(Id_curso, Id_disciplina, nota_de_corte) VALUES
(11,1, 5.0),
(11,2, 5.0),

(12,3, 5.0),
(12,4, 5.0),

(13,5, 5.0),
(13,6, 5.0),

(14,7, 5.0),
(14,8, 5.0),

(15,9, 5.0),
(15,10,5.0);

INSERT INTO faculdade.historico_aluno (Id_Aluno, Id_Disciplina, Media, Semestre, Ano) VALUES
(1, 1, 8.5, 'Primeiro', 2002),
(1, 2, 9.0, 'Segundo', 2003),

(2, 1, 4, 'Primeiro', 2002),
(2, 2, 6.0, 'Segundo', 2003),

(3, 3, 5.5, 'Primeiro', 2002),

(4, 3, 10, 'Primeiro', 2002),
(4, 4, 10, 'Segundo', 2003),

(5, 5, 4, 'Primeiro', 2005),
(5, 6, 9.0, 'Segundo', 2006),

(6, 5, 5.2, 'Primeiro', 2005),
(6, 6, 9.0, 'Segundo', 2006),

(7, 7, 9, 'Primeiro', 2005),

(8, 7, 2, 'Primeiro', 2005),
(8, 8, 3, 'Segundo', 2006),

(9, 9, 7.5, 'Primeiro', 2007),
(9, 10, 1, 'Segundo', 2008),

(10, 9, 7.5, 'Primeiro', 2007);

INSERT INTO faculdade.grupo_aluno (Id_Aluno, Id_grupo) VALUES
(1,1),
(2,1),
(4,1),
(5,2),
(6,2),
(8,2),
(9,3);

INSERT INTO faculdade.historico_tcc (Id_Grupo_Aluno, Id_Professor, Semestre, Ano, Nota) VALUES
(1, 1, 'Segundo', 2003, 9.5),
(2, 1, 'Segundo', 2003, 9.5),
(3, 1, 'Segundo', 2003, 9.5),

(4, 2, 'Segundo', 2006, 8.0),
(5, 2, 'Segundo', 2006, 8.0),
(6, 2, 'Segundo', 2006, 8.0),

(7, 3, 'Segundo', 2007, 4);




INSERT INTO faculdade.historico_professor (Id_Professor, Id_Disciplina, Semestre, Ano) VALUES
(1, 1, 'Primeiro', 2002),
(1, 2, 'Segundo', 2003),
(2, 3, 'Primeiro', 2002),
(2, 4, 'Segundo', 2003),
(3, 5, 'Primeiro', 2005),
(3, 6, 'Segundo', 2006),
(4, 7, 'Primeiro', 2005),
(4, 8, 'Segundo', 2006),
(5, 9, 'Primeiro', 2007),
(5, 10, 'Segundo', 2008);




