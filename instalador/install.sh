#!/bin/bash
#!/bin/sh
. ./barra_de_progresso.sh

log=. ./saida.log


A_INSTALAR=(telegram-desktop evince)

# FOREGROUND \033[38;2;<r>;<g>;<b>m 
# BACKGROUND \033[48;2;<r>;<g>;<b>m 

##COLORS

FGVERMELHO="\033[38;2;231;60;80m"
FGLARANJA="\033[38;2;255;215;95m"
FGAZUL_CLARO="\033[38;2;95;215;255m"
FGAZUL_VISUDO="\033[38;2;175;215;255m"
FGAMARELO_VERDE="\033[38;2;215;255;135m"
FGROXO="\033[38;2;135;95;175m"
FGCINZA="\033[38;2;179;179;179m"
FGPRETO="\033[38;2;25;25;25m"

BGLARANJA="\033[48;2;215;255;135m"

FIM_DA_COR="\033[0m"



echo -e "\n"
echo -e "${BGLARANJA} ${FGPRETO}  ► ► ► SCRIPT DE INSTALAÇÃO DOS DOTFILES ◄ ◄ ◄ ${FIM_DA_COR} "
echo -e " ${FGAZUL_CLARO} https://github.com/filipegmedeiros/dotsfiles ${FIM_DA_COR} "
echo -e "\n"

echo -e "${FGVERMELHO} ► ► ► ATENÇÃO: ◄ ◄ ◄ ${FIM_DA_COR}" 
echo -e "\n"
echo -e "${FGVERMELHO}  1) ${FIM_DA_COR} ${FGCINZA} Inicialmente, Só funciona com ${FGAZUL_CLARO} Arch Linux ${FIM_DA_COR}"
echo -e "${FGVERMELHO}  2) ${FIM_DA_COR} ${FGCINZA} É necessário rodar o Script dentro da pasta ${FGAZUL_CLARO} ${HOME} ${FIM_DA_COR}"
echo -e "\n"

# Pergunta se quer instalar: 

echo -e "${FGAZUL_CLARO}----------------------------------------- ${FIM_DA_COR} "
read -p "DESEJA INSTALAR? (Y,y,S,s) " confirma
#read -p "PODER FAZER AS VARIAVEIS COLORIZAR AQUI";
echo -e "${FGAZUL_CLARO}----------------------------------------- ${FIM_DA_COR} "

if [[ -z $confirma ]] || [[ $confirma != [sSyY]* ]]; then
	exit 0
fi

echo -e "\n"
sleep 2  


# Atualizando o Sistema Inicialmente

echo -e "${FGAZUL_CLARO}----------------------------------------- ${FIM_DA_COR} "
run_ok "sudo pacman -Syuu --noconfirm" " ► ► ► Atualizando o Sistema Inicialmente " 
echo -e "${FGAZUL_CLARO}----------------------------------------- ${FIM_DA_COR} "

echo -e "\n"

# Atualizando a lista de Programas 

for PROGRAMAS in ${A_INSTALAR[@]}; do

    run_ok "echo ${PROGRAMAS} " " -► Instalando o Programa: ${PROGRAMAS} ";
    #run_ok "..." " PODER FAZER AS VARIAVEIS COLORIZAR AQUI";

    echo -e "\n"
    sleep 1;

done

#Fim
exit
