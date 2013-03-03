let g:airline#themes#jibilol#palette = {}

let s:N1   = [ '' , '' , 255 , 236 ]
let s:N2   = [ '' , '' , 255 , 234 ]
let s:N3   = [ '' , '' , 255 , 232 ]
let g:airline#themes#jibilol#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1 = [ '' , '' , 255 , 27  ]
let s:I2 = [ '' , '' , 255 , 33  ]
let s:I3 = [ '' , '' , 15  , 0  ]
let g:airline#themes#jibilol#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#jibilol#palette.insert_modified = {
      \ 'airline_c': [ '' , '' , 15     , 0      , ''     ] ,
      \ }
let g:airline#themes#jibilol#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#jibilol#palette.replace = copy(g:airline#themes#jibilol#palette.insert)
let g:airline#themes#jibilol#palette.replace.airline_a = [ s:I2[0]   , '' , s:I2[2] , 124     , ''     ]
let g:airline#themes#jibilol#palette.replace_modified = g:airline#themes#jibilol#palette.insert_modified

let s:V1 = [ '' , '' , 232 , 214 ]
let s:V2 = [ '' , '' , 232 , 202 ]
let s:V3 = [ '' , '' , 15  , 0  ]
let g:airline#themes#jibilol#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#jibilol#palette.visual_modified = {
      \ 'airline_c': [ '' , '' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '' , '' , 239 , 234 , '' ]
let s:IA2 = [ '' , '' , 239 , 235 , '' ]
let s:IA3 = [ '' , '' , 239 , 236 , '' ]
let g:airline#themes#jibilol#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#jibilol#palette.inactive_modified = {
      \ 'airline_c': [ '' , '' , 97 , '' , '' ] ,
      \ }

  let g:airline#themes#jibilol#palette.tabline = {
        \ 'airline_tab':          [ '', '', '255', '27' ],
        \ 'airline_tabsel':       [ '', '', '254', '39'],
        \ 'airline_tabtype':      [ '', '', '255', '235'],
        \ 'airline_tabfill':      [ '', '', '255', '0' ],
        \ 'airline_tabhid':       [ '', '', '255', '0'],
        \ 'airline_tabmod':       [ '', '', '255', '27'],
        \ 'airline_tabmod_unsel': [ '', '', '255', '27']
        \ }
let g:airline#themes#jibilol#palette.accents = {
      \ 'red': [ '' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#jibilol#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '' , '' , 255 , 232  , ''     ],
      \ [ '' , '' , 255 , 27  , ''     ],
      \ [ '' , '' , 255 , 33 , 'bold' ])

