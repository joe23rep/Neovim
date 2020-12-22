let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_kill   = '<F2>'
let g:floaterm_keymap_next   = '<F3>'
let g:floaterm_keymap_prev   = '<F4>'
let g:floaterm_keymap_new    = '<F5>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.7
let g:floaterm_height=0.6
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

" Disable Title
let g:floaterm_title = 0

" Set Floaterm Colors

let g:terminal_color_1  = '#d4fdf6'
let g:terminal_color_2  = '#d4fdf6'
let g:terminal_color_3  = '#00ffab'
let g:terminal_color_4  = '#c2c2ff'
let g:terminal_color_5  = '#9cdcff'
let g:terminal_color_6  = '#46d9ff'
let g:terminal_color_7  = '#9500ff'
let g:terminal_color_8  = '#c2c2ff'
let g:terminal_color_9  = '#c2c2ff'
let g:terminal_color_10 = '#c2c2ff'
let g:terminal_color_11 = '#9eddff'
let g:terminal_color_12 = '#9eddff'
let g:terminal_color_13 = '#9500ff'
let g:terminal_color_14 = '#9500ff'
let g:terminal_color_15 = '#878d8d'
let g:terminal_color_16 = '#b3b9b9'

" Floaterm border-color
hi FloatermBorder guibg=black guifg=#c2c2ff

" Hide status bar while using fzf commands
if has('nvim') || has('gui_running')
  autocmd! FileType floaterm
  autocmd  FileType floaterm set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2
endif


