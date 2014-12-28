if has("autocmd")
  autocmd FileType yaml     setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType ruby     setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType make     set noexpandtab
  autocmd FileType python   set noexpandtab
  autocmd Filetype gitcommit setlocal textwidth=72

  autocmd BufNewFile,BufRead Capfile setf ruby
  autocmd BufNewFile,BufRead Gemfile setf ruby
  autocmd BufNewFile,BufRead Gemfile.* setf ruby
endif



