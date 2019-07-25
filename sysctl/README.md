# Deixe o seu computador mais rápido(talvez)

> Deixe o seu computador, muito mais rápido. Baixando totalmente a prioridade de uso da memória swap

##### Não toque arquivo /etc/sysctl.conf

Editar o arquivo `sysctl.conf` é coisa do passado. Crie suas configurações customizadas em `/etc/sysctl.d/*.conf`

Tá vendo estes itens abaixo? Pois é, não inclua eles em um arquivo customizado.

```
vm.swappiness=0
net.ipv4.tcp_syncookies=1
net.ipv4.ip_forward=1
```

Porque?
- `vm.swappiness=0`: Altamente subjetivo e depende do HD onde a swap está armazenada, e da quantidade de RAM no seu computador. Se você realmente tem um computador com HD lento e com bastante RAM, ative isto. Senão, deixa quieto e configurado com o padrão que a sua distribuição fornece.
- `net.ipv4.tcp_syncookies=1`: Grande parte das distribuições de hoje em dia já tem este parametro configurado por padrão
- `net.ipv4.ip_forward=1`: Não existe relação direta entre performance e a habilidade de encaminhar pacotes em uma caixa Linux. Totalmente desnecessário

Também evite sobrescrever seu `/etc/sysctl.conf` com outros da internet ou você perderá documentação importante dentro deste arquivo, que te ensina a não fazer besteira nele.
