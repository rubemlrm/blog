---
date: '2011-09-14T19:56:39Z'
title: Hello World em Python
categories:
  - python
  - tutorial
hero: images/posts/python-logo.png
---

Muitos de vós já ouviram falar de python e tiveram curiosidade em saber como programar em python.
E com este artigo vou explicar algumas coisas de python mas apenas coisas básicas.

E como tal vou utilizar o tão conhecido "Hello World" que é o programa da praxe em todas as linguagens de programação.

{{< img src="/images/posts/python-logo.png" alt="python" >}}

Antes de começar-mos a programar em python temos que instalar o software necessário.Para isso basta ir ao site do
[Python](http://www.python.org/download/)  e fazerem download da aplicação para os vossos sistemas operativos.
Caso utilizem Linux/Unix já devem trazer instalado o python para tal basta abrir o terminal e escrever "python"
se der erro é porque não está instalado e terão que seguir as informações de instalação para o vosso sistema.

De referir que podem criar programas em python em programas como o notepadd ++
mas não o poderão executar senão tiverem o python instalado no pc.

Agora vamos passar para a programação propriamente dita.
Imaginem que querem que o programa imprima alguma coisa no ecrã quando é executado , para tal basta escreverem isto no
ficheiro do vosso programa:

```python
print "Bom dia pessoal"
```

No exemplo acima demonstrado temos 2 coisas que é importante referir:

**print** -> com este comando vamos imprimir variáveis/frases para o ecrã ;

**"Bom dia pessoal"** -> A string que vai ser impressa , atenção que têm que estar entre **" "**;

Até aqui não há grandes dúvidas da simplicidade do python , mas agora vamos dinamizar um bocado o nosso código de forma
a que passe a ler aquilo que o utilizador introduz. Para tal temos que utilizar a seguinte sintax:

```python
nome = raw_input ("Qual é o seu nome?")
```

Neste exemplo estamos a declarar que a variavel que neste caso é o **"nome"** vai ter o valor que for adquirido com o **"raw_input"**.

O **"raw_input"** irá ler e guardar a informação que o utilizador escreveu quando respondeu ao que se perguntava/pedia na
**"("Qual é o seu nome?")".**

Atenção que o nome da variável que ira ser utilizada na ultima parte tem que ser igual a variavel que iniciamos,
ao seja se dissermos que a variável **x** é igual ao raw input da pergunta y , essa pergunta tem que ter um campo **x**
porque senão o que introduzirmos não vai ser associado.

Agora iremos pegar nos dois exemplos acima demonstrados e vamos criar um pequeno script que vai perguntar o nome
e posteriormente irá imprimir uma frase com o nome que foi introduzido.

```python
nome = raw_input ("Qual é o seu nome? : ")
print "Ola " + nome + " é um prazer conhece-lo."
```

Ao verem este exemplo poderão estranhar o que fazem ali os "+" bem o "+" é um símbolo de concatnação que une várias
strings para formar uma "compound string".De referir ainda que em nenhum dos exemplos definimos o tipo de variável
que iríamos utilizar.
