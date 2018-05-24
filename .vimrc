" Begin {
  set nocompatible
  source ~/.vimrc.fn
" }

" VIM bundles {
  filetype off
  call plug#begin('~/.vim/plugged')
  source ~/.vimrc.bundles
  call plug#end()
  filetype plugin indent on     " required!
" }

" COMMON CONFIG should be here

" Load Plugins settings {
  if !empty(glob('~/.vimrc.plugins.settings'))
    source ~/.vimrc.plugins.settings
  endif
" }
