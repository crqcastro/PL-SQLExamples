/*
+-----------------------------------------------------------------------------------------------------+
| REGEXP_COUNT                                                                                        |
| Conta a quantidade de ocorr�ncias da express�o no texto procurado                                   |
+-----------------------------------------------------------------------------------------------------+
| REGEXP_COUNT(<Texto informado>, <regex>, posi��o do inicio do teste, parametro)                     |
| Parametros:                                                                                         |
| >> 'i' Case-insensitive                                                                             |
| >> 'c' case-sensitive                                                                               |
| >> 'n' permite que o ponto (.), que � o caractere de correspond�ncia de qualquer caractere,         |
| corresponda ao caractere de nova linha. Se voc� omitir esse par�metro, o ponto n�o corresponde      |
| ao caractere de nova linha.                                                                         |
| >> 'm' trata a string de origem como v�rias linhas. O Oracle interpreta o acento circunflexo (^)    |
| e o cifr�o ($) como o in�cio e o fim, respectivamente, de qualquer linha em qualquer lugar na       |
| string de origem, em vez de apenas no in�cio ou no final de toda a string de origem. Se voc� omitir |
| esse par�metro, o Oracle tratar� a string de origem como uma �nica linha.                           |
| >> 'x' ignora caracteres de espa�o em branco. Por padr�o, os caracteres de espa�o em branco         |
| correspondem a si mesmos.                                                                           |
| ** Parametro n�o � obrigat�rio **                                                                   |
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
| Utilizada para verificar, nas clausula where, a ocorr�ncia da express�o no                          |
| texto da coluna informada                                                                           |
+-----------------------------------------------------------------------------------------------------+
| >> Usado na clausula Where de forma similar ao like.                                                |
| REGEXP_LIKE(<Texto informado>, <regex>, parametro)                                                  |
| Parametros                                                                                          |
| >> 'i' Case-insensitive                                                                             |
| >> 'c' case-sensitive                                                                               |
| >> 'n' permite que o ponto (.), que � o caractere de correspond�ncia de qualquer caractere,         |
| corresponda ao caractere de nova linha. Se voc� omitir esse par�metro, o ponto n�o corresponde      |
| ao caractere de nova linha.                                                                         |
| >> 'm' trata a string de origem como v�rias linhas. O Oracle interpreta o acento circunflexo (^)    |
| e o cifr�o ($) como o in�cio e o fim, respectivamente, de qualquer linha em qualquer lugar na       |
| string de origem, em vez de apenas no in�cio ou no final de toda a string de origem. Se voc� omitir |
| esse par�metro, o Oracle tratar� a string de origem como uma �nica linha.                           |
| ** Parametro n�o � obrigat�rio **                                                                   |
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
select * from users where REGEXP_LIKE (email, '[a-z0-9]+@hotmail.com', 'i');

/*
+-----------------------------------------------------------------------------------------------------+
| REGEXP_REPLACE                                                                                      |
| 
REGEXP_INSTR
REGEXP_SUBSTR
*/
