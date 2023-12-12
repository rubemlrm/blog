---
categories:
  - perl
  - tutorial
date: '2011-12-30T17:14:24Z'
title: Introdução ao Perl
hero: images/posts/perl.png
---

Quem já ouviu falar de Perl e quis aprender e depois pensou mas como é que vou aprender isto,
ou melhor de que maneira é que vou aprender Perl.E para que serve o Perl.
A  pensar nessas questões criei esta rubrica para vos mostrar como fazer algumas coisas.
Para que servem algumas funções entre outros aspectos importantes de referir.

{{< img src="/images/posts/perl.png" alt="perl" >}}

Este artigo vai estar divido em 3 partes:

* Perl o que é ?
* O que é necessário para correr perl?
* Introdução a conceitos básicos.

**Perl o que é?**

A linguagem de programação PERL foi desenvolvida em 1987 por Larry Wall e serviu de base para muitas linguagens modernas
de programação , tais como javascript , ruby , etc...
O perl é caracterizado por ser uma linguagem de programação amplamente usada por administradores de sistemas, hackers,
crackers  e  webdevelopers.Tem os seguintes pontos fortes:

* Extremamente rápida a trabalhar com strings/arrays/hash's/regex's;
* Corre em mais de 100 plataformas diferentes;
* Pode ser utilizada para webdevelopment, desempenhando papeis geralmente ocupados por php/asp/etc;
* Suporte unicode;
* Actualmente permite programação orientada a objectos e também procedural ;
* Tem uma enorme comunidade de developers que desenvolvem módulos para agilizar o trabalho dos programadores.
  Para termos acesso a esses módulos basta ir ao site CPAN.
* Suporta integração com bases de dados;
* No entanto é uma linguagem mais orientada para scripting , ao seja pequenos programas para automatizar tarefas.

**O que é necessário para correr perl?**

Para correr o perl nas nossa máquinas é preciso ter o perl instalado , em sistemas \*Unix e MacOS o Perl já vem instalado
por defeito.
Em sistemas Windows basta fazer download da aplicação [Strawberry Perl](http://strawberryperl.com/ 'Strawberry Perl')
e instalar e ficarão com o perl instalado no vosso computador.

Para programarem em Perl eu recomendo o software [Padre Perl](http://padre.perlide.org/ 'Padre Perl')
(corre em sistemas Linux e Windows) ou então utilizem o [eclipse](http://www.eclipse.org/ 'Eclipse') com o plugin
[Epic IDE](http://www.epic-ide.org/ 'EPIC IDE')

**Introdução aos conceitos básicos:**

E finalmente chegamos a parte mais pratica deste artigo. Aqui irei mostrar como criar um programa que imprime
uma mensagem para o ecrã e outro que vos irá pedir o nome e imprimir uma mensagem de boas vindas. Então mãos a obra.
Depois de abrirem o vosso IDE. Escrevam o seguinte e guardem o ficheiro como helloworld.pl.
De referir o .pl refere-se a extensão que os scripts em perl tem. Então depois de copiarem este pequeno script
façam executar no vosso IDE para verem o resultado.

```perl

#!/usr/bin/perl

use warnings ;

use strict;

print "Bem vindos ao Perl";

```

Agora começam a pensar mas então o que e que e cada coisa que está ali .Para mim parece chinês use isto , print aquilo.
Bem é bastante fácil de entender  e irei explicar passo a passo cada coisa para que vocês fiquem a perceber tudo.

```perl

#!/usr/bin/perl

```

Esta linha é bastante importante , é logo a primeira linha a ser escrita e não pode ter espaços nem ficar na segunda
linha do script porque senão irá dar erro. Quando um interpretador executa um ficheiro perl , ele tem que saber que o
ficheiro em questão é um ficheiro perl e que tipo de interpretador e que tem usar e nesta linha nós indicamos isso.

```perl

use warnings;

use strict;

```

Nesta situação usamos 2 pragmas , um pragma é uma extensão ao programa. Ao seja vamos incluir funções que não vem por
defeito num script. Para tal temos que usar a função **use** seguida do nome do pragma.
Neste caso usei o pragma warnings e strict. O pragma warnings é responsável por nos avisar de possíveis erros de sintaxe
ou mesmo de programação. Enquanto que o pragma Strict permite uma melhor organização e estrutura a nível de sintaxe,
declaração de variáveis , procedimentos , etc.

```perl

print "Bem vindos ao Perl";

```

Por fim a função **print** , esta função irá imprimir para o ecrã aquilo que declaramos.

Agora iremos criar um pequeno programar que irá pedir o nome de utilizador e imprimir uma mensagem de boas vindas no ecrã.

```perl

#!/usr/bin/perl

use warnings ;

use strict;

print "Introduza o seu nomen";

my $nome = <stdin>;</stdin>

chomp ($nome) ;

print "Bem vindos ao Perl $nome";

```

Neste script introduzi 5 funções novas:

* **my**: Esta função é usada para declarar qualquer tipo de variáveis. Mas a sua utilização só e obrigatória se tivermos
  usado o pragma strict. Caso não tenhamos usado só é obrigatório utilizar dentro de funções;
* **$nome:** é a nossa variável , para se declarar uma variável usa-se o simbolo **$** ;

* : Esta função é utilizada para ler o que é introduzido pelo teclado.Ao estarmos a igual a variavel $nome a esta função,
  estamos a dizer que a variável nome ira ter o valor do <stdin>;</stdin>

* **n** : usando esta expressão num **print** iremos dizer ao programa que depois de imprimir o
  conteúdo do print deverá criar um nova linha(carregar no enter) ;

* **chomp** : esta função é das mais importantes que se podem utilizar,
  visto que elimina os n de todos os valores da variável que queremos.

* Por fim no print chama-mos a variável $nome e ira imprimir o seu valor.

Já agora fica uma pequena dica ;)

Em vez de fazerem isto :

```perl

my $nome = <stdin>;</stdin>

chomp ($nome) ;

```

Podem fazer logo isto :

```perl
chomp(my $nome = <stdin>);
```

Que alem de deixar o código mais organizado , agiliza a escrita de código.
