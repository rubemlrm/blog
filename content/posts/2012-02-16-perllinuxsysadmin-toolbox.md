---
categories:
- perl
- script
date: "2012-02-16T00:00:00Z"
status: publish
title: Script - Sysadmin-toolbox
hero: images/posts/code.jpg
---

Depois de algum tempo a programar em perl , decidi "que tal por as minhas capacidades a prova" e construi um painel
administrativo em perl para gerir sistemas.

E depois de algumas horas a programar , tenho uma versão 1 pronta a utilizar ainda com poucas funcionalidades é certo ,
mas para já considero que tem as funcionalidades básicas já implementadas , tais como:

* Adicionar/remover utilizadores;
* Possibilidade de fazer backups dos dados de um utilizador que se vai apagar;
* Gestão de crons;
* Funcionalidade para testar os pcs da rede.De forma a ver quais estão online e quais não estão;
* Funcionalidade para encontrar pastas vazias e ficar com um registo das mesmas;
* Funcionalidade para ver quais são os processos que estão a gastar mais recursos
* Funcionalidade para adicionar vários utilizadores a uma máquina de forma automática
* Funcionalidade para encontrar ficheiros que tenham um tamanho superior ao indicado.

Este projecto está disponível no github a partir do seguinte link : [sysadmin-toolbox](https://github.com/Rubemlrm/sysadmin-toolbox)

Para utilizar basta fazer download do projecto e configurar o ficheiro includes.pl que está na pasta includes,
com o caminho correcto para o script.Espero que reportem possiveis bugs e sugestões =).
