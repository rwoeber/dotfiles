let g:mapleader = ","

nnoremap <leader><space> :noh<cr>      " clear out search by typing ,<space>.
nnoremap <leader>w <C-w>v<C-w>l

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
