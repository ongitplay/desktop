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

if [ $# -eq 0 ] || [ "$1" = "-h" ]; then
	cat<<EOF
Usage: ${0##*/} WIN_EXE PARAMS"
Run Wine application while displaying FPS onscreen.
EOF
	exit
fi

if ! command -v osd_cat >/dev/null 2>&1; then
	echo >&2 "osd_cat not found in path."
	exit 1
fi

## The unbuffered option is -u on GNU and OpenBSD, -l on others.
OPT_UNBUF=-l
case "$(uname)" in
Linux|OpenBSD) OPT_UNBUF=-u ;;
esac

WINEDEBUG=fps wine "$@" 2>&1 | tee /dev/stderr | \
	sed $OPT_UNBUF -n '/^trace:fps:/{s/.* \([^ ]*\)fps/\1/;p}' | \
osd_cat -l1 -f "-*-*-*-*-*-*-32-*-*-*-*-*-*-*" -O1 -c "yellow"
