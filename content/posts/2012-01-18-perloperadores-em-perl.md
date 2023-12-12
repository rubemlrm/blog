---
date: '2012-01-18T19:58:45Z'
title: Operadores em Perl
categories:
  - perl
  - tutorial
hero: images/posts/perl.png
---

Desta vez irei falar de operadores de comparação, operadores de strings e operadores aritméticos.
O que são e para que servem ? Bem esta vai ser a questão deste tutorial.Mas sem mais demoras vou iniciar este tutorial.

Operadores de Comparação
Como ponto de partida vou falar sobre os operadores de comparação.
Estes operadores servem para comparar strings e/ou números. \
Mas utilizam nomenclaturas diferentes , ao seja o operador de uma string é diferente do operador de um número.
E é importante nunca trocar os operadores porque podem ficar com erros no vosso programa e depois perderem algum tempo à
procura do erro.

Por exemplo se quisermos comparar números temos que usar operadores matemáticos, tais como "< > ="
enquanto que com strings utilizamos operadores orientados para strings , tais como "eq , ne , et".
Inicialmente isto pode parecer estranho porque não se sabe o seu significado .Mas para vos ajudar a aprender isso coloco
aqui uma tabela com o significado dos operadores e seus equivalentes entre string e números.
Ex:

```perl
a < b ;
#nesta situação estamos a dizer que o b é maior que o a;
a eq b ;
#Nesta situação estamos a comparar duas variáveis strings e como tal temos que usar os operadores para string.
1 eq "teste";
#Isto está errado visto que não se podem nem comparar strings com números
"teste" == "teste";
#isto esta errado porque estamos a utilizar um operador de comparação numérico num situação em que estamos a comparar #strings
```

###### Tabela relativa aos operadores de comparação #####

| Comparação       | Numéricos | Strings |
| ---------------- | --------- | ------- |
| Igual            | ==        | eq      |
| Diferentes       | !=        | ne      |
| Menor do que     | <         | lt      |
| Maior do que     | >         | gt      |
| Menor ou igual a | =<        | le      |
| Maior ou igual   | >         | ge      |
| Equivalência     | < =>      | cmp     |

###### Operadores Aritméticos ######

Os operadores aritméticos ou "sinais de operações matemáticas" são a mesma coisa , mas em linguagens de programação são
usadas de forma um pouco diferente. Mas visto que não é necessário explicar cada um , deixo aqui uma pequena tabela com
os operadores e sua actualização.

| Operador | Função           |
| -------- | ---------------- |
| +        | Soma             |
| -        | Subtração        |
| \*       | Multiplicação    |
| /        | Divisão          |
| \*\*     | Expoente         |
| %        | Resto de divisão |

###### Operadores lógicos ######

Estes operadores servem para realizar operações do tipo
boolean(1 ou 0 / Verdadeiro ou falso).Só existem 3 operadores lógicos como a tabela abaixo demonstra.

| Operador | Operador(alternativa) | Significado  |
| -------- | --------------------- | ------------ |
| &&       | and                   | "E" lógico   |
| \|\|     | or                    | "And" lógico |
| !        | not                   | Negação      |

Ex:

```perl
1 && 2;
#Caso o valor 1 e 2 sejam verdadeiros então o retorno desta operação vai ser verdadeiro.[/perl]
1 or 2;
#caso um dos valores seja verdadeiro retorna o valor de verdadeiro[/perl]
!2;
#com este ultimo operador nega todos os valores associados a este operador.
```
