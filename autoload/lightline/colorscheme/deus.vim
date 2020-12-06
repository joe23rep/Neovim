" =============================================================================
" Filename: autoload/lightline/colorscheme/deus.vim
" Author: nikersify
" License: MIT License
" Last Change: 2018/01/24 13:26:00
" =============================================================================

let s:term_red = 204
let s:term_green = 114
let s:term_yellow = 180
let s:term_blue = 39
let s:term_purple = 170
let s:term_white = 145
let s:term_black = 235
let s:term_grey = 236

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ '#293344', '#46d9ff', s:term_black, s:term_green, 'bold' ], [ '#d6f4fd', '#414c5f', s:term_green, s:term_black ], [ '#46d9ff', '#293344', s:term_white, s:term_grey ]]
let s:p.normal.right = [ [ '#293344', '#46d9ff', s:term_black, s:term_green ], [ '#d6f4fd', '#414c5f', s:term_white, s:term_grey ], [ '#46d9ff', '#293344', s:term_green, s:term_black ] ]
let s:p.inactive.right = [ [ '#293344', '#46d9ff', s:term_black, s:term_blue], [ '#d6f4fd', '#414c5f', s:term_white, s:term_grey ] ]
let s:p.inactive.left = s:p.inactive.right[1:]
" her
let s:p.insert.left = [ [ '#293344', '#b300ff', s:term_black, s:term_blue, 'bold' ], [ '#d6f4fd', '#414c5f', s:term_blue, s:term_black ] ]
let s:p.insert.right = [ [ '#293344', '#b300ff', s:term_black, s:term_blue ], [ '#d6f4fd', '#414c5f', s:term_white, s:term_grey ], [ '#b300ff', '#293344', s:term_blue, s:term_black ] ]
let s:p.replace.left = [ [ '#293344', '#b300ff', s:term_black, s:term_red, 'bold' ], [ '#d6f4fd', '#414c5f', s:term_red, s:term_black ] ]
let s:p.replace.right = [ [ '#293344', '#b300ff', s:term_black, s:term_red, 'bold' ], s:p.normal.right[1], [ '#b300ff', '#293344', s:term_red, s:term_black ] ]
let s:p.visual.left = [ [ '#293344', '#8400ff', s:term_black, s:term_purple, 'bold' ], [ '#d6f4fd', '#414c5f', s:term_purple, s:term_black ] ]
let s:p.visual.right = [ [ '#293344', '#8400ff', s:term_black, s:term_purple, 'bold' ], s:p.normal.right[1], [ '#8400ff', '#293344', s:term_purple, s:term_black ] ]
let s:p.normal.middle = [ [ '#d6f4fd', '#293344', s:term_white, s:term_black ] ]
let s:p.insert.middle = s:p.normal.middle
let s:p.replace.middle = s:p.normal.middle
let s:p.tabline.left = [ [ '#293344', '#46d9ff' ], [ '#d6f4fd', '#293344' ], [ '#d6f4fd', '#414c5f' ] ]
let s:p.tabline.tabsel = [ s:p.normal.left[0] ]
let s:p.tabline.middle = s:p.normal.middle
let s:p.tabline.right = [ [ '#293344', '#46d9ff', s:term_black, s:term_green ], [ '#d6f4fd', '#414c5f', s:term_white, s:term_grey ], [ '#46d9ff', '#293344', s:term_green, s:term_black ] ]
let s:p.normal.error = [ [ '#293344', '#b300ff', s:term_black, s:term_red ] ]
let s:p.normal.warning = [ [ '#293344', '#46d9ff', s:term_black, s:term_yellow ] ]

let g:lightline#colorscheme#deus#palette = lightline#colorscheme#fill(s:p)

 " Dark variant
  " let s:fg    = [ '#abb2bf', 145 ]
  " let s:bg    = [ '#282c34', 235 ]
  " let s:gray1 = [ '#5c6370', 241 ]
  " let s:gray2 = [ '#293344', 235 ]
  " let s:gray3 = [ '#414c5f', 240 ]
  "
" 293344

" 354053
"232d3e
" 414c5f
" 41495f
