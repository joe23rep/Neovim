
 " Vim Auto Closetag -------------------------------------------------------------------------

" Filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" Filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'

" Filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml,js'

" Filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js'

" Integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
            \ 'typescript.tsx': 'jsxRegion,tsxRegion',
            \ 'javascript.jsx': 'jsxRegion',
            \ }

" Tagbar ------------------------------------------------------------------------------------

" Enable CSS
let g:tagbar_type_css = {
            \ 'ctagstype' : 'Css',
            \ 'kinds'     : [
            \ 'c:classes',
            \ 's:selectors',
            \ 'i:identities'
            \ ]
            \ }

" Set width
let g:tagbar_width = 30

" Open Tags with single click
let g:tagbar_singleclick = 1

" Automatically open and close tagbar
autocmd BufWinEnter *.css,*.html,*.scss :TagbarOpen
autocmd BufWinLeave *.css,*.html,*.scss :TagbarClose


" Gitgutter----------------------------------------------------------------------------------

let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_added = '+'


" Vimwiki------------------------------------------------------------------------------------

let g:vimwiki_list = [{'path': '~/.config/nvim/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


" Hexokinase---------------------------------------------------------------------------------

" Set Color Highlight Style
let g:Hexokinase_highlighters = ['foregroundfull']
" let g:Hexokinase_highlighters = ['virtual']

" Set Type to display colors
let g:Hexokinase_optInPatterns = 'colour_names'
" let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'


" Tmux --------------------------------------------------------------------------------------

" Cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[6 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[4 q\<Esc>\\"
else
    let &t_SI = "\e[6 q"  "SI = Insertmode 6= steady bar
    let &t_EI = "\e[4 q"  "EI = Normalmode $= underline
endif


" Stop autocommenting new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" Sessions------------------------------------------------------------------------------------

" Set session name
let g:session_default_name = 'foo'

" Automatically override seiions with same name
let g:session_default_overwrite = 'true'

" Autosave sessions without prompt
let g:session_autosave = 'yes'


" Vim Alias-----------------------------------------------------------------------------------

" Allow to create aliases after vim started
if exists('s:loaded_vimafter')
  silent doautocmd VimAfter VimEnter *
else
  let s:loaded_vimafter = 1
  augroup VimAfter
    autocmd!
    autocmd VimEnter * source ~/.vim/after/vimrc.vim
  augroup END
endif

" Indentlines special coc settings------------------------------------------------------------

let g:indentLine_fileTypeExclude = ['coc-explorer']
