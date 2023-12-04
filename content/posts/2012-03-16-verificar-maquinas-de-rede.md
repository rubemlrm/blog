---
categories:
- perl
- script
date: "2012-03-16T00:00:00Z"
title: Verificar máquinas de rede
---

Boas noites, depois de algum tempo sem postar aqui nada devido a escola .Deixo aqui um pequeno script em perl que permite
testar as máquinas de rede para ver quais é que estão ativas na nossa rede informática.
Para tal é preciso ter um ficheiro com os ips que queremos testar e o script trata do resto sozinho.

```perl
#!/usr/bin/perl
use warnings;
use strict;
use Net::Ping;
use autodie;
my $host;
my $my_addr="<ip>";
my $ping;
my @reportlist;
chomp(my $date = `date +%a%d%m%y%k%M`);

open(FILE, "<ficheiro com ips>");
chomp (my @ips = <FILE>);
close(FILE);
foreach $host (@ips){
    $ping = Net::Ping->new();
    if ($ping->ping($host)){
        #print "$host -> está activo.n";
        push(@reportlist,"$host -> está activo.");
    }else{
        #print "$host -> está offlinen";
        push(@reportlist,"$host -> está offline.");
    }
    $ping ->close();
}
#Reporte da lista
foreach (@reportlist)
{
    print "$_n";
}

#para um ficheiro a ser enviado por mail</p>
open(FILE , ">../logs/'$date_machine_networking_report.txt'");
foreach (@reportlist){
    print FILE "$_n";
}
close(FILE);
```
