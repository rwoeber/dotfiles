" prevents some security exploits
set modelines=0


" soft tabs
set ts=4 sts=4 sw=4 expandtab
filetype plugin indent on


set matchtime=5
set timeoutlen=250                     " Time to wait after ESC (default causes an annoying delay)
set history=1000
set confirm                            " Better ask back 

set ffs=unix,dos,mac
set nowrap                             " Line wrapping off
set scrolloff=3                        " Minimal number of screen lines to keep above and below the cursor.
set autoindent                         " Copy indent from current line when starting a new 
set showcmd                            " Show (partial) command in the last line of the screen.
set wildmenu                           " command-line completion operates in an enhanced mode
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast                            " Improves smoothness of redrawing
set laststatus=2	                   " Always show status line. Needed by vim-powerline-plugin
set backspace=indent,eol,start
set relativenumber


" make regexes more sane
" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase                          " case-sensitive search when one or more Upper-Case characters
set gdefault                           " always replace all occurrences in a line
set incsearch                          " Live search
set showmatch                          " show matching brackets (half of a second)
set hlsearch                           " When there is a previous search pattern, highlight all its matches.


set updatetime=750                     " swapfile write and gitgutter delay


