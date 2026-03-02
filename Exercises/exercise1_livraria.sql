CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVROS (
	NOME_LIVRO VARCHAR(100),
	AUTOR VARCHAR(100),
	SEXO VARCHAR(9),
	NRO_PAGINAS INT(5),
	EDITORA VARCHAR(30),
	PRECO FLOAT(10,2),
	UF_EDITORA CHAR(2),
	ANO_PUBLICACAO INT(4)
	);
	

INSERT INTO LIVROS(NOME_LIVRO, AUTOR, SEXO_AUTOR, NRO_PAGINAS, EDITORA, PRECO, UF_EDITORA, ANO_PUBLICACAO) VALUES('Cavaleiro Real', 'Ana Claudia', 'Feminino', 465, 'Atlas', 49.9, 'RJ', 2009);

INSERT INTO LIVROS(NOME_LIVRO, AUTOR, SEXO_AUTOR, NRO_PAGINAS, EDITORA, PRECO, UF_EDITORA, ANO_PUBLICACAO) VALUES('SQL para leigos', 'João Nunes', 'Masculino', 450, 'Addison', 98, 'SP', 2018);

INSERT INTO LIVROS(NOME_LIVRO, AUTOR, SEXO_AUTOR, NRO_PAGINAS, EDITORA, PRECO, UF_EDITORA, ANO_PUBLICACAO) VALUES('Receitas Caseiras', 'Celia Tavares', 'Feminino', 210, Atlas, 45, 'RJ', 2008);

INSERT INTO LIVROS(NOME_LIVRO, AUTOR, SEXO_AUTOR, NRO_PAGINAS, EDITORA, PRECO, UF_EDITORA, ANO_PUBLICACAO) VALUES('Pessoas Efetivas', 'Eduardo Santos', 'Masculino', 390, Beta, 78.99, 'RJ', 2018);

INSERT INTO LIVROS(NOME_LIVRO, AUTOR, SEXO_AUTOR, NRO_PAGINAS, EDITORA, PRECO, UF_EDITORA, ANO_PUBLICACAO) VALUES('Hábitos Saudáveis', 'Eduardo Santos', 'Masculino', 630, Beta, 150.98, 'RJ', 2019);

INSERT INTO LIVROS(NOME_LIVRO, AUTOR, SEXO_AUTOR, NRO_PAGINAS, EDITORA, PRECO, UF_EDITORA, ANO_PUBLICACAO) VALUES('A Casa Marrom', 'Hermes Macedo', 'Masculino', 250, Bubba, 60, 'MG', 2016);

INSERT INTO LIVROS(NOME_LIVRO, AUTOR, SEXO_AUTOR, NRO_PAGINAS, EDITORA, PRECO, UF_EDITORA, ANO_PUBLICACAO) VALUES('Estácio Querido', 'Geraldo Francisco', 'Masculino', 310, Insígnia, 100, 'ES', 2015);

INSERT INTO LIVROS(NOME_LIVRO, AUTOR, SEXO_AUTOR, NRO_PAGINAS, EDITORA, PRECO, UF_EDITORA, ANO_PUBLICACAO) VALUES('Pra sempre amigas', 'Leda Silva', 'Feminino', 510, Insígnia, 78.98, 'ES', 2011);

INSERT INTO LIVROS(NOME_LIVRO, AUTOR, SEXO_AUTOR, NRO_PAGINAS, EDITORA, PRECO, UF_EDITORA, ANO_PUBLICACAO) VALUES('Copas Inesquecíveis', 'Marco Alcantara', 'Masculino', 200, Larson, 130.98, 'RS', 2018);

INSERT INTO LIVROS(NOME_LIVRO, AUTOR, SEXO_AUTOR, NRO_PAGINAS, EDITORA, PRECO, UF_EDITORA, ANO_PUBLICACAO) VALUES('O poder da mente', 'Clara Mafra', 'Feminino', 120, Continental, 56.58, 'SP', 2017);


--1 - Trazer todos os dados.
SELECT * FROM LIVROS;

--2 - Trazer o nome do livro e o nome da editora.
SELECT NOME_LIVRO, EDITORA FROM LIVROS;

--3 - Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
SELECT NOME_LIVRO, UF_EDITORA 
FROM LIVROS
WHERE SEXO_AUTOR= 'Masculino';

--4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
SELECT NOME_LIVRO, NRO_PAGINAS 
FROM LIVROS
WHERE SEXO_AUTOR= 'Feminino';

--5 - Trazer os valores dos livros das editoras de São Paulo.
SELECT PRECO
FROM LIVROS
WHERE UF_EDITORA = 'SP';

--6 - Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro.
SELECT AUTOR
FROM LIVROS
WHERE SEXO_AUTOR = 'Masculino' AND (UF_EDITORA = 'SP' OR UF_EDITORA = 'RJ');
