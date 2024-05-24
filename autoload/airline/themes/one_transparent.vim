" TODO CTERM colors

" Colors
let g:airline#themes#one_transparent#palette = {}
function! airline#themes#one_transparent#refresh()

let s:gray     = [245, airline#themes#get_highlight('SpecialKey')[0]]
let s:blue     = [143, airline#themes#get_highlight('Directory')[0]]
let s:purple   = [131, airline#themes#get_highlight('Statement')[0]]
let s:green    = [ 67, airline#themes#get_highlight('Constant')[0]]
let s:orange   = [1, airline#themes#get_highlight('IncSearch')[1]]
let s:red      = [166, airline#themes#get_highlight('ErrorMsg')[0]]
let s:outerfg  = [ 16, airline#themes#get_highlight('cssBraces')[0]] " mono 2
let s:outerfgi = [ 16, '#2f3d4d']
let s:darkgray = [245, airline#themes#get_highlight('Search')[0]]
"if (has('nvim'))
"    let s:darkgray = [245, airline#themes#get_highlight2(['VertSplit','bg'],['VertSplit','fg'])[0]]
"else
"    let s:darkgray = [245, airline#themes#get_highlight2(['VertSplit','fg'],['VertSplit','bg'])[0]]
"endif

" Backgrounds
let s:outerbg  = [ 16, 'NONE']
let s:innerbg  = [234, 'NONE']

" Normal mode
let s:N1 = [s:outerfg[1], s:outerbg[1], s:outerfg[0], s:gray[0]]
let s:N3 = [s:gray[1]   , s:innerbg[1], s:gray[0]   , s:innerbg[0]]

" Normal mode - modified
let s:NM1 = [s:darkgray[1], s:green[1], s:darkgray[0], s:green[0]]
let s:NM3 = [s:green[1]  , s:outerbg[1], s:green[0], s:darkgray[0]]

" Insert mode
let s:I1 = [s:darkgray[1], s:blue[1], s:outerfg[0], s:blue[0]]
let s:I3 = [s:blue[1]  , s:innerbg[1], s:blue[0], s:innerbg[0]]

" Visual mode
let s:V1 = [s:darkgray[1], s:purple[1], s:outerfg[0], s:purple[0]]
let s:V3 = [s:purple[1]    , s:innerbg[1], s:purple[0], s:innerbg[0]]

" Replace mode
let s:R1 = [s:darkgray[1], s:red[1], s:outerfg[0], s:red[0]]
let s:R3 = [s:red[1], s:innerbg[1], s:red[0], s:innerbg[0]]

" Inactive pane
let s:IA = [s:darkgray[1], s:outerbg[1], s:innerbg[0], s:innerbg[0]]
let s:IAc = [s:gray[1], s:outerbg[1], s:outerbg[0], s:outerbg[0]]

" Warning
let s:W = [s:darkgray[1], s:orange[1], s:darkgray[0], s:orange[0]]

let g:airline#themes#one_transparent#palette = {}
let g:airline#themes#one_transparent#palette.accents = {
    \ 'red': [s:red[1], '', s:red[0], '', '']}

let g:airline#themes#one_transparent#palette.inactive = {
    \ 'airline_a': s:IA,
    \ 'airline_b': s:IA,
    \ 'airline_c': s:IAc,
    \ 'airline_x': s:IA,
    \ 'airline_y': s:IA,
    \ 'airline_z': s:IA}

let g:airline#themes#one_transparent#palette.inactive_modified = {
    \ 'airline_a': s:IA,
    \ 'airline_b': s:IA,
    \ 'airline_c': s:NM3,
    \ 'airline_x': s:IA,
    \ 'airline_y': s:IA,
    \ 'airline_z': s:IA}

let g:airline#themes#one_transparent#palette.normal = {
    \ 'airline_a': s:N1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:N1}

let g:airline#themes#one_transparent#palette.normal_modified = {
    \ 'airline_a': s:NM1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:NM3}

let g:airline#themes#one_transparent#palette.insert = {
    \ 'airline_a': s:I1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:I3}
let g:airline#themes#one_transparent#palette.insert_modified = {}

let g:airline#themes#one_transparent#palette.replace = {
    \ 'airline_a': s:R1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:R3}
let g:airline#themes#one_transparent#palette.replace_modified = {}

let g:airline#themes#one_transparent#palette.visual = {
    \ 'airline_a': s:V1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:V3}
let g:airline#themes#one_transparent#palette.visual_modified = {}


" Warnings
let g:airline#themes#one_transparent#palette.normal.airline_warning = s:W

let g:airline#themes#one_transparent#palette.normal_modified.airline_warning =
    \ g:airline#themes#one_transparent#palette.normal.airline_warning

let g:airline#themes#one_transparent#palette.insert.airline_warning =
    \ g:airline#themes#one_transparent#palette.normal.airline_warning

let g:airline#themes#one_transparent#palette.insert_modified.airline_warning =
    \ g:airline#themes#one_transparent#palette.normal.airline_warning

let g:airline#themes#one_transparent#palette.visual.airline_warning =
    \ g:airline#themes#one_transparent#palette.normal.airline_warning

let g:airline#themes#one_transparent#palette.visual_modified.airline_warning =
    \ g:airline#themes#one_transparent#palette.normal.airline_warning

let g:airline#themes#one_transparent#palette.replace.airline_warning =
    \ g:airline#themes#one_transparent#palette.normal.airline_warning

let g:airline#themes#one_transparent#palette.replace_modified.airline_warning =
    \ g:airline#themes#one_transparent#palette.normal.airline_warning


" Errors
let g:airline#themes#one_transparent#palette.normal.airline_error = s:R1

let g:airline#themes#one_transparent#palette.normal_modified.airline_error =
      \ g:airline#themes#one_transparent#palette.normal.airline_error

let g:airline#themes#one_transparent#palette.insert.airline_error =
      \ g:airline#themes#one_transparent#palette.normal.airline_error

let g:airline#themes#one_transparent#palette.insert_modified.airline_error =
      \ g:airline#themes#one_transparent#palette.normal.airline_error

let g:airline#themes#one_transparent#palette.insert_modified.airline_error =
      \ g:airline#themes#one_transparent#palette.normal.airline_error

let g:airline#themes#one_transparent#palette.visual.airline_error =
      \ g:airline#themes#one_transparent#palette.normal.airline_error

let g:airline#themes#one_transparent#palette.visual_modified.airline_error =
      \ g:airline#themes#one_transparent#palette.normal.airline_error
 
let g:airline#themes#one_transparent#palette.replace.airline_error =
      \ g:airline#themes#one_transparent#palette.normal.airline_error

let g:airline#themes#one_transparent#palette.replace_modified.airline_error =
      \ g:airline#themes#one_transparent#palette.normal.airline_error

endfunction
call airline#themes#one_transparent#refresh()
