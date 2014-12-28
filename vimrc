set encoding=utf-8
scriptencoding utf-8

set nocompatible                       " be iMproved
filetype off                           " required!

" vundle 
" $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle.vim
" in vim: :PluginInstall

set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

" process all sub-configuration files
for filename in sort(split(glob('~/.vim/*.vim'), '\n'))
    execute 'source '.filename
endfor
