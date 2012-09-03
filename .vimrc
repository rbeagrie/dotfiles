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
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
  set gfn=Anonymous_Pro:h11:cANSI
endif
set foldmethod=indent
set foldnestmax=2
syntax on
nnoremap <space> za
vnoremap <space> zf
call pathogen#infect()
call pathogen#helptags()

