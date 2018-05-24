" Begin {
  set nocompatible
  source ~/.vimrc.fn
" }

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

