
" Keybindings -------------------------------------------------------------------------------
"  _  __            ____  _           _
" | |/ /___ _   _  | __ )(_)_ __   __| |___
" | ' // _ \ | | | |  _ \| | '_ \ / _` / __|
" | . \  __/ |_| | | |_) | | | | | (_| \__ \
" |_|\_\___|\__, | |____/|_|_| |_|\__,_|___/
"           |___/

"---------------------------------------------------------------
" Normal Mode
"---------------------------------------------------------------

" Move vertically by visual line
nmap j gj
nmap k gk

" Map cc to comment out current line
nmap cc gcc

" Map qq to call macros
nmap qq @

" Map cy to copy, comment out and paste the current line
nmap cy yyccp

" Map gy to copy, comment out and paste the current paragraph
nmap gy yipgcip}p

" Map cg to comment out the current paragraph without selecting it first
nmap xy gcip

" Tab / Shift Tab to switch buffers
nmap <S-Tab> :bp<CR>
nmap <Tab>   :bn<CR>

" Pressing enter now adds a line without going in insert mode
nmap <CR> o<Esc>

" Map Ctrl S to safe
nmap <C-s> :w!<CR>

" Map Ctrl q to safe and quit
nmap <C-q> :wq!<CR>

" Ctrl A to select all
nmap <C-a> ggVG

" Press Space twice to enter insert mode.
nmap <Space><Space> i

" Map H+L to go to end or beginning of a line
nmap L $
nmap H ^

" Map J/K to jump between paragraphs
nmap J }
nmap K {

" Map redo
nmap U <C-R>
nmap <C-z> <C-R>

" Ctrl f to search
nmap <C-f> /


"---------------------------------------------------------------
" Insert Mode
"---------------------------------------------------------------

" Ctrl o to add one line down while staying in insert mode
imap <C-o> <esc>o

" Map Ctrl S to safe
imap <C-s> <esc>:w<CR>

" Map Ctrl q to safe and quit
imap <C-q> <esc>:wq<CR>

" Auto close brackets --needs inoremap
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>

" Map Ctrl+ vim keys to move normal in insert mode
imap <C-l> <right>
imap <C-h> <left>
imap <C-k> <up>
imap <C-j> <down>
imap <C-L> <esc>A
imap <C-H> <esc>H

 " <TAB>: completion.
 imap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


"--------------------------------------------------------------
" Visual Mode
"--------------------------------------------------------------

" Move lines
xmap <silent><C-k> :call Move_up()<CR>
xmap <silent><C-j> :call Move_down()<CR>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Map J/K to jump between paragraphs
vmap J }
vmap K {

" Map gy to copy, comment out and paste the current paragraph
vmap gy v{jV}kyv$}k$gc}P


" Copy and Paste -----------------------------------------------

" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nmap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Copy and paste to system clipboard (requires gvim installed)
nmap <C-p> "+P
imap <C-p> <esc>"+P
nmap Y y$
vmap <C-y>  "+y
nmap <C-y>  "+y
nmap <C-yy>  "+yy


" Escape mappings ----------------------------------------------

imap jk <esc>
vmap jk <esc>
cmap jk <C-c>
imap kj <esc>
vmap kj <esc>
cmap kj <C-c>
imap jj <esc>
imap öö <esc>
imap jk <esc>


"---------------------------------------------------------------
" Plugin Mappings
"---------------------------------------------------------------

" Toggle Boolean Values ----------------------------------------

nmap +      :call Toggle()<CR>
vmap + <esc>:call Toggle()<CR>


" Vim-Session---------------------------------------------------

nmap <leader>ss :SaveSession!<CR>
nmap <leader>os :OpenSession!<CR>


" Bracey--------------------------------------------------------

nmap <leader>ls :Bracey<CR>


" Broot---------------------------------------------------------

nmap <leader>br :FloatermNew broot<CR>


" Auto Close Tag -----------------------------------------------

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'


" Open_file_under_cursor ---------------------------------------

" Override vim commands 'gf', '^Wf', '^W^F'
nmap <silent>gf :call GotoFile("")<CR>


" Tagbar -------------------------------------------------------

nmap <silent><leader>tt :TagbarToggle<CR>


" FZF ----------------------------------------------------------

nmap <silent><leader>m  :History<CR>
nmap <silent><leader>C  :Colors<CR>
nmap <silent><leader>sd :Lines<CR>
nmap <silent><leader>s  :BLines<CR>
nmap <silent><leader>rg :Rg<CR>
nmap <silent><leader>f  :Files ~/<CR>
nmap <silent><leader>ff :Files<CR>
" nmap <silent><leader>ff :FloatermNew fzf --color=fg:-1,bg:-1,hl:#00eeff,fg+:-1,bg+:-1,hl+:#00ff5f,info:#cd1bfc,prompt:#00eeff,pointer:#00ff5f,marker:#cd1bfc,spinner:#cd1bfc<CR>


