#!/bin/bash

# PlayOnGit - Inicie seus Jogos direto do menu iniciar, sem precisar de
# PlayOnLinux, Proton ou Lutris, e com um desempenho muito melhor e superior.
# Licença: GPLv3
# Autor: Felipe Facundes
# Mantedor: On Git Play Team
# Faça o seu pedido de tutorial e GamePlay no nosso:
# 既 Grupo 調 Gamer do 切 Telegram 切: https://t.me/winehq_linux
# Este script irá usar o wine personalizado. Mas, você poderá usar um wine na
# versão e local de sua escolha

dialog --msgbox "A instalação poderá demorar dependendo do JOGO. Acima de tudo tenha: PACIÊNCIA. AGUARDE! Você será notificado, quando a instalação concluir." 10 30
clear -T $TERM

export WINE=/home/maria/.jogos/wines/2.14/bin/wine64
#export PATH=/home/maria/.jogos/wines/2.14/bin/
export WINEVERPATH=/home/maria/.jogos/wines/2.14/bin/wine64
export WINESERVER=/home/maria/.jogos/wines/2.14/bin/wineserver
export WINELOADER=/home/maria/.jogos/wines/2.14/bin/wine64
#export WINEDLLPATH=
export LD_LIBRARY32_PATH=/home/maria/.jogos/wines/2.14/lib
export LD_LIBRARY64_PATH=/home/maria/.jogos/wines/2.14/lib64

cd "/home/maria/.jogos/wineprefixes/JogosAventura/drive_c/Games/IGG-LEGO.Worlds.Update.16"
WINEPREFIX=~/.jogos/wineprefixes/JogosAventura/ /home/maria/.jogos/wines/2.14/bin/wine64 LEGO_Worlds.exe
