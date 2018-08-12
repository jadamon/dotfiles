execute pathogen#infect()
syntax on
filetype plugin indent on

set noshowmode
colorscheme molokai

" [j, k] move through display lines, unless number passed
nnoremap <expr> j v:count ? 'j':'gj'
nnoremap <expr> k v:count ? 'k':'gk'
vnoremap <expr> j v:count ? 'j':'gj'
vnoremap <expr> k v:count ? 'k':'gk'
onoremap <expr> j v:count ? 'j':'gj'
onoremap <expr> k v:count ? 'k':'gk'

set number wrap incsearch relativenumber

" explicitly make '\' the default
let mapleader = '\'

" alias <space> as <leader> but not in insert mode
" avoids awkward pausing on hitting space in insert mode
nmap <space> <leader>
vmap <space> <leader>
omap <space> <leader>
" make sure to unmap <space> as an operator
" ounmap <space>

" make 'beginning' and 'end' of line mappings consistent
" now they optionally go down to line labeled <expr> for select/yank
" by default assumes labeling is relativ numbering
nnoremap <expr> <leader>_ v:count ? 'jg_':'g_'
vnoremap <expr> <leader>_ v:count ? 'jg_':'g_'
onoremap <expr> <leader>_ v:count ? 'jg_':'g_'
nnoremap <expr> <leader>^ v:count ? 'j^':'^'
vnoremap <expr> <leader>^ v:count ? 'j^':'^'
onoremap <expr> <leader>^ v:count ? 'j^':'^'
nnoremap <expr> <leader>$ v:count ? 'j$':'$'
vnoremap <expr> <leader>$ v:count ? 'j$':'$'
onoremap <expr> <leader>$ v:count ? 'j$':'$'
nnoremap <expr> <leader>0 v:count ? 'jg0':'g0'
vnoremap <expr> <leader>0 v:count ? 'jg0':'g0'
onoremap <expr> <leader>0 v:count ? 'jg0':'g0'

" map kj to be universally 'back to normal mode'
inoremap kj <esc>
vnoremap kj <esc>

nnoremap <leader>ee :vsplit $MYVIMRC<cr>

augroup vimrc_group
	autocmd! BufWritePost $MYVIMRC :source $MYVIMRC
augroup END

" make Windows behave itself in gvim
set backspace=indent,eol,start
set guifont=consolas:h12:w5:b:cDEFAULT

" add numbering to netrw
let g:netrw_bufsettings = 'noma nomod nobl nowrap ro'

" disable bells
set vb t_vb=
