---
categories:
- scripts
- perl
- adb
date: "2012-01-04T22:39:39Z"
date_gmt: 2012-01-04 22:39:39 +0000
title: Script Adb and Linux
---

Cada vez mais existem pessoas a utilizar Android e Linux e muitas deles tem dificuldades em por o adb a
funcionar com Linux por causa de se ter que configurar regras ou então saber os valores para as coisas.

Decidi então criar um pequeno script em perl para agilizar este processo e tornando a vida do pessoal mais fácil quando
trabalham com isto.

```perl
#Developer by : Rubem Mota
#Dont use to earn money and keep all copyrights reserved to me
#Twitter: @rubemlrm
use strict;
chomp(my @rules = (
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="0502", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="413c", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="0489", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="091E", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="0bb4", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="12d1", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="0482", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="1004", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="22b8", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="0955", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="10A9", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="04e8", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="04dd", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="0fce", MODE="0666"',
    'SUBSYSTEM=="usb", SYSFS{idVendor}=="19D2", MODE="0666"'
));
my @brands = qw (
    Acer
    Dell
    Foxconn
    Garmin-Asus
    HTC
    Huawei
    Kyocera
    LG
    Motorola
    Nvidia
    Pantech
    Samsung
    Sharp
    SonyEricsson
    ZTE
);
my $i = 1;
my $uid = `id -u`;
#Checking if user is root or not
if ( $uid != 0 ){
    print "you need root priveleges to run this scriptn";
}else{
    #running the import part of script
    print "------------------------------:n";
    print ":Welcome to Adb rule creator :n";
    #it will create the list to choose brand
    foreach(@brands){
        print ".".$i++ ."=>". $_ ."n";
    }
    print ":Choose driver brand:n";
    chomp(my $opt = <STDIN>);
    #condition to check input
    if ($opt =~ /D/){
        print "Invalid Option choose againn";
        print ":Choose driver brand:n";
        chomp(my $opt = <STDIN>);
    }
    print "It will be created adb rules to " . $brands[$opt - 1] ."n";
    #filehandle to create rule
    open(FILE , ">>/etc/udev/rules.d/51-android.rules");
    print FILE $rules[$opt - 1];
    system("chmod a+r /etc/udev/rules.d/51-android.rules");
    close(FILE);
    print "Restarting services";
    system ("/etc/init.d/udev restart");
    print "All done";
}
```

Depois de fazerem download do script façam:

```bash
chmod +x <nome de ficheiro>
```
