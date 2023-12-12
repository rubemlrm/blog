---
date: '2012-01-17T23:19:10Z'
title: Ciclos de Controlo:"If..else" e "If..elsif.." em Perl
categories:
  - perl
  - tutorial
hero: images/posts/perl.png
---

E aqui vem o mais um artigo relativo ao perl. Neste artigo vou-vos ensinar a utilizar um dos ciclos de controlo mais
utilizados em programação que é o ciclo **"if..else"** e sua forma complexa **"if..elsif"**. \
Este ciclo serve para controlar o fluxo de dados de um programa, no sentido de que se uma condição for verdadeira
vai realizar uma acção e se for falsa vai realizar outra.

###### O ciclo "if..else" divide-se em duas partes ######

```perl
if (condição) {
  #bloco de código1
} else {
  #bloco de código2
}
```

Como podem ver tem uma estrutura muito simples. Mas para facilitar a vossa compreensão de como isto funciona
vou explicar passo a passo o que está neste exemplo.

```perl
if (condição) {
  #na primeira linha inicio o ciclo if dizendo que tem que verificar a condição que está entre "()", caso esta condição
  #seja verdadeira, irá ser #executado o bloco de código1
} else {
  #caso seja falso irá executar o bloco de código2
```

A primeira vez pode ser um pouco complicado. Mas agora vou dar um exemplo prático.
Imaginem que que queremos fazer um script que analise um valor introduzido e diga
se é negativo ou positivo. Para tal fazemos o seguinte.

```perl
#!/usr/bin/perl -w
use strict;
print "Introduza um númeron";
chomp(my $val = <STDIN>);
if($val > 0) {
  print "número é positivon";
} else {
  print "número é negativon";
}
```

Nesta situação utilizamos o if para verificar se o número é positivo ou negativo. E agora vocês perguntam-se então e
se tivermos mais do que 2 condições para analisar ou então neste programa de ver se é positivo ou negativo como fazemos
se o número for 0. \
Bem para lidar com essas situações temos uma derivação do ciclo If que é o "if .. elsif".
A sua estrutura de trabalho é bastante parecida ao ciclo if simples, só que neste caso temos 2 ou mais condições
para verificar. De seguida fica a estrutura de um ciclo "if..elsif".

```perl
if (condição) {
#na primeira linha inicio o ciclo if dizendo que tem que verificar a condição que está entre **()** caso esta condição
#seja verdadeira , irá ser #executado o bloco de código1
  #bloco de código1
}elsif(condição){ #caso a primeira condição não seja verdade o ciclo irá verificar a segunda condição.
  #bloco de código2
}else{#por fim caso nenhuma destas condições sejam verdadeiras então irá executar o bloco de código 3
  #bloco de código3
}
```

Como podem ver  este tipo de estrutura oferece um controlo de dados um pouco mais complexa.
Como não poderia de deixar de fazer vou deixar um exemplo prático deste ciclo. E como tal vou pegar no programa anterior
e irei usar este ciclo para verificar se o valor introduzido é 0.

```perl
#!/usr/bin/perl -w
use strict;
print "Introduza um númeron";
chomp(my $val = <STDIN>);
if ($val > 0) {
  print "número é positivon";
} elsif($val < 0) {
  print "número é negativon";
}else{
  print "o valor é nulo";
}
```
