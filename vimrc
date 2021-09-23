" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'Olical/conjure', {'tag': 'v4.18.0'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

nnoremap <SPACE> <Nop>

let mapleader = ' '
let maplocalleader = ','

" Automatically source .vimrc on save
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" Open vimrc file
nmap <leader>v :vsp<CR>:e $MYVIMRC<CR>

nnoremap <silent> <Leader>f :Rg<CR>

syntax on

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

let g:clojure_maxlines = 200

command! -nargs=0 Prettier :CocCommand prettier.formatFile
