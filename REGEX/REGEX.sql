REGEXP_COUNT
Conta a quantidade de ocorrências da expressão no texto procurado

REGEXP_COUNT(<Texto informado>, <regex>, posição do inicio do teste, parametro)
Parametors:
'i' Case-insensitive
'c' case-sensitive
'n' permite que o ponto (.), que é o caractere de correspondência de qualquer caractere, corresponda ao caractere de nova linha. Se você omitir esse parâmetro, o ponto não corresponde ao caractere de nova linha.
'm' trata a string de origem como várias linhas. O Oracle interpreta o acento circunflexo (^) e o cifrão ($) como o início e o fim, respectivamente, de qualquer linha em qualquer lugar na string de origem, em vez de apenas no início ou no final de toda a string de origem. Se você omitir esse parâmetro, o Oracle tratará a string de origem como uma única linha.
'x' ignora caracteres de espaço em branco. Por padrão, os caracteres de espaço em branco correspondem a si mesmos.

Ex:
REGEXP_COUNT('554733251368', '(55[1-9]{2}[2,3,4,5]{1}[0-9]{7})', 1, 'i')
Resultado: 1


REGEXP_LIKE
Utilizada para verificar, nas clausula where, a ocorrência da expressão no texto da coluna informada;


REGEXP_REPLACE
REGEXP_INSTR
REGEXP_SUBSTR