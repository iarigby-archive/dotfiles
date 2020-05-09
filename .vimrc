if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" THEMES
Plug 'flrnprz/candid.vim'


Plug 'FZX/vim-plugin-gelayout'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'




call plug#end()
" colorscheme candid

set nu
set t_Co=256

set clipboard+=unnamedplus
set mouse=a
set guicursor=

