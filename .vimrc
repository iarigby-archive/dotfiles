" TODO https://pastebin.com/u2TA9hUp
" https://www.reddit.com/r/neovim/comments/djmehv/im_probably_really_late_to_the_party_but_fzf_in_a/


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

call plug#begin('~/.vim/plugged')

" THEMES
Plug 'flrnprz/candid.vim'


Plug 'FZX/vim-plugin-gelayout'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/VOoM' 
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

let g:vim_markdown_folding_disabled = 1

Plug 'jesseleite/vim-agriculture'

Plug 'terryma/vim-multiple-cursors'

Plug 'dracula/vim'
Plug 'drewtempelmeyer/palenight.vim'


" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" Plug 'itchyny/lightline.vim'

" let g:airline_powerline_fonts = 1 

Plug 'ryanoasis/vim-devicons'

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
set encoding=UTF-8

" source $HOME/.vim_lightline

call plug#end()
" colorscheme candid
colorscheme dracula 
hi Normal guibg=NONE ctermbg=NONE
" set nu
set t_Co=256
"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

set mouse=a
set guicursor=

let mapleader = " "
nmap <Leader>/ <Plug>Files

vmap <Leader>/ <Plug>RgRawVisualSelection

nmap <Leader>* <Plug>RgRawWordUnderCursor

" let g:webdevicons_enable = 1
" let g:webdevicons_enable_nerdtree = 1
" let g:webdevicons_enable_airline_statusline = 1
" let g:webdevicons_enable_airline_tabline = 1
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1


"" fzf.vim
let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'

set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
 
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')
 
  let height = float2nr(20)
  let width = float2nr(80)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1
 
  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }
 
  call nvim_open_win(buf, v:true, opts)
endfunction
hi StatusLine ctermbg=NONE cterm=NONE
"" mappings

" Clear search highlighting with Escape key
nnoremap <silent><esc> :noh<return><esc>

"" other
"Case insensitive searching
set ignorecase
 
 
" Highlighted yank (-1 for persistent)
let g:highlightedyank_highlight_duration = 400

" If lightline/airline is enabled, don't show mode under it
" set noshowmode


" set fillchars=vert::
" source $HOME/.config/nvim/statusline.vim

nnoremap <leader>e :term sh %:p
