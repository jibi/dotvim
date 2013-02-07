set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/powerline'
Bundle 'Valloric/YouCompleteMe'
Bundle 'sjl/gundo.vim'

filetype plugin indent on

runtime macros/matchit.vim

set bs=2

set autoindent
set smartindent
set smarttab
set noexpandtab
set ts=2
set shiftwidth=2
set textwidth=80

set incsearch
set showmatch
set gdefault

set smartcase
set ignorecase

set scrolloff=8
set laststatus=2

set number
set ruler
set ttyfast

set noerrorbells
set novisualbell

set history=50
set viminfo='20,\"500

syntax on
colorscheme jibilol

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set nowrap

set wildmenu
set wildmode=full

map <silent> <kPageUp> :tabprevious<CR>
map <silent> <kPageDown> :tabnext<CR>
imap <silent> <kPageUp> <C-O>:tabprevious<CR>
imap <silent> <kPageDown> <C-O>:tabnext<CR>

map <F1> <Nop>
imap <F1> <Nop>
vmap <F1> <Nop>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

if &term == "linux"
	colorscheme default
endif

if &term =~ "rxvt"
	exec "set <kPageUp>=\<ESC>[5^"
	exec "set <kPageDown>=\<ESC>[6^"
	exec "set <C-Left>=\<ESC>Od"
	exec "set <C-Right>=\<ESC>Oc"
endif

"NERDTree
map <Leader>N :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDChristmasTree=1

"tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

"Gundo
nnoremap <silent> <F5> :GundoToggle<CR>

"Powerline
source ~/.vim/bundle/powerline/powerline/bindings/vim/plugin/source_plugin.vim
python from powerline.bindings.vim import source_plugin; source_plugin()

"ycm
let g:ycm_global_ycm_extra_conf = '/home/jibi/.vim/config/YouCompleteMe/ycm_extra_conf.py'
let g:ycm_key_invoke_completion = '<Leader>c'
