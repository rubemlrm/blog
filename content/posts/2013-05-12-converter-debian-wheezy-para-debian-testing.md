---
categories:
- Tutorial
- Debian
date: "2013-05-12T16:46:49Z"
date_gmt: 2013-05-12 16:46:49 +0000
title: Converter Debian Wheezy para Debian Testing
hero: images/posts/debian.svg
---

Com o recente lançamento do Debian como versão final , foi anunciada a versão 8 desta distribuição.
A versão 8 desta distribuição terá o codename de "Jessie" e será lançado durante 2015. \
Passará os repositórios do Debian
Jessie ainda estão com os pacotes que estão disponiveis para o Debian Wheezy , sendo que parassá os pacotes disponíveis
no repo Security-updates do Jessie ainda não estão a ser mantidas pela equipa oficial do debian.

!["debian logo"](http://1.bp.blogspot.com/-R-IkMedx9EE/UYYcktIrKFI/AAAAAAAADJw/0OkXQUJRuMY/s635/debian_logo1.jpg)

Feita esta pequena apresentação do Jessie , vou explicar como actualizar o Debian Wheezy para Debian Jessie.

Como primeiro passo é necessário editar o ficheiro  **/etc/apt/sources.lists** como root e colocar as seguintes entradas
no ficheiro:

```shell
deb ftp://ftp.uk.debian.org/debian/ jessie main contrib non-free
deb ftp://ftp.uk.debian.org/debian/ jessie-proposed-updates main contrib non-free
deb-src ftp://ftp.uk.debian.org/debian/ jessie main contrib non-free
deb-src ftp://ftp.uk.debian.org/debian/ jessie-proposed-updates main contrib non-free
```

***No entanto é necessário verificar que não existe nenhuma entrada referente a vers&otilde;es anteriores.***
Após este passo é necessário atualizar a lista de repositórios , para tal basta executar o seguinte comando:

```shell
  sudo apt-get update
```

Por fim é necessário actualizar o sistema , no entanto como se vai atualizar o sistema para uma versão acima,
será necessário executar o comando:

```shell
  sudo apt-get dist-upgrade
```
