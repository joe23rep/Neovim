
"
"  _    _  _      _        _      _
" | |  | || |    (_)      | |    | |
" | |  | || |__   _   ___ | |__  | | __ ___  _   _
" | |/\| || '_ \ | | / __|| '_ \ | |/ // _ \| | | |
" \  /\  /| | | || || (__ | | | ||   <|  __/| |_| |
"  \/  \/ |_| |_||_| \___||_| |_||_|\_\\___| \__, |
"                                             __/ |
"                                            |___/

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler



" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>


" " Create map to add keys to
let g:which_key_map =  {}
" " Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100



" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
" highlight default link WhichKey          Statement
" highlight default link WhichKeyGroup     Identifier
" highlight default link WhichKeyDesc      Identifier
" highlight default link WhichKeySeperator Operator

highlight default link WhichKey          Statement
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Delimeter
highlight default link WhichKeySeperator Operator


" Special  lightpurple
" Identifier  lightgreyishblue
" Statement  purple
" Macro  darkcoldblue
" Number  green
" Function  neonblue
" Delimiter  white
" Operator   coldlightgreen

" " Register which key map
call which_key#register('<Space>', "g:which_key_map")
"
" " Define prefix dictionary
let g:which_key_map =  {}




" " ______             __  _        ___  ___                      _
" " | ___ \           / _|(_)       |  \/  |                     (_)
" " | |_/ /_ __  ___ | |_  _ __  __ | .  . |  __ _  _ __   _ __   _  _ __    __ _  ___
" " |  __/| '__|/ _ \|  _|| |\ \/ / | |\/| | / _` || '_ \ | '_ \ | || '_ \  / _` |/ __|
" " | |   | |  |  __/| |  | | >  <  | |  | || (_| || |_) || |_) || || | | || (_| |\__ \
" " \_|   |_|   \___||_|  |_|/_/\_\ \_|  |_/ \__,_|| .__/ | .__/ |_||_| |_| \__, ||___/
" "                                                | |    | |                __/ |
" "                                                |_|    |_|               |___/
"
"
"
" Buffer Mappings-------------------------------------------------------

let g:which_key_map.B = {
      \ 'name'  : '+Bookmarks' ,
      \ 'mm'    : [':BookmarkToggle<CR>'                           , 'set or remove Bookmarks']   ,
      \ 'mi'    : [':BookmarkAnnotate<CR>'                         , 'add or remove text to Bookmark']   ,
      \ 'mn'    : [':BookmarkNext<CR>'                             , 'go to next Bookmark']   ,
      \ 'mp'    : [':BookmarkPrev<CR>'                             , 'go to previous Bookmark']   ,
      \ 'mc'    : [':BookmarkClear<CR>'                            , 'clear Bookmarks of current buffer']   ,
      \ 'mx'    : [':BookmarkClearAll<CR>'                         , 'clear all Bookmarks']   ,
      \ 'ms'    : [':BookmarkSave /file/path'                      , 'save all Bookmarks to a file']   ,
      \ 'ml'    : [':BookmarkLoad /file/path'                      , 'load Bookmarks from file']   ,
      \ }


" Explorer Mappings-----------------------------------------------------

let g:which_key_map.E = {
      \ 'name'  : '+Explorer' ,
      \ 'c'     : [':CocList commands'            , 'copy filepath']   ,
      \ 'Y'     : [':CocList commands'            , 'copy filename']   ,
      \ 'y'     : [':CocList commands'            , 'copy file']   ,
      \ 'x'     : [':CocList commands'            , 'cut file']   ,
      \ 'p'     : [':CocList commands'            , 'paste file']   ,
      \ 'd'     : [':CocList commands'            , 'delete file']   ,
      \ 't'     : [':CocList commands'            , 'add file']   ,
      \ 'mk'    : [':CocList commands'            , 'mkdir']   ,
      \ 'r'     : [':CocList commands'            , 'rename']   ,
      \ '.'     : [':CocList commands'            , 'toggle hidden']   ,
      \ 'R'     : [':CocList commands'            , 'refresh']   ,
      \ '?'     : [':CocList commands'            , 'help']   ,
      \ 'H'     : [':CocList commands'            , 'collapse']   ,
      \ 'q'     : [':CocList commands'            , 'quit']   ,
      \ 'f'     : [':CocList commands'            , 'search']   ,
      \ 'h'     : [':CocList commands'            , 'go to parent dir']   ,
      \ '<TAB>' : [':CocList commands'            , 'actionmenu']   ,
      \ }


" Open Files Mappings---------------------------------------------------

" let g:which_key_map.o = {
"       \ 'name' : '+open-Files' ,
"       \ 'i'    : [':tabedit ~/.config/nvim/init.vim'                      , 'open init.vim']   ,
"       \ 't'    : [':tabedit ~/Dots/.tmux.conf'                            , 'open tmux.conf']   ,
"       \ 'z'    : [':tabedit ~/Dots/.zshrc'                                , 'open zshrc']   ,
"       \ 'g'    : [':tabedit ~/.config/nvim/colors/aurora.vim'             , 'open colortheme']   ,
"       \ 'c'    : [':tabedit ~/.config/nvim/config/coc.vim'                , 'open coc.vim']   ,
"       \ 'w'    : [':tabedit ~/.config/nvim/config/whichkey.vim'           , 'open whichkey.vim']   ,
"       \ 'f'    : [':tabedit ~/.config/nvim/config/fzf.vim'                , 'open fzf.vim']   ,
"       \ 'ge'    : [':tabedit ~/.config/nvim/config/general.vim'            , 'open general.vim']   ,
"       \ 'l'    : [':tabedit ~/.config/nvim/config/lightline.vim'          , 'open lightline.vim']   ,
"       \ 'p'    : [':tabedit ~/.config/nvim/config/plugins.vim'            , 'open plugins.vim']   ,
"       \ 'n'    : [':tabedit ~/.config/nvim/config/nerdtree.vim'           , 'open nerdtree.vim']   ,
"       \ 'tt'   : [':tabedit ~/.config/nvim/config/toggle.vim'             , 'open toggle.vim']   ,
"       \ 'ff'   : [':tabedit ~/.config/nvim/config/floaterm.vim'           , 'open floaterm.vim']   ,
"       \ 'k'    : [':tabedit ~/.config/nvim/config/keybindings.vim'        , 'open keybindings.vim']   ,
"       \ 'cc'   : [':tabedit ~/.config/nvim/coc-settings.json'             , 'open coc-settings.json']   ,
"       \ 'll'   : [':tabedit ~/.config/nvim/lua/plug-colorizer.lua'        , 'open plug.colorizer.lua']   ,
"       \ }


" Normal Mode Mappings--------------------------------------------------

" let g:which_key_map.N = {
let g:which_key_map.o = {
      \ 'name'  : '+File-Operations'      ,
      \ 'd'     : [':Delete'                , 'delete current file']   ,
      \ 'u'     : [':Unlink'                , 'like delete but keeps empty buffer']   ,
      \ 'm'     : [':Move'                  , 'move current file']   ,
      \ 'r'     : [':Rename'                , 'rename current file']   ,
      \ 'ch'    : [':Chmod'                 , 'chmod']   ,
      \ 'mk'    : [':Mkdir'                 , 'mkdir']   ,
      \ 'sw'    : [':SudoWrite'             , 'save as root']   ,
      \ 'se'    : [':SudoEdit'              , 'edit root files']   ,
      \ }


" Coc Mappings----------------------------------------------------------

let g:which_key_map.co = {
     \ 'name' : '+Coc' ,
      \ '.'   : [':CocConfig'                          , 'config'],
      \ ';'   : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a'   : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A'   : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b'   : [':CocNext'                            , 'next action'],
      \ 'B'   : [':CocPrev'                            , 'prev action'],
      \ 'c'   : [':CocList commands'                   , 'commands'],
      \ 'd'   : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D'   : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'ex'  : [':CocList extensions'                 , 'extensions'],
      \ 'e'   : [':CocCommand explorer'                , 'explorer at CWD'],
      \ 'ee'  : [':CocCommand explorer --preset vim'   , 'explorer at ~/'],
      \ 'f'   : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F'   : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h'   : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i'   : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I'   : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j'   : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l'   : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n'   : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N'   : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o'   : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O'   : [':CocList outline'                    , 'outline'],
      \ 'p'   : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P'   : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q'   : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r'   : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R'   : ['<Plug>(coc-references)'              , 'references'],
      \ 's'   : [':CocList -I symbols'                 , 'references'],
      \ 'S'   : [':CocList snippets'                   , 'snippets'],
      \ 't'   : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u'   : [':CocListResume'                      , 'resume list'],
      \ 'U'   : [':CocUpdate'                          , 'update CoC'],
      \ 'v'   : [':Vista!!'                            , 'tag viewer'],
      \ 'z'   : [':CocDisable'                         , 'disable CoC'],
      \ 'Z'   : [':CocEnable'                          , 'enable CoC'],
      \ }


" FZF Mappings----------------------------------------------------------

let g:which_key_map.F = {
      \ 'name': '+FZF' ,
      \ 'fb'  :  [':Buffers'        , 'show-buffer']   ,
      \ 'mm'  :  [':History'        , 'show latest copied words']   ,
      \ 'm'   :  [':Histroy/'       , 'show latest changed files']     ,
      \ 'C'   :  [':Colors'         , 'choose Vim colorthemes'] ,
      \ 's'   :  [':Lines'          , 'search file']      ,
      \ 'sd'  :  [':BLines'         , 'search file']      ,
      \ 'f'   :  [':FloatermNew fzf', 'open fzf in Terminal']      ,
      \ 'rg'  :  [':Rg'             , 'search for words in document']      ,
      \ 'ff'  :  [':Files'          , 'search files in CWD']      ,
      \ 'bm'  :  [':CocCommand fzf-preview.Bookmarks'          , 'show Bookmarks']      ,
      \ 'di'  :  [':CocCommand fzf-preview.CocDiagnostics'     , 'show Diagnostics']      ,
      \ }


" Change Colors Mappings------------------------------------------------

let g:which_key_map.cc = {
      \ 'name': '+Cycle-Colors' ,
      \ 'tr'  :  [':ToRGB'          , 'convert to RGB']   ,
      \ 'th'  :  [':ToHex'          , 'convert to Hex']   ,
      \ 'ts'  :  [':ToHSLA'         , 'convert to HSLA']   ,
      \ 'tha' :  [':ToHexAll'       , 'convert all to Hex']   ,
      \ 'tra' :  [':ToRGBAll'       , 'convert all to RGB']   ,
      \ 'trb' :  [':ToRGBAAll'      , 'convert all to RGBA']   ,
      \ 'ths' :  [':ToHSLAAll'      , 'convert all to HSLA']   ,
      \ }


" Vim Sessions-and Macros-----------------------------------------------

let g:which_key_map.S = {
      \ 'name': '+Sessions/Macros' ,
      \ 'ss'  :  [':SaveSession'     , 'save session']   ,
      \ 'os'  :  [':OpenSession<cr>'     , 'open session']   ,
      \ 'ds'  :  [':DelteSession'    , 'delete session']   ,
      \ 'st'  :  [':SaveTabSession'  , 'save tabbed session']   ,
      \ 'ot'  :  [':OpenTabSession'  , 'open tabbed session']   ,
      \ 'dt'  :  [':DelteTabSession' , 'delete tabbed session']   ,
      \ 'qqy' :  ['qqy'              , 'comment out and c/p current line']   ,
      \ }


" Insert Mode Mappings------------------------------------------------

" let g:which_key_map.I = {
"       \ 'name' : '+Insert Mode' ,
"       \ 'Ctrl o' : ['<esc>o'        , 'add line below/ stay in In Mode']   ,
"       \ 'Ctrl O' : ['<esc>O'        , 'add line above/ stay in In Mode']   ,
"       \ 'öö'     : ['<esc>'         , 'leave Insert Mode']   ,
"       \ 'Ctrl j' : ['<down>'        , 'go one line down']   ,
"       \ 'Ctrl k' : ['<up>'          , 'go one line up']   ,
"       \ 'Ctrl h' : ['<left>'        , 'move cursor left']   ,
"       \ 'Ctrl l' : ['<right>'       , 'move cursor right']   ,
"       \ 'Tab'    : ['<up>'          , 'jump inside snippets to the next position']   ,
"             \ }


" Git Mappings----------------------------------------------------------

let g:which_key_map.G = {
      \ 'name'  : '+Git' ,
      \ 'a'     : [':Git add'        , 'add']   ,
      \ 'c'     : [':Git commit'     , 'commit']   ,
      \ 'p'     : [':Git push'       , 'push']     ,
      \ 'ga'    : [':CocCommand fzf-preview.GitActions'       , 'Git Actions']     ,
      \ 'gs'    : [':CocCommand fzf-preview.GitStatus'        , 'Git Status']     ,
      \ 'd'     : [':Git diff'       , 'diff'] ,
      \ 'l'     : [':Git log'        , 'show log']      ,
      \ 'R'     : [':GRemove'        , 'remove commit']      ,
      \ 'gv'    : [':GV'             , 'open commit browser']      ,
      \ 'gh'    : [':GV!'            , 'list commits of current file']      ,
      \ }


" Plugin Mappings------------------------------------------------------

let g:which_key_map.p = {
      \ 'name' : '+Plugins' ,
      \ 'i'    : [':PlugInstall'     , 'Plug install']   ,
      \ 'u'    : [':PlugUpdate'      , 'Plug update']   ,
      \ 'g'    : [':PlugUpgrade'     , 'Plug upgrade']   ,
      \ 'c'    : [':PlugClean'       , 'Plug clean']   ,
      \ }


" Vimwiki Mappings-----------------------------------------------------

let g:which_key_map.w = {
      \ 'name' : '+Vimwiki' ,
      \ 'w'    : ['<Plug>VimwikiIndex'          , 'open Index file']   ,
      \ 't'    : ['<Plug>VimwikiTabIndex'       , 'open Index file in new Tab']   ,
      \ 's'    : ['<Plug>VimwikiUISelect'       , 'List all available wikis']   ,
      \ 'd'    : ['<Plug>VimwikiDeleteFile'     , 'delete active wiki file ']   ,
      \ 'n'    : ['<Plug>VimwikiGoto'           , 'create and go to new wiki file']   ,
      \ 'r'    : ['<Plug>VimwikiRenameFile'     , 'rename current wiki file']   ,
      \ 'i'    : ['<Plug>VimwikiDiaryIndex'     , 'go to Diary Index file']   ,
      \ }


" Leader Mappings------------------------------------------------------

let g:which_key_map.l = {
      \ 'name': '+Leader' ,
      \ 'hs'  : [':split'                                 , 'horizontal split']   ,
      \ 'w'   : ['mz:%s/\s\+$//<cr>:let @/=''<cr>`z'      , 'clean whitespace']   ,
      \ 'sr'  : [':%//g<left><left>'                      , 'search and replace']   ,
      \ 'r'   : [':%s/<C-r><C-w>//g<Left><Left>'          , 'replace word u/ cursor']   ,
      \ 'c'   : [':let @/=""<cr>'                         , 'remove highlights']   ,
      \ 'sf'  : [':source %<cr>'                          , 'source current buffer']   ,
      \ 'j'   : [':call GotoJump()'                       , 'open Jumplist']   ,
      \ 'h'   : ['<Plug>(GitGutterNextHunk)'              , 'next Hunk']   ,
      \ 'H'   : ['<Plug>(GitGutterPrevHunk)'              , 'previous Hunk']   ,
      \ 'as'  : [':AutoSaveToggle<cr>'                    , 'toggle Autosave']   ,
      \ 'gv'  : [':GV!'                                   , 'open commit browser']   ,
      \ 'g'   : [':Goyo'                                  , 'Goyo']   ,
      \ 't'   : [':TagbarToggle<cr>'                      , 'Tagbar']   ,
      \ 'ls'  : [':Bracey'                                , 'open Live Server']   ,
      \ 'Ls'  : [':BraceyStop'                            , 'stop Live Server']   ,
      \ 'rr'  : [':FloatermNew ranger'                    , 'Ranger']   ,
      \ 'lg'  : [':FloatermNew cd ~/config && lazygit'    , 'Lazygit']   ,
      \ 'ss'  : [':SaveSession'                           , 'save session']   ,
      \ 'os'  : [':OpenSession'                           , 'open session']   ,
      \ 'vs'  : [':ViewSession'                           , 'view session']   ,
      \ 'br'  : [':FloatermNew broot'                     , 'Broot']   ,
      \ }


