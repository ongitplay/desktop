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

  mkdir -p "$HOME"/.cemu/wine
  ln -s /usr/share/cemu/Cemu.exe "$HOME"/.cemu/Cemu.exe
  ln -s /usr/share/cemu/dbghelp.dll "$HOME"/.cemu/dbghelp.dll
  ln -s /usr/share/cemu/keystone.dll "$HOME"/.cemu/keystone.dll
  ln -s /usr/share/cemu/gameProfiles "$HOME"/.cemu/gameProfiles
  ln -s /usr/share/cemu/graphicPacks "$HOME"/.cemu/graphicPacks
  cp -r /usr/share/cemu/hfiomlc01 "$HOME"/.cemu/
  cp -r /usr/share/cemu/mlc01 "$HOME"/.cemu/
  cp -r /usr/share/cemu/shaderCache "$HOME"/.cemu/
