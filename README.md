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

1. Abra a ferrementa PostgreSQL;
2. Execute o arquivo "createSchemaAndTables.sql" responsável por criar as tabelas do banco de dados;
3. Execute o arquivo "generateData.sql" responsável por incluir dados no banco de dados;
4. Utilize as consultas SQL fornecidas no arquivo "querys.sql"  para gerar os relatórios desejados.

## Diagrama Relacional

![image](https://github.com/brunoandwele/projetoBancoDeDados/assets/103201200/43142e6e-3bbb-478f-8f12-dd9cbdd8f641)


## Autores
<img src="https://avatars.githubusercontent.com/u/84588132?v=4" alt="Ana Beatriz Tavares" width="150"/> | <img src="https://avatars.githubusercontent.com/u/103201200?v=4" alt="Bruno Andwele" width="150"/> |
| ------------- | ------------- |
**Ana Beatriz Tavares** | **Bruno Andwele** |
*24.122.019-3* | *24.122.030-0*

