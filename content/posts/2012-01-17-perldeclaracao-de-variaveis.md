---
date: '2012-01-17T22:23:30Z'
date_gmt: 2012-01-17 22:23:30 +0000
title: Declaração de variáveis em Perl
categories:
  - perl
  - tutorial
---

Bem minha gente chegou mais um artigo sobre perl. Desta vez irei focar as declarações de variáveis.
Em perl só existem três tipos de variáveis. Estas são divididas por hashes, scalar e array. A declaração de variáveis
em perl é um pouco diferente das linguagens mais comuns de programação.

{{< img src="/images/perl.png" alt="perl" >}}

#### Antes de tudo o que é uma variável e como se caracteriza? ####

Uma variável é um "objecto" que contem informação útil para o contexto de programação.
Uma variável é caracterizada por 3 coisas:

* **-Nome:** Nas boas práticas de programação devemos nomear as variáveis da seguinte forma:

  * Primeiro carácter tem que ser uma letra;
  * Podem-se utilizar números no nome da variável, mas nunca como primeiro carácter;
  * Segundo as regras de boa programação os nomes das variáveis tem que estar em minúsculas;
  * Caso seja um junção de palavras a segunda palavra tem que ser em maiúsculas. Ex: **testePL**.

* **Tipo de variável**: Em perl os  tipos de variáveis são:

  * hash(%)
  * array(@)
  * scalar($)
  * Para quem de vem de fora pode achar estranho não ter que declarar se uma variável escalar é do tipo integer, float,
    string, etc. Isto porque o perl identifica isso de forma autónoma.

* **Valor**: Ao seja o valor que a variável vai ter perante o programa. Este valor pode ser escalar, do tipo array ou hash.

##### Hash , array , scalar ?! O que é isso #####

Estes são os três tipos de variáveis em perl. E irei explicar cada uma delas.
Uma **variável escalar** é uma variável que só tem um elemento/valor atribuído. Com isto não quero dizer que só pode ter
um número ou só pode ter uma palavra. Porque podemos criar um valor com várias palavras  ou com vários números.

```perl
my $nome = Rubem ;
my $morada = "Portugal , União Europeia";
#Atenção caso se queira declarar uma variável scalar desta forma tem que se usar os " " ou '  '
my $numero =123455667;
```

Um array é uma variável "lista" ao seja tem mais do que um valor atribuido. E vocês pensam agora assim então mas qual
é a diferença entre scalar e array. A diferença é simples um um array pode ter vários scalar's mas um scalar se for
igualado a um array só vai ficar com o valor igual ao número de elementos do array.

```perl
my @array = (foo, bar, zed);
my $val = @array;
#a var val vai ficar com o valor de 3 que é o número de elementos do array
```

Depois de ter explicado a diferença entre escalar e array vou mostrar como se podem criar arrays:

```perl
my @array = (1..10);
#neste caso estamos a dizer que o array vai ter todos os valores desde o 1 até ao 10
my @array = (teste, tx, px);
#nesta situação criei um array com 3 elementos separado por "," que indicam que é outro elemento
my @array = qw(teste tx pc);
#desta vez introduzi um conceito novo o qw ao seja ele vai assumir cada palavra como um elemento novo.
#ATENÇÃO: o qw funciona de forma diferente com prints
```

Para finalizar este artigo vou falar sobre **hash's** também conhecidas por listas associativas. Ao seja uma numa hash
cada item vai ter um valor associado. São variáveis "bidimensionais" porque têm duas listas em que um inclui o valor chave
e a outra inclui o valor correspondente.

```perl
my %hash = ("linha1" => "Teste");
#o linha1 é a chave e o Teste é o valor associado a essa chave.
```

De referir que cada chave só pode ter um valor. O exemplo acima demonstra como se pode definir uma hash mas existe outra
opção para fazer o mesmo, que é o seguinte:

```perl
my %hash = ("linha1" , Teste);
```

**Nota:** Tanto para os arrays como para os hash nós podemos aceder a hash/array como um todo ou a uma determinada
posição da hash. Atenção tanto uma como outra começa a lista no zero ao seja o primeiro valor tem posição zero.
