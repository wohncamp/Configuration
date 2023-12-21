syntax on

set number
set tabstop=4
set shiftwidth=4
set cindent
set autoindent
set smartindent
set expandtab
set smarttab
set ruler
set showcmd

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap gd <plug>(lsp-definition)
nmap gs <plug>(lsp-document-symbol-search)
nmap gS <plug>(lsp-workspace-symbol-search)
nmap gr <plug>(lsp-references)
nmap gi <plug>(lsp-implementation)
nmap gt <plug>(lsp-type-definition)
nmap <leader>rn <plug>(lsp-rename)
nmap [g <plug>(lsp-previous-diagnostic)
nmap ]g <plug>(lsp-next-diagnostic)
nmap K <plug>(lsp-hover)

