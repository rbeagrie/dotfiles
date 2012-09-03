set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set ruler
set number
im :<CR> :<CR><TAB>
set background=dark
colors blackboard
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd FileType make set noexpandtab|set nosmarttab 
map <F5> :tabp<CR>
map <F6> :tabn<CR>
