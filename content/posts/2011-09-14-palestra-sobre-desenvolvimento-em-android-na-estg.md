---
categories:
- android
- palestra
date: "2011-09-14T19:55:19Z"
title: Palestra sobre desenvolvimento em android na ESTG
hero: images/posts/androidpt.png
---

Praticamente uma semana depois da realização desta palestra , finalmente tive tempo para fazer um pequeno resumo
do que se passou e de como correu.

Apesar de um breve atraso no inicio da palestra devido a problemas técnicos iniciou-se o inicio da palestra comigo a
falar sobre versões de android e suas inovações e dicas sobre como trabalhar como o GIT.
As partes que gostei mais na palestra foram a palestra sobre OpenGL e sobre Rom development onde deu para aprender
muita coisa que nunca se vai aprender na escola e que me fez despertar um interesse em rom development e ainda
 me levou a querer aprender ainda mais de programação.

{{< img src="/images/posts/androidpt.png" alt="androidPT" >}}

**Game Dev:** \
Coisas como motores gráficos e NDK fizeram-me ver que aquilo que eu tinha feito para a PAT em rpg maker VX não foi nada
por ai alem e que ainda tenho muito que aprender sobre a área de game dev. Com esta palestra vi que nem sempre a ideia
mais complicada é a melhor e que se podem criar jogos muito interessantes sem recorrer a grande histórias de jogo.
Uma coisa que achei muito interessante foi o que é preciso para desenvolver um motor de jogo, desde as leis da física,
a optimização de código e previsões de embate do objecto que criamos no jogo.

A criação de um jogo a nível visual é muito fácil bastando para isso criar 3 variaveis:

* Mundo
* Objecto que controlamos;
* Zonas de impacto
* Fundo para dar .

Posteriormente a esta etapa tem que se definir em que é que o jogo vai consistir ao seja o guião do jogo .
E aqui definimos o que é que para se fazer no jogo , desde quests , noiveis , personagens , etc.

Por fim a parte mais desafiante juntar isto tudo e criar um jogo com tudo o que planeamos.

**Rom dev:**

Este foi sem sombra de dúvidas o tema que me interessou mais. Já a algum tempo que gostava de aprender como criar uma ROM
e sempre pensei que fosse impossível para quem não percebesse muito de C ou outras .Mas acabei por ver que não é assim
tão difícil e que já existem muitas ferramentas que ajudam neste trabalho .No entanto é preciso conhecer termos como
boot.img , root , init.rc , kernel etc e saber o que cada um faz. \
Uma das formas mais básicas de criar uma custom ROM é pegar numa já existente e fazer pequenas alterações,
como adicionar e remover apk's que estejam na pasta /system , criar um theme só nosso , alterar velocidades de clock do CPU,
splash screens etc.E depois compilar tudo para criar uma ROM. \
E vocês pensam agora mas é assim tão simples quanto isso ??Bem na teoria sim mas na prática é preciso ter alguns
cuidados como não alterar definições importantes do sistema porque poderam ficar com o dispositivo inóperavel. \
A outra maneira que existe para se criar uma rom é from the source ao seja adquirimos o source do android e começamos
a construir a nossa rom totalmente da nossa autoria, mas nesta situação já é necessário conhecimentos de programação
mais avançados , visto que se mexe com kernel dev , drivers dev entre outras coisas, e a quantidade de bugs
que vão existir logo de inicio. Mas o importante é não desanimar.

**Theme Dev:**

Possivelmente o tema mais acessivel que falou nesta palestra visto que se torna muito fácil alterar themes,
alias nunca pensei que fosse tão fácil. Foi interessante ver as ferramentas que se utilizam.

**APN Portugal:**

Foi feita uma pequena demonstração do funcionamento da mesma a nível de utilizador final e de aspectos importante
relativamente a como identificar a que rede se pertence.
