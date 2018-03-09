
######                       Dotfiles do @usuariolinux                   
######                       Copie, altere, arrume e use


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



## Índice

* [polybar](https://github.com/filipegmedeiros/dotsfiles/tree/master/polybar) 
* [rofi](https://github.com/filipegmedeiros/dotsfiles/tree/master/rofi) 
* [vim](https://github.com/filipegmedeiros/dotsfiles/tree/master/vim) 
* [zsh](https://github.com/filipegmedeiros/dotsfiles/tree/master/zsh) 
* [i3](https://github.com/filipegmedeiros/dotsfiles/tree/master/i3) 
* [fontes](https://github.com/filipegmedeiros/dotsfiles/tree/master/fontes) 

## Como usar meus dotfiles? Segue um exemplo

Usando o git:
  ~~~ sh
    git clone https://github.com/filipegmedeiros/dotsfiles.git # clone o repositório
    cd dotfiles/ # entre no diretório
    ln -s dotfiles/.config/polybar ~/.config/polybar # linke o repositorio
  ~~~
  Como instalar as fontes:
  ~~~ sh
    git clone https://github.com/filipegmedeiros/dotsfiles.git # clone o repositório
    cd dotfiles/fontes # entre no diretório
    mv *.ttf  ${HOME}/.local/share/fonts/ # Move as fontes para a pasta /share/fonts
    fc-cache -v -f # Atualize suas fontes
  ~~~ 
  
  
  
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## ScreenShots

![Screenshot #1][screenshot1]  
![screenshot1]: https://raw.githubusercontent.com/filipegmedeiros/dotsfiles/master/screenshot.png "Screenshot #1"
