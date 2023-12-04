---
categories:
  - linux
  - cronjob
date: '2011-09-14T19:57:11Z'
title: Cron e crontab o que são ? E para que servem?

---

Certamente muitos de vós já se depararam com estes 2 termos e questionaram-se sobre o que seriam e que função desempenhavam.
Ambos são processos que são exclusivos de sistemas UNIX ou seja linux e openbsd entre outros.

O crontab serve de arquivo para as tarefas que queremos que sejam automatizadas como por exemplo:

* fazer backups
* apagar ficheiros
* corrigir erros do sistema
* actualizar o sistema
* entre outras coisas.

Enquanto que o Cron vai utilizar esse arquivo e vai verificar de x em x tempo se a tarefa já foi executada ou ainda está
a ser executada e verifica também a quanto tempo foi executada.
Caso ainda não tenha sido executada o cron irá executar essa tarefa de forma autónoma e irá ter o nome de cronjob.
De referir que é tudo executado na shell do sistema (terminal).

Dito assim pode parecer muito confuso mas tentarei elucidar-vos melhor sobre isto com um caso concreto.
Imaginem que querem que um script seja executado de meia em meia hora, script esse que irá fazer backup de uma pasta.
Para tal tem-se que "dizer" ao cron que de X em X tempo o script em questão tem que ser executado e o cron
pega nessa informação e guarda-a num ficheiro crontab e a partir desse momento , o cron irá verificar de x em x tempo
se o script está a ser executado ou não. \
Senão estiver irá executa-lo , caso esteja já a ser executado o
cron não vai fazer nada alem de continuar a "vigiar" essa tarefa para o caso de alguma anomalia a afectar
e então o cron volta a executa-la.

Existem 2 formas de o cron actuar:

* Global;

* Local.

No caso da global é o root do sistema que define na crontab o que tem se verificar e fazer. E aplica-se a todos os utilizadores.

Enquanto que na global o cron apenas irá actuar na conta do utilizador que o criou.

Para configurar um crontab para um utilizador usa-se a seguinte sintaxe:

* -l utilizador -- lista as tarefas agendadas para utilizador
* -e utilizador -- Edita o crontab
* -r utilizador -- apaga o crontab do utilizador
* -c directoria -- especifica um directoria para o Crontab

Para verificar todos os crontabs de um utilizador basta ver esta directoria:
`/var/spool/cron/utilizador`

E para editar os crontabs globais basta editar este ficheiro **“/etc/crontab“** .

Agora que falamos do que é cada coisa vou passar a explicar a sintaxe de um crontab.
A sintaxe dos crontabs é divida em 6 partes:

* **Minuto:** que tem valores entre 0 e 59;
* **Hora :** que tem valores entre 0 e 23;
* **Dia :** 1-31
* **Mês :** 1-12
* **Dia da Semana :** 0-7/Sun-Sat , o 0 e o 7 representam o domingo;
* Comando a ser executado.

Por exemplo se quisermos que um determinado script seja executado todos os dias as 16horas basta fazer isto:

`0 16 * * * /home/dev/backup.py`

Pode-se complementar isto usando os caracteres especiais que permitem definir mais condições no que é para ser feito:

-**Asterisco(\*):** com este carácter indicamos que serão seleccionados todos os valores do campo em que foi usado,
ao seja se usarmos o **no campo horas significa que o cron vai ser executados em todas as horas.**

**-Barra ( / ):** com este carácter indicamos que o cron será executado consoante o que é definido pela sintax: "/..",
por exemplo se especificar isto no campo horas 59/2 significa que o cron vai ser executado duas vezes por cada hora;

**-Virgula( , )**: com este carácter separamos vários itens da lista como por ex : "1,2,3" neste caso estamos a definir
os meses Janeiro , Fevereiro, Março;

**-hífen( - ):** Com este carácter definimos uma range de valores por exemplo: 15-23, neste caso definimos
todas as horas entre as 15horas e as 23horas;

-**Ponto de interrogação(?):**Com este carácter podemos omitir a especificação do dia do mes e do dia da semana.
Atenção que só pode ser utilizado num dos campos;

**-L**: o L tem como função identificar que o cron só executado no ultimo valor do campo especificado,
 no caso dos dias será no valor 7(Domingo);

-**W:** O W só é utilizado no campo "dia da semana" ao seja se indicarmos o valor "w28" o cron só irá ser executado
no dia da semana mais perto do valor do dia do mês. Atenção sabado e domingo não são considerados dias úteis(dias da semana)

**-cardinal(#):** Este carácter só pode ser utilizado no campo dia da semana e tem que ser procedido por um número
que vai indicar o dia da semana em que vai ser executado , se tivermos isto : #4
indica que vai executado na segunda quinta-feira de cada mês.
