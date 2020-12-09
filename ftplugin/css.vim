" Autoclose brackets and put curosr between
inoremap <buffer> {{ {<CR>}<C-o>O<Tab>

" Snippets
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
