-- -- 1) histórico escolar de qualquer aluno, retornando o código e nome da disciplina, 
-- --    semestre e ano que a disciplina foi cursada e nota final
-- SELECT aluno.nome, historico.id_disciplina, historico.semestre, historico.ano, historico.media
-- FROM faculdade.aluno as aluno
-- INNER JOIN faculdade.historico_aluno as historico ON aluno.id_aluno = historico.id_aluno
-- INNER JOIN faculdade.disciplina as disciplina ON historico.id_disciplina = disciplina.Id_disciplina
-- WHERE aluno.nome = 'Luiz'; --Alterar nome

-- -- 2) histórico de disciplinas ministradas por qualquer professor, com semestre e ano
-- SELECT prof.nome, disciplina.titulo, hist_prof.semestre, hist_prof.ano
-- FROM faculdade.professor as prof
-- INNER JOIN faculdade.historico_professor as hist_prof ON prof.id_professor = hist_prof.id_professor
-- INNER JOIN faculdade.disciplina as disciplina ON hist_prof.id_disciplina = disciplina.id_disciplina
-- WHERE prof.nome = 'João'; --Alterar nome

-- -- 3)listar alunos que já se formaram (foram aprovados em todos os cursos de uma matriz curricular) 
-- --   em um determinado semestre de um ano

-- SELECT DISTINCT aluno.nome, curso.titulo, hist.media, hist.semestre, hist.ano
-- FROM faculdade.aluno as aluno
-- INNER JOIN faculdade.historico_aluno as hist ON aluno.id_aluno = hist.id_aluno
-- RIGHT JOIN faculdade.matriz_curricular as mc ON mc.id_curso = aluno.id_curso
-- INNER JOIN faculdade.curso as curso ON aluno.id_curso = curso.id_curso
-- WHERE hist.semestre = 'Segundo' and hist.ano = '2006' and hist.media >= 5
-- ORDER BY aluno.nome


-- 4) Listar todos os professores que são chefes de departamento, junto com o nome do departamento
-- SELECT departamento.titulo AS titulo_departamento, professor.nome AS chefe_departamento
-- FROM faculdade.departamento as departamento
-- INNER JOIN faculdade.professor as professor ON departamento.id_professor = professor.id_professor


-- 5) Saber quais alunos formaram um grupo de TCC e qual professor foi o orientador
-- SELECT grupo_aluno.id_grupo as Grupo_TCC, aluno.nome as Nome_Aluno, professor.nome as Nome_Orientador
-- FROM faculdade.aluno as aluno
-- INNER JOIN faculdade.grupo_aluno as grupo_aluno ON aluno.id_aluno = grupo_aluno.id_aluno
-- INNER JOIN faculdade.historico_tcc as hist_tcc ON grupo_aluno.id_grupo_aluno = hist_tcc.id_grupo_aluno
-- INNER JOIN faculdade.professor as professor ON hist_tcc.id_professor = professor.id_professor
