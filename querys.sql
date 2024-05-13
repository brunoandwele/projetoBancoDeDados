-- 1) histórico escolar de qualquer aluno, retornando o código e nome da disciplina, semestre e ano que a disciplina foi cursada e nota final
-- CREATE VIEW historico_aluno_parcial AS
-- SELECT aluno.nome, historico.id_disciplina, historico.semestre, historico.ano, historico.media
-- FROM faculdade.aluno as aluno
-- INNER JOIN faculdade.historico_aluno as historico ON aluno.id_aluno = historico.id_aluno
-- WHERE aluno.nome = 'Luiz';

-- CREATE VIEW historico_aluno_completo AS
-- SELECT historico_aluno_parcial.nome, historico_aluno_parcial.id_disciplina, disciplina.titulo, historico_aluno_parcial.semestre, historico_aluno_parcial.ano, historico_aluno_parcial.media
-- FROM historico_aluno_parcial INNER JOIN faculdade.disciplina as disciplina ON historico_aluno_parcial.id_disciplina = disciplina.Id_disciplina;


-- select * from historico_aluno_completo
