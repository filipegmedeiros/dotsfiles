#!/bin/bash
#!/bin/sh

############################################
# Cores
############################################

# FOREGROUND \033[38;2;<r>;<g>;<b>m 
# BACKGROUND \033[48;2;<r>;<g>;<b>m 


FGVERMELHO="\033[38;2;231;60;80m"
FGLARANJA="\033[38;2;255;215;95m"
FGAZUL_CLARO="\033[38;2;95;215;255m"
FGAZUL_VISUDO="\033[38;2;175;215;255m"
FGAMARELO_VERDE="\033[38;2;215;255;135m"
FGCINZA="\033[38;2;179;179;179m"
FGPRETO="\033[38;2;25;25;25m"
FGROXO="\033[38;2;135;95;175m"
FGBRANCO="\e[1;37m"
FGBRANCO2="\033[38;2;255;255;255m"
BGROXO="\033[48;2;135;95;175m"
BGAZUL_CLARO="\033[48;2;95;215;255m"
BGVERMELHO="\033[48;2;231;60;80m"
BGLARANJA="\033[48;2;215;255;135m"

FIM_DA_COR="\033[0m"

############################################
# DEPENDENCIA INICIAIS DO SCRIPT 
############################################

DEP1="dep1.sh"
DEP2="dep2.sh"
if [ -f "$DEP1" ] && [ -f "$DEP2" ]
then
	. ./dep1.sh

else
    echo -e "\n"
    echo -e "${FGROXO}---------------------------------------------------------------------------------------------${FIM_DA_COR}"
    echo -e "${BGROXO}${FGBRANCO2}Não foram encontrado dois arquivos necessários para o Funcionamento do Script, Deseja Baixar?${FIM_DA_COR}" 
    echo -e "${FGROXO}---------------------------------------------------------------------------------------------${FIM_DA_COR}"
    read -p " 　　 　 　 　　 　 　 　 　(Para Confirmar: Y ou S) " confirmacao1
    if [[ -z $confirmacao1 ]] || [[ $confirmacao1 != [sSyY]* ]]; then
	    exit 0
    fi
	curl -s https://raw.githubusercontent.com/filipegmedeiros/dotsfiles/master/instalador/dep1.sh 1> dep1.sh
	curl -s https://raw.githubusercontent.com/filipegmedeiros/dotsfiles/master/instalador/dep2.sh 1> dep2.sh
    echo -e "\n"
    echo -e "${BGVERMELHO}${FGBRANCO}► Download Completo, Reinicie o Script ! ${FIM_DA_COR}" 
    echo -e "\n"
    exit 0
fi

############################################
# Programas
############################################

OS_PROGRAMAS=( qtcreator i3-gaps vte3 \
texinfo geany
)

FILES_CONFS=(fonfon)


############################################
# Declarações Iniciais
############################################

echo -e "\n"
echo -e "${BGLARANJA} ${FGPRETO}  ► ► ► SCRIPT DE INSTALAÇÃO DOS DOTFILES ◄ ◄ ◄ ${FIM_DA_COR} "
echo -e " ${FGAZUL_CLARO} https://github.com/filipegmedeiros/dotsfiles ${FIM_DA_COR} "
echo -e "\n"


echo -e "${FGVERMELHO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGVERMELHO}${FGBRANCO} 　　　　　　► ► ► ATENÇÃO: ◄ ◄ ◄ 　　　　　　 ${FIM_DA_COR}" 
echo -e "${FGVERMELHO}----------------------------------------------- ${FIM_DA_COR}"

echo -e "\n"
echo -e "${FGVERMELHO}  1) ${FIM_DA_COR} ${FGCINZA} Inicialmente, Só funciona com ${FGAZUL_CLARO} Arch Linux ${FIM_DA_COR}"
echo -e "${FGVERMELHO}  2) ${FIM_DA_COR} ${FGCINZA} É necessário rodar o Script dentro da pasta ${FGAZUL_CLARO} ${HOME} ${FIM_DA_COR}"
echo -e "${FGVERMELHO}  3) ${FIM_DA_COR} ${FGCINZA} Irá ${FGVERMELHO} apagar e sobreescrever ${FGCINZA} várias pastas !!! ${FIM_DA_COR}"
echo -e "${FGVERMELHO}  4) ${FIM_DA_COR} ${FGCINZA} É${FGAZUL_CLARO} NECESSÁRIO ${FGCINZA}Alterar a config da Polybar para o seu Monitor!${FIM_DA_COR}"
echo -e "\n"

