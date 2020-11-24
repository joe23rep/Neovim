" General Config ----------------------------------------------------------------------------
"   ____                           _    ____             __ _
"  / ___| ___ _ __   ___ _ __ __ _| |  / ___|___  _ __  / _(_) __ _
" | |  _ / _ \ '_ \ / _ \ '__/ _` | | | |   / _ \| '_ \| |_| |/ _` |
" | |_| |  __/ | | |  __/ | | (_| | | | |__| (_) | | | |  _| | (_| |
"  \____|\___|_| |_|\___|_|  \__,_|_|  \____\___/|_| |_|_| |_|\__, |
"                                                             |___/

" Set compatibility to Vim only. should be first, because it changes other options as a side effect
set nocompatible

" Turn on syntax highlighting
syntax on

" Faster syntax hl
syntax sync minlines=64

" Enable mouse mode
set mouse=a

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Correct colors with dark background
set background=dark

" Automatically wrap text that extends beyond the screen length.
set wrap

" Set editor layout
set textwidth=110
set formatoptions=tcqrn1
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Fixes common backspace problems
set backspace=indent,eol,start

" Allow switching between buffers without saving
set hidden

" Always show Statusbar
set laststatus=2

" Stops suggestion window being to wide
set linebreak

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number relativenumber

" Encoding
set encoding=utf-8

" Enable autocompletion
set wildmode=longest,list,full
set wildoptions=pum

" Highlight matching search patterns
set hlsearch

" Searches before hitting ENTER
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Window splitting
set splitbelow splitright

" Automatically remove whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Visual autocomplete for command menu
set wildmenu

" Redraw screen only when need too
set lazyredraw

" Show matching parenthesis
set showmatch

" Remove the pause when leaving insert mode
set timeoutlen=500

" Search down into subfolders
set path+=**

" Cmd line height
set cmdheight=2

" Fix vulnerabilities
set nomodeline

" Show command key pressed
set showcmd

" Show cursor position at all times
set ruler

" Disable swapfiles
set noswapfile

" No back up -use git
set nobackup
set nowritebackup

" Autoread a file if its changed on the outside
set autoread

" Blink cursor on error, instead of beeping
set visualbell

" Keep the cursor on the same column
set nostartofline

" Width that a <TAB> character displays as
set tabstop=4

" Convert <TAB> key-presses to spaces
set expandtab

" Number of spaces to use for each step of (auto)indent
set shiftwidth=4

" Backspace after pressing <TAB> will remove up to this many spaces
set softtabstop=4

" Makes popup menu smaller
set pumheight=10

" Copy indent from current line when starting a new line
set autoindent

" auto indent
filetype plugin indent on

" Allow changes to buffers
set modifiable

" Even better autoindent (e.g. add indent after '{')
set smartindent

" Enable Folding
set foldmethod=manual

" make sure folds are automatically loaded
set viewoptions=folds,cursor
set sessionoptions=folds

" Keep the cursor on the same column
set nostartofline

" use hex colors
set termguicolors

" Speed up scrolling in Vim
set ttyfast

" Set indentline character
let g:indentLine_char = '⎟' "┊│┊

" Dont ask to load sessions
let g:session_autoload = 'no'

" Set space as leader
let mapleader = " "

" Map , as local leader
let maplocalleader = ','

" :h g:incsearch#auto_nohlsearch
let g:incsearch#auto_nohlsearch = 1

" Open help pages in fullwindow
command! -nargs=1 -complete=help H help <args> | silent only

" No signcolumn bg
highlight clear signcolumn

" Add cursorline when entering insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul


" Change cursor behaviour when entering insert mode
let &t_SI.="\e[6 q" "SI = INSERT mode // steady bar
let &t_SR.="\e[4 q" "SR = REPLACE mode // underline
let &t_EI.="\e[4 q" "EI = NORMAL mode // underline


" Make sure vim returns to the line u closed the document on
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
endif


" Enable saving Folds
augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave,BufLeave,BufWritePost ?* nested silent! mkview!
    autocmd BufWinEnter ?* silent! loadview | call lightline#update()
augroup end


" Visual select mode move lines
function! s:Visual()
    return visualmode() == 'V'
endfunction

function! Move_up() abort range
    let l:at_top=a:firstline ==1
    if s:Visual() && !l:at_top
        '<,'>move '<-2
        call feedkeys('gv=', 'n')
    endif
    call feedkeys('gv', 'n')
endfunction

function! Move_down() abort range
    let l:at_bottom=a:lastline == line ('$')
    if s:Visual() && !l:at_bottom
        '<,'>move '>+1
        call feedkeys('gv=', 'n')
    endif
    call feedkeys('gv', 'n')
endfunction


" SaveMacro / LoadMacro
function! s:save_macro(name, file)
    let content = eval('@'.a:name)
    if !empty(content)
        call writefile(split(content, "\n"), a:file)
        echom len(content) . " bytes save to ". a:file
    endif
endfunction
command! -nargs=* SaveMacro call <SID>save_macro(<f-args>)

function! s:load_macro(file, name)
    let data = join(readfile(a:file), "\n")
    call setreg(a:name, data, 'c')
    echom "Macro loaded to @". a:name
endfunction
command! -nargs=* LoadMacro call <SID>load_macro(<f-args>)


" Hide last command after 3 seconds
function! s:empty_message(timer)
    echo ''
endfunction

augroup cmdline
    autocmd!
    autocmd CmdlineLeave : call timer_start(3000, funcref('s:empty_message'))
augroup END

