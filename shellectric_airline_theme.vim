" vim-airline template by chartoin (http://github.com/chartoin)
" Shellectric Scheme by Peter Fonseca (https://github.com/fonsecapeter)
let g:airline#themes#shellectric#palette = {}
let s:gui00 = "#1C2023"
let s:gui01 = "#393F45"
let s:gui02 = "#565E65"
let s:gui03 = "#747C84"
let s:gui04 = "#ADB3BA"
let s:gui05 = "#C7CCD1"
let s:gui06 = "#DFE2E5"
let s:gui07 = "#F3F4F5"
let s:gui08 = "#C7AE95"
let s:gui09 = "#C7C795"
let s:gui0A = "#AEC795"
let s:gui0B = "#95C7AE"
let s:gui0C = "#95AEC7"
let s:gui0D = "#AE95C7"
let s:gui0E = "#C795AE"
let s:gui0F = "#C79595"

let s:light_gray = 15
let s:dark_gray = 0
let s:bright_cyan = 14
let s:mid_gray = 7
let s:bright_blue = 12
let s:orange = 3
let s:green = 2

let s:N1   = [ s:gui01, s:gui0B, s:dark_gray, s:green ]
let s:COLORLESS   = [ s:gui05, s:gui01, s:mid_gray, s:dark_gray ]
let g:airline#themes#shellectric#palette.normal = airline#themes#generate_color_map(s:N1, s:COLORLESS, s:COLORLESS)

let s:I1   = [ s:gui01, s:gui0D, s:dark_gray, s:orange ]
let g:airline#themes#shellectric#palette.insert = airline#themes#generate_color_map(s:I1, s:COLORLESS, s:COLORLESS)

let s:R1   = [ s:gui01, s:gui08, s:dark_gray, s:bright_cyan ]
let g:airline#themes#shellectric#palette.replace = airline#themes#generate_color_map(s:R1, s:COLORLESS, s:COLORLESS)

let s:V1   = [ s:gui01, s:gui0E, s:dark_gray, s:bright_blue ]
let s:V2   = [ s:gui06, s:gui02, s:mid_gray, s:dark_gray ]
let s:V3   = [ s:gui09, s:gui01, s:dark_gray, s:dark_gray ]
let g:airline#themes#shellectric#palette.visual = airline#themes#generate_color_map(s:V1, s:COLORLESS, s:COLORLESS)

let s:IA1   = [ s:gui05, s:gui01, s:mid_gray, s:dark_gray ]
let s:IA2   = [ s:gui05, s:gui01, s:mid_gray, s:dark_gray ]
let s:IA3   = [ s:gui05, s:gui01, s:mid_gray, s:dark_gray ]
let g:airline#themes#shellectric#palette.inactive = airline#themes#generate_color_map(s:COLORLESS, s:COLORLESS, s:COLORLESS)

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#shellectric#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:light_gray, s:dark_gray, '' ],
      \ [ s:gui07, s:gui04, s:light_gray, s:mid_gray, '' ],
      \ [ s:gui05, s:gui01, s:green, s:dark_gray, 'bold' ])