sleep 1


############################################
# Pergunta se Quer Instalar
############################################

echo -e "${FGAZUL_CLARO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGAZUL_CLARO}${FGPRETO} 　 　　Você Realmente Deseja Instalar? 　　　 ${FIM_DA_COR}" 
echo -e "${FGAZUL_CLARO}-----------------------------------------------${FIM_DA_COR}"
read -p " 　 　 　(Para Confirmar: Y ou S) " confirmacao


if [[ -z $confirmacao ]] || [[ $confirmacao != [sSyY]* ]]; then
	exit 0
fi

echo -e "\n"
sleep 1  


############################################
# Atualizando o Sistema Inicialmente
############################################

echo -e "${FGLARANJA}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGLARANJA}${FGPRETO}　　 　　 　Atualizando o Sistema　　 　　 　　${FIM_DA_COR}" 
echo -e "${FGLARANJA}-----------------------------------------------${FIM_DA_COR}"

run_ok "echo -e" " ► ► ► Atualizando... " 

echo -e "\n"

############################################
# Instalando os Programas que Faltam
############################################

echo -e "${FGAZUL_CLARO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGAZUL_CLARO}${FGPRETO}　Instalando os Programas e suas Dependências　${FIM_DA_COR}" 
echo -e "${FGAZUL_CLARO}-----------------------------------------------${FIM_DA_COR}"

for PROGRAMAS in ${OS_PROGRAMAS[@]}; do
	pacman -Q $PROGRAMAS 1> /dev/null 2> /dev/null

	if [ $? = 1 ]; then
        run_ok "echo -e ${PROGRAMAS} " " -► Instalando o Programa: ${PROGRAMAS} ";
		app_ok=0
	fi
done

echo -e "\n"
sleep 2  

############################################
# Deletando as Pastas
############################################


echo -e "${FGVERMELHO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGVERMELHO}${FGPRETO}　 　Deletando as Pastas das configs  　 　　　${FIM_DA_COR}" 
echo -e "${FGVERMELHO}-----------------------------------------------${FIM_DA_COR}"

for CONFIGS in ${FILES_CONFS[@]}; do
    run_ok "rm -rf $HOME/.config/${CONFIGS}" " -► Deletando a configuração da ${CONFIGS}";
done

echo -e "\n"

############################################
# Movendo as Configs
############################################

echo -e "${FGAZUL_CLARO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGAZUL_CLARO}${FGPRETO}　 　  　　Instalando as Configs    　 　　　　${FIM_DA_COR}" 
echo -e "${FGAZUL_CLARO}-----------------------------------------------${FIM_DA_COR}"

for PROGRAMAS in ${OS_PROGRAMAS[@]}; do
    run_ok "echo ${PROGRAMAS} " " -► Criando Symlink de ${PROGRAMAS} para $HOME/.config/${PROGRAMAS}";

done

echo -e "\n"

############################################
# Atualizando as Fontes
############################################

echo -e "${FGAZUL_CLARO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGAZUL_CLARO}${FGPRETO}　 　  　　Instalando as Configs    　 　　　　${FIM_DA_COR}" 
echo -e "${FGAZUL_CLARO}-----------------------------------------------${FIM_DA_COR}"

run_ok "echo -e 'oi'" "  ► ► ► Atualizando as Fontes";

echo -e "\n"

############################################
# Reiniciando o I3-GAPS
############################################

echo -e "\n\n"
echo -e "${FGROXO}-----------------------------------------------${FIM_DA_COR}"
echo -e "${BGROXO}${FGPRETO}　　 　　 　Reiniciando o i3-gaps　 　　　 　　${FIM_DA_COR}" 
echo -e "${FGROXO}-----------------------------------------------${FIM_DA_COR}"
echo -e "\n"

############################################
# Deletando a Pasta do Dotfiles
############################################
    run_ok "echo A " " -► Criando Symlink de A";


echo -e "\n\n"
#Fim
exit
