set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Bundle 'Valloric/YouCompleteMe'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'sjl/gundo.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'mileszs/ack.vim'
Bundle 'majutsushi/tagbar'
Bundle 'godlygeek/tabular'
Bundle 'gmarik/vundle'
Bundle 'elixir-lang/vim-elixir'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'kchmck/vim-coffee-script'
Bundle 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

runtime macros/matchit.vim

set bs=2

set autoindent
set smartindent
set smarttab
set noexpandtab
set tabstop=8
set shiftwidth=2
set textwidth=72

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
set wildignore+=*.o

set exrc
set secure

set hidden
set confirm

map <silent> <kPageUp> :bn<CR>
map <silent> <kPageDown> :bp<CR>

imap <silent> <kPageUp> <C-O>:bn<CR>
imap <silent> <kPageDown> <C-O>:bp<CR>

nmap <Leader>s :mksession! .vim.session<CR>

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

autocmd Filetype ruby  setlocal expandtab
autocmd Filetype eruby setlocal expandtab
autocmd Filetype c     setlocal ts=8 sw=8
autocmd Filetype cpp   setlocal ts=8 sw=8
autocmd Filetype tex   let g:gitgutter_enabled = 0
"autocmd Filetype tex set textwidth=1000
"autocmd Filetype html setlocal ts=2 sw=2 expandtab

let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['elixir', 'tex'] }

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

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"ycm
let g:ycm_global_ycm_extra_conf = '~/.vim/config/ycm_extra_conf.py'
let g:ycm_extra_conf_vim_data   = ['&filetype']
let g:ycm_key_invoke_completion = '<Leader>c'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_filetype_specific_completion_to_disable = { 'markdown': 'unimportant' }
let g:ycm_register_as_syntastic_checker = 0

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme = 'jibilol'

