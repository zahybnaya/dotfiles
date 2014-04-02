
"for vundle 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle  required!
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'LaTeX-Box'
Bundle 'brookhong/cscope.vim'
Bundle 'Valloric/YouCompleteMe' 
Bundle 'kakkyz81/evervim.git'
"Bundle 'ervandew/supertab'
Bundle 'jcfaria/Vim-R-plugin'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "scrooloose/syntastic"
Bundle 'tpope/vim-fugitive'
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/Conque-Shell'
Bundle "vim-scripts/taglist.vim"
" " The rest of your config follows here
syntax on
filetype plugin indent on
colorscheme 256-jungle 
colorscheme made_of_code 
let g:evervim_devtoken='S=s213:U=1638c59:E=14be0f5ead3:C=1448944bed6:P=1cd:A=en-devtoken:V=2:H=2cae464dbb2c147e067f77a73720d5b2'
au FileType python map <F9> :Pyclewn pdb %<CR>:Cmapkeys<CR> | set tabstop=4 | set shiftwidth=4| set softtabstop=4| set expandtab |

"  Pymode config
let g:pymode = 1
let g:pymode_folding = 0
"let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_checkers = ['pyflakes', 'mccabe']


au BufRead,BufNewFile today set filetype=today
au FileType today set linebreak | set spell | map <F9> :!ls %<CR> | colorscheme nature
"au FileType tex set linebreak | set spell | map <F9> :!pdflatex %<CR> | map <C-e> bi\emph{<ESC>ea}<ESC> | colorscheme whitebox



" Mapping
map <F2> :NERDTreeToggle<CR>
map <F3> :TlistToggle<CR>

let g:Tlist_Show_One_File=1
let Tlist_GainFocus_On_ToggleOpen=1
let g:tex_flavor='latex'
let g:LatexBox_viewer = "evince"
let g:LatexBox_latexmk_options = "-pvc -pdfps"
"
"  cscope map file
"
source ~/.cscope_maps.vim 
	if has("cscope")
		set csprg=/usr/local/bin/cscope
		set csto=0
		set cst
		set nocsverb
		" add any database in current directory
		if filereadable("cscope.out")
		    cs add cscope.out
		" else add database pointed to by environment
		elseif $CSCOPE_DB != ""
		    cs add $CSCOPE_DB
		endif
		set csverb
	endif

" Close window after selection 
let g:ycm_autoclose_preview_window_after_completion = 1

" Maps GoToDefinetion
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
map <leader>v :exe "Cdbgvar " . expand("<cword>") <CR>

set number

