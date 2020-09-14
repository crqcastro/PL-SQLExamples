/*
+-----------------------------------------------------------------------------------------------------+
| REGEXP_COUNT                                                                                        |
| Conta a quantidade de ocorrências da expressão no texto procurado                                   |
+-----------------------------------------------------------------------------------------------------+
| REGEXP_COUNT(<Texto informado>, <regex>, posição do inicio do teste, parametro)                     |
| Parametros:                                                                                         |
| >> 'i' Case-insensitive                                                                             |
| >> 'c' case-sensitive                                                                               |
| >> 'n' permite que o ponto (.), que é o caractere de correspondência de qualquer caractere,         |
| corresponda ao caractere de nova linha. Se você omitir esse parâmetro, o ponto não corresponde      |
| ao caractere de nova linha.                                                                         |
| >> 'm' trata a string de origem como várias linhas. O Oracle interpreta o acento circunflexo (^)    |
| e o cifrão ($) como o início e o fim, respectivamente, de qualquer linha em qualquer lugar na       |
| string de origem, em vez de apenas no início ou no final de toda a string de origem. Se você omitir |
| esse parâmetro, o Oracle tratará a string de origem como uma única linha.                           |
| >> 'x' ignora caracteres de espaço em branco. Por padrão, os caracteres de espaço em branco         |
| correspondem a si mesmos.                                                                           |
| ** Parametro não é obrigatório **                                                                   |
+-----------------------------------------------------------------------------------------------------+
| Ex:                                                                                                 |
| select REGEXP_COUNT('554733251368', '(55[1-9]{2}[2,3,4,5]{1}[0-9]{7})', 1, 'i') from dual           |
| >> Resultado: 1                                                                                     |
+-----------------------------------------------------------------------------------------------------+
*/
select REGEXP_COUNT('554733251368', '(55[1-9]{2}[2,3,4,5]{1}[0-9]{7})', 1, 'i') from dual;

/*
+-----------------------------------------------------------------------------------------------------+
| REGEXP_LIKE                                                                                         |
| Utilizada para verificar, nas clausula where, a ocorrência da expressão no                          |
| texto da coluna informada                                                                           |
+-----------------------------------------------------------------------------------------------------+
| >> Usado na clausula Where de forma similar ao like.                                                |
| REGEXP_LIKE(<Texto informado>, <regex>, parametro)                                                  |
| Parametros                                                                                          |
| >> 'i' Case-insensitive                                                                             |
| >> 'c' case-sensitive                                                                               |
| >> 'n' permite que o ponto (.), que é o caractere de correspondência de qualquer caractere,         |
| corresponda ao caractere de nova linha. Se você omitir esse parâmetro, o ponto não corresponde      |
| ao caractere de nova linha.                                                                         |
| >> 'm' trata a string de origem como várias linhas. O Oracle interpreta o acento circunflexo (^)    |
| e o cifrão ($) como o início e o fim, respectivamente, de qualquer linha em qualquer lugar na       |
| string de origem, em vez de apenas no início ou no final de toda a string de origem. Se você omitir |
| esse parâmetro, o Oracle tratará a string de origem como uma única linha.                           |
| ** Parametro não é obrigatório **                                                                   |
+-----------------------------------------------------------------------------------------------------+
| Ex:                                                                                                 |
| select username, useremail from users                                                               |
| where REGEXP_LIKE(useremail, '[a-z0-9.]+@hotmail.com', 'i')                                         |
+-----------------------------------------------------------------------------------------------------+
*/
create table users (username varchar2(20),email varchar2(100));
insert into users values ('Cesar Castro', 'cesarrqc@gmail.com');
insert into users values ('Mickey Mouse', 'mickey28@hotmail.com');
select * from users;
select * from users where REGEXP_LIKE (email, '[a-z0-9.]+@hotmail.com', 'i');

/*
+-----------------------------------------------------------------------------------------------------+
| REGEXP_REPLACE                                                                                      |
| Utilizado para fazer suibstituição do texto por outro, de acordo com o match do REGEX. Comumente 	  |
| utlizado para formatar o texto.																	  |
+-----------------------------------------------------------------------------------------------------+
| REGEXP_REPLACE(<texto original>, <pattern>, <String de substituição>, <posição do inicio do teste>, |
| <quantos matchs devem ser substituidos>, parametro)												  |
| 																									  |
| A quantidade de matches que devem ser substituidos é um parâmetro numérico não negativo, onde 0     |
| equivale a substiuir todas as ocorrências, o qualquer valor positivo indicando quantas ocorrências  |
| devem ser substituídas.                                                                             |
| Parametros:                                                                                         |
| >> 'i' Case-insensitive                                                                             |
| >> 'c' case-sensitive                                                                               |
| >> 'n' permite que o ponto (.), que é o caractere de correspondência de qualquer caractere,         |
| corresponda ao caractere de nova linha. Se você omitir esse parâmetro, o ponto não corresponde      |
| ao caractere de nova linha.                                                                         |
| >> 'm' trata a string de origem como várias linhas. O Oracle interpreta o acento circunflexo (^)    |
| e o cifrão ($) como o início e o fim, respectivamente, de qualquer linha em qualquer lugar na       |
| string de origem, em vez de apenas no início ou no final de toda a string de origem. Se você omitir |
| esse parâmetro, o Oracle tratará a string de origem como uma única linha.                           |
| >> 'x' ignora caracteres de espaço em branco. Por padrão, os caracteres de espaço em branco         |
| correspondem a si mesmos.                                                                           |
| ** Parametro não é obrigatório **                                                                   |
|                                                                                                     |
| A string de substituição pode ser uma outra expressão que formata a string original ou um texto     |
| literal para a substituíção.																		  |
+-----------------------------------------------------------------------------------------------------+
| Ex:																								  |
| select REGEXP_SUBSTR('+5598992007999', '')

REGEXP_INSTR
REGEXP_SUBSTR
*/
