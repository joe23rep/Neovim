"       _       _     _   _ _
"| |   (_) __ _| |__ | |_| (_)_ __   ___
"| |   | |/ _` | '_ \| __| | | '_ \ / _ \
"| |___| | (_| | | | | |_| | | | | |  __/
"|_____|_|\__, |_| |_|\__|_|_|_| |_|\___|
"         |___/

" Lightline shows the mode -> get rid of vim's default
set noshowmode

" Show second tabline on top
set showtabline=2

" Define Lightline look--------------------------------------------------------------

let g:lightline = {
\   'colorscheme': 'deus',
\   'active' : {
\     'left' : [['mode'],  ['gitbranch']],
\     'right': [[ 'lineinfo'],[ 'percent' ]]
\   },
\   'tabline': {
\     'left' : [['filetype_with_icon'], ['buffers', 'readonly']],
\     'right': [['buffer'], ['fileencoding']]
\   },
\   'separator': {
\     'left'   : " ", 'right': " "
\   },
\   'tabline_separator': {
\     'left' : " ", 'right': " "
\   },
\   'subseparator': {
\     'left' : " ", 'right': " "
\   },
\   'tabline_subseparator': {
\     'left' : "", 'right': ""
\   },
\   'component_function': {
\     'explorer_pad' : 'lightline#explorer_pad#left_pad',
\     'mode'     : 'LightlineMode',
\     'gitbranch': 'LightlineGitbranch',
\     'lineinfo' : 'LightlineLineinfo',
\     'readonly' : 'LightlineReadonly',
\     'cocstatus': 'LightlineCoc',
\   },
\   'component_expand': {
\     'buffers'  : 'lightline#bufferline#buffers',
\     'smarttabs': 'SmartTabsIndicator',
\     'trailing' : 'lightline#trailing_whitespace#component',
\   },
\   'component_type': {
\     'buffers'  : 'tabsel',
\   },
\   'component':{
\     'filename_with_icon': '%{FileNameWithIcon()}',
\     'filetype_with_icon': '%{FileTypeWithIcon()}',
\     'vim_logo' : "\ue7c5 ",
\     'filename_with_parent': '%t',
\     'buffer'   : 'buffers %n',
\   },
\   'component_raw':{
\     'buffers': 1,
\   },
\   'tab_component_function':{
\     'artify_filename': 'lightline_tab_filename',
\     'filename' : 'lightline#tab#filename',
\     'readonly' : 'lightline#tab#readonly',
\     'tabnum'   : 'lightline#tab#tabnum',
\     'filename_with_parent': 'FileNameWithParent'
\   },
\   'tab':{
\     'active'   : ['filename_with_icon'],
\     'inactive' : ['filetype_with_icon']
\   },
\}


" Tabline Settings-------------------------------------------------------------------

" Tabline Icons
let g:lightline#bufferline#enable_devicons = 0
let g:lightline#bufferline#filename_modifier = ':t'

" Tabline colors
let s:palette = g:lightline#colorscheme#deus#palette
let s:palette.tabline.tabsel = [ [ '#d6f4fd', '#414c5f', 252, 66, ] ]
" unlet s:palette

" Misc-------------------------------------------------------------------------------

" Set whitespace indicator
let g:lightline#trailing_whitespace#indicator = ''

" Bufferline Settings
let g:lightline#bufferline#clickable=1
let g:lightline#bufferline#unnamed = 'No Name'
let g:lightline#bufferline#filename_modifier= ':.'
let g:lightline#bufferline#more_buffers = '...'
let g:lightline#bufferline#modified = ' '
let g:lightline#bufferline#read_only = ' '
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#show_number = 0
let g:lightline#bufferline#unicode_symbols = 1


" Custom Functions-------------------------------------------------------------------

function! FileNameWithIcon() abort
    if winwidth(0) < 86
         return ''
     endif

  let filename_with_icon = expand('%:t') !=# '' ? expand('%:t') : 'Txt'
  let modified = &modified ? ' ' : ''

  return WebDevIconsGetFileTypeSymbol() . ' ' . filename_with_icon . modified
endfunction


function! FileTypeWithIcon() abort
    if winwidth(0) < 86
         return ''
     endif

  let filetype_with_icon = expand(&ft) !=# '' ? expand(&ft) : 'Txt'
  " let modified = &modified ? '   ' : ''

  return WebDevIconsGetFileTypeSymbol() . ' '
endfunction


function! s:trim(maxlen, str) abort
    if winwidth(0) < 60
        return ''
    endif

    let trimed = len(a:str) > a:maxlen ? a:str[0:a:maxlen] . '..' : a:str
    return trimed
endfunction


function! LightlineCoc() abort
    if winwidth(0) < 60
        return ''
    endif

    return coc#status()
endfunction

function! LightlineLineinfo() abort
     if winwidth(0) < 86
         return ''
     endif

          return printf("%3d:%-2d", line('.'), col('.'))
endfunction


function! LightlineMode() abort
    if winwidth(0) < 50
        return ''
    endif

    let ftmap = {
                \ 'coc-explorer': '',
                \ 'fugitive': 'FUGITIVE',
                \ }
    return get(ftmap, &filetype, lightline#mode())
endfunction


function! LightlineReadonly() abort
    return &readonly ? '' : ''
endfunction


function! LightlineGitbranch() abort
    if exists('*fugitive#head')
        let maxlen = 20
        let branch = fugitive#head()
        return branch !=# '' ? ' '. s:trim(maxlen, branch) : ''
    endif
    return fugitive#head()
endfunction


function! SmartTabsIndicator() abort
    let tabs = lightline#tab#tabnum(tabpagenr())
    let tab_total = tabpagenr('$')
    return tabpagenr('$') > 1 ? ('TABS ' . tabs . '/' . tab_total) : ''
endfunction


command! LightlineReload call LightlineReload()


function! LightlineReload() abort
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction

function! LightlinePercent() abort
    if winwidth(0) < 60
        return ''
    endif

    let l:percent = line('.') * 100 / line('$') . '%'
    return printf('%-4s', l:percent)
endfunction