"  _____  _                _        ___  ___                      _
" /  ___|(_)              | |       |  \/  |                     (_)
" \ `--.  _  _ __    __ _ | |  ___  | .  . |  __ _  _ __   _ __   _  _ __    __ _  ___
"  `--. \| || '_ \  / _` || | / _ \ | |\/| | / _` || '_ \ | '_ \ | || '_ \  / _` |/ __|
" /\__/ /| || | | || (_| || ||  __/ | |  | || (_| || |_) || |_) || || | | || (_| |\__ \
" \____/ |_||_| |_| \__, ||_| \___| \_|  |_/ \__,_|| .__/ | .__/ |_||_| |_| \__, ||___/
"                    __/ |                         | |    | |                __/ |
"                   |___/                          |_|    |_|               |___/

" Single Mappings

nnoremap <leader>a :AutoSaveToggle<CR>

nnoremap <silent> <leader>vs :vs<CR>

nnoremap <Leader>j :call GotoJump()<CR>

nnoremap <silent> <leader>nn :NERDTreeFind<CR>

nnoremap <leader>r :%s/<C-r><C-w>//g<Left><Left>

nnoremap <silent> <leader>sr :%s//g<left><left>

nnoremap <silent> <leader>c :let @/=""<CR>

nnoremap <silent> <leader>sf :source %<CR>

