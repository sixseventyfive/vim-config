call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'
Plug 'gioele/vim-autoswap'
"Plug 'python-mode/python-mode', { 'branch': 'develop' }
"Plug 'bling/vim-bufferline'
call plug#end()
syntax on
set background=dark
colorscheme PaperColor
"colorscheme hybrid
set guifont=DejaVu_Sans_Mono_for_Powerline:h10
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
"Pymode settings
"let g:pymode_python = 'python3'
"let g:airline#extensions#tabline#enabled = 1
"git gutter settings
let g:gitgutter_map_keys=0
set updatetime=100
"general vim settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set wrap!
set number
set autoindent
set ruler
filetype indent on
"run sql and python code
noremap <leader>p "*
noremap <F7> <Esc>:w<CR>:!python %<CR>
noremap <F8> <Esc>:w<CR>:%!yapf<CR>
nnoremap K i<CR><Esc>
set backspace=indent,eol,start
set laststatus=2
set noshowmode
set autoread
