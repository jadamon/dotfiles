execute pathogen#infect()
syntax on
filetype plugin indent on

set noshowmode
nnoremap _ g_
nnoremap ^ _

set number wrap incsearch
nnoremap <tab> :
nnoremap <tab><tab> :help<space>

" explicitly make '\' the default
let mapleader = '\'

" alias <space> as <leader> but not in insert mode
nmap <space> <leader>
vmap <space> <leader>

" making save and quit nicer
nnoremap <leader>qw :wq<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>ww :w!<cr>

" map kj to be universally 'back to normal mode' 
inoremap kj <esc>
vnoremap kj <esc>

nnoremap <leader>ee :vsplit $MYVIMRC<cr>

augroup vimrc_group
	autocmd! BufWritePost $MYVIMRC :source $MYVIMRC
augroup END

" a change for changes sake
