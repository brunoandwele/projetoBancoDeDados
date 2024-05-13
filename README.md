# Modelo de Banco de Dados para Faculdade

Este projeto consiste em um modelo de banco de dados desenvolvido para uma instituição acadêmica, com o objetivo de gerenciar eficientemente informações sobre alunos, professores, cursos, departamentos, disciplinas e a estrutura curricular dos cursos oferecidos.

## Entidades Principais

1. **Alunos**: Contém informações sobre os alunos, como código, nome, data de nascimento, e-mail, etc.
2. **Professores**: Armazena detalhes sobre os professores, incluindo código, nome, data de admissão, departamento, etc.
3. **Cursos**: Representa os cursos oferecidos pela faculdade, com informações como código, nome, duração, departamento responsável, etc.
4. **Departamentos**: Registra os departamentos acadêmicos da instituição, com detalhes como código, nome, chefe de departamento, etc.
5. **Disciplinas**: Descreve as disciplinas oferecidas, incluindo código, nome, departamento responsável, carga horária, etc.
6. **Matriz Curricular**: Define a estrutura curricular dos cursos, especificando quais disciplinas são necessárias para completar o curso.

## Relatórios Possíveis

1. **Histórico Escolar de Alunos**: Permite gerar o histórico escolar de qualquer aluno, listando as disciplinas cursadas, semestre, ano e nota final.
2. **Histórico de Disciplinas Ministradas por Professores**: Mostra as disciplinas ministradas por um determinado professor, com informações sobre o semestre e ano.
3. **Alunos Formados em um Semestre Específico**: Lista os alunos que se formaram em um determinado semestre de um ano, ou seja, foram aprovados em todos os cursos da matriz curricular.
4. **Professores que são Chefes de Departamento**: Apresenta uma lista dos professores que ocupam o cargo de chefe de departamento, juntamente com o nome do departamento que lideram.
5. **Grupos de TCC e Orientadores**: Permite identificar quais alunos formaram grupos de Trabalho de Conclusão de Curso (TCC) e quem foi o professor orientador de cada grupo.

Este modelo de banco de dados oferece uma estrutura robusta para a gestão acadêmica da instituição, possibilitando a consulta eficiente de informações relevantes e a geração de relatórios importantes para auxiliar na tomada de decisão e no acompanhamento do desempenho dos alunos e professores.

## Instruções de Uso

1. Clone este repositório em seu ambiente local.
2. Importe o script SQL para criar o banco de dados e suas tabelas.
3. Utilize as consultas SQL fornecidas para gerar os relatórios desejados.
4. Consulte a documentação para obter detalhes sobre a estrutura do banco de dados e a sintaxe das consultas.