" GV ------------------------------------------------------------

" Open Commits of current file
nmap <leader>gv  :GV!<CR>


" Gitgutter -----------------------------------------------------

" Switch between last changed Parts
nmap ) <Plug>(GitGutterNextHunk)
nmap ( <Plug>(GitGutterPrevHunk)


" Easymotion -----------------------------------------------------

nmap ,, <Plug>(easymotion-prefix)


" CSS Minister----------------------------------------------------

" Cycle threw Colortypes
nmap <silent><leader>tr :ToRGB<CR>
nmap <silent><leader>th :ToHex<CR>
nmap <silent><leader>ts :ToHSLA<CR>
nmap <silent><leader>tha :ToHexAll<CR>
nmap <silent><leader>tra :ToRGBAll<CR>
nmap <silent><leader>trb :ToTGBAAll<CR>
nmap <silent><leader>ths :ToHSLAAll<CR>


" Floaterm--------------------------------------------------------

nmap <silent><leader>lg :FloatermNew  cd ~/Dots && lazygit<CR>
nmap <silent><leader>rr :FloatermNew ranger <CR>
nmap <silent><leader>bo :FloatermNew broot <CR>


" Coc Mappings----------------------------------------------------

" Explorer
nmap <silent><leader>e :CocCommand explorer --toggle<CR>
nmap <silent><leader>ee :CocCommand explorer --preset vim --toggle<CR>
" nmap <space>e :CocCommand explorer --preset floatingRightside<CR>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <CR> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Coc Fzf Preview
nmap <silent> <leader>ch       :CocCommand fzf-preview.Changes<CR>
nmap <silent> <leader>j        :CocCommand fzf-preview.Jumps<CR>
nmap <silent> <leader>ga       :CocCommand fzf-preview.GitActions<CR>
nmap <silent> <leader>gs       :CocCommand fzf-preview.GitStatus<CR>
nmap <silent> <leader>bm       :CocCommand fzf-preview.Bookmarks<CR>


" Leader Key Mappings ----------------------------------------------------------------------
"   _                   _             _  __
"  | |    ___  __ _  __| | ___ _ __  | |/ /___ _   _ ___
"  | |   / _ \/ _` |/ _` |/ _ \ '__| | ' // _ \ | | / __|
"  | |__|  __/ (_| | (_| |  __/ |    | . \  __/ |_| \__ \
"  |_____\___|\__,_|\__,_|\___|_|    |_|\_\___|\__, |___/
"                                              |___/

" Map leader q to quit without saving
nmap <leader>q :q!<CR>

" Map leader qq to quit all without saving
nmap <leader>qq :qall!<CR>

" Switch buffers
map <silent><leader>b :bp<CR>
map <silent><leader>n :bn<CR>

" Close buffer
map <silent><leader>cb :bd<CR>

" Load files via shortcuts
nmap <silent><leader>v :tabedit ~/.config/nvim/init.vim<CR>
nmap <silent><leader>z :tabedit ~/Dots/.zshrc<CR>
nmap <silent><leader>t :tabedit ~/Dots/.tmux.conf<CR>
nmap <silent><leader>g :tabedit ~/.config/nvim/colors/aurora.vim<CR>

" Map splits
nmap <silent><leader>vs :vs<CR>

" Map search and replace
nmap <leader>sr :%s//g<left><left>

" Map search word under cursor and replace it
nmap <leader>r :%s/<C-r><C-w>//g<Left><Left>

" Stop showing Search highlights
nmap <silent><leader>nh :let @/=""<CR>

" Plug install shortcut
nmap <silent><leader>pi :PlugInstall<CR>

" Open new empty buffer
nmap <silent><leader>nb :enew<CR>

" Source current buffer
nmap <leader>sf :source %<CR>

" Open Ranger inside Floaterm
nmap <silent><leader>rr :FloatermNew ranger <CR>
" nmap <leader>rr :FloatermNew --height=0.7 --width=0.9 --wintype=floating --name=Ranger --position=center --autoclose=2 ranger --cmd="cd ~" <CR>

" Root file interactions
nmap <silent><leader>sw :SudoWrite<CR>
nmap <silent><leader>se :SudoEdit<CR>

"---------------------------------------------------------------
" Abbreviations
"---------------------------------------------------------------

" Change help to Help which will open it in fullscreen
cnoreabbrev help H
cnoreabbrev h H
