---
categories:
    - linux
    - categories
date: "2012-02-23T00:18:54Z"
date_gmt: 2012-02-23 00:18:54 +0000
title: Verificar se utilizador existe
---

Este script tem como fundamento verificar se um utilizador existe ou não no sistema Linux e se existir
além de nos mostrar uma mensagem a dizer que existe ainda vai identificar o UID desse utilizador. \
Caso contrário vai mostrar uma mensagem de erro a dizer que o utilizador não existe.\
Atenção não foram utilizados comandos
bash por isso é tudo perl scripting.

```perl
#!/usr/bin/perl
use warnings;
use strict;
my @finalusers;
my $utilizador;
my $statuscode = 0;
my $uid;
#Analise se foi intruzido um nome ou não
if(@ARGV != 1){
    die "Argumento inválido";
}
chomp($utilizador = $ARGV[0]);
open(FILE, "/etc/passwd") || die($!);
chomp(my @utilizadores = <FILE>);
close(FILE);
foreach my $date (@utilizadores){
    chomp $date;
    my @finalusers = split /:/, $date;
    chomp(@finalusers);
    if($finalusers[0] eq $utilizador){
        $uid = $finalusers[2];
        $statuscode++;
    }
}
if( $statuscode != 1){
    print "O $utilizador NÃO se encontra criado no sisteman";
}else{
    print "o $utilizador JÁ se encontra criado no sistema! O seu UID é $uid !n" ;
}
```