nnoremap <silent> <leader>ls :Bracey<CR>


nnoremap <silent>gv :GV!<CR>
let g:which_key_map.gv = 'show Commits'

nnoremap cy yyccp
let g:which_key_map.cy = 'yank/comment/paste Line'

" Map gy to copy, comment out and paste the current paragraph
nnoremap gy v$Jyv$JgcJp
let g:which_key_map.gy = 'yank/comment/paste Block'

nmap tt :TagbarToggle<CR>
let g:which_key_map.tt = 'toggle Tagbar'

nmap <silent><leader>ch       :CocCommand fzf-preview.Changes<CR>
let g:which_key_map.ch = 'show Changes'

nmap <silent><leader>j        :CocCommand fzf-preview.Jumps<CR>
let g:which_key_map.j = 'show Jumps'

nmap <silent> <leader>bm       :CocCommand fzf-preview.Bookmarks<CR>
let g:which_key_map.bm = 'show Bookmarks'
" let g:which_key_map.f = { 'name' : '+file' }

nmap <silent><leader>sw :SudoWrite<CR>
let g:which_key_map.sw = 'save as root'

"  _____                                  _      _       _
" |_   _|                                | |    (_)     | |
"   | |   __ _  _ __    ___   _ __  ___  | |     _  ___ | |_
"   | |  / _` || '_ \  / _ \ | '__|/ _ \ | |    | |/ __|| __|
"  _| |_| (_| || | | || (_) || |  |  __/ | |____| |\__ \| |_
"  \___/ \__, ||_| |_| \___/ |_|   \___| \_____/|_||___/ \__|
"         __/ |
"        |___/

