"colorscheme evening

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
"Bundle 'ervandew/supertab'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "scrooloose/syntastic"
Bundle 'tpope/vim-fugitive'
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/ctrlp.vim'
" " The rest of your config follows here
syntax on
filetype plugin indent on
colorscheme 256-jungle
" Super tab completion
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"

" Mapping
map <F2> :NERDTreeToggle<CR>
map <F9> :!pdflatex %<CR>

let g:tex_flavor='latex'
let g:LatexBox_viewer = "evince"

"
"  cscope map file
"
source ~/.cscope_maps.vim 

" Close window after selection 
let g:ycm_autoclose_preview_window_after_completion = 1

" Maps GoToDefinetion
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
map <C-V> :exe "Cdbgvar " . expand("<cword>") <CR>
