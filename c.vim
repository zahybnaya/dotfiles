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


map <leader>v :exe "Cdbgvar " . expand("<cword>") <CR>
