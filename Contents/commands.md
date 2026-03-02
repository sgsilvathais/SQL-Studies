## Criação de banco
**CREATE DATABASE** NOME_DO_BANCO

## Usar um banco de dados
**USE** NOME_DO_BANCO

## Criação de tabela
**CREATE TABLE** NOME_DA_TABELA (           
	NOME_DE_COLUNA TIPO_DA_COLUNA(TAMANHO_DO_CAMPO),  
	NOME_DE_COLUNA TIPO_DA_COLUNA(TAMANHO_DO_CAMPO),  
	NOME_DE_COLUNA TIPO_DA_COLUNA(TAMANHO_DO_CAMPO),  
	NOME_DE_COLUNA TIPO_DA_COLUNA(TAMANHO_DO_CAMPO)  
	)  

## Mostrar tabelas do banco (só existe no MySQL)
 SHOW TABLES;

## Exibir a estrutura da tabela
**DESC** NOME_DA_TABELA;

## Inserção de valores na tabela
**1 - Omissão dos nomes das colunas (os valores têm que ser inseridos na ordem das colunas)**  

**INSERT INTO** NOME_DA_TABELA  
**VALUES**(VALOR_COLUNA1, VALOR_COLUNA2, VALOR_COLUNA3, ...);

**2 - Nome das colunas explícito (os nomes das colunas não precisa estar na ordem, mas os valores inseridos devem corresponder à ordem explicitada entre parênteses)**  

**INSERT INTO** NOME_DA_TABELA (NOME_DE_COLUNA, NOME_DE_COLUNA, NOME_DE_COLUNA, ...)  
**VALUES**()

**3 - Insert compacto (só existe no MySQL)**  

**INSERT INTO** NOME_DA_TABELA   
**VALUES**(VALOR_COLUNA1, VALOR_COLUNA2, VALOR_COLUNA3, ...),
					(VALOR_COLUNA1, VALOR_COLUNA2, VALOR_COLUNA3, ...),
					(VALOR_COLUNA1, VALOR_COLUNA2, VALOR_COLUNA3, ...);
							
## O comando SELECT
**Select é um comando de projeção, é usado para projetar colunas que existem e não existem em uma tabela. Projeção é o que se projeta na tela.**  
**SELECT** NOW() as DATA_HORA, 'FELIPE MAFRA' AS PROFESSOR;

### Alias
**SELECT** NOME **AS** CLIENTE, SEXO, EMAIL **FROM** CLIENTE;

## Filtros

### WHERE
**SELECT** NOME_DA_COLUNA, NOME_DA_COLUNA  
**FROM** NOME_DA_TABELA  
**WHERE** NOME_DA_COLUNA OPERADOR_LÓGICO VALOR_DO_FILTRO  

### LIKE
**O LIKE degrada a performance portanto, é preferível usar o =.**  
**SELECT** NOME_DA_COLUNA, NOME_DA_COLUNA  
**FROM** NOME_DA_TABELA  
**WHERE** NOME_DA_COLUNA **LIKE** '**%**VALOR DA STRING PROCURADA' **-> Quando a string está no fim de uma cadeia de caracteres**  

**OU**

**SELECT** NOME_DA_COLUNA, NOME_DA_COLUNA  
**FROM** NOME_DA_TABELA  
**WHERE** NOME_DA_COLUNA **LIKE** 'VALOR DA STRING PROCURADA**%**' **-> Quando a string está no início de uma cadeia de caracteres**  

**OU**

**SELECT** NOME_DA_COLUNA, NOME_DA_COLUNA  
**FROM** NOME_DA_TABELA  
**WHERE** NOME_DA_COLUNA **LIKE** '**%**VALOR DA STRING PROCURADA**%**' **-> Quando a string está no meio de uma cadeia de caracteres**

## Funções de agregação

### COUNT()
**SELECT COUNT**(COLUNA_A_SER_CONTADA)  
**FROM** NOME_DA_TABELA

### GROUP BY
**SELECT** COLUNA_REFERÊNCIA_DO_AGRUPAMENTO, **COUNT**(COLUNA_A_SER_CONTADA)  
**FROM** NOME_DA_TABELA  
**GROUP BY** COLUNA_REFERÊNCIA

## Performance com operadores lógicos

Quando se trata de **OR** ordenamos as condições considerando a que tem mais chance de ser verdadeira, ou seja, quanto maior a chance de ser verdadeira menor a posição na ordem.

Já para o **AND**, quanto menor a chance da condição ser verdadeira, menor a posição na ordem.

Deve ser feito assim para as condições serem validadas ou invalidadas com maior velocidade.
