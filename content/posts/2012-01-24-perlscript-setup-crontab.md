---
categories:
    - perl
    - tutorial
date: "2012-01-24T23:03:15Z"
date_gmt: 2012-01-24 23:03:15 +0000
title: Script Gerir Cron's com o Perl
hero: images/posts/code.jpg
---
Bem pessoal aqui fica um pequeno script para vos ajudar a a automatizar as vossas tarefas quando tiverem que mexer em crontabs.
Este script surgiu numa aula de Sistemas Operativos em que tínhamos um exercício em que tínhamos que adicionar novos crons
com o script. \
Mas para não limitar o script acrescentei mais umas funções.Tais como tornar a criação de um novo cron
mais interactiva , apagar crons , gravar o cron na localização correcta consoante o utilizador que está a executar o script.

```perl
#!/usr/bin/perl
#Developed by : Rubem Mota
#Dont use to earn money and keep all copyrights reserved to me
#Twitter: @rubemlrm
package SysAdmin;
use warnings;
use strict;
use autodie;
#declaração de variáveis
my $min ;
my $horas ;
my $dia;
my $mes;
my $diasemana;
my $uid = `id -u`;
my $opt;
my $comando;
my $user;
my $val;
#funções a ser chamadas
&Main();
#funções
sub Main(){
    print "Bem vindo a área de gestõa crontabn";
    print "Se deseja eliminar um cron pressione tecla Dn";
    print "se deseja adicionar um cron pressiona a tecla An";
    chomp($opt = );
    if ( $opt eq "D"){
        &Eliminar();
    }elsif($opt eq "A"){
        &Adicionar();
    }else{
        print "Opção inválida";
    }
}
sub Eliminar{
    if ($uid != 0){
        &User();
        system("nano /var/spool/cron/crontabs/$user");
        system("sleep 2");
        print "Processo Concluido.A retornar para o menu inicialn";
        system ("sleep 2");
        &Main();
    }else{
        system("nano /etc/crontab");
        system("sleep 2");
        print "Processo Concluido.A retornar para o menu inicialn";
        system ("sleep 2");
        &Main();
    }
}
sub Adicionar{
    &Minutos();
    &Horas();
    &Dia();
    &Mes();
    &DiaSemana();
    &Comando();
    &Final();
}
sub Minutos{
    print "Introduza os parametros de agendamenton";
    print "Introduza os minutosn";
    print ("Se desejar que o script seja executado em todos os minutos - pressione an");
    print ("Se desejar especificar o minuto - pressione c n");
    chomp($opt = );
    if ($opt eq "a"){
        $min = "*";
    }elsif($opt eq "c"){
        &Validar();
        $min=$val;
    }else{
        print "opção inválidan";
        system("clear");
        &Minutos();
    }
}
sub Horas{
    print "Introduza as horasn";
    print ("Se desejar que o script seja executado em todos as horas - pressione an");
    print("Se desejar especificar as horas - pressione c n") ;
    chomp($opt = );
    if ($opt eq "a"){
        $horas = "*";
    }elsif($opt eq "c"){
        &Validar();
        $horas = $val;
    }else{
        system("clear");
        print "opção inválidan";
        &Horas;
    }
}
sub Dia{
    print "Introduza os dian";
    print ("Se desejar que o script seja executado em todos os dias - pressione an");
    print ("Se desejar especificar o dia - pressione c n") ;
    chomp($opt = );
    if ($opt eq "a"){
        $dia = "*";
    }elsif($opt eq "c"){
        &Validar();
        $dia = $val;
    }else{
        print "opção inválidan";
        system("clear");
        &Dia();
    }
}
sub Mes{
    print "mesn";
    print ("Se desejar que o script seja executado todos os meses - pressione an");
    print (" Se desejar especificar o mes - pressione c n") ;
    chomp($opt = );
    if ($opt eq "a"){
        $mes = "*";
    }elsif($opt eq "c"){
        &Validar();
        $mes= $val;
    }else{
        print "opção inválidan";
        system("clear");
        &Mes();
    }
}
sub DiaSemana{
    print "Dia da Semann";
    print("Se desejar que o script seja executado todos os diass - pressione an");
    print("Se desejar especificar o dia - pressione c n") ;
    chomp($opt = );
    if ($opt eq "a"){
        $diasemana="*";
    }elsif($opt eq "c"){
        &Validar();
        $diasemana = $val;
    }else{
        print "opção inválidan";
        system("clear");
        &DiaSemana();
    }
}
sub Comando(){
    print ("Introduza o comando ou script a executarn");
    chomp(my $script = );
    $comando = $script;
}
sub User(){
    chomp($user = `whoami`);
}
sub ChUser(){
    print "Escolha o utilizador que vai executar o script/comandon";
    chomp($user = );
}
#funcoes de validação
sub Validar(){
    print "Introduza o valorn";
    chomp($val = );
    if ($val =~ /d,?/?-?/){
        print "Valor guardadon";
        system("clear");
    }else{
        &ErrorVal();
    }
}
sub ErrorVal(){
    print "Valor inválidon";
    print "Deseja sair ? se sim pressione Sn";
    print "Senão, se quiser voltar a repetir este passo pressione R";
    chomp($opt= );
    if($opt eq "S"){
        exit;
    }elsif($opt eq "R"){
        system("clear");
        &Validar();
    }else{
        print "Opção erradan";
        &ErrorVal();
    }
}
#função relativa a verificaçao do user id e sua respectiva config-
sub Final(){
    if ($uid != 0){
        &User();
        open(FILE, ">>/var/spool/cron/crontabs/$user");
        print FILE "$min $horas $mes $dia $diasemana $comandon";
        close(FILE);
    }else{
        &ChUser();
        open(FILE, ">>/etc/crontab");
        print FILE "$min $horas $mes $dia $diasemana $user $comandon";
        close(FILE);
    }
}

```
