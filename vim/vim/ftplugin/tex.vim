let g:quicktex_tex = {
    \' '   : "\<ESC>:call search('<+.*+>')\<CR>\"_c/+>/e\<CR>",
    \'m'   : '\( <+++> \) <++>',
    \'prf' : "\\begin{proof}\<CR><+++>\<CR>\\end{proof}",
    \'inicio' : "\\documentclass{article}\<CR>\\usepackage[utf8]{inputenc}\<CR>\\usepackage[a4paper]{geometry}\<CR>\\usepackage[utf8]{inputenc}\<CR>\\usepackage[T1]{fontenc}\<CR>\\usepackage[english,brazilian,portuges]{babel}\<CR>\\usepackage{amsmath}\<CR>\\usepackage{wasysym}\<CR>\\usepackage{amssymb}\<CR>\\usepackage{amsfonts}\<CR>\\usepackage{textcomp}\<CR>\\usepackage{pifont}\<CR>\\title{Nome da Máteria}\<CR>\\author{Usuario Linux}\<CR>\\date{<+++>/<++>/<++>} ",
    \'geom' : "\\documentclass{article}\<CR>\\usepackage[utf8]{inputenc}\<CR>\\usepackage[a4paper]{geometry}\<CR>\\usepackage[utf8]{inputenc}\<CR>\\usepackage[T1]{fontenc}\<CR>\\usepackage[english,brazilian,portuges]{babel}\<CR>\\usepackage{amsmath}\<CR>\\usepackage{wasysym}\<CR>\\usepackage{amssymb}\<CR>\\usepackage{amsfonts}\<CR>\\usepackage{textcomp}\<CR>\\usepackage{pifont}\<CR>\\title{Geometria Euclidiana}\<CR>\\author{Filipe Gabriel Fonseca de Medeiros}\<CR>\\date{<+++>/<++>/2018}<++> ",
    \'document' : "\<CR>\\begin{document}\<CR>\<CR>\\maketitle\<CR>\\section{<+++>}<++>\<CR>\\end{document}",
    \'sec' : "\<CR>\\section{<+++>}<++>",
    \'subsec' : "\<CR>\\subsection{<+++>}<++>",
    \'itemize' : "\<CR>\\begin{itemize}\<CR><+++>\<CR>\\end{itemize}",
    \'enumerate' : "\<CR>\\begin{enumerate}\<CR><+++>\<CR>\\end{enumerate}",
    \'item' : "\<CR>\\item<+++>",
    \'bfred' : "\\textcolor{red}{\\textbf{<+++>}}",
    \'bfblue' : "\\textcolor{blue}{\\textbf{<+++>}}",
    \'bf' : "\\textbf{<+++>}",
    \'eexemplo' : "\<CR>\\textcolor{red}{\\textbf{Exemplo:}}\<CR>",
    \'ssolucao' : "\<CR>\\textcolor{blue}{\\textbf{Solução:}}\<CR>",
\}


let g:quicktex_math = {
    \' '    : "\<ESC>:call search('<+.*+>')\<CR>\"_c/+>/e\<CR>",
    \'fr'   : '\mathcal{R} ',
    \'eq'   : '= ',
    \'set'  : '\{ <+++> \} <++>',
    \'frac' : '\frac{<+++>}{<++>} <++>',
    \'one'  : '1 ',
    \'st'   : ': ',
    \'in'   : '\in ',
    \'bn'   : '\mathbb{N} ',
\}