" Ignore List

let g:which_key_map.a = 'which_key_ignore'
let g:which_key_map.ee = 'which_key_ignore'
let g:which_key_map.sd = 'which_key_ignore'
let g:which_key_map.ws = 'which_key_ignore'
let g:which_key_map.qq = 'which_key_ignore'
let g:which_key_map.os = 'which_key_ignore'
let g:which_key_map.ds = 'which_key_ignore'
let g:which_key_map.ss = 'which_key_ignore'
let g:which_key_map.dt = 'which_key_ignore'
let g:which_key_map.ot = 'which_key_ignore'
let g:which_key_map.st = 'which_key_ignore'
let g:which_key_map.ga = 'which_key_ignore'
let g:which_key_map.gs = 'which_key_ignore'
let g:which_key_map.st = 'which_key_ignore'
let g:which_key_map.vs = 'which_key_ignore'
let g:which_key_map.nn = 'which_key_ignore'
let g:which_key_map.r = 'which_key_ignore'
let g:which_key_map.sr = 'which_key_ignore'
let g:which_key_map.c = 'which_key_ignore'
let g:which_key_map.sf = 'which_key_ignore'
let g:which_key_map.br = 'which_key_ignore'
let g:which_key_map.ws = 'which_key_ignore'
let g:which_key_map.bo = 'which_key_ignore'
" let g:which_key_map.gv = 'which_key_ignore'
let g:which_key_map.pi = 'which_key_ignore'
let g:which_key_map.e = 'which_key_ignore'
let g:which_key_map.gvv = 'which_key_ignore'
let g:which_key_map.th = 'which_key_ignore'
let g:which_key_map.tha = 'which_key_ignore'
let g:which_key_map.tr = 'which_key_ignore'
let g:which_key_map.tra = 'which_key_ignore'
let g:which_key_map.nb = 'which_key_ignore'
let g:which_key_map.b = 'which_key_ignore'
let g:which_key_map.bn = 'which_key_ignore'
let g:which_key_map.n = 'which_key_ignore'
let g:which_key_map.bp = 'which_key_ignore'
let g:which_key_map.f = 'which_key_ignore'
let g:which_key_map.fb = 'which_key_ignore'
let g:which_key_map.ff = 'which_key_ignore'
let g:which_key_map.m = 'which_key_ignore'
let g:which_key_map.tc = 'which_key_ignore'
let g:which_key_map.mm = 'which_key_ignore'
let g:which_key_map.rg = 'which_key_ignore'
let g:which_key_map.z = 'which_key_ignore'
let g:which_key_map.g = 'which_key_ignore'
let g:which_key_map.v = 'which_key_ignore'
let g:which_key_map.t = 'which_key_ignore'
let g:which_key_map.trb = 'which_key_ignore'
let g:which_key_map.ts = 'which_key_ignore'
let g:which_key_map.ths = 'which_key_ignore'
let g:which_key_map.cb = 'which_key_ignore'
let g:which_key_map.hs = 'which_key_ignore'
let g:which_key_map.bb = 'which_key_ignore'
let g:which_key_map.ga = 'which_key_ignore'
let g:which_key_map.ga = 'which_key_ignore'
let g:which_key_map.gc = 'which_key_ignore'
let g:which_key_map.gp = 'which_key_ignore'
let g:which_key_map.q = 'which_key_ignore'
let g:which_key_map.gd = 'which_key_ignore'
let g:which_key_map.gr = 'which_key_ignore'
let g:which_key_map.C = 'which_key_ignore'
let g:which_key_map.rr = 'which_key_ignore'
let g:which_key_map.br = 'which_key_ignore'
let g:which_key_map.s = 'which_key_ignore'

"---------------------------------------------------------------------------
" to delete prefix and prefix items:
"
let g:which_key_map._ = {'name' : 'which_key_ignore'}
let g:which_key_map._._ = 'which_key_ignore'
















