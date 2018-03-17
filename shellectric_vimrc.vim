let g:airline_extensions = []
set noshowmode
let g:airline_theme='shellectric'
let g:airline_symbols_ascii = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\u2002"

" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.readonly = 'RO'

" :help airline > CUSTOMIZATION / ADVANCED CUSTOMIZATION
" :help statusline for %vars
" ignore git hunks & branch
let g:airline_section_b = ''
" ignore tagbar, filetype, virtualenv
let g:airline_section_x = ''
" ignore fileemcoding, fileformat
let g:airline_section_y = ''
" simplify line no/col
let g:airline_section_z = '%l/%L:%c'

function! MyMode()
  let l:m = mode()
  if l:m ==# 'i'
    return 'insert'
  elseif l:m ==# 'n'
    return 'normal'
  elseif l:m =~# '\v(v|V|s|S|)'
    return 'visual'
  elseif l:m ==# 't'
    return 'terminal'
  elseif l:m ==# 'R'
    return 'replace'
  else
    return 'inactive'
  endif
endfunction

let g:airline_section_a = '%{MyMode()}'
