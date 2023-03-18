set autoread
set encoding=utf-8
set noswapfile
set hidden
call plug#begin()
Plug 'romainl/vim-qf'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
set backspace=eol,indent,start
set showmode
set showcmd
set number
set relativenumber
syntax on
filetype plugin indent on
set mouse=a
set textwidth=79
set completeopt=longest,menuone
set noerrorbells
set title
let g:user42='vnaud'
let g:mail42='vnaud@student.42angouleme.fr'
let g:rustfmt_autosave=1
set splitright
set splitbelow
set tabstop=4
set shiftwidth=4
set autoindent
set statusline=\ %F\ %M\ %Y\ %R%=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ cpl:\ %c\ percent:\ %p%%
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
