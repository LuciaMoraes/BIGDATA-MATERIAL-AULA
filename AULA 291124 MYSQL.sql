-- criando meu primeiro banco de dados
CREATE DATABASE Gabriel;

-- criando minha primeira tabela/entidade
CREATE TABLE alunos (
matricula INTEGER PRIMARY KEY,
nome_aluno TEXT NOT NULL,
genero TEXT NOT NULL
);
-- injeção de dados teste
INSERT INTO alunos VALUES (1, 'Paulo' , 'M');
INSERT INTO alunos VALUES (2, 'Lucia', 'F');


-- consultando as inkeções realizadas
SELECT * FROM alunos WHERE matricula=1

-- ATIVIDADE: crie uma nova tabela chamada 'professores', com a mesma quantidade de características de 'alunos',

CREATE TABLE professores (
matricula_prof INTEGER PRIMARY KEY,
nome_professor TEXT NOT NULL,
genero TEXT NOT NULL
);

-- fazendo ao menos duas injeções de dados e uma consulta.
INSERT INTO professores VALUES (71, 'Riva' , 'F');
INSERT INTO professores VALUES (72, 'Maria', 'F');

-- inserindo uma chave estrangeira ao criar uma tabela
-- opção 1: a tabela AINDA NÃO FOI CRIADA:
CREATE TABLE professores (
  matricula_prof INTEGER PRIMARY KEY,
  matricula INT,
  nome_prof TEXT NOT NULL
  eixo TEXT NOT NULL,
	CONSTRAINT fk_alunos
	FOREIGN KEY (matricula)
    REFERENCES alunos(matricula)
    );
    
-- OPÇÃO 2: A TABELA JÁ FOI CRIADA:
    ALTER TABLE alunos
    ADD CONSTRAINT fk_professores
    FOREIGN KEY (matricula_prof)
    REFERENCES professores(matricula_prof);
    
-- modificando tabelas que já foram criadas no geral:
    ALTER TABLE alunos
    ADD email_contato VARCHAR (50);
    
-- comandos de exclusão:
    DROP TABLE alunos;
    DROP DATABASE Gabriel;
    
-- Atividade para avaliar na semana que vem: Criem mais uma tabela que possa ter relação com  'alunos'
-- e 'professores', fazendo pelo menos a construção com 7 atributos e injeções. Não esqueça de
-- que todas precisam estar relacionadas.