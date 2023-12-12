---
date: '2013-05-12T16:28:59Z'
title: Instalação do yaourt em ArchLinux
categories:
  - linux
  - tutorial
hero: images/posts/archlinux.png
---

Como utilizador de archlinux já há uns anos , surgiu a necessidade de instalar pacotes que estão disponíveis no AUR.
No entanto instalar software que está disponível no AUR pode ser um pouco demoroso e tive necessidade de encontrar uma
alternativa viável que me pudesse gerir as instalações a partir do AUR como a partir dos repos oficiais.

Como tal encontrei o software yaourt que funciona como gestor de pacotes.Umas das principais mais valias deste gestor
de pacotes é que dá para gerir de forma centralizada a instalação dos pacotes tanto de repos AUR como de repos oficias.

Como tal vou deixar aqui um pequeno tutorial de como instalar este software e algumas dicas de utilização.
Inicialmente será necessário editar o ficheiro **/etc/pacman.conf** e adicionar as seguintes entradas:

```shell
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
```

Após este passo iremos actualizar o sistema e instalar o yaourt ,para tal basta correr o seguinte comando como root:

` sudo pacman -Sy yaourt `

E pronto temos o yaourt instalado =) simples não foi ?
Agora irei deixar alguns exemplos de utilização do mesmo. Para fazer pesquisa e
instalação de um pacote basta executar o comando:

`yaourt <pesquisa>`

Para sincronizar as bases de dados , actualizar e fazer pesquisas no aur basta executar o seguinte comando:

`yaourt -Syu --devel --aur`

Caso queira actualizar só o sistema e o aur fazem

`yaourt -Syua`

Para compilar um pacote atravez do código fonte podem utilizar o comando:

`yaourt -Sb <pacote>`

Estes são dos comandos mais utilizados , no entanto existe um leque enorme de
possiveis comandos que podem ser executados. \
De referir ainda que devem executar o yaourt sempre como utilizador "normal"
visto que durante a instalação dos pacotes será sempre pedida a vossa password,
 desta forma irão ter mais controlo sobre o que está a ser instalado.
