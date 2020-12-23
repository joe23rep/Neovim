
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

" Enable Javascript
let g:tagbar_type_javascript = {
            \ 'ctagstype': 'javascript',
            \ 'kinds': [
            \ 'A:arrays',
            \ 'P:properties',
            \ 'T:tags',
            \ 'O:objects',
            \ 'G:generator functions',
            \ 'F:functions',
            \ 'C:constructors/classes',
            \ 'M:methods',
            \ 'V:variables',
            \ 'I:imports',
            \ 'E:exports',
            \ 'S:styled components'
            \ ]}

" Enable JSON
let g:tagbar_type_json = {
            \ 'ctagstype' : 'json',
            \ 'kinds' : [
              \ 'o:objects',
              \ 'a:arrays',
              \ 'n:numbers',
              \ 's:strings',
              \ 'b:booleans',
              \ 'z:nulls'
            \ ],
            \'sro' : '.',
            \ 'scope2kind': {
            \ 'object': 'o',
              \ 'array': 'a',
              \ 'number': 'n',
              \ 'string': 's',
              \ 'boolean': 'b',
              \ 'null': 'z'
            \ },
            \ 'kind2scope': {
            \ 'o': 'object',
              \ 'a': 'array',
              \ 'n': 'number',
              \ 's': 'string',
              \ 'b': 'boolean',
              \ 'z': 'null'
            \ },
            \ 'sort' : 0
            \ }

" Set width
let g:tagbar_width = 30

" Open Tags with single click
let g:tagbar_singleclick = 1

" Automatically open and close tagbar based on filetype
autocmd BufWinEnter *.css,*.html,*.scss,*.json :TagbarOpen
autocmd BufWinLeave *.css,*.html,*.scss,*.json :TagbarClose


" Gitgutter----------------------------------------------------------------------------------

let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_added = '+'


" Vimwiki------------------------------------------------------------------------------------

" Set markdown as wiki language
let g:vimwiki_list = [{'path': '~/.config/nvim/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


" Hexokinase---------------------------------------------------------------------------------

" Set Color Highlight Style
" let g:Hexokinase_highlighters = ['backgroundfull']
let g:Hexokinase_highlighters = ['virtual']

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


" Fzf Preview---------------------------------------------------------------------------------

" Floating window size ratio
let g:fzf_preview_floating_window_rate = 0.8

" Use vim-devicons
let g:fzf_preview_use_dev_icons = 1

" devicons character width
let g:fzf_preview_dev_icon_prefix_string_length = 3


let g:fzf_preview_disable_mru = 0
let g:fzf_preview_command = 'bat --color=always --plain {-1}'
let g:fzf_preview_default_fzf_options = { '--reverse': v:true, '--preview-window': 'wrap:70%' }
let g:fzf_preview_git_status_preview_command =
	\ "[[ $(git diff --cached -- {-1}) != \"\" ]] && git diff --cached --color=always -- {-1} | delta || " .
	\ "[[ $(git diff -- {-1}) != \"\" ]] && git diff --color=always -- {-1} | delta || " .
	\ g:fzf_preview_command


" Vim Bookmarks-------------------------------------------------------------------------------

" let g:bookmark_sign = ''
let g:bookmark_sign = ''
let g:bookmark_highlight_lines = 0
let g:bookmark_annotation_sign = '✑'
