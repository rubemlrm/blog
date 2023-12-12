---
categories:
- irc
- dicas
date: "2011-09-14T20:24:35Z"
title: Auto-Join Script para Mirc
hero: images/posts/code.jpg
---

Este é um exemplo para criar um script para fazer auto join no irc.
{{< highlight shell >}}
on *:START:{
    .server chat.eu.freenode.net -i
    .server -m irc.network -i (esta é a sintaxe que você tem que usar para utilizar este script para outras redes.)
}

on *:NOTICE:*This nickname is registered and protected*:*:{
    if ($nick == NickServ && $network == freenode ) {
        .msg nickserv IDENTIFY }
    elseif ($nick == NickServ && $network == ) {
        .msg nickserv IDENTIFY }
}

on *:NOTICE:*Password accepted*:*:{
    if ($nick == NickServ && $network == freenode) {
        join
    }
    elseif ($nick == NickServ && $network == ) {
        join
    }
}
{{< / highlight >}}

Agora irei explicar este script:

1ª Parte :
{{< highlight shell >}}
on *:START:{
    .server freenode -i
    .server -m irc.network -i (esta é a sintaxe que você tem que usar para utilizar este script para outras redes.)
}
{{< / highlight >}}

Nesta parte definimos a que redes é que queremos que o script se ligue. Mas atenção a 2 factores importantes:
-Não esquecer the usar o argumento "-m" no caso de utilizarmos o script para nos ligarmos a várias redes.

2ª Parte:
{{< highlight shell >}}
on *:NOTICE:*This nickname is registered and protected*:*:{
    if ($nick == NickServ && $network == Freenode ) {
        .msg nickserv IDENTIFY }
    elseif ($nick == NickServ && $network == ) {
        .msg nickserv IDENTIFY }
{{< / highlight >}}
Neste parte realizamos a identificação do nick .E caso queiram ter várias sessões na mesma rede podem usar um "else if".

3ª Parte:
{{< highlight shell >}}
on *:NOTICE:*Password accepted*:*:{
    if ($nick == NickServ && $network == freenode) {
        join
    } elseif ($nick == NickServ && $network == ) {
        join
   }
}
{{< / highlight >}}

Por fim depois de ter identificado o nick , irá entrar nos canais que definiu.
