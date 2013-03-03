" vim: ts=2
"
" Vim colorscheme by jibi <jibi@paranoici.org>
"

set background=dark
hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "jibilol"

set t_Co=256

set fillchars=stl:\ ,stlnc:\ ,vert:│,fold:\ 
set listchars=tab:\·\ ,trail:░,extends:»,precedes:«
set list
set cursorline

set hlsearch

" vim colors
hi ColorColumn	ctermfg=none	ctermbg=none			cterm=none
hi Conceal			ctermfg=none	ctermbg=none			cterm=none
hi CursorLine		ctermfg=none	ctermbg=233				cterm=none
hi Directory		ctermfg=42		ctermbg=none			cterm=none
hi ErrorMsg			ctermfg=black	ctermbg=darkred		cterm=none
hi VertSplit		ctermfg=26		ctermbg=none			cterm=none
hi IncSearch		ctermfg=black	ctermbg=lightblue	cterm=none
hi LineNr				ctermfg=238		ctermbg=none			cterm=none
hi MatchParen		ctermfg=black	ctermbg=26				cterm=none
hi ModeMsg			ctermfg=none	ctermbg=none			cterm=bold
hi NonText			ctermfg=gray	ctermbg=none			cterm=none
hi Normal				ctermfg=251		ctermbg=none			cterm=none
hi Question			ctermfg=none	ctermbg=none			cterm=none
hi Search				ctermfg=none	ctermbg=none			cterm=none
hi StatusLine		ctermfg=26		ctermbg=none			cterm=none
hi StatusLineNC	ctermfg=26		ctermbg=black			cterm=none
hi TabLine			ctermfg=26		ctermbg=none			cterm=underline
hi TabLineFill	ctermfg=26		ctermbg=none			cterm=underline
hi TabLineSel		ctermfg=white	ctermbg=26				cterm=bold
hi Title				ctermfg=none	ctermbg=none			cterm=none
hi Visual				ctermfg=none	ctermbg=244				cterm=none
hi WarningMsg		ctermfg=none	ctermbg=none			cterm=none
hi WildMenu			ctermfg=white	ctermbg=black			cterm=none

hi CursorLineNr	ctermfg=gray	ctermbg=233		cterm=none

" syntax
hi Comment			ctermfg=darkgray		ctermbg=none			cterm=none
hi Constant			ctermfg=32					ctermbg=none			cterm=none
hi Identifier		ctermfg=32					ctermbg=none			cterm=none
hi Function			ctermfg=none				ctermbg=none			cterm=none
hi Statement		ctermfg=white				ctermbg=none			cterm=bold
hi PreProc			ctermfg=white				ctermbg=none			cterm=none
hi Type					ctermfg=26					ctermbg=none			cterm=none
hi Special			ctermfg=26					ctermbg=none			cterm=none
hi Error				ctermfg=white				ctermbg=darkred		cterm=bold
hi Todo					ctermfg=197					ctermbg=none			cterm=bold
hi SpecialChar	ctermfg=32					ctermbg=none			cterm=bold

hi SignColumn      ctermbg=232

" GitGutter
hi GitGutterAdd    ctermbg=232 ctermfg=green
hi GitGutterChange ctermbg=232 ctermfg=yellow
hi GitGutterDelete ctermbg=232 ctermfg=red

hi elixirDocString	ctermfg=240	ctermbg=none			cterm=bold

autocmd Filetype elixir hi def ElixirDocAttr ctermfg=240
autocmd Filetype elixir match ElixirDocAttr /@doc /
"

"highlight MyGroup ctermfg=green
"match MyGroup /tcp_conn_t/
