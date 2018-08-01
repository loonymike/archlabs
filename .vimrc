set spelllang=en_us
set t_Co=256
set langmenu=en_US.UTF-8
set number
set spell

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

func! WordProcessor()
  " movement changes
  map j gj
  map k gk
  " formatting text
  setlocal formatoptions=1
  setlocal noexpandtab
  setlocal wrap
  setlocal linebreak
  " spelling and thesaurus
  setlocal spell spelllang=en_us
  set thesaurus+=~/mthesaur.txt
  " complete+=s makes autocompletion search the thesaurus
  set complete+=s
endfu
com! WP call WordProcessor()

au BufEnter *.txt :WP

if &term =~ "xterm\\|rxvt"
    " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;orange\x7"
    " use a red cursor otherwise
    let &t_EI = "\<Esc>]12;red\x7"
    silent !echo -ne "\033]12;red\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
endif

execute pathogen#infect()

" let g:airline_theme='powerlineish'
" let g:airline_theme='solarized'
" let g:airline_theme='cobalt'
let g:airline_theme='base16_solarized'
" let g:airline_theme='base16_google'
" let g:airline_theme='base16_isotope'
" let g:airline_theme='base16_mocha'
" let g:airline_theme='base16_shapeshifter'
" let g:airline_theme='molokai'
" let g:airline_theme='simple'
" let g:airline_theme='dark'
" let g:airline_theme='jellybeans'
" let g:airline_theme='monochrome'
" let g:airline_theme='jet'
" let g:airline_theme='hybrid'
" let g:airline_theme='luna'
" let g:airline_theme='kalisi'
" let g:airline_theme='light'

let g:airline_symbols_ascii = 1

let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_spell=1
let g:airline_detect_spelllang=1
let g:airline_detect_iminsert=1
let g:airline_inactive_collapse=1

let g:airline#extensions#disable_rtp_load = 1

let g:airline#extensions#default#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#unicode#enabled = 1
let g:airline_skip_empty_sections = 1

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'


" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'y', 'z', 'error', 'warning' ]
\ ]
