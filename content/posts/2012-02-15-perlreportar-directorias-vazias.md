---
categories:
    - perl
    - script
date: "2012-02-15T18:22:09Z"
date_gmt: 2012-02-15 18:22:09 +0000
title: Script - Reportar Directorias Vazias
hero: images/posts/code.jpg
---
Aqui fica um pequeno script para encontrar pastas vazias dentro de uma directoria.Este script utiliza o módulo
**File::Find::Rule** para criar a listagem de todas as
directorias e sub-directorias, utilizando uma directoria de partida. \
Este script pode servir de base para a criação de um script para gerir directorias e apagar directorias vazias caso seja
necessário.Para tal basta fazer pequenas alterações .

Para poderem executar este script teram que ter o módulo File::Find::Files instalado , para tal basta executarem o
seguinte comando na linha de comandos:

```perl
sudo cpan
install " File::Find::Rule"
```

Tendo o módulo instalado já poderam executar este script.

```perl
#!/usr/bin/perl
use strict;
use warnings;
use File::Find::Rule;
my @sub_dirs;

&Main();

sub Main(){
    #leitura da directória por argumento
    chomp(my $path = $ARGV[0]);
    #Listagem de todos os directórios
    my $regra_pesquisa = File::Find::Rule->new;
    $regra_pesquisa->directory;
    @sub_dirs = $regra_pesquisa->in($path);
    &AnalisarDirs();
}
sub AnalisarDirs(){
    my @emptydirs;
    my $file2;
    foreach $file2 (@sub_dirs){
        opendir(FILE, "$file2") or die($!);
        readdir FILE;
        readdir FILE;
        if(!(readdir FILE)){
            print "$file2 : directório vazion";
            push(@emptydirs, $file2);
        }
        closedir(FILE) or die "$!";
    }
    ########Totalizaçao dos directorios###########
    my $total = @sub_dirs;
    my $vazio = @emptydirs;
    print "Total directórios" . $total .", directórios vazios " . $vazio . "n";
}
```
