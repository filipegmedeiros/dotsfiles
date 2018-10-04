

                         ```  Dotfiles do @usuariolinux   ```                 
                        ``` Copie, altere, arrume e use``` 



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




 ## COMO FUNCIONA O MEU VIM

 
Categoria                          | Atalhos                           | Descrição
---------------------------------  | ---------------------------------  | ---------------------------------
|**Project management**            |                                   |
|                                  | `<Ctrl-s>n`                       | Cria um novo projeto
|                                  | `<Ctrl-s>i`                       | Importa projeto com base de código já existente
|                                  | `<Ctrl-s>o`                       | Abre um projeto
|                                  | `<Ctrl-s>c`                       | Fecha o projeto
|                                  | `<Ctrl-s>s`                       | Salva o projeto
|                                  | `<Ctrl-s>d`                       | Deleta o projeto
|**Buffer management**              |                                   |
|                                  | `<Ctrl-c>`                        | Close current buffer
|                                  | `<Ctrl-c-a>`                      | Close all buffers
|                                  | `<Ctrl-Alt-c>`                    | Close all buffers but the current one
|                                  | `<Ctrl-s>`                        | Save current buffer
|                                  | `<Ctrl-Tab>`                      | Go to next buffer
|                                  | `<Ctrl-Shift-Tab>`                | Go to previous buffer
|                                  | `<Ctrl-Down>`                     | Scroll buffer by one line (down)
|                                  | `<Ctrl-Up>`                       | Scroll buffer by one line (up)
|**Buffer modes**                   |                                   |
|                                  | `jk`                              | Entra em `normal` mode
|**Buffer editing**                 |                                   |
|                                  | `<Ctrl-a>`                        | Select all
|                                  | `<Ctrl-x>`                        | Corta
|                                  | `y`                               | Copia
|                                  | `p`                               | Cola
|                                  | `u`                               | Desfaz
|                                  | `<Ctrl-r>`                        | Refaz
|                                  | `<Shift-s>`                       | Deleta a linha
|                                  | `<*>` or `<Shift-LeftMouse>`      | Realca todas as ocorrências de texto sob o cursor
|                                  | `<Enter>`                         | Limpa ocorrências de texto realçadas
|                                  | `<Ctrl-n>`                        | Start multiple-selection editing with the text under the cursor. Each consecutive press will highlight the next occurrence of selected text. After all occurrences have been marked, do the text editing with usual commands (`c`, `s`, `i`, `a`, etc.).
|                                  | `<Ctrl-p>`                        | When in multiple-selection editing mode, one may press this key combination to remove the current occurrence and go back to the previous one.
|                                  | `<Ctrl-x>`                        | When in multiple-selection editing mode, one may press this key combination to skip the current occurrence and go to the following one.
|**Window management**             |                                   |
|                                  | `<Ctrl-w>c`                       | Fecha a janela atual
|                                  | `<Ctrl-w><Arrow>`                 | Navegue pelas janelas usando as setas `<left>`, `<right>`, `<up>` & `<down>`
|                                  | `<Ctrl-w>s`                       | Cria uma janela na horizontal
|                                  | `<Ctrl-w>v`                       | Cria uma janela na vertical
|                                  | `<Ctrl-w>=`                       | Faz as janelas ficarem do mesmo tamanho
|**Search utilities**              |                                   |
|                                  | `<Ctrl-f>`                        | Open search dialog
|                                  | `<Ctrl-h>`                        | Open search and replace dialog
|                                  | `:grep <input>`                   | Run `grep` with provided `<input>`
|**Source code commenting**        |                                   |
|                                  | `<,cA>`                           | Insert comment at the current line
|                                  | `<,cc>`                           | Comenta a linha/bloco selecionada
|                                  | `<,cs>`                           | Comenta a linha/bloco selecionada (Melhor Forma)
|                                  | `<,cu>`                           | Descomenta  linha/bloco selecionada
|**Source code navigation**        |                                   |
|                                  | `<F3>`                            | Open file under the cursor
|                                  | `<F4>`                            | Switch between header & corresponding implementation file
|                                  | `<Shift-F4>`                      | Switch between header & implementation (in a vertical split window)
|                                  | `<F12>` or `<Ctrl-LeftMouse>`     | Goto definition of token under the cursor
|                                  | `<Shift-F12>`                     | Goto definition of token under the cursor (in a vertical split window)
|                                  | `<Ctrl-\>s`                       | Find all references to token under the cursor
|                                  | `<Ctrl-\>r`                       | Rebuild symbol database index for current project
|                                  | `<Alt-Left>`                      | Jump back to previous cursor location
|                                  | `<Alt-Right>`                     | Jump to next cursor location
|**Source code static analysis**   |                                   |
|                                  | `<F5>`                            | Runs the `clang-tidy` static analysis on current buffer
|                                  | `<S-F5>`                          | Runs the `clang-tidy` static analysis on current buffer and applies the fixes for issues found
|                                  | `:YavideAnalyzerCppCheckBuf`      | Runs the `cppcheck` static analysis on current buffer
|                                  | `:YavideAnalyzerCppCheck`         | Runs the `cppcheck` static analysis on whole project
|**Build management**              |                                   |
|                                  | `<F7>`                            | Build project.
|**SCM Git client**                |                                   |
|                                  | `:Gstatus`                        | Roda o  `git status`
|                                  | `:Gcommit`                        | Roda o  `git commit`
|                                  | `:Gmerge`                         | Roda o  `git merge`
|                                  | `:Gpull`                          | Roda o  `git pull`
|                                  | `:Gpush`                          | Roda o  `git push`
|                                  | `:Gfetch`                         | Roda o `git fetch`
|                                  | `:Glog`                           | Roda o `git log`
|                                  | `:Gdiff`                           | Roda o `git diff`
|                                  | `:Gblame`                         | Roda o `git blame`
|**Misc**                          |                                   |
|                                  | `:zsh`                            | Enter no shell `zsh` 

