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
colors desert256
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd FileType make set noexpandtab|set nosmarttab 
map <F5> :tabp<CR>
map <F6> :tabn<CR>
map <F9> :enew<CR>
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  colors blackboard
  set lines=999 columns=999
  set gfn=Anonymous_Pro:h11:cANSI
endif
syntax on
nnoremap <space> za
vnoremap <space> zf
call pathogen#infect()
call pathogen#helptags()
au BufRead,BufNewFile *.md set filetype=markdown
filetype plugin indent on

"Map ctrl + movement keys to navigate windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Map ctrl + td to open todo list
map <s-t> <Plug>TaskList

"Map ctrl + g to gundo
map <c-g> :GundoToggle<CR>

"Map F8 to PEP8
let g:pep8_map='<F8>'

"Enable context based code completion in python files
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"Enable pydoc preview
set completeopt=menuone,longest,preview

"Map ctrl + n to nerdtree
map <c-n> :NERDTreeToggle<CR>

"Map <F2> to toggle line numbers
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"Enable python syntax highlighting
let python_highlight_all = 1
