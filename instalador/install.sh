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
	echo -e "\n"
    	echo -e "${BGVERMELHO}${FGBRANCO}► Adeus, talvez outro dia ! ${FIM_DA_COR}" 
	echo -e "\n"
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


OS_PROGRAMAS=( \
adobe-source-code-pro-fonts alsa-utils arc-gtk-theme \
compton \
dunst \
git \
numlockx nitrogen \
powerline powerline-fonts \
thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman tilix ttf-anonymous-pro \
rofi scrot \
xorg-server xorg-server-common  xorg-server-xephyr xorg-xbacklight xf86-input-evdev \
xorg-xev xorg-xinit xorg-xinput \
zsh zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting zsh-theme-powerlevel9k\
)

OS_PROGRAMAS_AUR=( xaxa light oh-my-zsh-git polybar )



OS_PROGRAMAS_EXTRAS=( \
arandr arduino \
dosfstools dialog \
engrampa \
firefox-i18n-pt-br \
gcolor2 gimp gufw gvfs-gphoto2 gvfs-mtp \
htop \
imagemagick i2c-tools \
lxappearance-gtk3 \
mousepad mate-calc \
ntfs-3g neofetch networkmanager network-manager-applet \
papirus-icon-theme p7zip paprefs pavucontrol pulseaudio pulseaudio-alsa pulseaudio-equalizer \
qpdfview \
telegram-desktop \
unrar \
vlc \
w3m wget wireless_tools wpa_supplicant \
xdg-user-dirs xdotool xorg-xkill net-tools )

PASTAS_DE_CONFIGURACOES=(dunst fontes i3 polybar rofi tilix vim zsh)

ARQUIVOS_DE_CONFIGURACOES=(.vimrc .zshrc)

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
	echo -e "\n"
        echo -e "${BGVERMELHO}${FGBRANCO}► Adeus, talvez outro dia ! ${FIM_DA_COR}"
	echo -e "\n"
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
# Instalando o Yay
############################################

	if ! pacman -Qqm yay &> /dev/null; then 
	    echo -e "${FGVERMELHO}----------------------------------------------- ${FIM_DA_COR}"
	    echo -e "${BGVERMELHO}${FGPRETO}　　　    　Instalando o helper Yay　        　${FIM_DA_COR}" 
	    echo -e "${FGVERMELHO}-----------------------------------------------${FIM_DA_COR}"
        #git clone https://aur.archlinux.org/yay.git && cd yay
	    run_ok "echo" " -► Instalando o Helper: Yay ";
	    #cd ..
        echo -e "\n"
        sleep 1
	fi

############################################
# Instalando os Programas EXTRAS
############################################

echo -e "${FGROXO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGROXO}${FGPRETO} 　 　　Você Deseja Instalar os Extras?      　${FIM_DA_COR}" 
echo -e "${FGROXO}-----------------------------------------------${FIM_DA_COR}"

for PROGRAMAS_EXTRAS in ${OS_PROGRAMAS_EXTRAS[@]}; do
	pacman -Q $PROGRAMAS_EXTRAS 1> /dev/null 2> /dev/null

	if [ $? = 1 ]; then
        echo -e "${FGVERMELHO} -► ${FIM_DA_COR} ${FGCINZA} ${PROGRAMAS_EXTRAS}"
	fi
done

echo -e "\n"
echo -e "${FGROXO}-----------------------------------------------${FIM_DA_COR}"
read -p " 　 　 　(Para Confirmar: Y ou S) " confirmacao2
echo -e "${FGROXO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "\n"

if [[ -z $confirmacao2 ]] || [[ $confirmacao2 == [sSyY]* ]]; then
	echo -e "${FGROXO}----------------------------------------------- ${FIM_DA_COR}"
	echo -e "${BGROXO}${FGPRETO}　 　Instalando os Programas Extras　        　${FIM_DA_COR}" 
	echo -e "${FGROXO}-----------------------------------------------${FIM_DA_COR}"

	for PROGRAMAS_EXTRAS in ${OS_PROGRAMAS_EXTRAS[@]}; do
        pacman -Q $PROGRAMAS_EXTRAS 1> /dev/null 2> /dev/null
	    if [ $? = 1 ]; then
		    run_ok "echo -e ${PROGRAMAS_EXTRAS} " " -► Instalando o Programa: ${PROGRAMAS_EXTRAS}";
	    fi
	done
fi

echo -e "\n"
sleep 1

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
	fi
done

for PROGRAMAS_AUR in ${OS_PROGRAMAS_AUR[@]}; do
	pacman -Qm $PROGRAMAS_AUR 1> /dev/null 2> /dev/null

	if [ $? = 1 ]; then
        run_ok "echo -e ${PROGRAMAS_AUR} " " -► Instalando o Programa do aur: ${PROGRAMAS_AUR} ";
	fi
done


echo -e "\n"
sleep 1

############################################
# Deletando as Pastas
############################################



echo -e "${FGVERMELHO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGVERMELHO}${FGPRETO}　 　Deletando as Pastas das configs  　 　　　${FIM_DA_COR}" 
echo -e "${FGVERMELHO}-----------------------------------------------${FIM_DA_COR}"

for PASTAS in ${PASTAS_DE_CONFIGURACOES[@]}; do
    run_ok "echo -e $HOME/.config/${PASTAS}" " -► Deletando a pasta ${PASTAS} de $HOME/.config/${PASTAS}";
done

echo -e "\n"

echo -e "${FGVERMELHO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGVERMELHO}${FGPRETO}　　 　 　Deletando as configs rc  　 　 　　　${FIM_DA_COR}" 
echo -e "${FGVERMELHO}-----------------------------------------------${FIM_DA_COR}"

for ARQUIVOS in ${ARQUIVOS_DE_CONFIGURACOES[@]}; do
    run_ok "echo -e  $HOME/.config/${ARQUIVOS}" " -► Deletando o arquivo ${ARQUIVOS} de $HOME/${ARQUIVOS}";
done

echo -e "\n"



############################################
# Movendo as Configs
############################################

echo -e "${FGAZUL_CLARO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGAZUL_CLARO}${FGPRETO}　 　  　　Instalando as Configs    　 　　　　${FIM_DA_COR}" 
echo -e "${FGAZUL_CLARO}-----------------------------------------------${FIM_DA_COR}"


for PASTAS in ${PASTAS_DE_CONFIGURACOES[@]}; do
    run_ok "echo -e  ../${PASTAS}/${PASTAS} " " -► Movendo a Pasta ${PASTAS} para $HOME/.config/${PASTAS}";

done

echo -e "\n"

for ARQUIVOS in ${ARQUIVOS_DE_CONFIGURACOES[@]}; do
    run_ok "echo -e ../${PASTAS}/${ARQUIVOS}" " -► Movendo o arquivo ${ARQUIVOS} para $HOME/${ARQUIVOS}";
done

echo -e "\n"

############################################
# Atualizando as Fontes
############################################

echo -e "${FGAZUL_CLARO}----------------------------------------------- ${FIM_DA_COR}"
echo -e "${BGAZUL_CLARO}${FGPRETO}　 　  　　Atualizando as Fontes    　 　　　　${FIM_DA_COR}" 
echo -e "${FGAZUL_CLARO}-----------------------------------------------${FIM_DA_COR}"

run_ok "echo -e" "  ► ► ► Atualizando as Fontes";

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


echo -e "\n\n"
#Fim
exit
