set list
set listchars=tab:▸·,trail:¬,extends:»,precedes:«,nbsp:·,eol:¶
set number

syntax on
colorscheme Tomorrow-Night

" 80 chars per line please
highlight OverLength ctermbg=darkgrey ctermfg=white guibg=#111111
highlight OverLengthWarn ctermbg=darkgrey ctermfg=white guibg=#111111
highlight TrailingWhitespace ctermbg=darkgrey ctermfg=white guibg=#111111

au BufWinEnter * let w:m1=matchadd('OverLengthWarn',     '\%<81v.\%>77v', -1)
au BufWinEnter * let w:m2=matchadd('OverLength',         '\%>80v.\+', -1)
au BufWinEnter * let w:m2=matchadd('TrailingWhitespace', '\s\+$', -1)

set colorcolumn=+1
