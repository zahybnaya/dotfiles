
" tex specific
set  linebreak 
set spell 
map <F9> :!pdflatex %<CR> 
map <C-e> bi\emph{<ESC>ea}<ESC> 
colorscheme whitebox

let g:tex_flavor='latex'
let g:LatexBox_viewer = "evince"
let g:LatexBox_latexmk_options = "-pvc -pdfps"

