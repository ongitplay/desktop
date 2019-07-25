# Deixe o seu computador mais rápido

> Deixe o seu computador, muito mais rápido. Baixando totalmente a prioridade de uso da memória swap

##### Edite o arquivo /etc/sysctl.conf

    sudo nano /etc/sysctl.conf

> E inclua

```
vm.swappiness=0
net.ipv4.tcp_syncookies=1
net.ipv4.ip_forward=1
```
##### Ou simplesmente faça o procedimento automático e mais simples, abaixo:
```
cd /etc
sudo wget https://raw.githubusercontent.com/felipefacundes/desktop/master/sysctl/sysctl.conf
```
