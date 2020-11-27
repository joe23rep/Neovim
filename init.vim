
"  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.
" | .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |
" | | ____   ____  | || |     _____    | || | ____    ____ | || |  _______     | || |     ______   | |
" | ||_  _| |_  _| | || |    |_   _|   | || ||_   \  /   _|| || | |_   __ \    | || |   .' ___  |  | |
" | |  \ \   / /   | || |      | |     | || |  |   \/   |  | || |   | |__) |   | || |  / .'   \_|  | |
" | |   \ \ / /    | || |      | |     | || |  | |\  /| |  | || |   |  __ /    | || |  | |         | |
" | |    \ ' /     | || |     _| |_    | || | _| |_\/_| |_ | || |  _| |  \ \_  | || |  \ `.___.'\  | |
" | |     \_/      | || |    |_____|   | || ||_____||_____|| || | |____| |___| | || |   `._____.'  | |
" | |              | || |              | || |              | || |              | || |              | |
" | '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |
"  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'


" Source config files
source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/plugins.vim
source ~/.config/nvim/config/coc.vim
source ~/.config/nvim/config/keybindings.vim
source ~/.config/nvim/config/whichkey.vim
source ~/.config/nvim/config/toggle.vim
source ~/.config/nvim/config/lightline.vim
source ~/.config/nvim/config/fzf.vim
source ~/.config/nvim/config/floaterm.vim
source ~/.config/nvim/config/plugconfig.vim
source ~/.config/nvim/config/startify.vim


" Colorzier and treesitter
luafile ~/.config/nvim/lua/treesitter.lua
luafile ~/.config/nvim/lua/plug-colorizer.lua

" Theme
colorscheme aurora
